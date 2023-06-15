<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['emplogin'])==0)
    {   
header('location:index.php');
}
else{
$eid=$_SESSION['emplogin'];
if (isset($_POST['update'])) {
   
    $credits = $_POST['credits'];
    $deduction = $_POST['deduction'];
      $deduction = max(0, (int)$deduction);
       $updatedCredits = max(0, $credits - $deduction);
    
   $sql = "UPDATE tblemployees SET credits=:updatedCredits WHERE EmailId=:eid";
    $query = $dbh->prepare($sql);
    $query->bindParam(':updatedCredits', $updatedCredits, PDO::PARAM_INT);
    $query->bindParam(':eid', $eid, PDO::PARAM_STR);
    $query->execute();
    $msg = "Employee record updated successfully";
}

    ?>




   
<?php 
$eid=$_SESSION['emplogin'];
$sql = "SELECT * from  tblemployees where EmailId=:eid";
$query = $dbh -> prepare($sql);
$query -> bindParam(':eid',$eid, PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{               ?> 
 
<div class="input-field col m6 s12">
<label for="credits">Credits</label>
<input id="credits" name="credits" type="number"  value="<?php echo htmlentities($result->credits);?>" autocomplete="off" readonly>
</div>
<div class="input-field col s12">
    <label for="deduction">Days of Leave</label>
    <input id="deduction" name="deduction" type="number" min="0" autocomplete="off">
</div>

                                                            

<?php }}?>
                                                        

<?php } ?> 