<?php
    $conn = mysqli_connect('localhost', 'root', '', 'ersystem');

    if (isset($_POST['login'])) {
    
        $username = mysqli_real_escape_string($conn, $_POST["username"]);  
        $password = mysqli_real_escape_string($conn, $_POST["password"]);  
        $query = "SELECT * FROM users WHERE user_name = '$username'";  
        // $cek_user = "SELECT * FROM user WHERE user_name = $user_name AND user_pass = $user_pass";
        $result = mysqli_query($conn,$query);
    
        // $row = $result->fetch_array(MYSQLI_ASSOC);

        if(mysqli_num_rows($result) > 0)  
           {  
                while($row = mysqli_fetch_array($result))  
                {  
                     if(password_verify($password, $row["user_pass"]))  
                     {  
                          //return true;  
                          session_start();
                          $_SESSION['username'] = $username; 

                          $_SESSION['user_nim'] = $row['student_stu_nim'];  
                          $_SESSION["is_logged_in"] = TRUE;
                          
                          if ($username == 'admin') {
                              //kalo admin masuk sini
                              header("location:../../layout/admin/dashboard/view.php");       
                          }
                          else{
                              //kalo user masuk sini
                              header("location:../../layout/user/dashboard/view.php");       
                          }
                          
                        echo "masuk";
                     }  
                     else  
                     {  
                          //return false;  
                         //  echo '<script>alert("Wrong User Details")</script>';  
                         echo '
                         <script language = "javascript">
                              window.alert("LOGIN FAILED: Wrong User Details");
                              window.location.href="../../index.php";
                         </script>';
                     }  
                }  
           }  
           else  
           {  
               echo '
                <script language = "javascript">
                    window.alert("LOGIN FAILED: Please try again");
                    window.location.href="../../index.php";
                </script>';
               //  echo '<script>alert("Wrong User Details")</script>';  
               //  header("location:../../index.php");  
           } 
        
     }
     
     if (isset($_GET['logout'])) {
          session_destroy();
          $_SESSION["is_logged_in"] = FALSE;
          header("location:../../");
     }

     if (isset($_POST['create_account'])) {
          $nim = mysqli_real_escape_string($conn, $_POST["nim"]);  
          $username = mysqli_real_escape_string($conn, $_POST["username"]);  
          $password = mysqli_real_escape_string($conn, $_POST["password"]);  

          $query = "SELECT * FROM students WHERE stu_nim = '$nim'";
          
          $result = mysqli_query($conn,$query);

          // print_r($result);
          if(mysqli_num_rows($result) > 0){  
               // echo("Masuk pak eko");
               $query = "SELECT * FROM users WHERE user_name = '$username' or student_stu_nim = '$nim'";
          
               $result = mysqli_query($conn,$query);

               // print_r($result);

               //kalo nda ada username yang pake itu
               if(mysqli_num_rows($result) > 0){
                    echo '
                    <script language = "javascript">
                         window.alert("CREATING ACCOUNT FAILED: Use another username or NIM");
                         window.location.href="../../layout/create_account/index.php";    
                    </script>';
               }
               else{
                    // echo("Hai orang baru");
                    $hashed_pass = password_hash($password, PASSWORD_BCRYPT);
                    $sql = "INSERT INTO users(user_name, user_pass, student_stu_nim, user_status) VALUES ('$username','$hashed_pass', $nim, TRUE)";
                    if (mysqli_query($conn, $sql)) {
                         // echo "New record created successfully";
                         echo '
                             <script language = "javascript">
                                 window.alert("SUCCESS: Account created");
                                 window.location.href="../../index.php";
                             </script>';
                         // header("location:../../layout/admin/add_event/add.php");  
                     } else {
                         echo "Error: " . $sql . "<br>" . mysqli_error($conn);
                     }
               }
               // $sql = "INSERT INTO ";
          }
          else{  
               echo '
                <script language = "javascript">
                    window.alert("CREATING ACCOUNT FAILED: Please try again");
                    window.location.href="../../layout/create_account/index.php";
                </script>';
               //  echo '<script>alert("Wrong User Details")</script>';  
               //  header("location:../../index.php");  
          } 


     }
?>