<?php
include_once('connection.php');
@$to=$_POST['to'];
@$sub=$_POST['sub'];
@$msg=$_POST['msg'];
$file=$_FILES['file']['name'];

$id=$_SESSION['sid'];

if(@$_REQUEST['send'])
{
	if($to=="" || $sub=="" || $msg=="")
	{
	$err= "fill the related data first";
	}
	
	else
	{
	$d=mysqli_query($con, "SELECT * FROM userinfo where email='$to'");
	$row=mysqli_fetch_row($d);
	if($row)
		{
		$to=$row[1];
                mysqli_query($con, "INSERT INTO mails(rec_id,sen_id,sub,msg,draft,trash,attachement,msgdate) values('$to','$id','$sub','$msg','','','',sysdate())");
		$err= "message sent...";
		}
	else
		{
		$err= "message failed...";
		}	
	}
}	
	

	
?>
<head>
	<style>
	input[type=text]
	{
	width:200px;
	height:35px;
	}
	</style>
</head>
<body>
<form method="post" enctype="multipart/form-data">
<table width="506" border="1">
  <?php echo @$err; ?>
  <tr>
    <th width="213" height="35" scope="row">To</th>
    <td width="277">
	<input type="text" name="to" />	</td>
  </tr>
  <tr>
    <th height="36" scope="row">Cc</th>
    <td><input type="text" name="cc"/></td>
  </tr>
  <tr>
    <th height="36" scope="row">Subject</th>
    <td><input type="text" name="sub" /></td>
  </tr>
  <tr>
    <th height="36" scope="row">upload your file</th>
    <td><input type="file" name="file" id="file"/></td>
  </tr>
  <tr>
    <th height="52" scope="row">Msg</th>
    <td><textarea rows="8" cols="40" name="msg"></textarea></td>
  </tr>
  <tr>
    <th height="35" colspan="2" scope="row">
	<input type="submit" name="send" value="Send"/>
	<input type="reset" value="Cancel"/>	</th>
  </tr>
</table>

</body>
</form>
</html>
