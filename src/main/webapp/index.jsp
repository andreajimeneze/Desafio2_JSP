<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import ="cl.praxis.desafio2.business.HabitacionBusiness" %>
<%@ page import="cl.praxis.desafio2.model.Habitacion" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>

<%
  HabitacionBusiness habitacionBusiness = new HabitacionBusiness();
  List<Habitacion> listaHabitaciones = habitacionBusiness.getHabitaciones();

%>

<!DOCTYPE html>
<html>
<%@include file="assets/html/head.jsp" %>

<body>
<%@include file="assets/html/header.jsp" %>

<form method="post" action="procesa.jsp">

  <!-- Section-->
  <section class="py-5">
    <div class="container px-2 px-lg-3 mt-5">
      <div class="row justify-content-center">
        <h2>
          Habitaciones Disponibles (<%= habitacionBusiness.availableRooms()%>)
        </h2>
        <hr>
      </div>


      <div class="row row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center g-2 g-md-3 g-xl-4">

        <%
          for(Habitacion habitacion : listaHabitaciones) {
        %>

        <div class="col mb-5">

          <div class="card h-100">
            <div class="object-fit-cover">
            <img class="card-img-top"
                 src="<%= habitacion.getImage()%>"
                 alt="<%= habitacion.getName()%>">
            </div>
            <div class="card-body p-4 text-center">

                <h5 class="fw-bolder"><strong><%= habitacion.getName()%></strong></h5>
                <p><%= habitacion.getDescription()%></p>
                <p>CL$ <%= habitacion.getPrize()%></p>
            </div>

            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent text-center" >

                <input type="radio" id="html" name="select"
                       value="<%= habitacion.getId()%>" checked />  

            </div>
          </div>
        </div>
        <%
          }
        %>
      </div>
    </div>
    </div>
  </section>

  <!--  Formulario -->
  <section>

    <div class="container px-4 px-lg-5 mt-5">

      <h3>Información de Reserva Habitación</h3>
      <hr />

      <div class="row g-2">
        <div class="col-md-6">
          <label for="nombre" class="form-label">Nombre</label>
            <input type="text" class="form-control" id="nombre" name="nombre">
        </div>

        <div class="col-md-6">
          <label for="apellido" class="form-label">Apellido</label>
            <input type="text" class="form-control" id="apellido" name="apellido">
        </div>

        <div class="col-md-6">
          <label for="email" class="form-label">Correo electrónico</label>
            <input type="email" class="form-control" id="email" name="email">
        </div>

        <div class="col-md-2">
          <label for="medioPago" class="form-label">Medio de Pago</label>
          <select id="medioPago" name="medioPago" class="form-select">
            <option value="Efectivo">Efectivo</option>
            <option value="Débito">Débito</option>
            <option value="Crédito">Crédito</option>
          </select>
        </div>

        <div class="col-md-2">
          <label for="dias" class="form-label">Cantidad de Días</label>
          <select id="dias" name="dias" class="form-select">
          <%
            for (int x = 0; x < 50; x++) {
          %>
            <option value="<%=x + 1%>"><%=x + 1%> días</option>
          <%
            }
          %>
        </select>
        </div>
          <div class="col-md-2">
            <label for="fechaEntrada" class="form-label">Fecha de entrada</label>
            <select id="fechaEntrada" name="fechaEntrada" class="form-select">
              <%
                SimpleDateFormat sdf = new SimpleDateFormat("d MMMM yyyy");
                Calendar calendar = Calendar.getInstance();

                for (int x = 0; x < 50; x++) {
                  String date = sdf.format(calendar.getTime());
              %>
              <option value="<%= date%>"><%=date%></option>
              <%
                  calendar.add(Calendar.DAY_OF_MONTH, 1); // Añade un día
                }
              %>
            </select>
          </div>


      </div>
        <div class="col-12">
          <hr />
          <button type="submit" class="btn btn-primary">Enviar
            Solicitud de Reserva</button>
        </div>
      </div>

  </section>

  <br /> <br />
</form>
<%@include file="assets/html/footer.jsp"%>
</body>
</html>