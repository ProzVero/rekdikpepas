<!-- ============================================================== -->
<!-- Start Page Content here -->
<!-- ============================================================== -->

<div class="content-page">
  <div class="content">

    <!-- Start Content-->
    <div class="container-fluid">

      <!-- start page title -->
      <div class="row">
        <div class="col-12">
          <div class="page-title-box">
            <div class="page-title-right">
              <ol class="breadcrumb m-0">
                <li class="breadcrumb-item"><a href="<?= base_url()?>">Dashboard</a></li>
                <li class="breadcrumb-item active"><?= $judul;?></li>
              </ol>
            </div>
            <h4 class="page-title"><?= $judul;?></h4>
          </div>
        </div>
      </div>
      <!-- end page title -->

      <!-- Right Sidebar -->
      <div class="row">
        <div class="col-lg-12">
          <div class="card-box">
            <div class="btn-group">
              <button type="button" class="btn btn-sm btn-light waves-effect"><i
                  class="mdi mdi-delete-variant font-18"></i></button>
            </div>
            <div class="mt-4">
              <h5 class="font-18"></h5>

              <hr />

              <div class="media mb-3 mt-1">
                <img class="d-flex mr-2 rounded-circle" src="<?= base_url()?>assets/images/users/user-2.jpg"
                  alt="placeholder image" height="32">
                <div class="media-body">
                  <small class="float-right"><?= $get_pengaduan['created_at']?></small>
                  <h6 class="m-0 font-14"><?= $get_pengaduan['nama']?></h6>
                  <small class="text-muted">From: <?= $get_pengaduan['email']?></small>
                </div>
              </div>

              <p><?= $get_pengaduan['saran']?></p>

              <hr />

              <a href="#" data-target="#view-modal" data-toggle="modal">
                <img src="<?= base_url()?>assets/images/pengaduan/<?= $get_pengaduan['id'] ?>.png" alt=<?= $get_pengaduan['nama']?> class="rounded-rectangle mr-2"
                height="150" />
              </a>

              <div class="mt-5">
                <a href="<?= base_url('backend/pengaduan/jawabsaran/') . $get_pengaduan['id']?>"
                  class="btn btn-secondary mr-2"><i class="mdi mdi-reply mr-1"></i> Reply</a>
              </div>

            </div>
            <!-- end .mt-4 -->

            <div class="clearfix"></div>
          </div>

        </div> <!-- end Col -->

      </div><!-- End row -->


    </div> <!-- container -->

  </div> <!-- content -->

  <!-- sample modal content -->
  <div id="view-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
    aria-hidden="true" style="display: none;">
    <div class="modal-dialog">
      <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">Image preview</h4>
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      </div>
      <div class="modal-body">
        <img src="<?= base_url()?>assets/images/pengaduan/<?= $get_pengaduan['id'] ?>.png" id="imagepreview" style="width: 400px;" >
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
      </div>
    </div>
  </div><!-- /.modal -->