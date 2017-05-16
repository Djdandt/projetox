<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header class="text-center">
    <c:if test="${not empty sessionScope.usuario}">
        <p>
            <c:out value="Bem vindo(a) ${sessionScope.usuario.nomeCompleto} !" />
        </p>
        <p>
            <a href="menu">Voltar</a>
            <a href="logout">Sair</a></p>

    </c:if>
</header>
