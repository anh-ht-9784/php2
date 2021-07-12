<?php

namespace App\Controllers\Frontend;

use App\Controllers\BaseController;
use App\Models\Category;
use App\Models\Product;
use App\Models\User;


class HomeController extends BaseController
{
    public function index()
    {
        $product = Product::all()->take(9);
        $this->render('frontend.index', ['product' => $product]);
    }

    public function login()
    {
        $this->render('frontend.login');
    }
    public function logout(){
        unset($_SESSION[AUTH]);
        header('location: ' . BASE_URL);
    }
    public function addcart(){
        cart();

        header('location: ' . BASE_URL. "showCart");

    }
    public function showCart(){
        if(!isset($_SESSION['cart'])){
            header('Location:'.BASE_URL);
            exit;
            // giả sử trang index.php là hiển thị danh sách sản phẩm để khách mua
        }else{

            $list_id = array_keys($_SESSION['cart']);

            $list_id =implode(',',$list_id);

              $showcart = Product::all()->where('id',"IN",($list_id));
        }
        $this->render('frontend.showcart', ['showcart' => $showcart]);
    }

    public function post_login()
    {
        $email = isset($_POST['email']) == true ? trim($_POST['email']) : "";
        $password = isset($_POST['password']) == true ? trim($_POST['password']) : "";

        if (empty($email) || empty($password)) {
            header('location: ' . BASE_URL . 'login?msg=Tài khoản/mật khẩu không hợp lệ1');
            die;
        }

        $user = User::where('email', $email)->first();

        if (
            empty($user) ||
            !password_verify($password, $user->password)
        ) {
            header('location: ' . BASE_URL . 'login?msg=Tài khoản/mật khẩu không đúng1');
            die;
        }

        $_SESSION[AUTH] = [
            'id' => $user->id,
            'name' => $user->name,
            'email' => $user->email,
            'role' => $user->role
        ];
        header('location: ' . BASE_URL);
    }
}
