<%-- 
    Document   : welcome
    Created on : 2017-12-18, 22:49:35
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
                <article><h1>Profil użytkownika</h1>
                         
                    <p>Nazwa użytkownika:</p>
                <p>E-mail:</p>
                <p>Imię:</p>
                <p>Nazwisko:</p>
                <p>Data urodzenia:</p>
                
                <p>Numer telefonu:</p>
                </article>
            </section>
            <footer></footer>
    </div>
    </body>
</html>
