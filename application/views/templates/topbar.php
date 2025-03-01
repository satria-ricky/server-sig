

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Search -->
          <h3 class="ml-2 mt-2 font-weight-bold "><?= $judul;?> </h3>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto"> 

            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><?= $data_pengguna['admin_nama'];  ?></span>
                <img class="img-profile rounded-circle" src="<?= base_url('assets/foto/admin/').$data_pengguna['admin_foto']; ?>"> <i class="fas fa-cog ml-2"></i> 
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="<?= base_url(); ?>c_profile">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" target = '_blank' href="https://ntb.kemenag.go.id">
                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                  Website Kemenag NTB
                </a>
                <a class="dropdown-item" href="<?= base_url(); ?>c_dashboard">
                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                  Dashboard
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>
            <!-- <div class="ml-auto">

               <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
                <i class="fas fa-cog"></i>    
                </button>
                <div class="dropdown-menu">
                 
                    <a target = '_blank' href="https://ntb.kemenag.go.id" class="btn btn-facebook btn">Website Kemenag NTB</a>
                     <a href="<?= base_url(); ?>c_dashboard" class="btn btn-facebook btn">Dashboard</a>
                     <a href="" class="btn btn-google btn" data-toggle="modal" data-target="#logoutModal"></i>Logout</a>
                 
                </div>

            </div> -->
          </ul>
        </nav>
        <!-- End of Topbar -->