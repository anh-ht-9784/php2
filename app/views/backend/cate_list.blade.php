@extends('layouts.backend')
@section('title',"Danh Sách Sản Phẩm")
@section('backend_content')




    <a href="new-cate" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i> Tạo Mới</a>







    <table class="table  container">
        <thead>

        <th  class="align-middle">ID</th>
        <th  class="align-middle">Tên Danh Mục</th>

        <th  class="align-middle">Hành Động</th>

        </thead>
        <tbody>
        @foreach ($category as $c)
            <tr>
                <td  class="align-middle">{{$c->id}}</td>
                <td  class="align-middle">{{$c->cate_name}}</td>

                <td  class="align-middle">
                    <a href="edit-cate?id={{$c->id}}">Sửa</a>
                    <a href="delete-cate?id={{$c->id}}">Xóa</a></td>
            </tr>
        @endforeach
        </tbody>
    </table>

@endsection
