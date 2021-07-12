@extends('layouts.backend')
@section('title',"Đơn hàng chi tiết")
@section('backend_content')











    <table class="table  container">
        <thead>

        <th  class="align-middle">ID sản phẩm</th>
        <th  class="align-middle">Số lượng</th>
        <th  class="align-middle">Giá</th>


        </thead>
        <tbody>
        @foreach ($invoice as $c)
            <tr>
                <td  class="align-middle">{{$c->product_id}}</td>
                <td  class="align-middle">{{$c->quantity}}</td>
                <td  class="align-middle">{{$c->unit_price}}</td>




            </tr>
        @endforeach
        </tbody>
    </table>

@endsection

