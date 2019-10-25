<?php

$conn = mysqli_connect('localhost', 'root', '', 'ersystem');

if (isset($_POST['save'])) {

    $title = $_POST['title'];
    $date_s = $_POST['date_start'];
    $date_e = $_POST['date_end'];
    $price = $_POST['price'];
    $desc = $_POST['desc'];
    $location = $_POST['location'];
    $capacity = $_POST['capacity'];

    $sql = "INSERT INTO events (ev_title, ev_date_start, ev_date_end, ev_price, ev_desc, ev_location, ev_capacity) VALUES ('$title', '$date_s', '$date_e', '$price', '$desc', '$location', '$capacity')";
    
    if (mysqli_query($conn, $sql)) {
        // echo "New record created successfully";
        $_SESSION['message'] = "Event saved"; 
        header("location:../../layout/admin/add_event/add.php");  
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
    
}
if (isset($_GET['edit'])) {

    echo("Edit");
}
if (isset($_GET['add'])) {

    header("location:../../layout/admin/add_event/add.php");  
    echo("Add");
}

if (isset($_POST['update'])) {


    
}
if (isset($_GET['info'])) {


    echo("Event info");
}

if (isset($_GET['del'])) {

}

?>