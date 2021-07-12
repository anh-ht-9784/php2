<?php
const BASE_URL = "http://localhost/php2/asm/";
const BASE_ADMIN = BASE_URL .'admin/';
const PUBLIC_URL = BASE_URL . 'public/';
const PUBLIC_THEME = PUBLIC_URL.'theme/';
const THEME_ASSET_URL = PUBLIC_URL . 'image/';
const  IMAGE_UPLOAD = "public/image/";
const AUTH = 'session_auth';
const MEMBER_ROLE = 1;
const ADMIN_ROLE = 200;


function checkAuth($role = MEMBER_ROLE){
    if(
        !isset($_SESSION[AUTH])
        || empty($_SESSION[AUTH])
        || $_SESSION[AUTH]['role'] == $role
    ){
        header('location: ' . BASE_URL . 'login');die;
    }
}
function cart(){
    $_SESSION['cart'];

    if(empty($_GET['id'])){
        // không có id sản phẩm thì chuyển thẳng về trang danh sách.
        header('Location:'.BASE_URL);
    }

    $idsp = intval($_GET['id']); // lấy số nguyên thì biến idsp luôn là số, không sợ lỗi.


    if($idsp <=0){
        // đầu vào không phải là số hoặc số âm thì không chấp nhận.
        header('Location:index.php');
    }

//====== kiểm tra giỏ hàng: Giỏ hàng chưa hoạt động thì khai báo sẵn mảng
    if(!isset($_SESSION['cart']))
        $_SESSION['cart'] = [];
    if(!isset($_SESSION['cart'][$idsp]))
    { // chưa có sản phẩm trong giỏ hàng
        $_SESSION['cart'][$idsp] = 1;
    }else {// sản phẩm này đã có rồi, cần tăng số lượng
        $_SESSION['cart'][$idsp] ++;
    }



}

?>
