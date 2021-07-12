<?php
namespace App\Controllers\Backend;
use App\Controllers\BaseController;
use App\Models\Product;


class ProductController extends BaseController{
    public function index(){
        $product = Product::all();
        $this->render('backend.product_list', ['product' => $product]);
    }
    public  function  addProduct(){
        $this->render('backend.add_product');

    }
    public  function  editProduct(){
        $product = Product::find($_GET['id']);

        $this->render('backend.edit_product', ['product' => $product]);

    }
    public function saveProduct(){
        $model = new Product();
        $file_uploaded = $_FILES['file'];
        $LINK = "public/image/".$file_uploaded["name"];
        $_POST['image'] = basename($file_uploaded["name"]);
        move_uploaded_file($_FILES['file']['tmp_name'], $LINK );
        $model->fill($_POST);
//
        $model->save();;
        header('location:'. BASE_URL. "admin");
    }
    public function saveEditProduct(){

        $model = Product::find($_GET['id']);
//        var_dump($_GET['id']);die;
        if(!$model){
            header('location:'. BASE_URL. "admin");
            die;
        }
        if($_FILES['hinh']['size'] > 0){
            $file_uploaded = $_FILES['hinh'];
            $LINK = "public/image/".$file_uploaded["name"];
            $_POST['image'] = basename($file_uploaded["name"]);
            move_uploaded_file($_FILES['hinh']['tmp_name'], $LINK );

        }else{
            $_POST['image']  = $_POST['hinh2'];
        }

        $model->fill($_POST);
//        var_dump($_POST);die;
        $model->save();;
        header('location:'. BASE_URL. "admin");
//        $model = Product::find($_GET['id']);
//        $model->fill($_POST)->save();


    }
    public  function deleteProduct(){
        $model = new Product();
        $model->find($_GET['id'])->Delete();
        header('location:'. BASE_URL. "admin");
    }
}