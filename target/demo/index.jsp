<%@page import="java.util.*,java.text.*,model.*" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Products Demo</title>
        <link rel="stylesheet" href="styles/stylesheet.css">
    </head>
    <body>
        <div id="nav">
            <h1 id="title-button">Demo</h1>
            <ul class="nav-buttons">
                <li>
                    <button class="nav-button">
                        <a href="">Home</a>
                    </button>
                </li>
                <li>
                    <button class="nav-button">
                        <a href="">About</a>
                    </button>
                </li>
                <li>
                    <button class="nav-button">
                        <a href="">Contact</a>
                    </button>
                </li>
            </ul>
        </div>
        <div id="sub-nav">
        </div>
        <div id="section">
            <h3 class="title">Demo > Products</h3>
            <div id="products">
                <% List<Produto> produtos = TesteDAO.getProdutos();

                    for(Produto produto : produtos) {
                %>
                    <div class='product'>
                        <h2 class='product-title'><%=produto.getNome()%></h2>
                        <img src='<%=produto.getUrl_imagem()%>' />
                        <h1 class='product-price'>R$ <%=produto.getPreco()%></h1>
                        <button class='product-button'><a href="/demo/produtoid=<%=produto.getId()%>">Comprar</a></button>
                    </div>
                <% 
                    } 
                %>
            </div>
        </div>
    </body>
</html>