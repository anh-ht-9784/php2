<?php
namespace App\Controllers\Backend;
use App\Controllers\BaseController;
use App\Models\Category;



class CategoryController extends BaseController{
    public function index(){
        $category= Category::all();
        $this->render('backend.cate_list', ['category' => $category]);
    }
    public  function delete(){
        $model = new Category();
        $model->find($_GET['id'])->Delete();
        header('location:'. BASE_URL. "admin/cate-list");
    }
    public  function  addcate(){
        $this->render('backend.add_cate');

    }
    public function savecate(){
        $model = new Category();
        $model->fill($_POST);
        $model->save();;
        header('location:'. BASE_URL. "admin/cate-list");
    }
    public  function  editCate(){
        $category = Category::find($_GET['id']);

        $this->render('backend.edit_cate', ['category' => $category]);

    }
    public function saveEditCate(){
        $id = $_GET['id'];
        $model = Category::find($id);

       if (empty($_POST['show_menu'])){
           $_POST['show_menu'] = 0;
       }
        $model->fill($_POST);
        $model->save();
        header('location:'. BASE_URL. "admin/cate-list");
    }
}