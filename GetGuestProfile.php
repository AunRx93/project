<style type="text/css">
p {
    font-size: 16px;
    line-height: 1.4em;
    padding: 8px;
}
    </style>

<?php
		 
	require_once("connection.php");
	
	if (isset($_REQUEST['id'])) {
			
        $GuestID = $_REQUEST['id'];
		$sql = "SELECT * FROM tablemantraplan INNER JOIN bookingres ON  tablemantraplan.TableID = bookingres.TableID INNER JOIN guest ON guest.GuestID=bookingres.GuestID Where guest.GuestID ='".$GuestID."' ORDER BY guest.GuestID ASC";
        $query = mysqli_query($conn, $sql) or die(mysqli_error($conn));
        $result = mysqli_fetch_array($query,MYSQLI_ASSOC);
        {?>
		<div class="table-responsive">
        <table class="table table-striped table-bordered">
		    <tr>
			    <th style="vertical-align: initial; width: 45%;">หมายเลขห้อง</th>
				<th> 
                    <?php 
                    $setColumn=3; 
                    $ColumnStart=1; 
                    
                    $query = mysqli_query($conn, $sql) or die(mysqli_error($conn));
                    while($result2 = mysqli_fetch_array($query,MYSQLI_ASSOC))
                    {?>
                    <?php if ($result2["ResName"]=='Loft') { ?>
                    ห้องที่ : <p contenteditable="true" onBlur="saveChangeTable2(this,'TableID','<?php echo $result2["BookingID"]; ?>')" onClick="showEdit(this);" style="display: inline;"><?php echo $NewVar = substr($result2["TableNumber"], 3, 3); ?>
                    <?php }else{ ?>
                    ห้องที่ : <p contenteditable="true" onBlur="saveChangeTable(this,'TableID','<?php echo $result2["BookingID"]; ?>')" onClick="showEdit(this);" style="display: inline;"><?php echo $result2["TableNumber"]; ?> 
                    <?php } ?></p>
                    <?php
                    if($ColumnStart==$setColumn){
                    echo '<br>';
                    $ColumnStart=0;
                    }
                    $ColumnStart++;
                    } ?>
                
                </th>
            <tr>
			    <th>ชื่อ - นามสกุล (ลูกค้า)</th>
                <td contenteditable="true" onBlur="saveToDatabase(this,'GuestName','<?php echo $result["GuestID"]; ?>')" onClick="showEdit(this);"><?php echo $result["GuestName"]; ?></td>
			</tr>
			<tr>
				<th>อีเมล</th>
                <td contenteditable="true" onBlur="saveToDatabase(this,'GuestEmail','<?php echo $result["GuestID"]; ?>')" onClick="showEdit(this);"><?php echo $result["GuestEmail"]; ?></td>
			</tr>
			<tr>
				<th>เบอร์โทรติดต่อ</th>
                <td contenteditable="true" onBlur="saveToDatabase(this,'GuestTel','<?php echo $result["GuestID"]; ?>')" onClick="showEdit(this);"><?php echo $result["GuestTel"]; ?></td>
			</tr>
			<tr>
				<th>Line ID</th>
                <td contenteditable="true" onBlur="saveToDatabase(this,'GuestLine','<?php echo $result["GuestID"]; ?>')" onClick="showEdit(this);"><?php echo $result["GuestLine"]; ?></td>
			</tr>
            <tr>
				<th>วัน เวลาที่เข้ามาดูพื้นที่</th>
                <td>วันที่ : <p style="display: inline;"><?php echo DateThai($result["DataIn"]); ?></p>
                 <button class="ti-marker-alt" onclick="myFunction()"> แก้ไข</button></br>

                <div id="myDIV" style="display:none;">
                วันที่ : <p contenteditable="true" onBlur="saveToDatabase(this,'DataIn','<?php echo $result["GuestID"]; ?>')" onClick="showEdit(this);" style="display: inline;"><?php echo $result["DataIn"]; ?></p>
                </div>
                เวลา : <p contenteditable="true" onBlur="saveToDatabase(this,'TimeIn','<?php echo $result["GuestID"]; ?>')" onClick="showEdit(this);" style="display: inline;"><?php echo $result["TimeIn"]; ?></p>น.</td>
			</tr>
            <tr>
				<th>จองเมื่อวันที่</th>
				<td>วันที่ : <?php echo DateThai($result["DateRecode"]); ?></td>
			</tr>
		</table>

		</div><?php } ?>
		<?php } ?>

    <script>
    function myFunction() {
        var x = document.getElementById("myDIV");
        if (x.style.display === "none") {
            x.style.display = "block";
        } else {
            x.style.display = "none";
        }
    }
    </script>   

    <script language="JavaScript">
    document.onkeydown = chkEvent 
    function chkEvent(e) {
        var keycode;
        if (window.event) keycode = window.event.keyCode; //*** for IE ***//
        else if (e) keycode = e.which; //*** for Firefox ***//
        if(keycode==13)
        {
            return false;
        }
    }
    </script>
    <script>
		function showEdit(editableObj) {
			$(editableObj).css("background","#FFF");
		} 
		
		function saveToDatabase(editableObj,column,GuestID) {
			$(editableObj).css("background","#FFF url(images/loaderIcon.gif) no-repeat right");
			$.ajax({
				url: "SaveChange.php",
				type: "POST",
				data:'column='+column+'&editval='+editableObj.innerHTML+'&GuestID='+GuestID,
				success: function(data){
					$(editableObj).css("background","#FDFDFD");
				}        
		   });
		}
    
    	function showEdit(ediNumtable) {
			$(ediNumtable).css("background","#FFF");
		} 
    
        function saveEditTable(ediNumtable,column,BookingID,GuestID) {
			$(ediNumtable).css("background","#FFF url(images/loaderIcon.gif) no-repeat right");
			$.ajax({
				url: "SaveChange2.php",
				type: "POST",
				data:'column='+column+'&editval='+ediNumtable.innerHTML+'&BookingID='+BookingID+'&GuestID='+GuestID,
				success: function(data){
					$(ediNumtable).css("background","#FDFDFD");
				}        
		   });
		}
        
        function showEdit(ediNumtable) {
			$(ediNumtable).css("background","#FFF");
		} 
    
        function saveChangeTable(ediNumtable,column,BookingID,) {
			$(ediNumtable).css("background","#FFF url(images/loaderIcon.gif) no-repeat right");
			$.ajax({
				url: "SaveChange3.php",
				type: "POST",
				data:'column='+column+'&editval='+ediNumtable.innerHTML+'&BookingID='+BookingID,
				success: function(data){
					$(ediNumtable).css("background","#FDFDFD");
				}        
		   });
		}
        
        function showEdit(ediNumtable) {
			$(ediNumtable).css("background","#FFF");
		} 
    
        function saveChangeTable2(ediNumtable,column,BookingID,) {
			$(ediNumtable).css("background","#FFF url(images/loaderIcon.gif) no-repeat right");
			$.ajax({
				url: "SaveChange3.php",
				type: "POST",
				data:'column='+column+'&editval='+'100'+ediNumtable.innerHTML+'&BookingID='+BookingID,
				success: function(data){
					$(ediNumtable).css("background","#FDFDFD");
				}        
		   });
		}
		</script>
