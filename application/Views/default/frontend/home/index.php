<h2>Danh sách Phim</h2>
<ul>
    <?php foreach ($movies['data'] as $movie): ?>
        <li>
            <h3><?php echo htmlspecialchars($movie['title']); ?></h3>
            <p><?php echo htmlspecialchars($movie['description']); ?></p>
            <p>Thời lượng: <?php echo htmlspecialchars($movie['duration']); ?> phút</p>
            <p>Trạng thái: <?php echo htmlspecialchars($movie['movie_status']); ?></p>
            <p>Chất lượng: <?php echo htmlspecialchars($movie['quality']); ?></p>
            <p>Lượt xem: <?php echo htmlspecialchars($movie['views']); ?></p>
            <p>Ngày tạo: <?php echo htmlspecialchars($movie['created_at']); ?></p>
            <p>Ngày cập nhật: <?php echo htmlspecialchars($movie['updated_at']); ?></p>
            <p>Trailer: <a href="<?php echo htmlspecialchars($movie['trailer']); ?>" target="_blank">Xem trailer</a></p>
        </li>
    <?php endforeach; ?>
</ul>

<h2>Danh sách Đạo diễn</h2>
<ul>
    <?php foreach ($directors['data'] as $director): ?>
        <li>
            <h3><?php echo htmlspecialchars($director['title']); ?></h3>
            <p>Tên gốc: <?php echo htmlspecialchars($director['original_name']); ?></p>
            <p>Ngày sinh: <?php echo htmlspecialchars($director['birth_date']); ?></p>
            <p>Nơi sinh: <?php echo htmlspecialchars($director['birth_place']); ?></p>
            <p>Giới tính: <?php echo htmlspecialchars($director['gender']); ?></p>
            <p>Chiều cao: <?php echo htmlspecialchars($director['height']); ?> cm</p>
            <p>Cân nặng: <?php echo htmlspecialchars($director['weight']); ?> kg</p>
            <p>Mạng xã hội:</p>
            <ul>
                <?php foreach (json_decode($director['social_media'], true) as $social): ?>
                    <li><?php echo htmlspecialchars($social['name_social']); ?>: <a href="<?php echo htmlspecialchars($social['url_social']); ?>" target="_blank"><?php echo htmlspecialchars($social['url_social']); ?></a></li>
                <?php endforeach; ?>
            </ul>
        </li>
    <?php endforeach; ?>
</ul>
