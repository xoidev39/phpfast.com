<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
    <script src="https://cdn.tailwindcss.com"></script>
    <?php if (isset($assets_header)) echo $assets_header; ?>
    <title><?php echo $title ?? 'Website'; ?></title>
</head>
<body class="bg-mainBlack text-white">
    <div class="page-wrapper xl:container mx-auto">
        
        <?php if (isset($view)) require $view; ?>
    </div>
</body>
<?php if (isset($assets_footer)) echo $assets_footer; ?>
</html>