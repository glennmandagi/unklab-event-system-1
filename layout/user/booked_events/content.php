<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

<!-- Main Content -->
<div id="content">

  <?php include('top_bar.php')?>

  <?php 
    $conn = mysqli_connect('localhost', 'root', '', 'ersystem');
    $results = mysqli_query($conn, "SELECT * FROM registrations LEFT JOIN events on registrations.events_ev_id = events.ev_id WHERE students_stu_id = '$_SESSION[user_id]'"); 
  ?>

  <!-- Begin Page Content -->
  <div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
      <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
      <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
    </div>

    <?php while ($row = mysqli_fetch_array($results)) { ?>
    
        <div class="col-xl-3 col-md-3 mb-4">
          <div class="card border-left-primary shadow h-100 py-2">
            <div class="card-body">
              <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                  <div class="text-xs font-weight-bold text-primary text-uppercase mb-1"><?php echo $row['ev_title']?></div>
                  <div class="text-xs font-weight-bold text-primary text-uppercase mb-1"><?php echo 'Location: ' . $row['ev_location']?></div>
                  <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo 'Rp.'.$row['ev_price']?></div>
                </div>
                <div class="col-auto">
                  <a href="../../../config/script/events.php?print=<?php echo $row['reg_id'];?>" target="_blank"><i class="fas fa-print fa-2x text-gray-300"></i></a>
                  <!-- <a href="../../../config/script/register.php?register=<?php echo $row['ev_id'];?>"><i class="fas fa-plus fa-2x text-gray-300"></i></a> -->
                </div>
              </div>
            </div>
          </div>
        </div>
    
    <?php } ?>

    <!-- Content Row -->

    <!-- file on temp_content -->

    

      </div>
    </div>

  </div>
  <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<?php
  include('footer.php');
?>


</div>
<!-- End of Content Wrapper -->