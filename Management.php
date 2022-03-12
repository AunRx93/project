<?php session_start();?>
<?php 
if (!$_SESSION["UserID"]){  //check session
	  	Header("Location: index.html"); //ไม่พบผู้ใช้กระโดดกลับไปหน้า login form 
}else{?>
<!doctype html>
<html lang="en">
<head>
	<?php
      include ('Include/header.php');
	  ?>
</head>
<body>

    	<?php
      include ('Include/Menu.php');
	  ?>
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                             <div class="header">
                                <h4 class="title">Manage Pantip Chiangmai</h4>
                            </div>
                            <div class="content" style="margin-left: 15px;">
                                  <div class="example">
                                <p><a href="MantraPlan.php?ResName=KeereeMantra<?php unset($_SESSION['SelectDate']); unset($_SESSION['SelectTime']);?>">
                                    <img src="assets/img/logo/F1.png" style='height: 90%; width: 90%; object-fit: contain'></p></a>  
                                <p><a href="#">
                                    <img src="assets/img/logo/F2.png" style='height: 90%; width: 90%; object-fit: contain'></p></a>
                                <p><a href="#">
                                    <img src="assets/img/logo/F3.png" style='height: 90%; width: 90%; object-fit: contain'></p></a>
                                <a href="#">
                                    <img src="assets/img/logo/F4.png" style='height: 90%; width: 90%; object-fit: contain'>
                                  </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
  <?php
      include ('Include/footer.php');
	  ?>
</html>
<?php }?>