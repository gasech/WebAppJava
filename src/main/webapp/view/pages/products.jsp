<%@page import="java.util.*,java.text.*,model.*" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content=?text/html; charset=utf-8?>
        <title>Products Demo</title>
        <link rel="stylesheet" href="./view/styles/stylesheet.css">
    </head>
    <body>
        <div id="back-nav"></div>
        <div id="sub-back-nav"></div>
        <div class="content">
            <jsp:include page='./view/components/header.jsp' flush="true">
                <jsp:param name="title" value="Demo > Products > " />
            </jsp:include>

            <div id="section">
                <div id="products">
                    <% List<Produto> produtos = ProdutoDAO.getProdutos();

                        for (Produto produto : produtos) {
                    %>
                    <form action="products/product" method="GET">
                        <button type="submit" class='product' name="id" value="<%=produto.getId()%>">
                            <img src='<%=produto.getUrl_imagem()%>' />
                            <h3 class='product-title'><%=produto.getNome()%></h3>
                            <h1 class='product-price'>R$ <%=produto.getPreco()%></h1>
                        </button>
                    </form>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
    </body>
</html>