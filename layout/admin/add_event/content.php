<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

<!-- Main Content -->
<div id="content">

  <?php include('top_bar.php')?>

  <!-- Begin Page Content -->
  <div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
      <h1 class="h3 mb-0 text-gray-800">Add Event</h1>
      <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
    </div>

    <!-- ev_id	ev_title	ev_desc	ev_date_start	ev_date_end	ev_price	ev_location	ev_capacity -->
    <form action="../../../config/script/events.php" method="post">
      <input type="hidden" name="id" value="">

      <input type="text" name="title" value="">
      <p>Title</p>
    
      
      <input type="date" name="date_start" value="">
      <p>Date start</p>   
    
      
      <input type="date" name="date_end" value="">
      <p>Date end</p>
    
      
      <input type="text" name="price" value="">
      <p>Price</p>
    
      
      <input type="text" name="location" value="">
      <p>Location</p>
    
      
      <input type="text" name="capacity" value="">
      <p>Capacity</p>
    
      
      <textarea name="desc" cols="70" rows="10"></textarea>
      <p>Description</p>

      <hr>
      <button type="submit" name="save" >Save</button>
    </form>

    <!-- Content Row -->

    <!-- file on temp_content -->

    

      </div>
    </div>

  </div>
  <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<!-- Footer -->
<footer class="sticky-footer bg-white">
  <div class="container my-auto">
    <div class="copyright text-center my-auto">
      <span>Copyright &copy; Your Website 2019</span>
    </div>
  </div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->