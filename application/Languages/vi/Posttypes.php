<?php
return [
    'posttype_add_title' => 'Thêm Loại Bài Viết',
    
    // CSRF Errors
    'csrf_failed' => 'Mã CSRF không hợp lệ.',

    // Add PostType Messages
    'posttype_add_success' => 'Loại bài viết đã được thêm thành công.',
    'posttype_add_error' => 'Đã xảy ra lỗi khi thêm loại bài viết.',

    // Edit PostType Messages
    'posttype_edit_success' => 'Loại bài viết đã được cập nhật thành công.',
    'posttype_edit_error' => 'Đã xảy ra lỗi khi cập nhật loại bài viết.',

    // Delete PostType Messages
    'posttype_delete_success' => 'Loại bài viết đã được xóa thành công.',
    'posttype_delete_error' => 'Đã xảy ra lỗi khi xóa loại bài viết.',

    // Validation Errors
    'language_not_found' => 'Không tìm thấy ngôn ngữ.',
    'slug_exist' => 'Slug đã tồn tại.',

    // PostType Name Validation
    'posttype_name_required' => 'Tên loại bài viết là bắt buộc.',
    'posttype_name_length' => 'Tên loại bài viết phải có độ dài từ 3 đến 150 ký tự.',

    // PostType Slug Validation
    'posttype_slug_required' => 'Slug của loại bài viết là bắt buộc.',
    'posttype_slug_length' => 'Slug của loại bài viết phải có độ dài từ 3 đến 150 ký tự.',
    'posttype_slug_lowercase' => 'Slug của loại bài viết phải viết thường.',

    // PostType Status Validation
    'posttype_status_required' => 'Trạng thái loại bài viết là bắt buộc.',
    'posttype_status_invalid' => 'Trạng thái loại bài viết không hợp lệ.',

    // Field Validation
    'field_type_required' => 'Loại trường là bắt buộc.',
    'field_label_required' => 'Nhãn trường là bắt buộc.',
    'field_name_required' => 'Tên trường là bắt buộc.',
    'field_name_lowercase' => 'Tên trường phải viết thường.',
    'field_required_invalid' => 'Giá trị bắt buộc cho trường không hợp lệ.',
    'field_visibility_required' => 'Trạng thái hiển thị trường là bắt buộc.',
    'field_visibility_invalid' => 'Trạng thái hiển thị trường không hợp lệ.',
    'field_collapsed_invalid' => 'Trạng thái thu gọn trường không hợp lệ.',

    // Term Validation
    'term_name_required' => 'Tên thuật ngữ là bắt buộc.',
    'term_type_required' => 'Loại thuật ngữ là bắt buộc.',
    'term_type_lowercase' => 'Loại thuật ngữ phải viết thường.',

    // *** Các khóa mới được bổ sung *** //

    // General
    'id' => 'ID',
    'name' => 'Tên',
    'slug' => 'Slug',
    'languages' => 'Ngôn ngữ',
    'terms' => 'Thuật ngữ',
    'status' => 'Trạng thái',
    'action' => 'Hành động',

    // Actions
    'edit' => 'Chỉnh sửa',
    'delete' => 'Xóa',

    // Page Titles and Buttons
    'posttype_list' => 'Danh sách Loại Bài Viết',
    'create_posttype' => 'Tạo Loại Bài Viết', // Đã chỉnh sửa từ 'creat_posttype'

    // Notifications for No Data
    'no_languages' => 'Không có ngôn ngữ nào.',
    'no_terms' => 'Không có thuật ngữ nào.',

    'posttype_edit_title' => 'Chỉnh sửa Loại Bài Viết',

    // Additional Localization Strings

    // Form Labels and Placeholders
    'posttype_name' => 'Tên Loại Bài Viết',
    'enter_posttype_name' => 'Nhập Tên Loại Bài Viết',
    'enter_slug' => 'Nhập Slug',

    // Status
    'status' => 'Trạng thái',
    'active' => 'Hoạt động',
    'inactive' => 'Không hoạt động',

    // Languages
    'languages' => 'Ngôn ngữ',

    // Terms
    'add_term' => 'Thêm Thuật ngữ',
    'term' => 'Thuật ngữ',
    'remove_term' => 'Xóa Thuật ngữ',

    // Field Management
    'fields' => 'Trường',
    'add_field' => 'Thêm Trường',

    // JSON Data
    'json_form_data' => 'Dữ liệu JSON của Form',

    // Submit Button
    'save_posttype' => 'Lưu Loại Bài Viết',

    // Additional Terms in the Template
    'enter_name' => 'Nhập Tên',
    'type_slug' => 'Loại (Slug)',
    'enter_type' => 'Nhập Loại',

    // Labels and Placeholders (Duplicate keys were merged)
    'label' => 'Nhãn',
    'enter_label' => 'Nhập Nhãn',
    'field_name_slug' => 'Tên Trường (Slug)',
    'enter_field_name' => 'Nhập Tên Trường',
    'description' => 'Mô tả',
    'enter_description' => 'Nhập Mô tả',
    'css_class_name' => 'Tên Lớp CSS',
    'enter_css_class_name' => 'Nhập Tên Lớp CSS',
    'placeholder' => 'Chỗ trống',
    'enter_placeholder' => 'Nhập Chỗ trống',
    'default_value' => 'Giá trị Mặc định',
    'enter_default_value' => 'Nhập Giá trị Mặc định',

    // Toggles
    'required' => 'Bắt buộc',
    'visibility' => 'Hiển thị',
    'multiple' => 'Nhiều',

    // Validation
    'min' => 'Min',
    'enter_min' => 'Nhập Min',
    'max' => 'Max',
    'enter_max' => 'Nhập Max',
    'rows' => 'Hàng',
    'enter_number_of_rows' => 'Nhập Số Hàng',

    // Options
    'options' => 'Tùy chọn',
    'value' => 'Giá trị',
    'add_option' => 'Thêm Tùy chọn',
    'group' => 'Nhóm',

    // File/Image Types
    'allow_types' => 'Cho phép Loại',
    'max_file_size_mb' => 'Kích thước Tệp Tối đa (MB)',
    'enter_max_file_size' => 'Nhập Kích thước Tệp Tối đa',

    // WYSIWYG
    'wysiwyg_notice' => 'Trường này sẽ sử dụng lớp <code>fast-editors</code> để gọi trình soạn thảo.',

    // Reference
    'choose_post_type_reference' => 'Chọn Loại Bài Viết Tham chiếu',
    'choose_post_type' => 'Chọn Loại Bài Viết',
    'post_status_filter' => 'Bộ lọc Trạng thái Bài Viết',

    // Repeater
    'fields_in_repeater' => 'Các Trường trong Repeater',
    'add_field_to_repeater' => 'Thêm Trường vào Repeater',
];
