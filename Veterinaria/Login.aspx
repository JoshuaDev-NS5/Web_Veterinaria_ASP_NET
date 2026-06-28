<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Veterinaria.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="CSS/Login.css">
    <video autoplay muted loop id="bgVideo">
        <source src="files/fondo_vet.mp4" type="video/mp4">
    </video>
</head>
<body>
    <div class="formulario">
        <h1>Inicio de Sesion</h1>
        <form method="post">
            <div class="username">
                <input type="text" placeholder=" " required>
                <label>Usuario</label>
            </div>
            <div class="username">
                <input type="password" placeholder=" " required>
                <label>Contraseña</label>
            </div>
            <div class="recordar">¿Olvidaste tu contraseña?</div>
                <input type="submit" value="Iniciar">
                <div class="registrar">
                    ¿No tienes una cuenta? <a href="#">Registrate</a>
                </div>
        </form>

    </div>
</body>
</html>  