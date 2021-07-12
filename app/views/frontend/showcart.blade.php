

@extends('layouts.main')


@section('main-content')

<div style="margin-top: 200px">
            @foreach ($showcart as $c)


                <tbody>



                <h4 class="nomargin" id="name">{{$c->name}}</h4>




                    <div data-th="Price" id="Price" data-price="{{$c->price}}">{{$c->price}}</div>



                </tbody>

            @endforeach

    </div>




@endsection