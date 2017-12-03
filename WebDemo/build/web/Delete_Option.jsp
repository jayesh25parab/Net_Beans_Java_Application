<%-- 
    Document   : index2
    Created on : Apr 3, 2016, 8:07:10 PM
    Author     : JAYESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Option</title>
        <h1>Delete Window</h1>
    </head>
    <body>
     <form action="delete.jsp" method="POST">
            <table border="1">

                <tbody>
                    <tr>
                        <td>Author Id :</td>
                        <td><input type="text" name="ID" value="" size="50" /></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="Delete" name="Delete" />
        </form>
    </body>
</html>
