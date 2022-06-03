<%@page import="java.util.*,java.text.*,model.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Products Demo</title>
        <link rel="stylesheet" href="/view/styles/stylesheet.css">
    </head>
    <body>
        <div id="back-nav"></div>
        <div id="sub-back-nav"></div>
        <div class="content">
            <% request.setCharacterEncoding("utf-8");%>
            <jsp:include page='./view/components/header.jsp'>
                <jsp:param name="title" value="${title}"/>
            </jsp:include>
            <%
                Produto produto = ProdutoDAO.getProduto(Integer.parseInt(request.getParameter("id")));
            %>
            <div class="container">
                <div class="center-item">
                    <h2 class="big-title-product"><%=produto.getNome()%></h2>
                    <p class="id-product">Código: <%=produto.getId()%></p>
                    <div class="align-items">
                        <img class="big-image-product" src="<%=produto.getUrl_imagem()%>"/>
                        <div class="inside-container">
                            <h1 class="big-price-product">R$ <%=produto.getPreco()%></h1>
                            <form action="/products/product/checkout" method="POST">
                                <label for="quantity">Selecione a quantidade:</label>
                                <input type="number" name="quantidade" min="1" max="<%=produto.getQuantidade()%>">
                                <button type="submit" class="big-button-product" name="id" value="<%=produto.getId()%>">Comprar</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>