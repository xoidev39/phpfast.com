<?php
use App\Models\UtilsModel;
$UtilsModel = new UtilsModel();
$postTypes = $UtilsModel->getAllPostTypes();

// top inmenu 
// center in menu
// bottom inmenu
$menuItemsTop = [
    [
        "id" => "",
        "name" => "Dashboard",
        "desc" => "Overview of the system",
        "icon" => 'home', 
        "explain" => false,
        "url" => admin_url(),
        "children" => null
    ],
    [
        "id" => "files",
        "name" => "Files Manager",
        "desc" => "Files management",
        "icon" => 'folder',
        "explain" => false,
        "children" => [
            [
                "id" => "manage",
                "name" => "Files Manager",
                "desc" => "",
                "icon" => 'list',
                "explain" => false,
                "children" => []
            ],
            [
                "id" => "index",
                "name" => "Files Timeline",
                "desc" => "",
                "icon" => 'file-plus',
                "explain" => false,
                "children" => []
            ]
        ]
    ],
    [
        "id" => "posttype",
        "name" => "Post Types",
        "desc" => "Manage post types",
        "icon" => 'database', 
        "explain" => false,
        "children" => [
            [
                "id" => "index",
                "name" => "List types",
                "desc" => "",
                "icon" => 'list',
                "explain" => false,
                "children" => []
            ],
            [
                "id" => "add",
                "name" => "Add types",
                "desc" => "",
                "icon" => 'file-plus',
                "explain" => false,
                "children" => []
            ]
        ]
    ],
];

$menuItemsBottom = [
    [
        "id" => "users",
        "name" => "Users Manager",
        "desc" => "Manage users",
        "icon" => 'users', 
        "explain" => false,
        "children" => [
            [
                "id" => "index",
                "name" => "List user",
                "desc" => "",
                "icon" => 'list',
                "explain" => false,
                "children" => []
            ],
            [
                "id" => "add",
                "name" => "Add user",
                "desc" => "",
                "icon" => 'file-plus',
                "explain" => false,
                "children" => []
            ]
        ]
    ],
    [
        "id" => "options",
        "name" => "Site Settings",
        "desc" => "Site Settings",
        "icon" => 'settings', 
        "explain" => false,
        "children" => [
            [
                "id" => "index",
                "name" => "Site Settings",
                "desc" => "",
                "icon" => 'list',
                "explain" => false,
                "children" => []
            ],
            [
                "id" => "add",
                "name" => "Add option",
                "desc" => "",
                "icon" => 'file-plus',
                "explain" => false,
                "children" => []
            ]
        ]
    ],
    [
        "id" => "languages",
        "name" => "Languages",
        "desc" => "Đây là trang quản lý ngôn ngữ",
        "icon" => 'globe',
        "explain" => true,
        "children" => [
            [
                "id" => "index",
                "name" => "List language",
                "desc" => "",
                "icon" => 'list',
                "explain" => false,
                "children" => []
            ],
            [
                "id" => "add",
                "name" => "Add language",
                "desc" => "",
                "icon" => 'file-plus',
                "explain" => false,
                "url" => admin_url('languages').'?action=add',
                "children" => []
            ]
        ]
    ],
];


$menuItemsCenter = [];
// Thêm các Post Types có status "active" vào $menuItems sử dụng slug và foreach các terms của posttype
foreach ($postTypes as $postType) {
    if (isset($postType['status']) && strtolower($postType['status']) === 'active') {
        // Kiểm tra và lấy slug
        if (empty($postType['slug'])) {
            continue; // Bỏ qua nếu không có slug
        }
        if (empty($postType['menu']) || $postType['menu'] != $postType['slug']) {
            continue; // Bỏ qua nếu không có slug
        }

        $postTypeName = htmlspecialchars($postType['name']);
        $postTypeSlug = htmlspecialchars($postType['slug']);

        // Khởi tạo mảng children với các mục List và Add cho Post Type
        $children = [
            [
                "id" => "list_$postTypeSlug",
                "name" => "List $postTypeName",
                "desc" => "View all $postTypeName",
                "icon" => 'database',
                "explain" => false,
                "url" => admin_url("posts") . '?type=' . $postTypeSlug,
                "children" => []
            ],
            [
                "id" => "add_$postTypeSlug",
                "name" => "Add $postTypeName",
                "desc" => "Add new $postTypeName",
                "icon" => 'plus-square',
                "explain" => false,
                "url" => admin_url("posts/add") . '?type=' . $postTypeSlug,
                "children" => []
            ],
        ];

        foreach ($postTypes as $subtype) {
            // Kiểm tra sự tồn tại và giá trị của 'name' trong subtype
            if (empty($subtype['name']) || $subtype['menu'] == $subtype['slug']) {
                continue; 
            }
            
            if ($subtype['menu'] == $postType['slug']) {
                $children[] = [
                        "id" => "list_{$subtype['slug']}",
                        "name" => "List {$subtype['name']}",
                        "desc" => "View all {$subtype['name']}",
                        "icon" => 'database',
                        "explain" => false,
                        "url" => admin_url("posts") . '?type=' . $subtype['slug'],
                        "children" => null
                ];
            }
        }

        // Kiểm tra và lặp qua các terms của Post Type để thêm vào menu
        $postType['terms'] = is_string($postType['terms']) ? json_decode($postType['terms'], true) : $postType['terms'];
        if (isset($postType['terms']) && is_array($postType['terms'])) {
            foreach ($postType['terms'] as $term) {
                // Kiểm tra sự tồn tại và giá trị của 'name' và 'type' trong term
                if (empty($term['name']) || empty($term['type'])) {
                    continue; // Bỏ qua nếu thiếu thông tin
                }

                $termName = htmlspecialchars($term['name']);
                $termType = htmlspecialchars($term['type']);

                // Thêm mục List Terms
                $children[] = [
                    "id" => "list_{$postTypeSlug}_{$termType}",
                    "name" => "List $termName",
                    "desc" => "View all $termName for $postTypeName",
                    "icon" => 'grid',
                    "explain" => false,
                    "url" => admin_url("terms") . '?posttype='.$postTypeSlug. '&type=' . $termType,
                    "children" => []
                ];
            }
        }

        // Thêm Post Type vào menuItems
        $menuItemsCenter[] = [
            "id" => "$postTypeSlug",
            "name" => $postTypeName,
            "desc" => "Manage $postTypeName posts",
            "icon" => 'database', // Bạn có thể thay đổi icon tùy theo post type
            "explain" => false,
            "url" => "#", // Bạn có thể thêm URL gốc nếu cần
            "children" => $children
        ];
    }
}
$menuItems = array_merge($menuItemsTop, $menuItemsCenter, $menuItemsBottom);

?>

<div class="sidebar">
    

    <div class="main-nav p-3">
        <ul class="flex flex-col gap-2">
            <?php 
            $uri = request_uri();
            $uri = str_replace('admin/', '', $uri);
            $uri  = explode('/', $uri);
            foreach ($menuItems as $item): ?>
                <?php $isActive = isset($item['id']) && $item['id'] === $uri[0] ? 'active' : ''; ?>
                <?php 
                    if(($uri[0] === 'posts' && S_GET('type') == $item['id']) ||($uri[0] === 'terms' && S_GET('posttype') == $item['id']) ) {
                        $isActive = 'active'; 
                    }   
                 ?>
                <li class="menu-main relative transition <?= $isActive ?>">
                    <a onclick="return toggleDropdown(event, this);" href="<?= !empty($item['url']) ? $item['url'] : admin_url($item['id'].'/index/') ?>" class="<?php echo !empty($item['children']) ? 'haschild':'nochild'; ?> <?= $isActive ?> flex w-full relative p-2 items-center">
                        <i width="20px" height="20px" data-feather="<?= $item['icon'] ?>"></i>
                        <?= $item['name'] ?>
                        <label for="<?= $item['id'] ?>" class="absolute inset-0 h-full w-full cursor-pointer"></label>
                        <?php if (!empty($item['children'])){ ?>
                        <i class="fa-small" data-feather="chevron-right"></i>
                        <?php } ?>
                    </a>

                    <?php if (!empty($item['children'])):  ?>
                        <ul class="dropdown-menu duration-400 peer-checked:max-h-96 flex max-h-0 flex-col overflow-hidden transition-all duration-300">
                            <?php foreach ($item['children'] as $child):  ?>
                                <?php $isActiveChild = $isActive == 'active' && !empty($child['id']) && !empty($uri[1]) && $child['id'] === $uri[1] ? '' : ''; ?>
                                <li class="flex w-full relative p-2 items-center <?= $isActiveChild ?>">
                                    <i data-feather="<?= $child['icon'] ?>"></i>
                                    <a href="<?= !empty($child['url']) ? $child['url'] : admin_url($item['id'].'/'.$child['id']) ?>" class="w-full"><?= ucfirst($child['name']) ?></a>
                                </li>
                            <?php endforeach; ?>
                        </ul>
                    <?php endif; ?>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
</div>

<style>
.main-nav ul li a{ border-radius: 10px; padding-left: 10px; }
.main-nav ul li.menu-main > a svg{ margin-right: 15px; }
.sidebar.active .main-nav ul li.menu-main > a svg{ margin-right: 0; }
.sidebar.active .main-nav ul li.menu-main > a svg.fa-small{ display: none; }
.main-nav ul li ul li a.active, .main-nav ul li ul li a:hover{ background: inherit !important; color: inherit; }
.sidebar li > ul { max-height: 0px; transition: max-height 0.3s ease-in-out; }
.sidebar li.active > ul { max-height: inherit; transition: max-height 0.3s ease-in-out; padding-bottom: 10px; }
.sidebar li > ul li { margin: 0px; padding-left: 20px; }
.fa-small {
  width: 25px;
  height: 25px;
  position: absolute;
  right: 10px; 
}
.sidebar li.active .feather-chevron-right {
    transform: rotate(90deg);
    transition: transform 0.3s ease; /* Hiệu ứng xoay mượt */
}
</style>
