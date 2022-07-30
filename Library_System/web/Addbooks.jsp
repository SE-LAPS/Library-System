<%-- 
    Document   : Addbooks
    Created on : Jul 29, 2022, 11:25:27 PM
    Author     : LapZ
--%>


<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Library System</title>
        
        <style>
         
            *{
                margin: 0;
                padding: 0;
                font-family: arial;
                box-sizing: border-box;
            }
            
            body{
                
                height: 100vh;
                display: grid;
                place-items: center;
                background: linear-gradient(rgba(0,0,0,0),rgba(0,0,0,0.1)),url(22.jpg);
                background-size: 100% 100%;
                background-repeat: no-repeat;
            }
              
        </style>
        
 
    </head>
    <body>
        <h1>- Inserting Records To The Books Table -</h1>
        
        <% 
            
//04)assign the values for  getparameter  
String btitle = request.getParameter("title");
String bauthor = request.getParameter("author");
String bpub = request.getParameter("pub");

            
//01) Load the driver
Class.forName("com.mysql.jdbc.Driver");

//02)Connect to the database
String url ="jdbc:mysql://localhost:3306/mybooksdb";
Connection con = DriverManager.getConnection(url,"root","");

//03)Create statement
Statement st = con.createStatement();

//05)Execute the sql quary
String sql = "insert into books(title,Author,Publisher) VALUES ('"+btitle+"','"+bauthor+"','"+bpub+"')";
st.execute(sql);

            %>
    </body>
</html>
