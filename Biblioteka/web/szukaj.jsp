<%-- 
    Document   : szukaj
    Created on : 2017-12-18, 23:56:28
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="iso-8859-2"%>

<!DOCTYPE html>

<html lang="pl">
    
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
                 
        <form action="books.jsp" method="post">
        <div class="search_input">
            
            <input name="search_boook" placeholder="Enter book's name..." type="text" size="50" style="margin-top: 50px; height: 70px; width: 300px;font-size: 30px;"> </input>
            
        </div>
        <div class="search_button">
            
            <input type="submit" value="SEARCH" style="height: 70px; width: 200px; margin-left: 70px; margin-right: auto;" class="btn"> </input>
            
        </div>
        
                </article>
            </section>
            <footer></footer>
    </div>
    </body>
</html>
