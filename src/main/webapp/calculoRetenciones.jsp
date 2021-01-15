<%-- 
    Document   : calculoRetenciones
    Created on : 15-ene-2021, 21:31:33
    Author     : Bueno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Información salario empleado</h1>
        <%
            String nombre = request.getParameter("nombre");
            double salarioBruto = Double.parseDouble(request.getParameter("salario"));
            double retencion = 0;

            if (salarioBruto <= 1000) {
                retencion = 0;
            } else if (salarioBruto > 1000 && salarioBruto <= 3000) {
                retencion = 10;
            } else if (salarioBruto > 3000) {
                retencion = 20;
            }

            double salarioNeto = salarioBruto - (salarioBruto * retencion / 100);
        %>
        <h2>Nombre empleado:  <%= nombre%></h2>
        <h2>Salario bruto: <%= salarioBruto%>€</h2>
        <h2>Retención: <%= (salarioBruto * retencion / 100)%>€</h2>
        <h2>Salario Neto: <%= salarioNeto%>€</h2>
    </body>
</html>
