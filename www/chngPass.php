<?php
include_once('connection.php');
error_reporting(1);
$id=$_SESSION['sid'];
$op=$_GET['op'];
$np=$_GET['np'];
if(isset($_GET['chngP']))
{
	if($op=="" || $np=="")
	{
	$err="Fill all the fields first";
	}
	else
	{
		if($np==$op)
		{
		$sql="update userinfo set password='$np' where user_name='$id'";
		$d=mysqli_query($con, $sql);
		echo "<p>pass updated..</p>";
		}	
		else
		{
		echo "new pass doesn't match to confirm pass";
		}
	}
		
		
}
?>
<body>
<form method="get">
<table width="365" border="1">
  <tr>
  <?php echo $err; ?>
    <th width="173" scope="row">New Pass </th>
    <td width="176">
		<input type="password" name="op"/>
	</td>
  </tr>
  <tr>
    <th scope="row">Confirm Password </th>
    <td>
			<input type="password" name="np"/>
	</td>
  </tr>
<tr>
    <td colspan="2" align="center">
	<input type="submit" name="chngP" value="Change Password"/></td>
  </tr>
  
</table>
</form>
</body>
