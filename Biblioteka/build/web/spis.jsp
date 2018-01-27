<%-- 
    Document   : spis
    Created on : 2018-01-22, 16:37:11
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="iso-8859-2"%>
<!DOCTYPE html>
<html>
    <head>
        
       <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-2" > 
       <link rel="stylesheet" href="header.css">
</head> 
    <body>
        <div id="wrapper">
            <header>
                <img src="biblio.jpg" alt="biblio-header">
            </header>
            <nav>
                 <a class="menu active" href="welcome.jsp">Profil użytkownika</a>
                <a class="menu active" href="spis.jsp">Spis książek</a>
                <a class="menu active" href="szukaj.jsp">Szukaj</a>
                <a class="menu active" href="my.html">Moja biblioteka</a>
            </nav>
            <section>
                <article>    
        <h1>Książki w spisie</h1>
        <%
            try {
                String book_name = request.getParameter("search_boook");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehavior=convertToNull", "root", "root");
                        
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("select * from book ");

                while (rs.next()) {
                    String book = rs.getString("autor");
                    String book_des = rs.getString("nazwa");
                    
        %>
        <P style="width: 800px"> <%out.print(book);
                 out.print(" " + book_des);
            %>
        </P>

        <%
                }
            } catch (Exception e) {

            }
        %>
    </body>
</html>
