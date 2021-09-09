# BreastCancer-Classification-KNN-PHP
Breast Cancer Classification with KNN coding using PHP from scratch without using machine learning library
![Input](https://github.com/f3rry12/BreastCancer-Classification-KNN-PHP/blob/main/readme_asset/ss1.png)
![Output](https://github.com/f3rry12/BreastCancer-Classification-KNN-PHP/blob/main/readme_asset/ss2.png)

## Dataset
The dataset i use for this project from: https://archive.ics.uci.edu/ml/datasets/Breast+Cancer+Coimbra <br>
If you plan to use this project you can get the dataset by download the dataset from that site then convert it to sql, or you can use my sql in this repo (only contain 100 data) <br>
If you use my SQL, the accuracy will be around 60%. Because i havent doing clean and normalize the dataset.

## KNN Code
In this project i code KNN algorithm to solve breastCancer classification. It has 9 feature, and the result only has 2 possibilities : 1 or 2.
You need to edit the code if you have different feature and outcome.
> Maybe, in the future i made the code more dynamic.
```php
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
```

This project created in 2018
