<html>
<script src="http://code.jquery.com/jquery.min.js"></script>
<script type=text/javascript>
$SCRIPT_ROOT = {{ request.script_root|tojson|safe }};
</script>
{% if login == False %}
<script type=text/javascript>
function login() {
	$.getJSON($SCRIPT_ROOT + '/try_login', {
		id:$("#id").val(),
		password:$("#password").val()
	}, function (data) {
		if (data.result == true) {
			location.href = '/'
		} else {
			alert("Login is Fail")
		}
	})
}
</script>
<title> 로그인 </title>
<h1> 로그인 </h1>
<p> 아이디 <input type='text' id='id'>  </p>
<p> 비밀번호 <input type='password' id='password'> </p>
<button onclick="login()"> 로그인 </button>
{% else %}
<script type=text/javascript>
location.href = "/"
</script>
{% endif %}
</html>