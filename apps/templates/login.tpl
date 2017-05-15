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
<style>
#wrapper_box {
	width:100%;
	height:200px;
}

#box {
	width:300px;
	height:300px;
	border:1px solid gray;
	margin:0 auto;
	text-align:center;
}
</style>
<title> 로그인 </title>
<div id="wrapper_box">
<div id="box">
<h1> 로그인 </h1>
<p> 아이디 </p>
<input type='text' id='id'> 
<p> 비밀번호 </p>
<input type='password' id='password'>
<p> <button onclick="login()"> 로그인 </button> </p>
</div>
{% else %}
<script type=text/javascript>
location.href = "/"
</script>
{% endif %}
</html>