<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Responsable</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <canvas id="chLine"></canvas>
                </div>
            </div>
        </div>
	</div>
	<div class="row">
        <div class="col-md-4 py-1">
        	<canvas id="chDonut1"></canvas>
        </div>
        <div class="col-md-4 py-1">
        	<canvas id="chDonut2"></canvas>
        </div>
        <div class="col-md-4 py-1">
        	<canvas id="chDonut3"></canvas>
        </div>
     </div>
</div>
<script src="js/chartjs.js"></script>
<script src="js/responsable.js"></script>
</body>
</html>