<html>
<head>
<script src="http://code.jquery.com/jquery.min.js"></script>
<script type=text/javascript>
$SCRIPT_ROOT = {{request.script_root|tojson|safe }};
</script>
<script type=text/javascript>
function logout() {
	$.getJSON($SCRIPT_ROOT + '/try_logout', {
		logout:"true"
	}, function (data) {
		location.reload()
	})
}
</script>
</head>
<body>
<title> 넓은 딸기 </title>
<h1> 넓은 딸기 </h1>
{% if login == False %}
<button onclick="location.href = '/login'"> 로그인 </button>
<button onclick="location.href = '/join'"> 회원가입 </button>
</p>
{% else %}
<button onclick="logout()"> 로그아웃 </button>
{% endif %}
</body>
</html>