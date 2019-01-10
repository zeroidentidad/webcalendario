<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>Login</title>
    </head>
    <body>
    <h1>Ingresa tu usuario:</h1>
    <form method="POST" action="acciones/hazlogin.jsp"><br>
        <input type="text" name="usuario" id="usuario"></input><br>
        <input type="text" name="password" id="password"></input><br>
        <input type="submit"></input>
    </form>

    <h2><a onclick="document.getElementById('nregistro').hidden=true?false:true;">Registra nuevo usuario:</a></h2>
    <form method="POST" action="acciones/nuevologin.jsp" hidden="true" id="nregistro"><br>
        <input type="text" name="usuario" id="usuario" placeholder="usuario"></input><br>
        <input type="text" name="password" id="password" placeholder="password"></input><br>
        <input type="text" name="nombre" id="nombre" placeholder="nombre"></input><br>
        <input type="text" name="apellidos" id="apellidos" placeholder="apellidos"></input><br>
        <input type="text" name="email" id="email" placeholder="email"></input><br>      
        <input type="submit"></input>
    </form>          
    </body>
</html>