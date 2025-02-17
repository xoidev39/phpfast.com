<!DOCTYPE html>
<html>

<head>
    <title><?php echo $title; ?></title>
    <!-- <script src="https://cdn.tailwindcss.com"></script> -->
    <?= !empty($assets_header) ? $assets_header : ''; ?>
</head>

<body>
    <div class="page-wrapper">
        <div class="flex flex-wrap">
            <div class="content-wrapper">
                <div class="min-h-screen flex flex-col">
                    <?= $header; ?>
                    <?php if (isset($view)) require $view; ?>
                </div>
            </div>

            <?= $footer; ?>
        </div>
    </div>
    <?= !empty($assets_footer) ? $assets_footer : ''; ?>
</body>

</html>