
<?php 
include ('Include/header.php');
$_SESSION["ResName"];
$_SESSION["ZoneName"];
$_SESSION["User"];
$_SESSION["SelectDate"];
@ini_set('display_errors', '0');

//$new_var = (int)substr($values["item_name"], 3, 2);
?>                                                      
                        <script language="javascript">
                            function fncSubmit(strPage)
                            {
                                if(strPage == "page1")
                                {
                                    document.form1.action="DeleteAll.php?action=search";
                                }
                                document.form1.submit();
                            }
                        </script>

                        <form method="post" id="InsertGuest" name="form1">
                            <div class="col-lg-4 col-md-5">
                            <div class="card card-user">
                                <div class="content">
                                    <?php   
                                    require_once("connection.php"); 
                                    function ListPrice($conn)  
                                    {  
                                    $output = '';  
                                    $sql = "SELECT ListPrice FROM listmenu Where ResName = '$_SESSION[ResName]' GROUP BY ListPrice ORDER BY ListPrice ASC";
                                    $result = mysqli_query($conn, $sql);  
                                    while($row = mysqli_fetch_array($result))  
                                    {  
                                    $output .= '<option value="'.$row["ListPrice"].'">'.number_format($row["ListPrice"]).' บาท  </option>';
                                    }  
                                    return $output;  
                                    }  
                                    ?>  
                                    
                                        <h5 class="title">จอง วันที่ <?php echo DateThai($_SESSION["SelectDate"]);?></h5></br>
                                        <?php
                                         require_once("connection.php");
                                        $sql2 = "SELECT count( TableID ) AS totalmember FROM bookingres WHERE bookingres.ResName = '$_SESSION[ResName]' AND DataIn = '$_SESSION[SelectDate]' "; 
                                        $query2 = mysqli_query($conn,$sql2);
                                        $row=mysqli_num_rows($query2); 
                                        $rown=mysqli_fetch_array($query2); 
                                        ?>
                                        <h6 style="text-align: center; font-size: 16px; color: red;">
                                        จองแล้ว <?php echo $rown['totalmember'];?> ห้อง </a></h6><br>
                                        <hr></br>
                            
                                    <h5 class="title">หมายเลขห้อง</h5>
                                    <div class="text-center">
                                    <div class="row">
                                    <?php   
                                        if(!empty($_SESSION["shopping_cart"]))  
                                        {  
                                        foreach($_SESSION["shopping_cart"] as $keys => $values)  
                                        {  
                                    ?>  
                                    <div class="tableNumber">
                                    <h5><?php echo $values["item_name"]; ?></h5><small>หมายเลขห้อง</small>
                                    <h6><a href="<?php echo $_SESSION["ZoneName"]; ?>.php?action=delete&id=<?php echo base64url_encode($values["item_id"]);?>"></br>ลบ</a></h6><br>
                                    </div>
                                  
                                    <input type="hidden" id="TableID" name="TableID[]" value="<?php echo $values["item_id"]; ?>">
                                    <input type="hidden" id="ResName" name="ResName" value="<?php echo $_SESSION["ResName"]; ?>">
                                    <input type="hidden" id="RecordBy" name="RecordBy" value="<?php echo $_SESSION["User"]; ?>">
                                    
                                    <?php }}?>
                                        <?php if($values["item_id"]==''){
                                        }else{?>
                                        </br><input class="btn btn-primary btn-sm" type="button" value="ลบทั้งหมดที่เลือก"  onClick="JavaScript:fncSubmit('page1')">
                                        <?php }?>
                                    </div>
                                    </div></br><hr>

                            </br><h5 class="title">กรอกข้อมูลลูกค้า</h5></br>
                                <div class="container" style="width:100%;">  
                                   <div class="control-group">
                                        <label class="control-label" >ชื่อ - นามสกุล (ผู้จอง)</label>
                                        <div class="controls">
                                            <input type="text" name="GuestName" id="GuestName" placeholder="กรุณากรอกชื่อ - นามสกุล (ผู้จอง)" class="form-control border-input" />
                                        </div>
                                    </div>

                                   <div class="control-group">
                                        <br/><label class="control-label" for="input1">อีเมล</label>
                                        <div class="controls">
                                            <input type="text" name="GuestEmail" id="GuestEmail" placeholder="กรุณากรอก E-mail" class="form-control border-input" />
                                        </div>
                                    </div>

                                   <div class="control-group">
                                        <br/><label class="control-label" for="input5">เบอร์โทรติดต่อ</label>
                                        <div class="controls">
                                            <input type="text" name="GuestTel" id="GuestTel" placeholder="กรุณากรอกเบอร์โทรติดต่อ " class="form-control border-input" />
                                        </div>
                                    </div>

                                   <div class="control-group">
                                        <br/><label class="control-label" for="input3">Line ID</label>
                                        <div class="controls">
                                            <input type="text" name="LineID" id="LineID" placeholder="กรุณากรอก Line ID" class="form-control border-input" maxlength="10" />
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <br/><label class="control-label" for="input4">วันเวลาที่เข้ามาดูพื้นเช่า</label>
                                        <div class="controls">
                                            <input type="text" class="form-control border-input" value="<?php echo DateThai($_SESSION["SelectDate"]);?>" readonly style="text-align: center; background-color:#fffcf5; font-weight: 600;">
                                            <input type="hidden" name="DataIn" id="DataIn" class="form-control border-input" value="<?php echo $_SESSION["SelectDate"];?>">
                                            <input type="hidden" name="TimeRange" id="TimeRange" class="form-control border-input" value="<?php echo $_SESSION["SelectTime"];?>">
                                            
                                            <input id="" type="time" name="TimeIn" value="<?php echo date("H:i");?>" style="text-align: center; font-weight: 600;" class="form-control border-input" >
                                        </div>
                                    </div>

                                        <script>  
                                            $(document).ready(function(){  
                                                $('#ListPriceSelVIP').change(function(){  
                                                    var ListPrice = $(this).val();  
                                                    $.ajax({  
                                                    url:"SelectLoadData.php",  
                                                    method:"POST",  
                                                    data:{ListPrice:ListPrice},  
                                                    success:function(data){  
                                                $('#showMenuVIP').html(data);  
                                                    }  
                                                });  
                                            });  
                                        });  
                                        </script> 
                                            <script>
                                                var elem = document.getElementById("ListPriceSelVIP");
                                                elem.onchange = function(){
                                                    var hiddenDiv = document.getElementById("showMenuVIP");
                                                    hiddenDiv.style.display = (this.value == "") ? "none":"block";
                                                };
                                            </script>
                                  
                                   <br/><div class="form-actions" style="text-align:  center;">
                                        <span id="sendingmail"><input type="hidden" name="insert" id="insert" value="submit" >
                                        <button type="submit" class="btn btn-success" style="width:49%;" >
                                            <i class="icon-ok icon-white"></i> บันทึกข้อมูล</span>
                                        </button>
                                        <button type="reset" class="btn btn-warning" style="width:49%;">
                                            <i class="icon-refresh icon-black"></i> ยกเลิก
                                        </button>
                                    </div>
                                    </div>
                                    </form>
                                  </div>
                                </div>
                            </div>
                                <script>  
                                    $("#InsertGuest").submit(function(){     
                                    $("#sendingmail").html("ระบบกำลังทำการส่งข้อมูลโปรดรอสักครู่.....");     
                                        return true; });
                                 </script>
                                <script>  
                                    $(document).ready(function(){
                                     $('#InsertGuest').on("submit", function(event){  
                                      event.preventDefault();  
                                       
                                        $.ajax({  
                                        url:"insertGuest.php",  
                                        method:"POST",  
                                        data:$('#InsertGuest').serialize(),  

                                        success:function(data){  
                                        
                                             if(!alertify.showSuccess){
                                             alertify.dialog('showSuccess',function factory(){
                                                return{
                                                    build:function(){
                                                    var errorHeader = '<span class="fa fa-check-circle fa-2x" '
                                                    +    'style="vertical-align:middle;color:#00CC00;">'
                                                    + '</span>&nbsp;&nbsp; เพิ่มข้อมูลสำเร็จ';
                                                    this.setHeader(errorHeader);
                                                                    }
                                                    };
                                                },true,'alert');
                                        }
                                            alertify.defaults.theme.ok = "btn btn-primary";
                                            $(function(){alertify.showSuccess('<p style="font-size:18px;">เพิ่มข้อมูลการจองลูกค้าสำเร็จ<br/><br/>',
                                                function (e) {
                                                if (e) {
                                                window.location.reload();
                                                } else {
                                                return false;
                                                }
                                            });
                                        });
                                    }  
                                   });  
                                 }); 
                                });
                                 </script>