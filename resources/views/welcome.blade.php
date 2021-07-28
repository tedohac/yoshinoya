@extends('layout.master', ['title' => 'Yoshinoya'])

@section('head')
    
    <!-- SB Admin Template -->
    <link href="{{ asset('styles/sb-admin.css?v=').time() }}" rel="stylesheet">

    <style>
        .font-20 {
            font-size: 20px;
        }
        .english-img {
            height: 240px;            
            background-image: url("{{ url('img/bg-yoshinoya.jpg') }}");
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
            margin-bottom: 40px;
        }
        .english-img h1 {
            position: absolute;
            top: 50%;
            left: 50%;
            -webkit-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
            color: #fff;
            font-size: 1.25rem;
            width: 100%;
            text-align: center;
        }
    </style>
@endsection

@section('content')
    @if(Auth::check())
        <div class="text-right">Welcome {{ auth()->user()->username_email }}<div>
        <br />
    @endif
    <div class="english-img">
        <h1>In a hundred years<br>the one thing that<br>remains unchanged<br>is the taste.</h1>
    </div>
    <br />

    <div class="row text-left">
        <div class="col-6">
            <h5>Pola Segitiga</h5>
            @php ($n = 10)
            
            @for($i=0; $i < $n; $i++)
                @for($j=0; $j<$n-$i; $j++)
                    _
                @endfor

                @for($j=0; $j<=$i; $j++)
                    X_
                @endfor

                <br/>
            @endfor
        </div>
        <div class="col-6">
            <h5>Pola Belah Ketupat</h5>
            @for($i=0; $i < $n/2; $i++)
                @for($j=0; $j<$n/2-$i; $j++)
                    _
                @endfor

                @for($j=0; $j<=$i; $j++)
                    X_
                @endfor

                <br/>
            @endfor
            @for($i=0; $i < $n/2; $i++)

                @for($j=0; $j<=$i; $j++)
                    _
                @endfor

                @for($j=0; $j<$n/2-$i; $j++)
                    X_
                @endfor
                <br/>
            @endfor
        </div>
    </div>

@endsection
