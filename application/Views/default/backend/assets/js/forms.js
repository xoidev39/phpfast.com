
// image liên quan đến input ảnh
    function createFileManagerModal() {
        // Kiểm tra nếu modal đã tồn tại
        if (document.getElementById('file-manager-modal')) {
            return document.getElementById('file-manager-modal');
        }

        // Tạo các phần tử
        const modal = document.createElement('div');
        modal.id = 'file-manager-modal';
        modal.className = 'fixed inset-0 z-50 hidden overflow-y-auto';

        modal.innerHTML = `
            <div class="flex items-center justify-center min-h-screen px-4">
                <!-- Backdrop -->
                <div class="fixed inset-0 bg-black bg-opacity-50 transition-opacity"></div>
                
                <!-- Modal Content -->
                <div class="relative bg-white rounded-lg w-full max-w-7xl h-[80vh] max-h-[90vh] flex flex-col">
                    <!-- Modal Header -->
                    <div class="flex items-center justify-between p-4 border-b">
                        <h3 class="text-xl font-semibold text-gray-900">Thư viện Media</h3>
                        <button type="button" class="modal-close text-gray-400 hover:text-gray-500">
                            <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                            </svg>
                        </button>
                    </div>
                    
                    <!-- Modal Body -->
                    <div class="flex-1 overflow-hidden">
                        <iframe id="file-manager-iframe" 
                                class="w-full h-full"
                                src="about:blank"
                                frameborder="0"></iframe>
                    </div>
                </div>
            </div>
        `;

        // Thêm modal vào body
        document.body.appendChild(modal);

        // Thêm sự kiện đóng modal
        modal.querySelector('.modal-close').addEventListener('click', closeFileManager);
        modal.addEventListener('click', (e) => {
            if (e.target.classList.contains('fixed')) {
                closeFileManager();
            }
        });

        return modal;
    }
    function get_server(fieldId) {
        const serverSelect = document.getElementById(`server-select-${fieldId}`);
        
        if (!serverSelect || serverSelect.value == 'false') {
            return null;
        }
        const selectedOption = serverSelect.options[serverSelect.selectedIndex];

        return {
            url: serverSelect.value,
            token: selectedOption.dataset.token
        };
    }
    function openFileManager(fieldId, multi = true, value = null, wisy = true) {
        const modal = createFileManagerModal();
        const iframe = modal.querySelector('#file-manager-iframe');
        
        // Khởi tạo parameters
        const params = new URLSearchParams({
            field: fieldId,
            multi: multi ? 1 : 0,
            wisy: wisy ? 1 : 0
        });
    
        // Xử lý server nếu có
        const serverInfo = get_server(fieldId);
        let domain;
        if (serverInfo) {
            domain = serverInfo.url;
            params.append('token', serverInfo.token);
        } else {
            domain = window.location.origin;
        };
    
        // Tạo base URL
        const baseUrl = `${domain}/admin/files/index/`;
        
        // Thêm value parameter nếu có
        if (value) {
            params.append('value', value);
        }
    
        // Tạo URL cuối cùng
        const url = `${baseUrl}?${params.toString()}`;
        iframe.src = url;
        modal.classList.remove('hidden');
        document.body.style.overflow = 'hidden';
        
        // Thêm event listener cho phím Escape
        document.addEventListener('keydown', handleEscapeKey);
    }
 
  

    function closeFileManager() {
        const modal = document.getElementById('file-manager-modal');
        if (modal) {
            const iframe = modal.querySelector('#file-manager-iframe');
            iframe.src = 'about:blank';
            modal.classList.add('hidden');
            document.body.style.overflow = '';

            // Loại bỏ trình lắng nghe sự kiện khi đóng modal
            document.removeEventListener('keydown', handleEscapeKey);
        } else {
            console.error('Modal not found.');
        }
    }
    function handleEscapeKey(event) {
        if (event.key === "Escape") {
            closeFileManager();
        }
    }  

   // Định nghĩa hàm window.setChosenImage để phát sự kiện 'chosenImage'
    window.setChosenImageInput = function (fieldId, fileData, multi = false) {
        try {
            const data = typeof fileData === 'string' ? JSON.parse(fileData) : fileData;
            const input = document.getElementById(`${fieldId}_data`);
            const multiPreviewArea = document.getElementById(`multi-preview-area-${fieldId}`);
            
            if (input) {
                input.value = JSON.stringify(data);

                if (multi) {
                    // Xử lý nhiều ảnh
                    if (Array.isArray(data)) {
                        handleMultipleImages(data, input, multiPreviewArea);
                    } else {
                        console.error('Data phải là mảng khi chọn nhiều ảnh.');
                    }
                } else {
                    // Xử lý ảnh đơn
                    if (!Array.isArray(data)) {
                        handleSingleImage(data, fieldId);
                    } else {
                        console.error('Data phải là một đối tượng khi chọn ảnh đơn.');
                    }
                }
                
                closeFileManager();
            }
        } catch (error) {
            console.error('Error setting chosen image:', error);
        }
    };


    window.addEventListener('message', function(event) {
        // Trong production nên kiểm tra origin
        // if (event.origin !== "https://trusted-domain.com") return;
        
        const message = event.data;
        
        switch(message.type) {
            case 'fileSelected':
                if (message.wisy) {
                    if (!message.multi) {
                        setChosenImage(message.field, message.data);
                    } else {
                        setChosenImages(message.field, message.data);
                    }
                } else {
                    setChosenImageInput(message.field, message.data, message.multi);
                }
                break;
                
            case 'closeFileManager':
                const modal = document.getElementById(`file-manager-modal-${message.field}`);
                if (modal) {
                    modal.classList.add('hidden');
                    document.body.style.overflow = 'auto';
                }
                break;
        }
    });
    // Hàm xử lý toàn cục


    // Wysiwyg input
    const EditorManager = {
        loadedScripts: new Set(),
        instances: new Map(),
        scriptsLoading: null,
        scriptUrls: [
            'https://cdn.jsdelivr.net/npm/@editorjs/editorjs@latest',
            'https://cdn.jsdelivr.net/npm/@editorjs/list@2.0.2/dist/editorjs-list.umd.js',
            'https://cdn.jsdelivr.net/npm/@editorjs/header@latest',
            'https://cdn.jsdelivr.net/npm/@editorjs/paragraph@latest',
            'https://cdn.jsdelivr.net/npm/@editorjs/image@latest',
            'https://cdn.jsdelivr.net/npm/@editorjs/embed@latest',
            'https://cdn.jsdelivr.net/npm/@editorjs/table@latest',
            'https://cdn.jsdelivr.net/npm/@editorjs/quote@latest',
            'https://cdn.jsdelivr.net/npm/@editorjs/marker@latest',
            'https://cdn.jsdelivr.net/npm/@editorjs/inline-code@latest',
            'https://cdn.jsdelivr.net/npm/@editorjs/code@latest',
            'https://cdn.jsdelivr.net/npm/editorjs-video@latest',
        ],

        loadScript(src) {
            if (this.loadedScripts.has(src)) {
                return Promise.resolve();
            }

            return new Promise((resolve, reject) => {
                const script = document.createElement('script');
                script.src = src;
                script.type = 'text/javascript';
                
                script.onload = () => {
                    this.loadedScripts.add(src);
                    resolve();
                };
                
                script.onerror = () => {
                    reject(new Error(`Failed to load script: ${src}`));
                };

                document.head.appendChild(script);
            });
        },

        loadAllScripts() {
            if (!this.scriptsLoading) {
                this.scriptsLoading = Promise.all(
                    this.scriptUrls.map(src => this.loadScript(src))
                ).then(() => {
                    return true;
                });
            }
            return this.scriptsLoading;
        },

        hasInstance(holderId) {
            return this.instances.has(holderId);
        },

        addInstance(holderId, editor) {
            this.instances.set(holderId, editor);
        },

        getInstance(holderId) {
            return this.instances.get(holderId);
        },

        removeInstance(holderId) {
            this.instances.delete(holderId);
        }
    };

    class CustomImageBlock {
        constructor({data, config, api}) {
            this.api = api; // Lưu reference tới Editor.js API
            this.fieldId = config.fieldId;
            this.readOnly = config.readOnly;

            this.data = {
                url: data.url || '',
                caption: data.caption || '',
                withBorder: data.withBorder !== undefined ? data.withBorder : false,
                withBackground: data.withBackground !== undefined ? data.withBackground : false,
                stretched: data.stretched !== undefined ? data.stretched : false,
            };

            this.wrapper = undefined;
            this.settings = [];

            this.handleChosenImage = this.handleChosenImage.bind(this);
            window.addEventListener('chosenImage', this.handleChosenImage);
        }

        // Phương thức xử lý sự kiện chosenImage cho instance này
        handleChosenImage(event) {
            const { fieldId, fileData } = event.detail;
            if (fieldId === this.fieldId) {
                try {
                    const filesData = Array.isArray(fileData) ? fileData : [fileData];
                    
                    // Xử lý file đầu tiên cho block hiện tại
                    if (filesData.length > 0) {
                        const firstFile = filesData[0];
                        const imageUrl = `${window.location.origin}/uploads/${firstFile.path}`;
                        this.data.url = imageUrl;
                        this.data.caption = firstFile.name;
                        this._createImage(imageUrl, firstFile.name);
                    }

                    // Tạo các block mới cho các file còn lại
                    if (filesData.length > 1) {
                        this._createAdditionalBlocks(filesData.slice(1));
                    }

                    closeFileManager(fieldId);
                } catch (error) {
                    console.error('Error handling chosen image:', error);
                }
            }
        }

        // Phương thức mới để tạo thêm các block ảnh
        async _createAdditionalBlocks(filesData) {
            for (const fileData of filesData) {
                const imageUrl = `${window.location.origin}/uploads/${fileData.path}`;

                
                this.api.blocks.insert('customImage', {
                    url: imageUrl,
                    caption: fileData.name,
                    withBorder: this.data.withBorder,
                    withBackground: this.data.withBackground,
                    stretched: this.data.stretched
                });
            }
        }

        // Tạo khối HTML cho block
        render() {
            this.wrapper = document.createElement('div');
            this.wrapper.classList.add('custom-image-block');

            if (this.data.url) {
                this._createImage(this.data.url, this.data.caption);
            } else {
                this._createPlaceholder();
            }

            return this.wrapper;
        }

        // Tạo placeholder khi chưa có ảnh
        _createPlaceholder() {
            const placeholder = document.createElement('div');
            placeholder.classList.add(
                'min-h-[150px]',
                'flex',
                'items-center',
                'justify-center',
                'bg-gray-50',
                'border-2',
                'border-dashed',
                'border-gray-300',
                'rounded-lg',
            );

            const button = document.createElement('div');
            button.classList.add(
                'px-4',
                'py-2',
                'bg-gray-100',
                'hover:bg-gray-200',
                'text-gray-700',
                'rounded-md',
                'cursor-pointer',
                'flex',
                'items-center',
                'gap-2',
                'border',
                'border-gray-300',
                'shadow-sm'
            );

            const icon = document.createElement('span');
            icon.innerHTML = `
                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z"></path>
                </svg>
            `;

            const text = document.createElement('span');
            text.textContent = 'Chọn ảnh';
            text.classList.add('font-medium');

            button.appendChild(icon);
            button.appendChild(text);

            // Thêm thông tin về multiple
            const info = document.createElement('div');
            info.classList.add(
                'text-sm',
                'text-gray-500',
                'mt-2'
            );
            info.textContent = 'Có thể chọn nhiều ảnh cùng lúc';

            button.addEventListener('click', () => {
                this._selectImage();
            });

            this._setupDragAndDrop(placeholder);

            placeholder.appendChild(button);
            placeholder.appendChild(info);
            this.wrapper.appendChild(placeholder);
        }

        _setupDragAndDrop(placeholder) {
            placeholder.addEventListener('dragover', (e) => {
                e.preventDefault();
                e.stopPropagation();
                placeholder.classList.add('border-blue-500', 'bg-blue-50');
            });

            placeholder.addEventListener('dragleave', (e) => {
                e.preventDefault();
                e.stopPropagation();
                placeholder.classList.remove('border-blue-500', 'bg-blue-50');
            });

            placeholder.addEventListener('drop', async (e) => {
                e.preventDefault();
                e.stopPropagation();
                placeholder.classList.remove('border-blue-500', 'bg-blue-50');
                
                const files = Array.from(e.dataTransfer.files).filter(file => 
                    file.type.startsWith('image/')
                );

                if (files.length > 0) {
                    await this._handleImageFiles(files);
                } else {
                    alert('Vui lòng chọn ít nhất một tệp hình ảnh.');
                }
            });
        }

        async _handleImageFiles(files) {
            const now = new Date();
            const path = `${now.getFullYear()}/${String(now.getMonth() + 1).padStart(2, '0')}/${String(now.getDate()).padStart(2, '0')}/`;
            
            const formData = new FormData();
            formData.append('path', path);
            files.forEach(file => {
                formData.append('files[]', file);
            });

            this.wrapper.classList.add('loading');

            try {
                const response = await fetch('https://cms.vn/api/files/upload/', {
                    method: 'POST',
                    body: formData,
                });

                if (!response.ok) {
                    throw new Error(`HTTP error! status: ${response.status}`);
                }

                const data = await response.json();
                
                if (data.status === 'success' && Array.isArray(data.data.uploaded_files)) {
                    const uploadedFiles = data.data.uploaded_files;

                    // Xử lý file đầu tiên cho block hiện tại
                    if (uploadedFiles.length > 0) {
                        const firstFile = uploadedFiles[0];
                        const imageUrl = `${window.location.origin}/uploads/${firstFile.path}`;
                        this._createImage(imageUrl, firstFile.name);
                    }

                    // Tạo blocks mới cho các file còn lại
                    if (uploadedFiles.length > 1) {
                        await this._createAdditionalBlocks(uploadedFiles.slice(1));
                    }
                }
            } catch (error) {
                console.error('Error uploading images:', error);
                alert('Đã xảy ra lỗi khi tải lên hình ảnh. Vui lòng thử lại.');
            } finally {
                this.wrapper.classList.remove('loading');
            }
        }
        
        

        // Tạo khối hiển thị ảnh
        _createImage(url, caption) {
            const imageContainer = document.createElement('div');
            imageContainer.classList.add('custom-image-container');

            // Thêm các class dựa trên settings
            if (this.data.withBorder) imageContainer.classList.add('with-border');
            if (this.data.withBackground) imageContainer.classList.add('with-background');
            if (this.data.stretched) imageContainer.classList.add('stretched');

            const image = document.createElement('img');
            image.src = url;
            image.alt = caption || '';

            const captionInput = document.createElement('input');
            captionInput.classList.add('custom-image-caption');
            captionInput.placeholder = 'Caption...';
            captionInput.value = caption || '';
            captionInput.addEventListener('input', (e) => {
                this.data.caption = e.target.value;
            });

            imageContainer.appendChild(image);
            imageContainer.appendChild(captionInput);

            // Thêm nút xóa ảnh
            const deleteButton = document.createElement('button');
            deleteButton.classList.add('custom-image-delete');
            deleteButton.innerHTML = '×';
            deleteButton.addEventListener('click', () => {
                this._removeImage();
            });

            imageContainer.appendChild(deleteButton);
            this.wrapper.innerHTML = '';
            this.wrapper.appendChild(imageContainer);
        }

        // Xử lý việc chọn ảnh
        _selectImage() {
            window.setChosenImage = (fieldId, fileData) => {
                if (fieldId === this.fieldId) {
                    try {
                        const data = typeof fileData === 'string' ? JSON.parse(fileData) : fileData;
                        const imageUrl = `${window.location.origin}/uploads/${data.path}`;
                        
                        // Cập nhật data
                        this.data.url = imageUrl;
                        this.data.caption = data.name;
                        
                        // Tạo lại image view
                        this._createImage(imageUrl, data.name);

                        // Đóng modal
                        closeFileManager(fieldId);
                    } catch (error) {
                        console.error('Error handling chosen image:', error);
                    }
                }
            };
            openFileManager(this.fieldId, false);
            
        }

        // Xóa ảnh
        _removeImage() {
            this.data.url = '';
            this.data.caption = '';
            this.wrapper.innerHTML = '';
            this._createPlaceholder();
        }

        // Lưu data của block
        save(blockContent) {
            const image = blockContent.querySelector('img');
            const caption = blockContent.querySelector('.custom-image-caption');

            return Object.assign(this.data, {
                url: image ? image.src : '',
                caption: caption ? caption.value : ''
            });
        }

        // Validate data
        validate(savedData) {
            if (!savedData.url.trim()) {
                return false;
            }
            return true;
        }

        // Settings cho block
        renderSettings() {
            const settings = [
            
            ];

            const wrapper = document.createElement('div');

            settings.forEach(tune => {
                const button = document.createElement('div');
                button.classList.add('custom-image-settings-button');
                button.classList.toggle('active', this.data[tune.name]);
                button.innerHTML = tune.icon;
                button.addEventListener('click', () => {
                    this._toggleTune(tune.name);
                    button.classList.toggle('active');
                });

                wrapper.appendChild(button);
            });

            return wrapper;
        }

        // Toggle các settings
        _toggleTune(tune) {
            this.data[tune] = !this.data[tune];
            this._updateImageClasses();
        }

        // Update classes dựa trên settings
        _updateImageClasses() {
            const container = this.wrapper.querySelector('.custom-image-container');
            
            if (container) {
                container.classList.toggle('with-border', this.data.withBorder);
                container.classList.toggle('with-background', this.data.withBackground);
                container.classList.toggle('stretched', this.data.stretched);
            }
        }

        // Định nghĩa toolbox
        static get toolbox() {
            return {
                title: 'Image',
                icon: '<svg width="17" height="15" viewBox="0 0 336 276" xmlns="http://www.w3.org/2000/svg"><path d="M291 150V79c0-19-15-34-34-34H79c-19 0-34 15-34 34v42l67-44 81 72 56-29 42 30zm0 52l-43-30-56 30-81-67-66 39v23c0 19 15 34 34 34h178c17 0 31-13 34-29zM79 0h178c44 0 79 35 79 79v118c0 44-35 79-79 79H79c-44 0-79-35-79-79V79C0 35 35 0 79 0z"/></svg>'
            };
        }

        destroy() {
            window.removeEventListener('chosenImage', this.handleChosenImage);
        }

    }

    async function initEditor(id, value = null) {
        try {
            if (EditorManager.hasInstance(id)) {
                return EditorManager.getInstance(id);
            }

            await EditorManager.loadAllScripts();
            
            const editor = new EditorJS({
                holder: id,
                minHeight: 0,
                maxWidth: '100%',
                layout: {
                    sectionStyles: {
                        paddingTop: '1rem',
                        paddingBottom: '1rem',
                    }
                },
                data: value ? value : {},
                onChange: function() {
                    editor.save().then((outputData) => {
                        const jsonData = JSON.stringify(outputData);
                        const input = document.getElementById(`${id.id}_input`);
                        if(input) {
                            input.value = jsonData;
                        }
                        
                    });
                },
                tools: {
                    header: {
                        class: Header,
                        inlineToolbar: true,
                        config: {
                            placeholder: 'Enter a header'
                        },
                        shortcut: 'CMD+SHIFT+H'
                    },
                    paragraph: {
                        class: Paragraph,
                        inlineToolbar: true,
                    },
                    list: {
                        class: EditorjsList,
                        inlineToolbar: true,
                        config: {
                            defaultStyle: 'unordered'
                        }
                    },
                    customImage: {
                        class: CustomImageBlock,
                        inlineToolbar: true,
                        config: {
                            fieldId: id.id,
                        }
                    },
                    table: {
                        class: Table,
                        inlineToolbar: true,
                        shortcut: 'CMD+ALT+T'
                    },
                    quote: {
                        class: Quote,
                        inlineToolbar: true,
                        config: {
                            quotePlaceholder: 'Enter a quote',
                            captionPlaceholder: 'Quote\'s author'
                        },
                        shortcut: 'CMD+SHIFT+O'
                    },
                    marker: {
                        class: Marker,
                        shortcut: 'CMD+SHIFT+M'
                    },
                    code: {
                        class: CodeTool,
                        shortcut: 'CMD+SHIFT+C'
                    },
                    inlineCode: {
                        class: InlineCode,
                        shortcut: 'CMD+SHIFT+C'
                    },
                    embed: {
                        class: Embed,
                        config: {
                            services: {
                                youtube: true,
                                vimeo: true,
                                coub: true
                            }
                        }
                    }
                },
                autofocus: true,
                placeholder: 'Nhập nội dung của bạn...',
            });

            await editor.isReady;
            const outputData = await editor.save();
            const input = document.getElementById(`${id.id}_input`);
            if (input) {
                input.value = JSON.stringify(outputData);
            }

            EditorManager.addInstance(id, editor);
            return editor;

        } catch (error) {
            throw error;
        }
    }


    // image input
    function handleSingleImage(fileData, fieldId) {
        const imagePreview = document.getElementById(`image-preview-${fieldId}`);
        const imageName = document.getElementById(`image-name-${fieldId}`);
        const uploadArea = document.getElementById(`upload-area-${fieldId}`);
        const previewArea = document.getElementById(`preview-area-${fieldId}`);
    
        // Lấy thông tin server
        const baseDomain = fileData.server ? fileData.server : window.location.origin;
        const imageUrl = `${baseDomain}/uploads/${fileData.path}`;
        imagePreview.src = imageUrl;
        imageName.textContent = fileData.name;
        uploadArea.style.display = 'none';
        previewArea.style.display = 'block';
    }
    
    function handleMultipleImages(fileDataList, dataInput, multiPreviewArea, fieldId) {
        // Ensure the preview area is visible
        multiPreviewArea.classList.remove('hidden');
    
        // Set up grid layout container if not already set
        if (!multiPreviewArea.classList.contains('grid')) {
            multiPreviewArea.classList.add('grid', 'grid-cols-4', 'gap-4');
        }
    
        // Iterate over the file data and add each image
        fileDataList.forEach((fileData) => {
            const baseDomain = fileData.server ? fileData.server : window.location.origin;
            const imageUrl = `${baseDomain}/uploads/${fileData.path}`;
            
            // Check if the image already exists in the preview area (prevent duplicates)
            if (Array.from(multiPreviewArea.children).some(child => child.querySelector('img')?.src === imageUrl)) {
                return; // Skip duplicate
            }
    
            // Create the preview item
            const previewItem = document.createElement('div');
            previewItem.classList.add('relative', 'aspect-square', 'group');
    
            previewItem.innerHTML = `
                <div class="relative w-full h-full rounded-lg overflow-hidden border border-gray-200">
                    <img 
                        src="${imageUrl}" 
                        alt="${fileData.name}" 
                        class="w-full h-full object-cover"
                        title="${fileData.name}"
                    >
                    
                    <!-- Nút xóa -->
                    <button class="absolute top-2 right-2 w-6 h-6 rounded-full bg-white bg-opacity-80 
                                 flex items-center justify-center shadow-sm opacity-0 group-hover:opacity-100 
                                 transition-opacity duration-200 remove-item hover:bg-red-50">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 text-red-500" fill="none" 
                             viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" 
                                  d="M6 18L18 6M6 6l12 12"/>
                        </svg>
                    </button>
    
                    <!-- Overlay tên file khi hover -->
                    <div class="absolute bottom-0 left-0 right-0 p-2 bg-black bg-opacity-50 
                              text-white text-sm truncate opacity-0 group-hover:opacity-100 
                              transition-opacity duration-200">
                        ${fileData.name}
                    </div>
                </div>
            `;
    
            // Add remove functionality for the item
            previewItem.querySelector('.remove-item').addEventListener('click', (e) => {
                e.preventDefault();
                const updatedFiles = fileDataList.filter(f => f.id !== fileData.id);
                if (dataInput) {
                    dataInput.value = JSON.stringify(updatedFiles);
                }
                previewItem.remove();
    
                // Hide the preview area if no images are left
                if (multiPreviewArea.children.length === 0) {
                    multiPreviewArea.classList.add('hidden');
                }
            });
    
            // Append the new preview item to the multiPreviewArea
            multiPreviewArea.appendChild(previewItem);
        });
    
        // Update the data input field with the updated list
        if (dataInput) {
            dataInput.value = JSON.stringify(fileDataList);
        }
    }
    
    
    /**
     * Khởi tạo các sự kiện cho một trường hình ảnh cụ thể.
     * @param {string} fieldId - ID của trường hình ảnh.
     */
    function initImages(fieldId, multi = false, value = undefined) {
        const openLibraryButton = document.getElementById(`open-library-button-${fieldId}`);
        const multiPreviewArea = document.getElementById(`multi-preview-area-${fieldId}`);
        const dataInput = document.getElementById(`${fieldId}_data`);
        // Xử lý chọn ảnh
        // gen ảnh
        if(multi) {
            if(value !== undefined) {
                handleMultipleImages(value, null, multiPreviewArea )
            }
        } else {
            document.getElementById(`remove-button-${fieldId}`).addEventListener("click", () => {
                document.getElementById(`${fieldId}_data`).value = '';
                document.getElementById(`image-preview-${fieldId}`).src = '';
                document.getElementById(`image-name-${fieldId}`).textContent = '';
                document.getElementById(`image-size-${fieldId}`).textContent = '';
                document.getElementById(`upload-area-${fieldId}`).style.display = 'flex';
                document.getElementById(`preview-area-${fieldId}`).style.display = 'none';
            });
            document.addEventListener("DOMContentLoaded", function () {
                const replaceButton = document.getElementById(`replace-button-${fieldId}`);
            
                if (replaceButton) {
                    replaceButton.addEventListener("click", function () {
                        const multi = true; // Hoặc false, tùy vào logic của bạn
                        const value = document.getElementById(`${fieldId}_data`)?.value || null;
            
                        openFileManager(fieldId, multi, value, false);
                    });
                } else {
                    console.warn(`Nút replace-button-${fieldId} không tồn tại.`);
                }
            });
        }
        
        // Xử lý mở thư viện
        if (openLibraryButton) {
            openLibraryButton.addEventListener("click", () => {
                openFileManager(fieldId, multi, value, false);
            });
        } else {
            console.warn(`Nút open-library-button-${fieldId} không tồn tại.`);
        }
    }
    



    function initRepeaterField(fieldId) {
        // Get root element
        const rootElement = document.getElementById(fieldId);
        if (!rootElement) return;
        const inputs = rootElement.querySelectorAll('input');
        inputs.forEach(input => {
            const nameAttribute = input.getAttribute('name');
            if (nameAttribute) {
                input.setAttribute('data-name', nameAttribute);
                input.removeAttribute('name');
            }
        });
        function setRepeaterData(fieldId, jsonData) {
            const rootElement = document.getElementById(fieldId);
            if (!rootElement || !jsonData) return;
            
            // Parse JSON nếu nhận vào là string
            const data = typeof jsonData === 'string' ? JSON.parse(jsonData) : jsonData;
            
            // Xóa hết repeater items hiện tại trừ item đầu tiên
            const items = rootElement.querySelectorAll(':scope > .repeater-item');
            items.forEach((item, index) => {
                if (index > 0) item.remove();
            });
        
            // Nếu không có data, return luôn
            if (!data.length) return;
        
            const firstItem = rootElement.querySelector(':scope > .repeater-item');
            if (!firstItem) return;
        
            // Đặt giá trị cho item đầu tiên
            setItemValues(firstItem, data[0]);
        
            // Thêm các items còn lại
            data.slice(1).forEach((itemData, index) => {
                const newItem = firstItem.cloneNode(true);
                const newOrder = index + 1;
                
                newItem.setAttribute('data-order', newOrder);
                
                const removeBtn = newItem.querySelector(':scope > .repeater-remove');
                if (removeBtn) {
                    removeBtn.setAttribute('order', newOrder);
                }
        
                // Đặt giá trị cho item mới
                setItemValues(newItem, itemData);
                
                // Chèn item mới vào trước nút Add
                const addButton = rootElement.querySelector(`button[data-add="${fieldId}"]`);
                rootElement.insertBefore(newItem, addButton);
            });

            // Update hidden input
            const hiddenInput = rootElement.querySelector(`input[name="${fieldId}"]`);
            if (hiddenInput) {
                hiddenInput.value = JSON.stringify(data);
            }
        }
        
        // Helper function để đặt giá trị cho một repeater item
        function setItemValues(item, itemData) {
            // Đặt giá trị cho các input trực tiếp
            item.querySelectorAll('input[type="text"][data-name]').forEach(input => {
                const name = input.getAttribute('data-name');
                if (itemData[name]) {
                    input.value = itemData[name];
                }
            });
        
            // Đặt giá trị cho các repeater con
            item.querySelectorAll('.repeater').forEach(childRepeater => {
                const childId = childRepeater.id;
                if (itemData[childId] && Array.isArray(itemData[childId])) {
                    // Xóa hết items cũ trừ item đầu tiên
                    const childItems = childRepeater.querySelectorAll(':scope > .repeater-item');
                    childItems.forEach((childItem, index) => {
                        if (index > 0) childItem.remove();
                    });
        
                    const firstChildItem = childRepeater.querySelector(':scope > .repeater-item');
                    if (!firstChildItem) return;
        
                    // Đặt giá trị cho item đầu tiên
                    if (itemData[childId][0]) {
                        setItemValues(firstChildItem, itemData[childId][0]);
                    }
        
                    // Thêm các items con còn lại
                    itemData[childId].slice(1).forEach((childItemData, index) => {
                        const newChildItem = firstChildItem.cloneNode(true);
                        const newChildOrder = index + 1;
                        
                        newChildItem.setAttribute('data-order', newChildOrder);
                        
                        const childRemoveBtn = newChildItem.querySelector(':scope > .repeater-remove');
                        if (childRemoveBtn) {
                            childRemoveBtn.setAttribute('order', newChildOrder);
                        }
        
                        setItemValues(newChildItem, childItemData);
                        
                        // Chèn item con mới vào trước nút Add
                        const childAddButton = childRepeater.querySelector(`button[data-add="${childId}"]`);
                        childRepeater.insertBefore(newChildItem, childAddButton);
                    });
                }
            });
        }
        
        // Sử dụng:
        // setRepeaterData('fieldId', jsonData);
        // Helper function to get data from repeater item
        function getRepeaterItemData(item) {
            const data = {};
            
            // Xử lý các repeater-input-wrap
            item.querySelectorAll('.repeater-input-wrap').forEach(wrap => {
                // Trường hợp 1: Input trực tiếp
                const textInput = wrap.querySelector('input[type="text"]');
                if (textInput && textInput.getAttribute('data-name')) {
                    data[textInput.getAttribute('data-name')] = textInput.value;
                }
        
                // Trường hợp 2: Repeater con
                const childRepeater = wrap.querySelector('.repeater');
                if (childRepeater) {
                    const childId = childRepeater.id;
                    const childItems = [];
                    
                    // Lấy dữ liệu từ các item của repeater con
                    childRepeater.querySelectorAll(':scope > .repeater-item').forEach(childItem => {
                        childItems.push(getRepeaterItemData(childItem));
                    });
                    
                    // Nếu có dữ liệu từ repeater con, thêm vào data
                    if (childItems.length > 0) {
                        data[childId] = childItems;
                    }
                }
            });
            return data;
        }
    
        // Helper function to update hidden input
        function updateHiddenInput(repeater) {
            if (parseInt(repeater.getAttribute('data-level')) !== 1) return;
            
            let hiddenInput = document.querySelector(`input[name="${repeater.id}"]`);
            if (!hiddenInput) {
                hiddenInput = document.createElement('input');
                hiddenInput.type = 'hidden';
                hiddenInput.name = `${repeater.id}`;
                repeater.appendChild(hiddenInput);
            }
    
            const data = [];
            repeater.querySelectorAll(':scope > .repeater-item').forEach(item => {
                data.push(getRepeaterItemData(item));
            });
    
            hiddenInput.value = JSON.stringify(data);
        }
    
        // Input change handler
        function handleInput(e) {
            const repeater = e.target.closest('.repeater[data-level="1"]');
            if (repeater) {
                updateHiddenInput(repeater);
            }
        }
    
        // Add button handler
        function handleAdd(e) {
            if (!e.target.hasAttribute('data-add')) return;
            
            const addButton = e.target;
            const repeaterId = addButton.getAttribute('data-add');
            const repeater = addButton.closest('.repeater');
            
            if (repeater && repeater.id === repeaterId) {
                const items = repeater.querySelectorAll(':scope > .repeater-item');
                const maxOrder = Math.max(...Array.from(items).map(item => 
                    parseInt(item.getAttribute('data-order')) || 0
                ));
                
                const firstItem = repeater.querySelector(':scope > .repeater-item');
                if (!firstItem) return;
                
                const newItem = firstItem.cloneNode(true);
                const newOrder = maxOrder + 1;
                
                newItem.setAttribute('data-order', newOrder);
                
                const removeBtn = newItem.querySelector(':scope > .repeater-remove');
                if (removeBtn) {
                    removeBtn.setAttribute('order', newOrder);
                }
                
                newItem.querySelectorAll('input').forEach(input => {
                    input.value = '';
                });
                
                const childRepeaters = newItem.querySelectorAll('.repeater');
                childRepeaters.forEach(childRepeater => {
                    const firstChildItem = childRepeater.querySelector(':scope > .repeater-item');
                    
                    childRepeater.querySelectorAll(':scope > .repeater-item').forEach((item, index) => {
                        if (index > 0) {
                            item.remove();
                        }
                    });
                    
                    if (firstChildItem) {
                        firstChildItem.setAttribute('data-order', '0');
                        const childRemoveBtn = firstChildItem.querySelector(':scope > .repeater-remove');
                        if (childRemoveBtn) {
                            childRemoveBtn.setAttribute('order', '0');
                        }
                    }
                });
                
                repeater.insertBefore(newItem, addButton);
    
                const topRepeater = repeater.closest('.repeater[data-level="1"]');
                if (topRepeater) {
                    updateHiddenInput(topRepeater);
                }
            }
        }
    
        // Remove button handler
        function handleRemove(e) {
            if (!e.target.classList.contains('repeater-remove')) return;
            
            const removeButton = e.target;
            const repeaterId = removeButton.getAttribute('data-id');
            const order = removeButton.getAttribute('order');
            const repeater = removeButton.closest('.repeater');
            const remainingItems = repeater.querySelectorAll(':scope > .repeater-item');
            if (remainingItems.length <= 1) {
                return;
            }
            if (repeater && repeater.id === repeaterId) {
                
                const itemToRemove = repeater.querySelector(`:scope > .repeater-item[data-order="${order}"]`);
                if (itemToRemove) {
                    itemToRemove.remove();
                    

                    remainingItems.forEach((item, index) => {
                        item.setAttribute('data-order', index);
                        const removeBtn = item.querySelector(':scope > .repeater-remove');
                        if (removeBtn) {
                            removeBtn.setAttribute('order', index);
                        }
                    });
    
                    const topRepeater = repeater.closest('.repeater[data-level="1"]');
                    if (topRepeater) {
                        updateHiddenInput(topRepeater);
                    }
                }
            }
        }
        function debounce(callback, delay) {
            let timeoutId;
            return function (...args) {
                clearTimeout(timeoutId);
                timeoutId = setTimeout(() => callback.apply(this, args), delay);
            };
        }
        const debouncedHandleInput = debounce(handleInput, 100); // 500ms hoặc 1000ms tùy nhu cầu

        // Initialize hidden input
        updateHiddenInput(rootElement);
    
        // Add event listeners
        rootElement.addEventListener('input', debouncedHandleInput);
        rootElement.addEventListener('click', handleAdd);
        rootElement.addEventListener('click', handleRemove);
    
        // Return public methods
        return {
            updateData: () => updateHiddenInput(rootElement),
            getData: () => JSON.parse(document.querySelector(`input[name="${fieldId}"]`)?.value || '[]'),
            setData: (data) => setRepeaterData(fieldId, data)  // Thêm method này
        };
    }