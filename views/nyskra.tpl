<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Nýskráning</title>
    <style>
        body {
            background-color: rgb(157, 255, 157);
        }
    </style>    
</head>
<body>
    <h3>Nýskráningarform:</h3>
	<form method="POST" action="/donyskra" accept-charset="ISO-8859-1" id="ny">
		Notendanafn:<br>
		<input type="text" name="user" required><br>
		Lykilorð:<br>
		<input type="text" name="pass" required><br>
		Nafn:<br>
		<input type="text" name="nafn" required><br>
		<input type="submit" value="Nýskrá">
		<input type="reset" value="Hreinsa">
	</form>
</body>
</html>