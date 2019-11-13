<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<script type="text/javascript">
	$(function() {
		
		$.post('show',function(data){
			alert(data[0].name);
			var result = "";
			for (var i = 0; i < data.length; i++) {
				result += "<dl>";
				result += "<dt style='cursor:pointer;'>"+data[i].name+"</dt>";
				for (var j = 0; j < data[i].children.length; j++) {
					result += "<dd>"+data[i].children[j].name+"</dd>";
				}
				result += "</dl>";
			}
			$("body").html(result);
		});
		
		//给所有父菜单绑定点击信息
		//on() 代替了  live事件
		$(document).on('click','dt',function(){
			
			/* slideToggle() 是一个复合函数，如果是展开的，点击就是合并，如果是合并的，点击就是展开  */
			$(this).siblings().slideToggle(500);
		
		});
	})
</script>
<body>

</body>
</html>