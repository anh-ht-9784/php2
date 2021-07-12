@extends('layouts.backend')
@section('title', "Update Danh Mục")
@section('backend_content')
    <form class="user" action="{{BASE_ADMIN }}saveEditCate?id={{$category->id}}" method="POST"  >
        <div class="form-group row container">
            <div class="col-sm-3 mb-3 mb-sm-0">
                <input type="text" name="cate_name" class="form-control form-control-user"
                       value="{{$category->cate_name}}">
            </div>
            <div class="col-sm-9 mt-10 mb-3 mb-sm-0">
                <input type="text" name="desc" class="form-control form-control-user"
                       value="{{$category->desc}}">
            </div>
            <div class="col-sm-6 mt-5 mb-3 mb-sm-0">
                <label for="">Hiển thị ở menu</label>
                <input type="checkbox" @if($category->show_menu == 1)  checked  @endif
              name="show_menu" value="1">
            </div>


        </div>
        <button class="ml-4 d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="submit">Lưu </button>
    </form>
@endsection