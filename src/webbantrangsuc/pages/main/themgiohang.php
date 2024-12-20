<?php
session_start();
?>
<?php
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);

    session_start();
    include('../../Amin/config/config.php'); // Kết nối cơ sở dữ liệu
    
    // Kiểm tra kết nối cơ sở dữ liệu
    if (!$mysqli) {
        die("Lỗi kết nối cơ sở dữ liệu: " . mysqli_connect_error());
    }

    // Xóa từng sản phẩm khỏi giỏ hàng
    if (isset($_GET['action']) && $_GET['action'] == 'delete' && isset($_GET['id'])) {
        $productId = $_GET['id'];
        foreach ($_SESSION['cart'] as $key => $cart_item) {
            if ($cart_item['id'] == $productId) {
                unset($_SESSION['cart'][$key]);
                break;
            }
        }
        $_SESSION['cart'] = array_values($_SESSION['cart']); // Cập nhật lại chỉ mục của mảng
        header('Location: ../../index.php?quanly=giohang');
        exit();
    }

    // Xóa tất cả sản phẩm khỏi giỏ hàng
    if (isset($_GET['action']) && $_GET['action'] == 'clear') {
        unset($_SESSION['cart']);
        header('Location: ../../index.php?quanly=giohang');
        exit();
    }

    // Tăng số lượng sản phẩm
    if (isset($_GET['action']) && $_GET['action'] == 'increase' && isset($_GET['id'])) {
        $productId = $_GET['id'];
        foreach ($_SESSION['cart'] as &$cart_item) {
            if ($cart_item['id'] == $productId) {
                $cart_item['soluong'] += 1;
                break;
            }
        }
        header('Location: ../../index.php?quanly=giohang');
        exit();
    }

    // Giảm số lượng sản phẩm
    if (isset($_GET['action']) && $_GET['action'] == 'decrease' && isset($_GET['id'])) {
        $productId = $_GET['id'];
        foreach ($_SESSION['cart'] as &$cart_item) {
            if ($cart_item['id'] == $productId) {
                if ($cart_item['soluong'] > 1) {
                    // Chỉ giảm số lượng nếu lớn hơn 1
                    $cart_item['soluong'] -= 1;
                }
                // Nếu số lượng là 1, không thực hiện xóa sản phẩm, giữ nguyên số lượng
                break;
            }
        }
        header('Location: ../../index.php?quanly=giohang');
        exit();
    }

    // Thêm sản phẩm vào giỏ hàng
    if (isset($_POST['themgiohang']) && isset($_POST['idsanpham'])) {
        $id = $_POST['idsanpham'];
        $soluong = 1;

        $sql = "SELECT * FROM tbl_sanpham WHERE id_sanpham = '$id' LIMIT 1";
        $query = mysqli_query($mysqli, $sql);

        if (!$query) {
            die("Lỗi truy vấn: " . mysqli_error($mysqli));
        }

        $row = mysqli_fetch_array($query);
        if ($row) {
            $new_product = array(
                'tensanpham' => $row['tensanpham'],
                'id' => $id,
                'soluong' => $soluong,
                'giasanpham' => $row['giasanpham'],
                'hinhanh' => $row['hinhanh'],
                'masanpham' => $row['masanpham']
            );

            if (isset($_SESSION['cart'])) {
                $found = false;
                foreach ($_SESSION['cart'] as &$cart_item) {
                    if ($cart_item['id'] == $id) {
                        $cart_item['soluong'] += 1;
                        $found = true;
                        break;
                    }
                }
                if (!$found) {
                    $_SESSION['cart'][] = $new_product;
                }
            } else {
                $_SESSION['cart'] = array($new_product);
            }
        }

        header('Location: ../../index.php?quanly=giohang');
        exit();
    } else {
        echo "Không có dữ liệu giỏ hàng.";
    }
?>
