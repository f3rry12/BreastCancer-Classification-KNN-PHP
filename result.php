<?php
session_start();
include_once('conn.php');

$age = $_POST['Age'];
$BMI = $_POST['BMI'];
$glucose = $_POST['Glucose'];
$insulin = $_POST['Insulin'];
$HOMA = $_POST['HOMA'];
$leptin = $_POST['Leptin'];
$Adiponectin = $_POST['Adiponectin'];
$Resistin = $_POST['Resistin'];
$MCP1 = $_POST['MCP1'];
$K = $_POST['K'];

$hasil_klasifikasi=1;
$sql="SELECT * from breast_cancer";
$result = $conn->query($sql);
$count=0;
$distance_tmp;
$distArr=array();
$indexArr=array();
$claArr=array();
while($row = mysqli_fetch_assoc($result)) {
    $result_age=pow(($age-$row["Age"]),2);
    $result_bmi=pow(($BMI-$row["BMI"]),2);
    $result_glucose=pow(($glucose-$row["Glucose"]),2);
    $result_insulin=pow(($insulin-$row["Insulin"]),2);
    $result_HOMA=pow(($HOMA-$row["HOMA"]),2);
    $result_leptin=pow(($leptin-$row["Leptin"]),2);
    $result_adiponectin=pow(($Adiponectin-$row["Adiponectin"]),2);
    $result_resistin=pow(($Resistin-$row["Resistin"]),2);
    $result_MCP1=pow(($MCP1-$row["MCP1"]),2);
    $distance_tmp=$result_age+$result_bmi+$result_glucose+$result_insulin+$result_HOMA+$result_leptin+$result_adiponectin+$result_resistin+$result_MCP1;
    $distArr[$count] = $distance_tmp;
    $indexArr[$distance_tmp]=$count;
    $claArr[$distance_tmp]=$row['Classification'];
    $count++;
}
$distArr2 = $distArr;
sort($distArr);
$dominanCla=0;
for ($i=0; $i < $K; $i++) {
  if ($claArr[$distArr[$i]]==2) {
    $dominanCla++;
  }
}

if ($dominanCla>($K/2)) {
  $hasil_klasifikasi=2;
}
 ?>

 <!DOCTYPE html>
 <html lang="en" dir="ltr">
   <head>
     <title>Klasifikasi data kanker payudara</title>
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
   </head>
   <body>
   </div>
   <h1>Hasil klasifikasi</h1>
   <div id="hasil" class="jumbotron" style="padding-top: 30px; padding-bottom: 30px;">
   <table class="table table-condensed table-bordered">
     <thead>
       <tr>
         <th>Age</th>
         <th>BMI</th>
         <th>Glucose</th>
         <th>Insulin</th>
         <th>HOMA</th>
         <th>Leptin</th>
         <th>Adiponectin</th>
         <th>Resistin</th>
         <th>MCP1</th>
         <th>Classification</th>
       </tr>
     </thead>
     <tbody>
         <tr>
         <td><?php echo $age?></td>
         <td><?php echo $BMI?></td>
         <td><?php echo $glucose?></td>
         <td><?php echo $insulin?></td>
         <td><?php echo $HOMA?></td>
         <td><?php echo $leptin?></td>
         <td><?php echo $Adiponectin?></td>
         <td><?php echo $Resistin?></td>
         <td><?php echo $MCP1?></td>
         <td><?php echo $hasil_klasifikasi?></td>
         </tr>
   </tbody>
   </table>
 </div>
   <hr>
     <h1><?php echo $K ?> tetangga terdekat</h1>
     <div class="jumbotron" style="padding-top: 30px; padding-bottom: 30px;">
     <table class="table table-condensed table-hover table-bordered">
       <thead>
         <tr>
           <th>Age</th>
           <th>BMI</th>
           <th>Glucose</th>
           <th>Insulin</th>
           <th>HOMA</th>
           <th>Leptin</th>
           <th>Adiponectin</th>
           <th>Resistin</th>
           <th>MCP1</th>
           <th>Classification</th>
           <th>Distance</th>
         </tr>
       </thead>
       <tbody>
         <?php
         $sql="SELECT * from breast_cancer";
         $result = $conn->query($sql);
         $counte = 0;
             while($row = mysqli_fetch_assoc($result)) {
               if ($distArr2[($counte)]<=$distArr[($K-1)] ) {

               ?>
           <tr>
           <td><?php echo $row['Age']?></td>
           <td><?php echo $row['BMI']?></td>
           <td><?php echo $row['Glucose']?></td>
           <td><?php echo $row['Insulin']?></td>
           <td><?php echo $row['HOMA']?></td>
           <td><?php echo $row['Leptin']?></td>
           <td><?php echo $row['Adiponectin']?></td>
           <td><?php echo $row['Resistin']?></td>
           <td><?php echo $row['MCP1']?></td>
           <td><?php echo $row['Classification']?></td>
           <td><?php echo $distArr2[$counte] ?></td>
           </tr>
                     <?php
                     }
                     $counte++;
                     }
                     ?>
     </tbody>
     </table>
   </body>
 </html>
