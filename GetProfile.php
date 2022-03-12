<?php session_start();?>
<?php
		 
	require_once("connection.php");
	$_SESSION["SelectDate"];
	if (isset($_REQUEST['id'])) {
			
        $TableID = $_REQUEST['id'];
		$sql = "SELECT *  FROM tablemantraplan INNER JOIN bookingres ON  tablemantraplan.TableID = bookingres.TableID INNER JOIN guest ON guest.GuestID=bookingres.GuestID WHERE bookingres.DataIn = '$_SESSION[SelectDate]' AND bookingres.TimeRange = '$_SESSION[SelectTime]' AND tablemantraplan.TableID ='".$TableID."' ORDER BY tablemantraplan.TableID ASC";
        $query = mysqli_query($conn, $sql) or die(mysqli_error($conn));
        $result = mysqli_fetch_array($query,MYSQLI_ASSOC);
        {?>
        
		<div class="table-responsive">
		<table class="table table-striped table-bordered">
		    <tr>
			    <th style="width: 45%;">หมายเลขโต๊ะ</th>
				<th><?php if ($result["ResName"]=='Loft'){
                            echo $NewVar = (int)substr($result["TableNumber"], 3, 2);
                        }else{ 
                            echo $result["TableNumber"]; 
                        } ?>
                </th>
            </tr>
            <tr>
			    <th>ชื่อ - นามสกุล (ลูกค้า)</th>
				<td><?php echo $result["GuestName"]; ?></td>
			</tr>
			<tr>
				<th>อีเมล</th>
				<td><?php echo $result["GuestEmail"]; ?></td>
			</tr>
			<tr>
				<th>Line ID</th>
				<td><?php echo $result["GuestLine"]; ?></td>
			</tr>
            <tr>
				<th>วัน เวลาที่เข้ามาดูพื้นที่</th>
				<td>วันที่ : <?php echo DateThai($result["DataIn"]); ?>  เวลา : <?php echo $result["TimeIn"]; ?> น.</td>
			</tr>
            <tr>
				<th>จองเมื่อวันที่</th>
				<td><?php echo DateThai($result["DateRecode"]); ?></td>
			</tr>
		</table>
			
		</div><?php } ?>
		<?php				
	}