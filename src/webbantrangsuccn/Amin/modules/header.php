<?php
if (isset($_GET['dangxuat']) && $_GET['dangxuat'] == 1) {
    unset($_SESSION['dangnhap']);
    header('Location: login.php');
    exit();
}
?>

<!-- Header -->
<div class="header">
    <div class="title">
        <h3>Phạm Minh Thái</h3>
    </div>
    <div class="logout">
        <a href="index.php?dangxuat=1">
            <i class="fas fa-sign-out-alt"></i> Đăng xuất: 
            <?php if (isset($_SESSION['dangnhap'])) echo $_SESSION['dangnhap']; ?>
        </a>
    </div>
</div>

<!-- CSS trong header.php -->
<style>
    /* Header chính */
    .header {
        background-color: #004D40; /* Nền xanh đậm */
        color: white;
        display: flex;
        justify-content: space-between; /* Căn trái và phải */
        align-items: center;
        padding: 10px 20px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        z-index: 1000;
    }

    /* Tiêu đề */
    .header .title h3 {
        margin: 0;
        font-size: 24px;
        font-weight: bold;
    }

    /* Đăng Xuất */
    .header .logout a {
        color: #FFEB3B; /* Chữ vàng */
        text-decoration: none;
        font-weight: bold;
        border: 2px solid #FFEB3B;
        border-radius: 5px;
        padding: 5px 10px;
        transition: all 0.3s ease;
    }

    .header .logout a:hover {
        background-color: #FFEB3B;
        color: #333; /* Chữ đen khi hover */
        transform: scale(1.05);
    }

    .header .logout i {
        margin-right: 5px;
    }
</style>
