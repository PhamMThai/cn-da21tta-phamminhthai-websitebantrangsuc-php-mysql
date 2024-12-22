<?php
$current_page = basename($_SERVER['PHP_SELF']); // Lấy tên file hiện tại
$action = isset($_GET['action']) ? $_GET['action'] : ''; // Lấy action từ URL
?>

<div class="sidebar">
    <h3>Danh Mục Quản Lý</h3>
    <ul class="sidebar-menu">
        <li>
            <a href="index.php" class="<?php echo ($current_page == 'index.php' && empty($action)) ? 'active' : ''; ?>">
                <i class="fas fa-chart-line"></i> <span>Thống Kê</span>
            </a>
        </li>
        <li>
            <a href="index.php?action=quanlydanhmucsanpham&query=them" class="<?php echo ($action == 'quanlydanhmucsanpham') ? 'active' : ''; ?>">
                <i class="fas fa-layer-group"></i> <span>Quản Lý Danh Mục Sản Phẩm</span>
            </a>
        </li>
        <li>
            <a href="index.php?action=quanlysp&query=them" class="<?php echo ($action == 'quanlysp') ? 'active' : ''; ?>">
                <i class="fas fa-box-open"></i> <span>Quản Lý Sản Phẩm</span>
            </a>
        </li>
        <li>
            <a href="index.php?action=quanlydanhmucbaiviet&query=them" class="<?php echo ($action == 'quanlydanhmucbaiviet') ? 'active' : ''; ?>">
                <i class="fas fa-list"></i> <span>Quản Lý Danh Mục Bài Viết</span>
            </a>
        </li>
        <li>
            <a href="index.php?action=quanlybaiviet&query=them" class="<?php echo ($action == 'quanlybaiviet') ? 'active' : ''; ?>">
                <i class="fas fa-newspaper"></i> <span>Quản Lý Bài Viết</span>
            </a>
        </li>
        <li>
            <a href="index.php?action=quanlydonhang&query=lietke" class="<?php echo ($action == 'quanlydonhang') ? 'active' : ''; ?>">
                <i class="fas fa-truck"></i> <span>Quản Lý Đơn Hàng</span>
            </a>
        </li>
    </ul>
</div>
