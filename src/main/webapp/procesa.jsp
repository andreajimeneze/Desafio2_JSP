<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="cl.praxis.desafio2.business.HabitacionBusiness" %>
<%@ page import="cl.praxis.desafio2.model.Habitacion" %>

<!DOCTYPE html>
<html lang="es">

<%@include file="assets/html/head.jsp"%>

<body>

<%@include file="assets/html/header.jsp"%>

<%
    String nombreComprador = request.getParameter("nombre");
    String apellidoComprador = request.getParameter("apellido");
    String emailComprador = request.getParameter("email");
    String medioPago = request.getParameter("medioPago");
    int cantidadDias = Integer.parseInt(request.getParameter("dias"));
    String fechaIngreso = request.getParameter("fechaEntrada");
    int selectHabitacion = Integer.parseInt(request.getParameter("select"));

    HabitacionBusiness habitacionBusiness = new HabitacionBusiness();

    Habitacion habitacion = new Habitacion();
    habitacion.setId(selectHabitacion);

    habitacion = habitacionBusiness.getHabitacionById(habitacion);

    int valorPagar = habitacionBusiness.amountPaid(cantidadDias, habitacion);

%>
<form method="post" action="procesa.jsp">

    <!-- Section-->
    <section class="py-5">
        <div class="container px-4 px-lg-5 mt-5">

            <div class="row justify-content-center">
                <h2>
                    Detalle Solictud Reserva: <strong>Habitación <%=habitacion.getId()%> - <%=habitacion.getName()%></strong>
                </h2>
                <hr>
            </div>
        </div>

        <div class="container px-4 px-lg-5 mt-5">

            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Item</th>
                    <th scope="col">Valor</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Nombre</td>
                    <td><%=nombreComprador%></td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Apellido</td>
                    <td><%=apellidoComprador%></td>
                </tr>


                <tr>
                    <th scope="row">3</th>
                    <td>Correo electrónico</td>
                    <td><%=emailComprador%></td>
                </tr>

                <tr>
                    <th scope="row">4</th>
                    <td>Cantidad Días</td>
                    <td><%=cantidadDias%></td>
                </tr>

                <tr>
                    <th scope="row">5</th>
                    <td>Fecha ingreso</td>
                    <td><%=fechaIngreso%></td>
                </tr>

                <tr>
                    <th scope="row">6</th>
                    <td>Medio de Pago</td>
                    <td><%=medioPago%></td>
                </tr>

                <tr>
                    <th scope="row">7</th>
                    <td>Valor a Pagar</td>
                    <td><strong>CL$ <%=valorPagar%></strong></td>
                </tr>

                </tbody>
            </table>

        </div>

    </section>

    <br /> <br />

</form>

<%@include file="assets/html/footer.jsp"%>

</body>
</html>
