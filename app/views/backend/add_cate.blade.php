
@extends('layouts.backend')
@section('title', "Tạo Mới Danh Mục")
@section('backend_content')
    <form class="user" action="saveCate" method="POST" multiple="" >
        <div class="form-group row container">
            <div class="col-sm-3 mb-3 mb-sm-0">
                <input type="text" name="cate_name" class="form-control form-control-user"
                       placeholder="Tên Sản Phẩm">
            </div>
            <div class="col-sm-9 mt-10 mb-3 mb-sm-0">
                <input type="text" name="desc" class="form-control form-control-user"
                       placeholder="Ghi CHú">
            </div>
            <div class="col-sm-6 mt-5 mb-3 mb-sm-0">
                <label for="">Hiển thị ở menu</label>
                <input type="checkbox" name="show_menu" value="1">
            </div>


        </div>
        <button class="ml-4 d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="submit">Tạo Mới</button>
    </form>
@endsection