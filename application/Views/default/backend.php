<!DOCTYPE html>
<html>

<head>
    <title><?php echo $title; ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <?= !empty($assets_header) ? $assets_header : ''; ?>
</head>

<body>
    <div class="page-wrapper">
        <div class="flex flex-wrap ">
            <?= $sidebar; ?>
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