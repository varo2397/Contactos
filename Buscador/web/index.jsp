<%-- 
    Document   : index.jsp
    Created on : Nov 26, 2017, 2:24:23 PM
    Author     : varo
--%>
<%@page import = "java.util.ArrayList" %>
<%@page import = "Modelo.Linea" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Buscador</title>
        <!-- Bootstrap core CSS-->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom fonts for this template-->
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">
    </head>
    </head>
    <body>
        <% 
            ArrayList<Linea> lineas = (ArrayList<Linea>)session.getAttribute("listaPalabras");
        %>
        <br>
        <br>
        <br>
        <br>
        <div class="container">
            <div class="row">
                <div class="col-xl-9 mx-auto">
                    <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
                        <form action="buscarPalabras" method="post">
                            <div class="form-row">
                                <div class="col-12 col-md-9 mb-2 mb-md-0">
                                    <input name="busqueda" id="busqueda" class="form-control form-control-lg" placeholder="">
                                </div>
                                <div class="col-12 col-md-3">
                                    <button type="submit" class="btn btn-block btn-lg btn-primary">Buscar</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
            <br>
            <br>
            <div class="row">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Palabra</th>
                            <th>Frecuencia</th>
                            <th>Sitio</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <% if(lineas != null) {%>
                            <% for(int i = 0; i < lineas.size(); i++){
                                Linea a = lineas.get(i);
                            %>
                            <tr>
                                <td><%= a.getPalabra() %></td>
                                <td><%= a.getFrecuencia() %></td>
                                <td><%= a.getSitio()%></td>   
                            </tr>
                      
                            <% }%>
                        <% } %>
                       
                    </tbody>
                </table>
            </div>
        </div>  
        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/popper/popper.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    </body>
</html>
