<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>Accediendo</title>
    </head>
    <body>
    <%
    String usuario = request.getParameter("usuario");
    String password = request.getParameter("password");
    int logeado=0;

    try{
    String conexion="jdbc:mysql://localhost:3306/webcalendario";
    Connection connection = null;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    connection = DriverManager.getConnection(conexion,"root","x1234567");

    Statement stmt = connection.createStatement();
    ResultSet rset;

    String peticion = "SELECT * FROM usuarios WHERE usuario= '"+usuario+"' AND contrasena= '"+password+"'";
    rset = stmt.executeQuery(peticion);

    while(rset.next()){
    logeado=1;
    session.setAttribute("idusuario",rset.getInt("idusuario"));
    }
    if(logeado==1){
    session.setAttribute("usuario",usuario);
    out.println("<meta http-equiv='refresh' content='0; url=../index.jsp'/>");
    }else{
    out.println("<meta http-equiv='refresh' content='0; url=../login.jsp'/>");
    }

    stmt.close();
    connection.close();

    }
    catch(Exception ex){
    out.println("Error: "+ex.getMessage().toString());
    }

    %>    
    </body>
</html>