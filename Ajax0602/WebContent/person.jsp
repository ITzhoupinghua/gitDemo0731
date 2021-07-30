<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>邮箱显示</title>
<!-- 网页中自定义名字  如mary ,点击mary ,利用ajax,显示其相应的邮箱地址 mary@163.com设置三个名字  -->
<script type="text/javascript" src="jquery-2.2.4.js"></script>
<script type="text/javascript">
	$(function(){
		$("#d1").click(function(){
			$.getJSON("PersonAjaxServlet",function(data){		
				$("#emialinfo").html(data[0].email);
				
			})

		})
		$("#d2").click(function(){
			$.getJSON("PersonAjaxServlet",function(data){		
				$("#emialinfo").html(data[1].email);
				
			})

		})
		$("#d3").click(function(){
			$.getJSON("PersonAjaxServlet",function(data){		
				$("#emialinfo").html(data[2].email);
				
			})

		})
	})

</script>
</head>
<body>

	<div>
		第一个人的邮箱:<button id="d1">mary</button><br><br>
		第二个人的邮箱:<button id="d2">jack</button><br><br>
		第三个人的邮箱:<button id="d3">tom</button><br><br>
	</div>
	<div id="emialinfo"></div>
	
</body>
</html>