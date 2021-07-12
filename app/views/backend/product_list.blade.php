@extends('layouts.backend')
@section('title',"Danh Sách Sản Phẩm")
@section('backend_content')




    <a href="admin/new-product" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i> Tạo Mới</a>







        <table class="table  container">
            <thead>

            <th  class="align-middle">Name</th>
            <th  class="align-middle">ẢNh Sản Phẩm</th>
            <th  class="align-middle"> Giá Sản Phẩm</th>
            <th  class="align-middle">CHi Tiết SP</th>
            <th  class="align-middle">Hành Động</th>

            </thead>
            <tbody>
            @foreach ($product as $c)
                <tr>
                    <td  class="align-middle">{{$c->name}}</td>
                    <td  class="align-middle"><img src="{{IMAGE_UPLOAD.$c->image}}" alt="" width="200px" height="200px"></td>
                    <td  class="align-middle">{{$c->price}}</td>

                    <td  class="align-middle">{{$c->detail}}</td>
                    <td  class="align-middle">
                        <a href="admin/edit-product?id={{$c->id}}">Sửa</a>
                       <a href="admin/delete-product?id={{$c->id}}">Xóa</a></td>
                </tr>
            @endforeach
            </tbody>
        </table>

@endsection