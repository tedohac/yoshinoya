
    <!-- Navigation -->
    <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-white border-bottom shadow-sm">
        <div class="container">
        <a class="navbar-brand p-0 m-0 text-align-center" href="{{ route('/') }}">
            <img class="pc-only" src="{{ url('img/yoshinoya-header.PNG') }}" width="160">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                
                @if(Auth::check())
                    @foreach(\App\Master_role_menu::getMenu(auth()->user()->role_id) as $menu)
                        <li class="nav-item ml-2 mb-1">
                            <a class="btn btn-white btn-block px-1 py-0 text-left" href="{{ route('logout') }}">{{ $menu->menu_name }}</a>
                        </li>
                    @endforeach

                <li class="nav-item ml-2 mb-1">
                    <a class="btn btn-danger btn-block px-1 py-0 text-left" href="{{ route('logout') }}">Logout</a>
                </li>
                
                @else
                
                <li class="nav-item ml-2 mb-1">
                    <a class="btn btn-success bg-yoshinoya btn-block px-1 py-0" href="{{ route('login') }}">Login</a>
                </li>
                
                @endif
            </ul>
        </div>
        </div>
    </nav>