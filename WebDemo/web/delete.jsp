<%-- 
    Document   : delete
    Created on : Apr 3, 2016, 7:58:23 PM
    Author     : JAYESH
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.beans.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete</title>
    </head>
    <body>
        <%  
        try 
        {
            ResultSet rs =null;
            Connection con = null;
            Statement st = null;
            PreparedStatement ps=null;

            try 
            {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con = DriverManager.getConnection("jdbc:oracle:thin:@hippo.its.monash.edu:1521:FIT5148B", "S27148572", "student");
                System.out.println("connection established");
            } 
            catch (SQLException e) 
            { 
                System.out.println("SQL error " + e);
            }
 

        String id = new String();
        
            
        if(request.getParameter("ID")!=null)
        {
            id=request.getParameter("ID");
        }
        
            
        
        String sql = "Delete from Author@FIT5148B where Author_ID ='"+id+"'";
        int r = con.createStatement().executeUpdate(sql);
        con.setAutoCommit(true);
        if(r>=1)
        {
            out.println("Record Deleted in Author Table");
        }
        else
        {
            out.println("Cannot Delete");
        }
    } 
    catch(Exception e)
    {
        e.printStackTrace();
    }
        
    %>

    </body>
</html>
