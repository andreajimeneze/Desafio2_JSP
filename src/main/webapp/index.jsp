<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import ="cl.praxis.desafio2.business.HabitacionBusiness" %>
<%@ page import="cl.praxis.desafio2.model.Habitacion" %>
<%@ page import="java.util.List" %>

<%
  HabitacionBusiness habitacionBusiness = new HabitacionBusiness();
  List<Habitacion> listaHabitaciones = habitacionBusiness.getHabitaciones();

%>

<!DOCTYPE html>
<html>
<head>
  <title>Desafío 2</title>
</head>
<body>
<form method="post" action="procesa.jsp">

  <!-- Section-->
  <section class="py-5">
    <div class="container px-4 px-lg-5 mt-5">

      <div class="row justify-content-center">
        <h1>
          Habitaciones Disponibles (<%= habitacionBusiness.availableRooms()%>)
        </h1>
        <hr>
      </div>


      <div
              class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

        <%
          for(Habitacion habitacion : listaHabitaciones) {
        %>

        <div class="col mb-5">
          <div class="card h-100">
            <img class="card-img-top" style="width: 250px"
                 src="<%= habitacion.getImage()%>"
                 alt="<%= habitacion.getName()%>" />
            <div class="card-body p-4">
              <div class="text-center">
                <h5 class="fw-bolder"></h5>
                <p></p>
                CL$ <%= habitacion.getPrize()%>

              </div>
            </div>
            <input type="radio" id="html" name="idevento"
                   value="<%= habitacion.getId()%>" checked />  
            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent" >
              <div class="text-center">
                <!--<a class="btn btn-outline-dark mt-auto"
                   href="detalle.jsp?idevento=">Ver
                  Detalle Evento</a> -->
              </div>
            </div>
          </div>
        </div>
        <%
          }
        %>

      </div>
    </div>
  </section>

  <!--  Formulario
  <section>

    <div class="container px-4 px-lg-5 mt-5">

      <h1>Información de Venta</h1>
      <hr />

      <div class="row g-3">
        <div class="col-md-6">
          <label for="inputEmail4" class="form-label">Nombre</label> <input
                type="text" class="form-control" id="nombre" name="nombre"
                value="Marcelo">
        </div>
        <div class="col-md-6">
          <label for="inputPassword4" class="form-label">Apellido</label> <input
                type="text" class="form-control" id="apellido" name="apellido"
                value="Salas Melinao">
        </div>

        <div class="col-md-6">
          <label for="inputCity" class="form-label">Dirección</label>
          <input
                  type="text" class="form-control" id="direccion" name="direccion"
                  value="Av. 15 Norte">
        </div>

        <div class="col-md-2">
          <label for="inputZip" class="form-label">Número</label>
          <input
                  type="text" class="form-control" id="numero" name="numero"
                  value="487">
        </div>

        <div class="col-md-4">
          <label for="inputState" class="form-label">Cantidad de
            Tickets</label> <select id="cantidad" name="cantidad" class="form-select">
          <%
            for (int x = 0; x < 50; x++) {
          %>
          <option value="<%=x + 1%>"><%=x + 1%> Ticket(s)
          </option>
          <%
            }
          %>

        </select>
        </div>

        <div class="col-12">
          <hr />
          <button type="submit" class="btn btn-primary">Enviar
            Solicitud de Compra</button>
        </div>
      </div>

    </div>

  </section>

  <br /> <br />
-->
</form>
</body>
</html>