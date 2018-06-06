<html>
<head>
   <meta charset="utf-8">
   <title>Fashion-Hair</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
   <script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
   <script>
      $(document).ready(function()
      {
         $("#exampleModalLong").modal("show");
      });
    </script>
</head>
<body>

<!-- Modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Confirmación</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        <div class="modal-body">
                      <label for="login-username" class="label-material centered">Se ha confirmado la cita</label>
                    <div class="form-group">
                        <label class="label centered">Se ha confirmado la horas se enviará un email o el peluquero lo llamará.</label>
                    </div><a id="login" href="seleccionar_profesional.jsp" class="btn btn-primary center-block">Aceptar</a>
                    <!-- This should be submit button but I replaced it with <a> for demo purposes-->
      </div>
      
    </div>
  </div>
</div>
</body>
</html>
