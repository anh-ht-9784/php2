@extends('layouts.backend')
@section('title',"Danh Sách Đơn Hàng")
@section('backend_content')












    <table class="table  container">
        <thead>

        <th  class="align-middle">Tên Danh Mục</th>
        <th  class="align-middle">email</th>
        <th  class="align-middle">Địa chỉ</th>
        <th  class="align-middle">tổng tiền</th>
        <th  class="align-middle">Hành động</th>
        </thead>
        <tbody>
        @foreach ($invoices as $c)
            <tr>
                <td  class="align-middle">{{$c->customer_name}}</td>
                <td  class="align-middle">{{$c->customer_phone_numbere}}</td>
                <td  class="align-middle">{{$c->customer_email}}</td>
                <td  class="align-middle">{{$c->customer_address}}</td>
                <td  class="align-middle">{{$c->total_price}}</td>
                <td  class="align-middle"><a href="invo-detail-list?id={{$c->id}}">Chi Tiết</a></td>



            </tr>
        @endforeach
        </tbody>
    </table>

@endsection
