<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Leyni Síða</title>
    <style>
        body {
            background-color: aquamarine;
            margin: 3em;
        }
    </style>
</head>
<body>
    <h2>Velkominn á þína síðu {{u}}</h2>
    <h3>Skrifa ný meðmæli</h3>
    <form method="POST" action="/comment" accept-charset="ISO-8859-1" id="comm">
        <textarea name="comment" rows="4" cols="50"></textarea><br>
        <input type="text" name="user" required placeholder="Höfundur">
        <input type="submit" name="Skrifa">
    </form>

    <a href="/members">Aðrir meðlimir:</a>
</body>
</html>