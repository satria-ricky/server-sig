

  

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <!-- <h1 class="h3 mb-4 text-gray-800">Daftar tempat ibadah</h1> -->
          <!-- <h3 class="ml-2 mb-3 font-weight-bold ">Daftar Masjid</h3> -->


          <!-- DataTales Example -->
          <div class="card shadow">
            <div class="card-header py-3">
            
           
                   
               

                <select class="custom-select col-3 ml-auto" id="jenis_ibadah_peta" name="scrolljenis" required="">
                      <option value="">--Pilih jenis tempat ibadah--</option>
                </select>

            
                    
              <div class="btn-group">
                
                <select class="custom-select ml-2 mr-2" id="kabupaten_peta" name="scrollkab" required="">
                      <option value="">--Pilih kabupaten--</option>
                </select>

                    <button type="button" class="btn btn-primary btn-sm ml-2 mr-2" id="filter_peta">Filter</button> 


              </div>
            </div>


                <div id="mapid" style="height: 450px;"></div>
            

            </div>
          </div>

<!-- Earnings (Monthly) Card Example -->
            
        

        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->





<?php foreach($list as $ti ) : ?>
  <div class="modal fade" id="modal_detail<?= $ti['ti_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable">
      <div class="modal-content">
        <div class="modal-header">
             <h5 class="modal-title" id="exampleModalLabel mb-2">
              <? if ($ti['ti_jenis'] == '1'): ?>
                <p>Detail Data Masjid</p>
              <? elseif ($ti['ti_jenis'] == '2'): ?>
                <p>Detail Data Pura</p>
              <? elseif ($ti['ti_jenis'] == '3'): ?>
                <p>Detail Data Gereja</p>
                <? elseif ($ti['ti_jenis'] == '4'): ?>
                <p>Detail Data Vihara</p>
                <? elseif ($ti['ti_jenis'] == '5'): ?>
                <p>Detail Data Klenteng</p>
              <? endif; ?>
             </h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                        <div class="modal-body">

                          <? if ($ti['ti_jenis'] == '1'): ?>
                              <table class="table table-bordered">
                                <tbody>
                                  <tr>
                                    <td>Tipologi</td>
                                    <td><?= $ti['ti_tipologi']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Nama</td>
                                    <td><?= $ti['ti_nama']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Alamat</td>
                                    <td><?= $ti['ti_alamat']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Kabupaten</td>
                                    <td><?= $ti['kab_nama']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Kecamatan</td>
                                    <td><?= $ti['kec_nama']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Luas tanah</td>
                                    <td><?= $ti['ti_luas_tanah']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Status tanah</td>
                                    <td><?= $ti['ti_status_tanah']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Luas bangunan</td>
                                    <td><?= $ti['ti_luas_bangunan']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Tahun berdiri</td>
                                    <td><?= $ti['ti_tahun_berdiri']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Jamaah</td>
                                    <td><?= $ti['ti_jamaah']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Imam</td>
                                    <td><?= $ti['ti_imam']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Khatib</td>
                                    <td><?= $ti['ti_khatib']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Remaja</td>
                                    <td><?= $ti['ti_remaja']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>No. Telepon</td>
                                    <td><?= $ti['ti_telepon']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Longitude</td>
                                    <td><?= $ti['longitude']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Latitude</td>
                                    <td><?= $ti['latitude']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Foto</td>
                                    <td><img src="<?= base_url('assets/foto/tempat_ibadah/').$ti['ti_foto']; ?>" alt="" width="100" class="card-img" style="width: 5rem;"> </td>
                                  </tr>
                                </tbody>
                              </table>
                          <? elseif ($ti['ti_jenis'] == '2'): ?>
                             <table class="table table-bordered">
                                    <tbody>
                                      <tr>
                                        <td>Nama</td>
                                        <td><?= $ti['ti_nama']; ?></td>
                                      </tr>
                                      <tr>
                                        <td>Alamat</td>
                                        <td><?= $ti['ti_alamat']; ?></td>
                                      </tr>
                                      <tr>
                                        <td>Kabupaten</td>
                                        <td><?= $ti['kab_nama']; ?></td>
                                      </tr>
                                      <tr>
                                        <td>Kecamatan</td>
                                        <td><?= $ti['kec_nama']; ?></td>
                                      </tr>
                                      <tr>
                                        <td>Kondisi</td>
                                        <td><?= $ti['ti_kondisi']; ?></td>
                                      </tr>
                                      <tr>
                                        <td>Luas tanah</td>
                                        <td><?= $ti['ti_luas_tanah']; ?></td>
                                      </tr>
                                      <tr>
                                        <td>Luas bangunan</td>
                                        <td><?= $ti['ti_luas_bangunan']; ?></td>
                                      </tr>
                                      <tr>
                                        <td>Longitude</td>
                                        <td><?= $ti['longitude']; ?></td>
                                      </tr>
                                      <tr>
                                        <td>Latitude</td>
                                        <td><?= $ti['latitude']; ?></td>
                                      </tr>
                                      <tr>
                                        <td>Foto</td>
                                        <td><img src="<?= base_url('assets/foto/tempat_ibadah/').$ti['ti_foto']; ?>" alt="" width="100" class="card-img" style="width: 5rem;"> </td>
                                      </tr>
                                    </tbody>
                                  </table>
                          <? elseif ($ti['ti_jenis'] == '3'): ?>

                            <table class="table table-bordered">
                              <tbody>
                                <tr>
                                  <td>Nama</td>
                                  <td><?= $ti['ti_nama']; ?></td>
                                </tr>
                                <tr>
                                  <td>Alamat</td>
                                  <td><?= $ti['ti_alamat']; ?></td>
                                </tr>
                                <tr>
                                  <td>Kabupaten</td>
                                  <td><?= $ti['kab_nama']; ?></td>
                                </tr>
                                <tr>
                                  <td>Kecamatan</td>
                                  <td><?= $ti['kec_nama']; ?></td>
                                </tr>
                               <tr>
                                  <td>Ketua</td>
                                  <td><?= $ti['ti_ketua']; ?></td>
                                </tr>
                                <tr>
                                  <td>Keterangan</td>
                                  <td><?= $ti['ti_keterangan']; ?></td>
                                </tr>
                                <tr>
                                  <td>Longitude</td>
                                  <td><?= $ti['longitude']; ?></td>
                                </tr>
                                <tr>
                                  <td>Latitude</td>
                                  <td><?= $ti['latitude']; ?></td>
                                </tr>
                                <tr>
                                  <td>Foto</td>
                                  <td><img src="<?= base_url('assets/foto/tempat_ibadah/').$ti['ti_foto']; ?>" alt="" width="100" class="card-img" style="width: 5rem;"> </td>
                                </tr>
                              </tbody>
                            </table>
                          <? elseif ($ti['ti_jenis'] == '4'): ?>
                            
                              <table class="table table-bordered">
                                <tbody>
                                  <tr>
                                    <td>Nama</td>
                                    <td><?= $ti['ti_nama']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Alamat</td>
                                    <td><?= $ti['ti_alamat']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Kabupaten</td>
                                    <td><?= $ti['kab_nama']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Kecamatan</td>
                                    <td><?= $ti['kec_nama']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Di bawah binaan majelis</td>
                                    <td><?= $ti['ti_binaan_majelis']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Ketua</td>
                                    <td><?= $ti['ti_ketua']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Longitude</td>
                                    <td><?= $ti['longitude']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Latitude</td>
                                    <td><?= $ti['latitude']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Foto</td>
                                    <td><img src="<?= base_url('assets/foto/tempat_ibadah/').$ti['ti_foto']; ?>" alt="" width="100" class="card-img" style="width: 5rem;"> </td>
                                  </tr>
                                </tbody>
                              </table>


                            <? elseif ($ti['ti_jenis'] == '5'): ?>

                              <table class="table table-bordered">
                                <tbody>
                                  <tr>
                                    <td>Nama</td>
                                    <td><?= $ti['ti_nama']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Alamat</td>
                                    <td><?= $ti['ti_alamat']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Kabupaten</td>
                                    <td><?= $ti['kab_nama']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Kecamatan</td>
                                    <td><?= $ti['kec_nama']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Di bawah binaan majelis</td>
                                    <td><?= $ti['ti_binaan_majelis']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Ketua</td>
                                    <td><?= $ti['ti_ketua']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Longitude</td>
                                    <td><?= $ti['longitude']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Latitude</td>
                                    <td><?= $ti['latitude']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Foto</td>
                                    <td><img src="<?= base_url('assets/foto/tempat_ibadah/').$ti['ti_foto']; ?>" alt="" width="100" class="card-img" style="width: 5rem;"> </td>
                                  </tr>
                                </tbody>
                              </table>
                          <? endif; ?>


                        </div>
                      </div>
                    </div>
                  </div>
          
<?php endforeach; ?>

 <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<script> 

  function jenis_ibadah_peta() {
        $.ajax({
            url: "<?php echo base_url(); ?>c_dashboard/load_jenis",
            type: "post",
            dataType: "json",
            success: function(data) {
                // console.log(data)
                var jenisBody = "";
                for(var key in data){
                  jenisBody +=`<option value="${data[key]['jenis_id']}">${data[key]['jenis_nama']}</option>`;
                }
                $("#jenis_ibadah_peta").append(jenisBody);
            }
        });
    }
    jenis_ibadah_peta();

    function kabupaten_peta() {
        $.ajax({
            url: "<?php echo base_url(); ?>c_dashboard/load_kabupaten",
            type: "post",
            dataType: "json",
            success: function(data) {
                // console.log(data)
                var kabupatenBody = "";
                for(var key in data){
                  kabupatenBody +=`<option value="${data[key]['kab_id']}">${data[key]['kab_nama']}</option>`;
                }
                $("#kabupaten_peta").append(kabupatenBody);
            }
        });
    }
    kabupaten_peta();


    getData_peta();

  $(document).on("click", "#filter_peta", function(e) {
        e.preventDefault();

        
    var id_kab = $("#kabupaten_peta").val();
        var id_jenis = $("#jenis_ibadah_peta").val();
        

        if ((id_kab.length != 0 ) && (id_jenis.length != 0)) {
      // console.log("ini jenis="+id_jenis+" dan ini kabupaten="+id_kab);
      get_kab_by_id(id_kab, id_jenis);
    }
    else if((id_kab.length != 0) && (id_jenis.length == 0)){
      // console.log("ini kab ="+id_kab);
      get_kab_by_id(id_kab, '');
    }
    else if((id_kab.length == 0) && (id_jenis.length != 0)){
      // console.log("ini jenis ="+id_jenis); 
      getData_peta('', id_jenis);
    }
    else{
      getData_peta();
    }

    });


  function get_kab_by_id(kab, jenis){
    
    $.ajax({
          url: "<?php echo base_url(); ?>c_dashboard/load_kab_by",
          type: "post",
          data: {id_kab: kab},
          dataType: "json",
          success: function(data) {
              // console.log(data.kab_latitude);
              getData_peta_kab(data.kab_latitude, data.kab_longitude, kab, jenis);
          }
    });

  }

  
  function getData_peta_kab(lat, long, kab, jenis){

  // console.log("latitude="+lat, " & longitude="+long, " & kabupaten="+kab, " & jenis="+jenis);

            $.ajax({
            url: "<?php echo base_url(); ?>c_dashboard/load_data_to_tabel",
            type: "post",
            data: {
                    id_jenis: jenis,
                    id_kab: kab
                },
            dataType: "json",
            success: function(data) {
                // console.log("latitude="+lat, " & longitude="+long, data);
                
      navigator.geolocation.getCurrentPosition(function(location) {
          var latlng = new L.LatLng(location.coords.latitude, location.coords.longitude);

          //map view 
          console.log(location.coords.latitude, location.coords.longitude);

          document.getElementById('mapid').innerHTML = "<div id='data_peta' style='height: 450px;'></div>";

          var mymap = L.map('data_peta').setView([lat, long], 12);

        L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {
        maxZoom: 18,
        attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, ' +
          '<a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +
          'Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
        id: 'mapbox/streets-v11',
        }).addTo(mymap);
                             
        for(var i =0;i < data.length; i++){
          if (data[i].latitude != null || data[i].longitude != null) {
            // console.log(no = no +1);
            
            var icon_map = L.icon({
                    iconUrl: '<?= base_url('assets/foto/tempat_ibadah/mapicon/')?>'+data[i].mapicon,
                    iconSize:     [30, 30], // size of the icon
                });
                L.marker([data[i].latitude, data[i].longitude],{icon:icon_map}).addTo(mymap).bindPopup("<b>"+data[i].ti_nama+"</b><br>"+data[i].ti_alamat+"<br> <div class='row ml-1'><h6><a href='"+data[i].ti_id+"' class='btn btn-sm btn-outline-info' data-toggle='modal' data-target='#modal_detail"+data[i].ti_id+"'>Detail</a></h6><h6><a href='https://www.google.com/maps/dir/?api=1&origin="+location.coords.latitude+","+location.coords.longitude+"&destination="+data[i].latitude+","+data[i].longitude+"' class='btn btn-sm btn-outline-success' target='_blank'>Rute</a></h6></div>");
          }
        }


      });

        }
    });

    


}



function getData_peta(kab, jenis){
  $.ajax({
        url: "<?php echo base_url(); ?>c_dashboard/load_data_to_tabel",
        type: "post",
        data: {
            id_jenis: jenis,
            id_kab: kab
        },
        dataType: "json",
        success: function(data) {
            // console.log(data);


  navigator.geolocation.getCurrentPosition(function(location) {
      var latlng = new L.LatLng(location.coords.latitude, location.coords.longitude);

      //map view 
      console.log(location.coords.latitude, location.coords.longitude);

      document.getElementById('mapid').innerHTML = "<div id='data_peta' style='height: 450px;'></div>";
      var mymap = L.map('data_peta').setView([-8.58280355011038, 116.13464826731037], 12);

    L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {
    maxZoom: 18,
    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, ' +
      '<a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +
      'Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
    id: 'mapbox/streets-v11',
    }).addTo(mymap);
                         
    for(var i =0;i < data.length; i++){
      if (data[i].latitude != null || data[i].longitude != null) {
        // console.log(no = no +1);
        
        var icon_map = L.icon({
                iconUrl: '<?= base_url('assets/foto/tempat_ibadah/mapicon/')?>'+data[i].mapicon,
                iconSize:     [30, 30], // size of the icon
            });
            L.marker([data[i].latitude, data[i].longitude],{icon:icon_map}).addTo(mymap).bindPopup("<b>"+data[i].ti_nama+"</b><br>"+data[i].ti_alamat+"<br> <div class='row ml-1'><h6><a href='"+data[i].ti_id+"' class='btn btn-sm btn-outline-info' data-toggle='modal' data-target='#modal_detail"+data[i].ti_id+"'>Detail</a></h6><h6><a href='https://www.google.com/maps/dir/?api=1&origin="+location.coords.latitude+","+location.coords.longitude+"&destination="+data[i].latitude+","+data[i].longitude+"' class='btn btn-sm btn-outline-success' target='_blank'>Rute</a></h6></div>");
      }
    }


  });




        }
    });

}


</script>

