<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Innskráning</title>
    <style>
        body {
            background-color: rgb(252, 242, 159);
        }
    </style>
</head>
<body>
    <h3>Innskráningarform:</h3>
	<form method="POST" action="/doinnskra" accept-charset="ISO-8859-1" id="inn">
		Notendanafn:<br>
		<input type="text" name="user" required><br>
		Lykilorð:<br>
		<input type="text" name="pass" required><br>
		<input type="submit" value="Innskrá">
	</form>
</body>
</html>