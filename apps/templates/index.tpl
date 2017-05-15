<html>
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
<style>
#box {
	width:100%;
	height:100%;
	margin:0 auto;
	text-align:center;
}
</style>	
<title> 넓은 딸기 </title>
<div id="box">
<h1> 넓은 딸기 </h1>
{% if login == False %}
<p>
<button onclick="location.href = '/login'"> 로그인 </button>
<button onclick="location.href = '/join'"> 회원가입 </button>
</p>
</div>
{% else %}
<button onclick="logout()"> 로그아웃 </button>
</div>
{% endif %}
</html>