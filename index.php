<?php
session_start();
include_once('conn.php');
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
    <h1>Tabel data</h1>
    <div class="jumbotron" style="padding-top: 30px; padding-bottom: 30px;">
    <table class="table table-condensed table-hover table-bordered">
      <thead>
        <tr>
          <th>No.</th>
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
        <?php
        $sql="SELECT * from breast_cancer";
        $result = $conn->query($sql);
        $counte = 1;
            while($row = mysqli_fetch_assoc($result)) {
              ?>
          <tr>
          <td><?php echo $counte?></td>
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
          </tr>
                    <?php
                    $counte++;
                    }
                    ?>
    </tbody>
    </table>
  </div>
  <br>
<div class="jumbotron" style="padding-top: 10px; padding-bottom: 5px;">
<form action="result.php" method="post" target="hasil" >
  <table class="table table-condensed table-bordered">
    <tr>
      <th>Age</th>
      <td><input name="Age" > </td>
    </tr>
    <tr>
      <th>BMI</th>
      <td><input name="BMI" > </td>
    </tr>
    <tr>
      <th>Glucose</th>
      <td><input name="Glucose" > </td>
    </tr>
    <tr>
      <th>Insulin</th>
      <td><input name="Insulin" ></td>
    </tr>
    <tr>
      <th>HOMA</th>
      <td><input name="HOMA" ></td>
    </tr>
    <tr>
      <th>Leptin</th>
      <td><input name="Leptin" ></td>
    </tr>
    <tr>
      <th>Adiponectin</th>
      <td><input name="Adiponectin" ></td>
    </tr>
    <tr>
      <th>Resistin</th>
      <td><input name="Resistin" ></td>
    </tr>
    <tr>
      <th>MCP1</th>
      <td><input name="MCP1" ></td>
    </tr>
  </table>
  <h6>Input K :</h6>
  <input type="text" name="K" > <br>
  <button type="submit" class="btn btn-md btn-primary">Submit</button>
</form>
</div>
  </body>
</html>
<?php
mysqli_close($conn);
?>
