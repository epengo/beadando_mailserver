<h1 align="center">Sent</h1>
<?php
include_once('connection.php');

$id=$_SESSION['sid'];

if(isset($_GET['sentSearch'])){
  $sql="SELECT * FROM mails where sen_id='$id' and sub like '%{$_GET['sentSearch']}%'";
}
else{
  $sql="SELECT * FROM mails where sen_id='$id'";
}

$dd=mysqli_query($con, $sql);

echo "<div style='margin-left:10px;width:640px;height:auto;border:2px solid red;'>";

                                echo "<h2>Search</h2>";
				echo '<form method="GET">';
				echo '	<fieldset>';
				echo '	<input type="text" id="sentSearch" name="sentSearch" value="" />';
				echo '	<input type="submit" id="x" value="Search" />';
				echo '	</fieldset>';
				echo '</form>';

	echo "<table border='1' width='640'>";
	echo "<tr><th>Receiver </th><th>Subject </th><th>Date</th></tr>";
while(list($mid,$rid,$sid,$s,$m,$a,$f,$f2,$d)=mysqli_fetch_array($dd))
{
	echo "<tr>";
	echo "<form>";
	echo "<td>".$rid."</td>";
	echo "<td>".$s."</td>";
	echo "<td>".$d."</td>";
	echo "</tr>";	
	}
	echo "</table>";
	
	
/*$ch=$_GET['ch'];
foreach($ch as $v)
{

}*/
	
echo "</div>";
	
echo "</form>";

?>
