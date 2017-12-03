<%-- 
    Document   : update
    Created on : Apr 3, 2016, 6:36:25 PM
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
        <title>Update</title>
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
        String fname = new String();
        String lname = new String();
        String affiliation = new String();
        String country = new String();
        String email = new String();
        String no = new String();
            
        if(request.getParameter("ID")!=null)
        {
            id=request.getParameter("ID");
        }
        if(request.getParameter("first")!=null)
        {
            fname=request.getParameter("first");
        }
        if(request.getParameter("last")!=null)
        {
            lname=request.getParameter("last");
        }
        if(request.getParameter("affiliation")!=null)
        {
            affiliation=request.getParameter("affiliation");
        }
        if(request.getParameter("country")!=null)
        {
            country=request.getParameter("country");
        }
        if(request.getParameter("email")!=null)
        {
            email=request.getParameter("email");
        }
        if(request.getParameter("number")!=null)
        {
            no=request.getParameter("number");
        }
   
        String sql = "Update Author@FIT5148B set Author_name ='" + fname + "', Author_Surname ='" + lname + "', Author_Affiliation ='" + affiliation + "'," + " Author_Country ='" + country + "'," + "Author_email ='" + email + "'," + "Author_number ='" + no + "' where Author_ID = '"+id+"'";
        int r=con.createStatement().executeUpdate(sql);
        con.setAutoCommit(true);
        if(r>=1)
        {
            out.println("Record Update in Author Table");
        }
        else
        {
            out.println("Cannot Update");
        }
    } 
    catch(Exception e)
    {
        e.printStackTrace();
    }
        
    %>

    </body>
</html>
