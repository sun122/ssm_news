<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<% pageContext.setAttribute("APP_PATH", request.getContextPath());%>
<script src="${APP_PATH}/script/jquery-3.2.1.js"></script>
</head>
<body>
	<div class="reg_box">
		hello
	</div>
</body>

<script type="text/javascript">
	function show(){
		//alert("begin");
		
    	$.ajax({
        	url :"${APP_PATH}/showAllCatelory",
        	type : "get",
        	data : 'pn=1',
        	async : true,
        	success : function(result){
    			$.each(result.extend.catelist.list,function(){
					alert(this.cateNmae);
				});
       	 	},
        	error:function(){
        		alert("error");
        	}
    	});
	}
	show();
</script>
</html>