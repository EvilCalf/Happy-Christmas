<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>圣诞祝福</title>
	<script type="text/javascript" src="images/jquery-latest.min.js"></script>
	<script src='images/snowfall.jquery.js'></script>
	<link rel="stylesheet" href="images/styles.css"></link>
</head>
<body class="darkBg">
</body>
	<script type='text/javascript'> 	
		$(document).ready(function(){
			$('.collectonme').hide();
			//Start the snow default options you can also make it snow in certain elements, etc.
			$(document).snowfall();
			
			$("#clear").click(function(){
				$(document).snowfall('clear'); // How you clear
			});
			
			$("#round").click(function(){
				document.body.className  = "darkBg";
				$('.collectonme').hide();
				$(document).snowfall('clear');
				$(document).snowfall({round : true, minSize: 5, maxSize:8}); // add rounded
			});
			
			$("#shadows").click(function(){
				document.body.className  = "lightBg";
				$('.collectonme').hide();
				$(document).snowfall('clear');
				$(document).snowfall({shadow : true, flakeCount:200}); // add shadows
			});

			$("#roundshadows").click(function(){
				document.body.className  = "lightBg";
				$('.collectonme').hide();
				$(document).snowfall('clear');
				$(document).snowfall({shadow : true, round : true,  minSize: 5, maxSize:8}); // add shadows
			});
			
			$("#collection").click(function(){
				$(document).snowfall('clear');
				document.body.className  = "darkBg";
				$('.collectonme').show();
				$(document).snowfall({collection : '.collectonme', flakeCount : 250});
			});

			$("#deviceorientation").click(function(){
				$(document).snowfall('clear');
				$('.collectonme').hide();
				document.body.className  = "darkBg";
				$(document).snowfall({deviceorientation : true, round : true, minSize: 5, maxSize:8});
			});

		});
		 </script>
<div style="text-align:center;clear:both;">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
</div>

</html>
