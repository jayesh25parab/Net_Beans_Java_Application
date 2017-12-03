<%-- 
    Document   : index1
    Created on : Apr 3, 2016, 6:53:31 PM
    Author     : JAYESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Option</title>
        <h1>Update Window</h1>
    </head>
    <body>
     <form action="update.jsp" method="POST">
            <table border="1">

                <tbody>
                    <tr>
                        <td>Author Id :</td>
                        <td><input type="text" name="ID" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Author Name :</td>
                        <td><input type="text" name="first" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Author Surname :</td>
                        <td><input type="text" name="last" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Affiliation :</td>
                        <td><input type="text" name="affiliation" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Country :</td>
                        <td><input type="text" name="country" value="" size="50" /></td>

                    </tr>
                    <tr>
                        <td>Email :</td>
                        <td><input type="text" name="email" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Contact number :</td>
                        <td><input type="text" name="number" value="" size="50" /></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="Update" name="Update" />
        </form>
    </body>
</html>
