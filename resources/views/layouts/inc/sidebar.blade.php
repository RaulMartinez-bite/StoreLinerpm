<div class="sidebar" data-color="purple" data-background-color="white" data-image="../assets/img/sidebar-1.jpg">
    <div class="logo"><a href="{{ url('/') }}" class="simple-text logo-normal">
        StoreLine
      </a></div>
    <div class="sidebar-wrapper">
      <ul class="nav">
        <li class="nav-item {{ Request::is('dashboard') ? 'active':'' }}  ">
          <a class="nav-link" href="{{ url('dashboard') }}">
            <i class="material-icons">dashboard</i>
            <p>Dashboard</p>
          </a>
        </li>

        <li class="nav-item {{ Request::is('categories') ? 'active':'' }}">
          <a class="nav-link" href="{{ url('categories') }}">
            <i class="material-icons">person</i>
            <p>Categorias</p>
          </a>
        </li>
        <li class="nav-item {{ Request::is('add-category') ? 'active':'' }}">
            <a class="nav-link" href="{{ url('add-category') }}">
              <i class="material-icons">person</i>
              <p>Agregar Categoria</p>
            </a>
        </li>
        <li class="nav-item {{ Request::is('products') ? 'active':'' }}">
        <a class="nav-link" href="{{ url('products') }}">
            <i class="material-icons">person</i>
            <p>Productos</p>
        </a>
        </li>
        <li class="nav-item {{ Request::is('add-products') ? 'active':'' }}">
            <a class="nav-link" href="{{ url('add-products') }}">
            <i class="material-icons">person</i>
            <p>Agregar Productos</p>
            </a>
        </li>
        <li class="nav-item {{ Request::is('orders') ? 'active':'' }}">
          <a class="nav-link" href="{{ url('orders') }}">
            <i class="material-icons">content_paste</i>
            <p>Ordenes</p>
          </a>
        </li>
        <li class="nav-item {{ Request::is('users') ? 'active':'' }}">
            <a class="nav-link" href="{{ url('users') }}">
              <i class="material-icons">persons</i>
              <p>Usuarios</p>
            </a>
        </li>

      </ul>
    </div>
  </div>
