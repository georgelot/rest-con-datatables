<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>




<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Resumen Citas</title>

<!-- bootstrap estilo inicio -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<!-- bootstrap estilo fin -->

<!-- datatables inicio -->
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/jq-3.3.1/jszip-2.5.0/dt-1.10.21/b-1.6.2/b-flash-1.6.2/b-html5-1.6.2/b-print-1.6.2/datatables.min.css"/>
<!-- datatables fin -->

</head>
<body>

	 <div class="container my-5">
	 	<div class="row">
	 		<div class="col-2"></div>
	 		<div class="col-8">
	 			<h1>Tabla de Citas</h1>
	 			
	 			<table class="table" id="datatable" width="100%" cellspacing="0">
	 				<thead>
	 					<tr>
	 						<th>type</th>
	 						<th>id</th>
	 						<th>quote</th>
	 					</tr>

	 				</thead>
	 				
	 				<tfoot>
	 					<tr>
	 						<th>type</th>
	 						<th>id</th>
	 						<th>quote</th>
	 					</tr>
	 				</tfoot>
	 			
	 			</table>
	 			
	 		</div>
	 		<div class="col-2"></div>
	 	</div>
	</div>

	
	<!-- bootstrap json slim inicio-->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
		integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
		crossorigin="anonymous"></script>
	<!-- bootstrap json slim fin-->

	<!-- datatables json completo inicio -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
	<script type="text/javascript"
		src="https://cdn.datatables.net/v/dt/jq-3.3.1/jszip-2.5.0/dt-1.10.21/b-1.6.2/b-flash-1.6.2/b-html5-1.6.2/b-print-1.6.2/datatables.min.js"></script>
	<!-- datatables json completo fin -->
	
	<script type="text/javascript">
		const cdn = "http://cdn.datatables.net/plug-ins/1.10.21/i18n/Spanish.json"

		$(document).ready(function(){
				$('#datatable').DataTable({
					dom: 'Bfrtip',
					buttons: [
						'copy', 'csv', 'excel', 'pdf', 'print'
							],
						"language" : {
							"url" : cdn
							}
						});
					})
				
	</script>
	
</body>
</html>