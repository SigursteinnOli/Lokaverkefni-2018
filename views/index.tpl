<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Bæjarins Bestu</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" media="screen" href="/static/Lokaverkefni.css" />
	<script src="main.js"></script>
	<style>
		.comment {
			background-color: rgb(255, 209, 110);
			margin: 5px;
			border-radius: 30px;
			
		}

		.hofundur {
			padding-left: 30px;
			padding-top: 5px;
			background-color: rgb(255, 107, 62);
			border-radius: 30px; 
			border: solid 2px brown;
    
		}

		.content {
			padding-left: 50px;
			padding-bottom: 5px;
			
			

		}
	</style>
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
		<div class="comment">
			<h3 class="hofundur">{{i[2]}}</h3>
			<p class="content">{{i[1]}}</p>
		</div>
		

</body>
</html>