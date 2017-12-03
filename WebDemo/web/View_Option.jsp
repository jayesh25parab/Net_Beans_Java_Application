<%-- 
    Document   : View_Option
    Created on : Apr 4, 2016, 12:45:07 AM
    Author     : JAYESH
--%><%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.beans.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%@ page language="java" import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Option</title>
    <h1>Data In Author Table</h1>
    </head>
    <body>
        <%  
            ResultSet rs =null;

            try 
            {
                Connection conn = null;
                Statement st = null;
                PreparedStatement pst=null;

                try 
                {
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    conn = DriverManager.getConnection("jdbc:oracle:thin:@hippo.its.monash.edu:1521:FIT5148B", "S27148572", "student");
                    String sql ="Select * from Author@FIT5148B";
                    pst = conn.prepareStatement(sql);
                    rs = pst.executeQuery();
                }
                catch (SQLException e) 
                { 
                    System.out.println("SQL error " + e);
                }
            } 
            catch(Exception ex)
            {
            }
            
        %>
<TABLE BORDER="1">
            <TR>
                <TH>Author_ID</TH>
                <TH>Name</TH>
                <TH>Surname</TH>
                <TH>Affiliation</TH>
                <TH>Country</TH>
                 <TH>Email</TH>
                 <TH>Number</TH>
            </TR>
          <% while(rs.next()){ %>
            <TR>
                <TD> <%= rs.getString(1) %></TD>
                <TD> <%= rs.getString(2) %></TD>
                <TD> <%= rs.getString(3) %></TD>
                <TD> <%= rs.getString(4) %></TD>
                <TD> <%= rs.getString(5) %></TD>
                <TD> <%= rs.getString(6) %></TD>
                <TD> <%= rs.getString(7) %></TD>
               
            </TR>
            <% } %> 
        </TABLE>
    </body>
</html>
