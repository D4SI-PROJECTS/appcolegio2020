<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN | SCHOOL</title>
        <link rel="title icon" href="<c:url value="/Resources/Icono/icono02.png"/>">
        <link rel="stylesheet" href="https://bootswatch.com/4/cosmo/bootstrap.min.css">
        <script src="https://kit.fontawesome.com/8719a7912f.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="<c:url value="/Resources/Css/login.css"/>">
</head>
<body>
    <div class="contenedor">
        <div class="c-layout">
            <div class="c-img">
                <img src="<c:url value="/Resources/Images/login01.svg"/>" class="imglogin" alt="Image Login">
            </div>
            <div class="c-form">
                <form action="usuario.htm" method="POST">
                    <input type="hidden" name="op" value="validar">
                    <h3 class="font-weight-bold text-center">INICIAR SESIÓN</h3>
                    <hr>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Usuario">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Contraseña">
                    </div>
                    <button class="btn btn-primary btn-block font-weight-bold">
                        INGRESAR
                    </button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
