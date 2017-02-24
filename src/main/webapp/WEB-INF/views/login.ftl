<!doctype html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta charset="utf-8" content="charset"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>Login</title>

<!-- Bootstrap core CSS -->
<link href="dist/css/bootstrap.css" rel="stylesheet"/>
<link href="css/signin.css" rel="stylesheet"/>
</head>

<body>
<div class="container">
		<form  class="form-signin" role="form" action="" target="_parent" >
		        <img src="img/login2.png" style="position:absolute; top:9%; left:15%; width:40px;height:40px;" />
		        <img src="img/login3.png" style="position:absolute; top:25%; left:15%; width:40px;height:40px;"/>
		        <br />
				<input  id="userName" type="text" class="form-control" placeholder="帐号" />
				<br />
				<input  id="passWord" type="password" class="form-control" placeholder="密码" />
				<label class="checkbox">
						<input type="checkbox" value="remember-me" />
						记住密码 </label>
				<button id="Button1"  
					class="btn btn-lg btn-success btn-block" style="background:url(img/login_bt.jpg) no-repeat; background-size:100% 100%; border:0; width:300px;" type="submit" />
		</form>
</div>
<!-- /container --> 

</body>
</html>
