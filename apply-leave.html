<?php
session_start();
error_reporting(E_ALL);
ini_set('display_errors', 1);
include('includes/config.php');

if (strlen($_SESSION['emplogin']) == 0) {
    header('location:index.php');
} else {
    if (isset($_POST['apply'])) {
        $empid = $_SESSION['eid'];
        $leavetype = $_POST['leavetype'];
        $fromdate = $_POST['fromdate'];
        $todate = $_POST['todate'];
        $description = $_POST['description'];
        $status = 0;
        $isread = 0;
        $deduction = $_POST['deduction']; // Get deduction value
        $deduction = max(0, (int)$deduction); // Ensure deduction is a positive integer

        // Fetch remaining credits from the database
        $eid = $_SESSION['emplogin'];
        $sql = "SELECT credits FROM tblemployees WHERE EmailId = :eid";
        $query = $dbh->prepare($sql);
        $query->bindParam(':eid', $eid, PDO::PARAM_STR);
        $query->execute();
        $result = $query->fetch(PDO::FETCH_ASSOC);
        $remainingCredits = $result['credits'];

        // Calculate updated credits
        $updatedCredits = max(0, $remainingCredits - $deduction);

        if ($fromdate > $todate) {
            $error = "To Date should be greater than From Date";
        } else if ($deduction > $remainingCredits) {
            $error = "Deduction cannot exceed remaining credits";
        } else {
            $sql = "INSERT INTO tblleaves (LeaveType, ToDate, FromDate, Description, Status, IsRead, empid) VALUES (:leavetype, :fromdate, :todate, :description, :status, :isread, :empid)";
            $query = $dbh->prepare($sql);
            $query->bindParam(':leavetype', $leavetype, PDO::PARAM_STR);
            $query->bindParam(':fromdate', $fromdate, PDO::PARAM_STR);
            $query->bindParam(':todate', $todate, PDO::PARAM_STR);
            $query->bindParam(':description', $description, PDO::PARAM_STR);
            $query->bindParam(':status', $status, PDO::PARAM_STR);
            $query->bindParam(':isread', $isread, PDO::PARAM_STR);
            $query->bindParam(':empid', $empid, PDO::PARAM_STR);
            $query->execute();
            $lastInsertId = $dbh->lastInsertId();
            if ($lastInsertId) {
                // Update the credits in the tblemployees table
                $sql = "UPDATE tblemployees SET credits = :updatedCredits WHERE EmailId = :eid";
                $query = $dbh->prepare($sql);
                $query->bindParam(':updatedCredits', $updatedCredits, PDO::PARAM_INT);
                $query->bindParam(':eid', $eid, PDO::PARAM_STR);
                $query->execute();

                header("location: apply-leave.php");
                exit(); // Make sure to exit after redirecting
            } else {
                $error = "Something went wrong. Please try again";
            }
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        
        <!-- Title -->
        <title>Employee | Apply Leave</title>
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
        <meta charset="UTF-8">
        <meta name="description" content="Responsive Admin Dashboard Template" />
        <meta name="keywords" content="admin,dashboard" />
        <meta name="author" content="Steelcoders" />
        
        <!-- Styles -->
        <link type="text/css" rel="stylesheet" href="assets/plugins/materialize/css/materialize.min.css"/>
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="assets/plugins/material-preloader/css/materialPreloader.min.css" rel="stylesheet"> 
        <link href="assets/css/alpha.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>
        <style>
            .errorWrap {
                padding: 10px;
                margin: 0 0 20px 0;
                background: #fff;
                border-left: 4px solid #dd3d36;
                -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
                box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
            }
            .succWrap{
                padding: 10px;
                margin: 0 0 20px 0;
                background: #fff;
                border-left: 4px solid #5cb85c;
                -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
                box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
            }
        </style>
    </head>
    <body>
        <?php include('includes/header.php');?>
            
        <?php include('includes/sidebar.php');?>
        <main class="mn-inner">
            <div class="row">
                <div class="col s12">
                    <div class="page-title">Apply for Leave</div>
                </div>
                <div class="col s12 m12 l8">
                    <div class="card">
                        <div class="card-content">

                            <form id="myForm" method="post" name="addemp" action="apply-leave.php" onsubmit="return submitForm();">
                                <div>
                                    <h3>Apply for Leave</h3>
                                    <section>
                                        <div class="wizard-content">
                                            <div class="row">
                                                <div class="col m12">
                                                    <div class="row">
                                                       

                                                        <div class="input-field col s12">
                                                            <select name="leavetype" autocomplete="off">
                                                                <option value="">Select leave type...</option>
                                                                <?php
                                                                $sql = "SELECT LeaveType FROM tblleavetype";
                                                                $query = $dbh->prepare($sql);
                                                                $query->execute();
                                                                $results = $query->fetchAll(PDO::FETCH_OBJ);
                                                                $cnt = 1;
                                                                if ($query->rowCount() > 0) {
                                                                    foreach ($results as $result) {
                                                                        ?>
                                                                        <option value="<?php echo htmlentities($result->LeaveType); ?>"><?php echo htmlentities($result->LeaveType); ?></option>
                                                                    <?php }
                                                                } ?>
                                                            </select>
                                                        </div>

                                                        <div class="input-field col m6 s12">
                                                            <label for="fromdate">From  Date</label>
                                                            <input placeholder="" id="mask1" name="fromdate" class="masked" type="text" data-inputmask="'alias': 'date'" required>
                                                        </div>
                                                        <div class="input-field col m6 s12">
                                                            <label for="todate">To Date</label>
                                                            <input placeholder="" id="mask1" name="todate" class="masked" type="text" data-inputmask="'alias': 'date'" required>
                                                        </div>
                                                            <div class="input-field col m12 s12">
        <label for="deduction">Days of Leave</label>
        <input type="number" name="deduction" id="deduction" min="0" max="<?php echo $remainingCredits; ?>" required>
    </div>

                                                        <div class="input-field col m12 s12">
                                                            <label for="birthdate">Description</label>    
                                                            <textarea id="textarea1" name="description" class="materialize-textarea" length="500" required></textarea>
                                                        </div>
                                                    </div>
                                                    <?php
// Fetch remaining credits from the database
$eid = $_SESSION['emplogin'];
$sql = "SELECT credits FROM tblemployees WHERE EmailId = :eid";
$query = $dbh->prepare($sql);
$query->bindParam(':eid', $eid, PDO::PARAM_STR);
$query->execute();
$result = $query->fetch(PDO::FETCH_ASSOC);
$remainingCredits = $result['credits'];
?>
                                                 <div class="row">
    <div class="input-field col m12 s12">
        <label for="credits">Remaining Credits</label>
        <input type="number" name="credits" id="credits" min="0" value="<?php echo $remainingCredits; ?>" readonly>
    </div>

</div>
                                                    <button type="submit" name="apply" id="apply" class="waves-effect waves-light btn indigo m-b-xs">Submit</button>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <div class="left-sidebar-hover"></div>
        
        <!-- Javascripts -->
        <script src="assets/plugins/jquery/jquery-2.2.0.min.js"></script>
        <script src="assets/plugins/materialize/js/materialize.min.js"></script>
        <script src="assets/plugins/material-preloader/js/materialPreloader.min.js"></script>
        <script src="assets/plugins/jquery-blockui/jquery.blockui.js"></script>
        <script src="assets/js/alpha.min.js"></script>
        <script src="assets/js/pages/form_elements.js"></script>
        <script src="assets/js/pages/form-input-mask.js"></script>
        <script src="assets/plugins/jquery-inputmask/jquery.inputmask.bundle.js"></script>
        <script>
            function submitForm() {
                var remainingCredits = <?php echo $remainingCredits; ?>;
                var deduction = parseInt(document.getElementById("deduction").value);

                if (deduction > remainingCredits) {
                    alert("Deduction cannot exceed remaining credits");
                    return false;
                }

                return true;
            }
        </script>
    </body>
</html>
