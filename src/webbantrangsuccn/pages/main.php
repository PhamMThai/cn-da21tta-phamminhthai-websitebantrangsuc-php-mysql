<div id="main">

    <?php
    include("sidebar/sidebar.php");  // Sidebar được nạp tại đây
    ?>

    <div class="maincontent">
        <?php
        if (isset($_GET['quanly'])) {
            $tam = $_GET['quanly'];
        } else {
            $tam = '';
        }

        // Xử lý nạp nội dung tương ứng
        switch ($tam) {
            case 'danhmucsanpham':
                include("main/danhmuc.php");
                break;
            case 'giohang':
                include("main/giohang.php");
                break;
            case 'lienhe':
                include("main/lienhe.php");
                break;
            case 'sanpham':
                include("main/sanpham.php");
                break;
            case 'dangky':
                    include("main/dangky.php");
                    break;
            case 'thanhtoan':
                    include("main/thanhtoan.php");
                    break;
            case 'dangnhap':
                    include("main/dangnhap.php");
                    break;
            case 'timkiem':
                    include("main/timkiem.php");
                    break;
            case 'camon':
                    include("main/camon.php");
                    break;
            case 'doimatkhau':
                    include("main/doimatkhau.php");
                    break;
            case 'danhmucbaiviet': // Thêm case này
                    include("main/danhmucbaiviet.php");
                    break;
            case 'baiviet':
                    include("main/baiviet.php");
                    break;
            case 'vanchuyen':
                    include("main/vanchuyen.php");
                    break;
            case 'thongtinthanhtoan':
                    include("main/thongtinthanhtoan.php");
                    break; 
            case 'donhangdadat':
                    include("main/donhangdadat.php");
                    break;             
            default:
                include("main/index.php");  // Nạp trang chủ mặc định
                break;
        }
        ?>
    </div>

</div>
