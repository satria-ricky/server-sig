

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-lg-5 mt-4">

        <div class="card o-hidden border-0 shadow-lg my-5" >
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              
              <div class="col-lg">
                <div class="p-5">
                  <div class="text-center">
                  <h1 class="h4 text-gray-900">Login Page!</h1>
                  <img src="<?= base_url('assets/foto/tittle.png'); ?>" width="" class="card-img mb-3" style="width: 9rem;">
                    

                    <?= $this->session->flashdata('pesan'); ?>
                    
                  </div>
                  <form class="user" method="post" action="<?= base_url('c_login'); ?>">

                  <div class="form-group mb-3" >
                    <div class="input-group-prepend">
                      <!-- <label class="input-group-text" for="inputGroupSelect01">?</label> -->
                    </div>


                    <select class="custom-select " id="inputGroupSelect01" name="bidang">
                      <option value="none" selected="selected">--Login Sebagai?--</option>
                      <?php foreach($list_bidang as $bidang) : ?>  
                        <option value="<?= $bidang['bidang_id']; ?>"><?= $bidang['bidang_nama']; ?></option> 
                      <?php endforeach; ?>
                      
                    </select>
                    <?= form_error('bidang', '<small class="text-danger">', '</small>'); ?>
                  </div>



                    <div class="form-group">
                      <input type="text" class="form-control " id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Username..." name="username" value="<?= set_value('username'); ?>">
                      <?= form_error('username', '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control " id="exampleInputPassword" placeholder="Password..." name="password">
                      <?= form_error('password', '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                    </div><hr>
                    <button type="submit" class="btn btn-primary btn-user btn-block">Login</button>  
                  </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>

  