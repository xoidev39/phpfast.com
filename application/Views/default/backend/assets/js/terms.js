function urlSlug(str) {
    str = str.normalize("NFD").replace(/[\u0300-\u036f]/g, "");
    str = str.toLowerCase().trim();
    str = str.replace(/[^a-z0-9\s-]/g, ''); 
    str = str.replace(/[\s-]+/g, '-'); 
    str = str.replace(/^-+|-+$/g, '');

    return str;
}   

$(function() {
    const nameInput = $('#name');
    const slugInput = $('#slug');

    // Sử dụng phương thức .on() thay cho addEventListener
    nameInput.on('input', function() {
        // Kiểm tra nếu trường slug hiện tại không có giá trị, thì cập nhật
        if (slugInput.val().trim() === '') {
            const slugValue = urlSlug(nameInput.val());
            slugInput.val(slugValue);
        }
    });

    slugInput.on('input', function() {
        // Khi người dùng chỉnh sửa trường slug, đặt giá trị đã được sửa thành cố định
        if (slugInput.val().trim() !== '') {
            slugInput.data('userModified', true);
        }
    });

    nameInput.on('input', function() {
        // Nếu người dùng chưa chỉnh sửa slug thủ công, tiếp tục tự động cập nhật slug từ name
        if (!slugInput.data('userModified')) {
            const slugValue = urlSlug(nameInput.val());
            slugInput.val(slugValue);
        }
    });
});

document.addEventListener('DOMContentLoaded', function() {
    const langSelect = document.getElementById('lang');
    const parentContainer = document.getElementById('parent-container');
    const parentSelect = document.getElementById('parent');
    const idMainContainer = document.getElementById('id_main')?.parentNode;
    const csrfToken = document.querySelector('input[name="csrf_token"]').value;

    // Ẩn ô select id_main ban đầu
    if (idMainContainer) {
        idMainContainer.style.display = 'none';
    }

    // Xử lý langSelect cho idMainContainer
    if (langSelect && idMainContainer) {
        langSelect.addEventListener('change', function() {
            const selectedLang = this.value;
            idMainContainer.style.display = (!selectedLang || selectedLang === defaultLang) ? 'none' : 'block';
        });
    }

    // Xử lý langSelect cho parentSelect
    if (langSelect && parentSelect && parentContainer) {
        langSelect.addEventListener('change', function() {
            const selectedLang = this.value;
            if (!selectedLang) {
                parentContainer.style.display = 'none';
                return;
            }

            // Lấy type và posttype từ form
            const type = document.querySelector('input[name="type"]').value;
            const posttype = document.querySelector('input[name="posttype"]').value;

            // Gọi AJAX để lấy terms theo ngôn ngữ
            fetch(admin_url + 'gettermsbylang', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                },
                body: 'csrf_token=' + csrfToken + '&lang=' + selectedLang + '&type=' + type + '&posttype=' + posttype
            })
            .then(response => response.json())
            .then(data => {
                if(data.status === 'success') {
                    // Xóa các options cũ
                    parentSelect.innerHTML = '<option value="">Select Parent</option>';
                    
                    // Thêm function để đệ quy render options
                    function renderOptions(items, level = 0) {
                        items.forEach(item => {
                            const prefix = '-'.repeat(level);
                            const option = new Option(prefix + ' ' + item.name, item.id);
                            parentSelect.add(option);
                            
                            if(item.children && item.children.length > 0) {
                                renderOptions(item.children, level + 1);
                            }
                        });
                    }
                    
                    // Render options mới
                    renderOptions(data.data);
                    
                    // Hiển thị select parent
                    parentContainer.style.display = 'block';
                }
            })
            .catch(error => {
                console.error('Error:', error);
                parentContainer.style.display = 'none';
            });
        });
    }
});