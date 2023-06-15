<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function() {

		var dps = [ [] ];
		var chart = new CanvasJS.Chart("chartContainer", {
			theme : "light2", //"light1", "dark1", "dark2"
			animationEnabled : true,
			title : {
				text : "Iron Ore Production in India"
			},
			axisX : {
				valueFormatString : "YYYY"
			},
			axisY : {
				title : "Production (in million tonnes)",
				maximum : 250
			},
			data : [ {
				type : "column",
				xValueType : "dateTime",
				xValueFormatString : "YYYY",
				yValueFormatString : "#,##0mn tonnes",
				dataPoints : dps[0]
			} ]
		});

		var xValue;
		var yValue;

		<c:forEach items="${dataPointsList}" var="dataPoints" varStatus="loop">
		<c:forEach items="${dataPoints}" var="dataPoint">
		xValue = parseInt("${dataPoint.x}");
		yValue = parseFloat("${dataPoint.y}");
		label = "${dataPoint.label}";
		indexLabel = "${dataPoint.indexLabel}";
		dps[parseInt("${loop.index}")].push({
			x : xValue,
			y : yValue
		});
		</c:forEach>
		</c:forEach>

		chart.render();

	}
</script>
</head>
<body>
	<div id="chartContainer" style="height: 370px; width: 100%;"></div>
	<script src="https://cdn.canvasjs.com/canvasjs.min.js"></script>
</body>
</html>