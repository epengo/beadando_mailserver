<?php
error_reporting(1);
include_once('connection.php');
if(isset($_POST['signIn']))
{
	if($_POST['id']=="" || $_POST['pwd']=="")
	{
	$err="fill your id and passwrod first";
	}
	else
	{
	$d=mysqli_query($con, "SELECT * FROM userinfo where user_name='{$_POST['id']}' and password='{$_POST['pwd']}'");
	$row=mysqli_fetch_object($d);
		if($row != NULL)
		{
		$_SESSION['sid']=$_POST['id'];
		//header('location:HomePage.php');
		echo "<script>window.location='HomePage.php'</script>";
		}
		else
		{
		$err="invalid id or pass";
		}
	}
}
?>
<form method="post">
<table width="90%" border="1" align="center">
  	<tr>
		<Td colspan="2" align="center"> <font color="#FF0000"><?php echo @$err; ?></font></Td>
	</tr>
  <tr>
    <th width="171" scope="row">Enter your id </th>
    <td width="136">
		<input type="text" name="id" />
	</td>
  </tr>
  <tr>
    <th scope="row">Enter your password </th>
    <td>
			<input type="password" name="pwd"/>
	</td>
  </tr>
  <tr>
    <th colspan="2" scope="row">
	<input type="submit" value="SignIn" name="signIn"/>
	<a href="http://localhost/index.php?chk=registraion">SignUp</a>
	</th>
  </tr>
</table>
</form>