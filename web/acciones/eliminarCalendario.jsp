<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="0; url=../index.jsp"/>  
        <title>Eliminar</title>
    </head>
    <body>
        <%
            try{
                String conexion="jdbc:mysql://localhost:3306/webcalendario";
                Connection connection = null;
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                connection = DriverManager.getConnection(conexion,"root","x1234567");
                                                               
                Statement stmt = connection.createStatement();

                stmt.executeUpdate("DELETE FROM calendarios WHERE idcalendario = "+request.getParameter("idcalendario")+";");

                stmt.executeUpdate("DELETE FROM eventos WHERE calendario = "+request.getParameter("idcalendario")+";");
                                                              
                stmt.close();
                connection.close();
                                                              
                }
                catch(Exception ex){
                    out.println("Error: "+ex.getMessage().toString());
                }
        %>          
    </body>
</html>