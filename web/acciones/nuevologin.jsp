<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="0; url=../index.jsp"/>  
        <title>Agregar</title>
    </head>
    <body>
        <%
            try{
                String conexion="jdbc:mysql://localhost:3306/webcalendario";
                Connection connection = null;
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                connection = DriverManager.getConnection(conexion,"root","x1234567");
                                                               
                Statement stmt = connection.createStatement();

                stmt.executeUpdate("INSERT INTO usuarios VALUES (NULL,'"+request.getParameter("usuario")+"','"+request.getParameter("password")+"','"+request.getParameter("nombre")+"','"+request.getParameter("apellidos")+"','"+request.getParameter("email")+"');");
                                                              
                stmt.close();
                connection.close();

                //session.setAttribute("usuario",request.getAttribute("usuario"));

                out.println("<meta http-equiv='refresh' content='0; url=../login.jsp'/>");
                                                              
                }
                catch(Exception ex){
                    out.println("Error: "+ex.getMessage().toString());
                }
        %>          
    </body>
</html>