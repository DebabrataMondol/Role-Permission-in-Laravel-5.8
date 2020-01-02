<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
  <a class="navbar-brand" href="{{url('/home')}}">Role Permission System</a>
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarResponsive">
    <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
      @guest
      <li><a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a></li>
      <li><a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a></li>
      <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
        <a class="nav-link" href="index.html">
          <i class="fa fa-fw fa-dashboard"></i>
          <span class="nav-link-text">Dashboard</span>
        </a>
      </li>
      @elseif(Auth::user()->id == 1)
      <li class="nav-item" data-toggle="tooltip" data-placement="right">
        <a class="nav-link" href="{{ route('users.index') }}">
          <i class="fa fa-fw fa-area-chart"></i>
          <span class="nav-link-text">Manage Users</span>
        </a>
      </li>
      <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
        <a class="nav-link" href="{{ route('roles.index') }}">
          <i class="fa fa-fw fa-table"></i>
          <span class="nav-link-text">Manage Role</span>
        </a>
      </li>
      <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
        <a class="nav-link" href="{{ route('products.index') }}">
          <i class="fa fa-fw fa-table"></i>
          <span class="nav-link-text">Manage Products</span>
        </a>
      </li>
      <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
        <a class="nav-link" href="{{ route('members.index') }}">
          <i class="fa fa-fw fa-table"></i>
          <span class="nav-link-text">Manage Members</span>
        </a>
      </li>
      @else
      <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
        <a class="nav-link" href="{{ route('products.index') }}">
          <i class="fa fa-fw fa-table"></i>
          <span class="nav-link-text">Manage Products</span>
        </a>
      </li>
      <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
        <a class="nav-link" href="{{ route('members.index') }}">
          <i class="fa fa-fw fa-table"></i>
          <span class="nav-link-text">Manage Members</span>
        </a>
      </li>
      @endguest
    </ul>
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <h5>
          <a class="nav-link">
          Welcome {{Auth::user()->name}}
        </a>
        </h3>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
          <i class="fa fa-fw fa-sign-out"></i>Logout</a>
        </li>
      </ul>
    </div>
  </nav>