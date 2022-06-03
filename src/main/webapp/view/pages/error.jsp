<%@page import="java.util.*,java.text.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Products Demo</title>
        <link rel="stylesheet" href="/view/styles/stylesheet.css">
    </head>
    <body>
        <div id="back-nav"></div>
        <div id="sub-back-nav"></div>
        <div class="content">
            <jsp:include page='./view/components/header.jsp' flush="true">
                <jsp:param name="title" value=""/>
            </jsp:include>
            <h1 class="title-error">Error: <%=request.getAttribute("msg")%></h1>
            <button class="button-error" >
                <a href="/home">
                    Voltar para a pagina principal
                </a>
            </button>
        </div>
    </body> 
</html>
