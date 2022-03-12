
<?php session_start();?>
<?php 
require_once("connection.php");
require_once("Include/EncodeDecode.php");

if (!$_SESSION["UserID"]){  //check session

	  	Header("Location: index.html"); //ไม่พบผู้ใช้กระโดดกลับไปหน้า login form 

}else{?>


<!doctype html>
<html lang="en">
<head>
	<?php
      include ('Include/headerGuest.php');
	  ?>
   <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
      <!--  Paper Dashboard core CSS    -->
    <link href="assets/css/paper-dashboard.css?v=<?php echo filemtime('assets/css/paper-dashboard.css'); ?>" rel="stylesheet"/>

   
    <style type="text/css">
        html{
            font-family:tahoma, Arial,"Times New Roman";
            font-size:14px;
        }
        body{
            font-family:tahoma, Arial,"Times New Roman";
            font-size:14px;
        }    
    </style>
    </head>
<body>

    		<?php
      include ('Include/Menu.php'); ?>
    
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title" style="font-family: 'Trirong', serif;">สรุปรายการจองพื้ที่</h4><br><br>
                            </div>
                            
                            <div class="from" style="text-align: center;">
                            <table style="width:90%; margin: auto;" cellpadding="10">
                            <tr>
                                <td style="width:45%; padding-right: 10px;">
                                    <input type="date" name="start_date" id="SelectDate" class="form-control border-input" style="text-align:  center;"/>
                                </td>
                                 <script>
                                    let today = new Date().toISOString().substr(0, 10);
                                    document.querySelector("#SelectDate").value = today;
                                </script>
                                <td style="width:45%; padding-right: 10px;">
                                <select class="form-control border-input" id="category" style="text-align-last:center;">
                                  <option value="">กรุณาเลือกชั้น</option>
                                  <option value="KeereeMantra">ชั้น 1</option>
                                  <option value="KeereeTara">ชั้น 2</option>
                                  <option value="Loft">ชั้น 3</option>
                                  <option value="Taravilla">ชั้น 4</option>
                                </select>
                                </td>
                                <td style="width: auto;">
                                    <input type="button" name="search" id="search" value="ค้นหา" class="btn btn-success" />
                                </td>
                            </tr>
                            </table>
                            </div>
                             </br>
                            <div class="content table-responsive table-full-width" id="show_product"> 
                                <table id="product_data" class=" table table-striped" style="width:100%">
                                 <thead>
                                  <tr>
                                    <th style="text-align: center;">ลำดับ</th>
                                    <th style="text-align: center;">ชื่อ - นามสกุล</th>
                                    <th style="text-align: center;">เบอร์โทรติดต่อ</th>
                                    <th style="text-align: center;">วัน เวลาที่เข้ามาดูพื้นที่</th>
                                    <th style="text-align: center;">สถานะห้องลูกค้า</th>
                                    <th style="text-align: center; width:15%;"></th>
                                  </tr>
                                 </thead>
                                </table>
                            </div>
                        </div>
                    </div>
                </div> 
            </div>
        </div>

    </div>
</div>

</body> 
    <!-- Paper Dashboard Core javascript and methods for Demo purpose -->
	<!-- <script src="assets/js/paper-dashboard.js"></script> -->

	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="assets/js/demo.js"></script>

<?php
      include ('Include/JScriptGuestList.php');
	  ?>

<?php }?>