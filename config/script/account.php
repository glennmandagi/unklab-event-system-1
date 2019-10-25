<?php
    
    if (isset($_POST['login'])) {
	   $conn = mysqli_connect('localhost', 'root', '', 'ersystem');
    
        $username = mysqli_real_escape_string($conn, $_POST["username"]);  
        $password = mysqli_real_escape_string($conn, $_POST["password"]);  
        $query = "SELECT * FROM user WHERE user_name = '$username'";  
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
                          $_SESSION["is_logged_in"] = TRUE;
                          
                          header("location:../../layout/admin/dashboard/view.php");  
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
?>