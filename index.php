<?php
session_start();
$url = isset($_GET['url']) == true
    ? $_GET['url'] : "/";

require_once './commons/uitls.php';
require_once './vendor/autoload.php';
require_once './config/database.php';

use App\Controllers\Frontend\HomeController;
use App\Controllers\Backend\ProductController;
use App\Controllers\Backend\CategoryController;
use App\Controllers\Backend\InvoicesController;
use App\Controllers\Backend\InvoiceDetailController;
switch ($url) {
    case "/":

        $ctr = new HomeController();
        $ctr->index();


        break;
    case  "login":
        $ctr = new HomeController();
        $ctr->login();
        break;

    case  "post-login":
        $ctr = new HomeController();
        $ctr->post_login();
        break;
    case  "logout":
        $ctr = new HomeController();
        $ctr->logout();
        break;
    case  "admin":
        checkAuth();
        $ctr = new ProductController();
        $ctr->index();
        break;
    case  "admin/new-product":
        checkAuth();
        $ctr = new ProductController();
        $ctr->addProduct();
        break;
    case  "admin/edit-product":
        checkAuth();
        $ctr = new ProductController();
        $ctr->editProduct();
        break;
    case  "admin/saveProduct":
        checkAuth();
        $ctr = new ProductController();
        $ctr->saveProduct();
        break;
    case  "admin/saveEditProduct":
        checkAuth();
        $ctr = new ProductController();
        $ctr->saveEditProduct();
        break;
    case  "admin/delete-product":
        checkAuth();
        $ctr = new ProductController();
        $ctr->deleteproduct();
        break;
    case  "admin/cate-list":
        checkAuth();
        $ctr = new CategoryController();
        $ctr->index();
        break;
    case  "admin/invo-list":
        checkAuth();
        $ctr = new InvoicesController();
        $ctr->index();
        break;
    case  "admin/invo-detail-list":
        checkAuth();
        $ctr = new InvoiceDetailController();
        $ctr->lists();
        break;
    case  "admin/delete-cate":
        checkAuth();
        $ctr = new CategoryController();
        $ctr->delete();
        break;
    case  "admin/new-cate":
        checkAuth();
        $ctr = new CategoryController();
        $ctr->addcate();
        break;
    case  "admin/saveCate":
        checkAuth();
        $ctr = new CategoryController();
        $ctr->savecate();
        break;
    case  "admin/edit-cate":
        checkAuth();
        $ctr = new CategoryController();
        $ctr->editCate();
        break;
    case  "admin/saveEditCate":
        checkAuth();
        $ctr = new CategoryController();
        $ctr->saveEditcate();
        break;
    case  "addCart":

        $ctr = new HomeController();
        $ctr->addCart();
        break;
    case  "showCart":

        $ctr = new HomeController();
        $ctr->showCart();
        break;
    default:
        echo "Not found!";
        break;
}
?>