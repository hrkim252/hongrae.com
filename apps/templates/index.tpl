<html>
<head>
<script src="//code.jquery.com/jquery.min.js"></script>
<script type=text/javascript>
$SCRIPT_ROOT = {{request.script_root|tojson|safe }};
</script>
<script type=text/javascript>
function login() {
	$.getJSON($SCRIPT_ROOT + '/login', {
		id:$("#id").val(),
		password:$("#password").val()
	}, function (data) {
		if (data.result == true) {
			location.reload()
		}
		else {
			alert("Login is Fail")
		}
	})
}

function logout() {
	$.getJSON($SCRIPT_ROOT + '/logout', {
		logout:"true"
	}, function (data) {
		location.reload()
	})
}
</script>
</head>
<body>
<title> Hong Rae Kim </title>
<h1> Hong Rae Kim </h1>
{% if logIn == False %}
<p> 아이디 </p>
<input type="text" id="id">
<p> 패스워드 </p>
<input type="password" id="password">
<p>
<button onclick="login()"> 로그인 </button>
<button onclick="join()"> 회원가입 </button>
</p>
{% else %}
<button onclick="logout()"> 로그아웃 </button>
{% endif %}
</body>
</html>