<html>
<head>
<script>
function login() {
	var password = document.getElementById("password").value;
	if (password == "hongrae") {
		alert("Log in is success!");
	}
	else {
		alert("Please confirm your password");
	}
}
</script>
</head>
<body>
<title> Hong Rae Kim </title>
<h1> Hong Rae Kim </h1>
<p> Please log in to use the service </p>
<p> Password </p>
<input type="password" id="password">
<br>
<br>
<button onclick="login()"> Log in </button>
</body>
</html>