<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC >
<html>
<head>
<link rel="stylesheet" href="resources/w3.css">
<link rel="stylesheet" href="resources/js/jquery-ui-1.11.4/jquery-ui.css">
<script type="text/javascript" src="resources/js/jquery-ui-1.11.4/external/jquery/jquery.js"></script>
<script type="text/javascript" src="resources/js/jquery-ui-1.11.4/jquery-ui.js"></script>

<meta charset="UTF-8">
<title>ajax</title>
<script type="text/javascript">
$(document).ready(function() {
	$('#a').hover(
			function() {
			$(this).css('background-color' , 'blue');
			$.get("ggo",
				function(data) {
				$('#b').html(data)
				});
			},
			function() {
			$(this).css('background-color' , 'red');
			$.get("ggo",
				function(data) {
					$('#b').html("")
				});
			});
});

</script>
</head>
<body>

<div id="a"> hell hell </div>
<div id="b"> hi </div>

</body>
</html>