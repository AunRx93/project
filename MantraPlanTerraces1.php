<?php session_start();?>
<?php 
 @ini_set('display_errors', '0');
 require_once("connection.php");
 require_once("Include/EncodeDecode.php");
 require_once("Include/SessionTable.php");
 
$_SESSION["ResName"];
$_SESSION["ZoneName"];
$_SESSION["SelectDate"];
$_SESSION["Username"];
$_SESSION["SelectTime"];

if (!$_SESSION["UserID"]){  //check session

	  	Header("Location: index.html"); //ไม่พบผู้ใช้กระโดดกลับไปหน้า login form 

}elseif(!$_SESSION["ResName"]){
        Header("Location: Management.php");

}elseif(!$_SESSION["SelectDate"]){
        echo "<script>alert('กรุณาเลือกวันที่และช่วงเวลา ก่อนเลือกโซน');history.back();</script>";
    
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
                        
                        <div class="col-lg-8 col-md-7">
                            <div class="card">
                            <div class="header">
                              <h4 class="title" style="font-family: 'Trirong', serif;">แผนผังชั้น 1</h4>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <div class="canvas">
                                    <div class="main-content">
                                    <table style="width:100%">
                                        <tr><td>แสดงข้อมูลการจองวันที่ : <input type="text" name="GuestName" id="GuestName" class="form-control border-input" value="<?php echo DateThai($_SESSION["SelectDate"]);?>  เวลา : <?php echo $_SESSION["SelectTime"];?>" readonly style="width: 100%; margin-bottom: 10px; text-align: center; background-color: #fffcf5; font-weight: 600;"></td>
                                            <td><a href="MantraPlan.php?ResName=<?php echo $_SESSION["ResName"];?>">
                                            <img src="images/MantraPlan/Button-Back.png" style="width: 80px; float: right; margin-top: 20px;"></a></td></tr></table>
                                        
                                        <table width="100%" border="0" class="Terraces1">
                                            <tr>
                                            
                                            <?php 
                                                require_once("connection.php");
                                                
                                                $PathIcon = "images/MantraPlan/TableIcon/";
                                                $sql = "SELECT * FROM (SELECT tablemantraplan.*,bookingres.BKStatus FROM tablemantraplan LEFT JOIN bookingres ON tablemantraplan.TableID = bookingres.TableID WHERE bookingres.DataIn = '$_SESSION[SelectDate]' AND bookingres.TimeRange = '$_SESSION[SelectTime]' AND tablemantraplan.TableZone ='1' AND tablemantraplan.TableGroup ='2' AND tablemantraplan.ResName ='KeereeMantra' UNION All SELECT tablemantraplan.*,tablemantraplan.TableStatus FROM tablemantraplan LEFT JOIN bookingres ON tablemantraplan.TableID = bookingres.TableID WHERE TableZone ='1' AND TableGroup ='2' AND tablemantraplan.ResName ='KeereeMantra') As TBid GROUP BY TBid.TableID";
                                                $query = mysqli_query($conn,$sql);
                                                while($result=mysqli_fetch_array($query,MYSQLI_ASSOC))
	                                               {
                                                    $NewVar = $result["TableNumber"];
                                                    if($rn++ % 8 == 0 && $rn > 1){
                                                        echo '</tr><tr>';
                                                    }
                                                    
                                                    echo '<td>';
                                                    
                                                    include ('Include/QueryTable.php');
                                                    
                                                    echo '</td>';
                                                    ?>
                                                    <?php } ?>
                                                    <td colspan="2"></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="8" ></td>
                                                    </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                         <?php
                            include ('SelectMenu.php');
	                       ?>
                    </div>
                </div>
            </div>

        <?php
      include ('Include/footer.php');
	  ?>
<?php
      include ('Include/GetGuest.php');
	  ?>
</html>
<?php }
?>
 <?php
mysqli_close($conn);
?>