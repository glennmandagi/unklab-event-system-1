<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

<!-- Main Content -->
<div id="content">

  <?php include('top_bar.php')?>

  <!-- Begin Page Content -->
  <div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
      <h1 class="h3 mb-0 text-gray-800">Edit Event</h1>
      <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
    </div>

    <!-- ev_id	ev_title	ev_desc	ev_date_start	ev_date_end	ev_price	ev_location	ev_capacity -->

    <?php
      $conn = mysqli_connect('localhost', 'root', '', 'ersystem');
      $id = $_GET['id'];
      $results = mysqli_query($conn, "SELECT * FROM events where ev_id = '$id'"); 
      $row = mysqli_fetch_array($results)
    ?>

    <form action="../../../config/script/events.php" method="post">
      <input type="hidden" name="id" value="<?php echo $row['ev_id']?>">

      <input type="text" name="title" value="<?php echo $row['ev_title']?>">
      <p>Title</p>
    
      
      <input type="date" name="date_start" value="<?php echo $row['ev_date_start']?>">
      <p>Date start</p>   
    
      
      <input type="date" name="date_end" value="<?php echo $row['ev_date_end']?>">
      <p>Date end</p>
    
      
      <input type="text" name="price" value="<?php echo $row['ev_price']?>">
      <p>Price</p>
    
      
      <input type="text" name="location" value="<?php echo $row['ev_location']?>">
      <p>Location</p>
    
      
      <input type="text" name="capacity" value="<?php echo $row['ev_capacity']?>">
      <p>Capacity</p>
    
      
      <textarea name="desc" cols="70" rows="10"><?php echo $row['ev_desc']?></textarea>
      <p>Description</p>

      <hr>
      <button type="submit" name="update" >Edit</button>
    </form>

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