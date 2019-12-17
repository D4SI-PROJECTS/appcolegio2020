<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SCHOOL | NOTAS</title>        
        <jsp:include page="../enlaces.jsp"/>
    </head>
    <body>
        <div class="contenedor">
            <jsp:include page="../headernav.jsp"/>
            <main>
                <div class="c-main">
                    <div class="table-responsive">
                        <table class="table table-hover table-striped" id="tblNotas">
                            <thead class="thead-dark text-center">
                                <tr>
                                    <th>ID</th>
                                    <th>CURSO</th>
                                    <th>ALUMNO</th>
                                    <th>NOTA</th>
                                    <th>ACCIONES</th>
                                </tr>
                            </thead>
                            <tbody class="text-center" id="tbody">

                            </tbody>
                        </table>
                    </div>
                </div>
            </main>
        </div>
        <script src="<c:url value="/Resources/Js/notas.js"/>"></script>
    </body>
</html>
