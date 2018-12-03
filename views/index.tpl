<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Bæjarins Bestu</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" media="screen" href="/static/Lokaverkefni.css" />
	<script src="main.js"></script>
	
</head>
<body>
	<h1>Bæjarins Bestu</h1>
	<div class="takkar1">
		<a href="/innskra" class="takkar">Innskráning</a>
	</div>
	<div class="takkar1">
		<a href="/nyskra" class="takkar">Nýskráning</a>
	</div>
	% import pymysql
	% conn = pymysql.connect(host="tsuts.tskoli.is", port=3306, user="1803012590", password="mypassword", db="1803012590_vef_lok")
	% cur = conn.cursor()
	% cur.execute("SELECT * FROM 1803012590_vef_lok.comment")
	% for i in cur:
		<p>{{i}}</p>

</body>
</html>