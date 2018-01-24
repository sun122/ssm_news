<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<% pageContext.setAttribute("APP_PATH", request.getContextPath());%>
<link rel="stylesheet" href="${APP_PATH}/CSS/bootstrap.min.css">
<link rel="stylesheet" href="${APP_PATH}/CSS/index.css">
<script src="${APP_PATH}/script/jquery-3.2.1.js"></script>
<script src="${APP_PATH}/script/bootstrap.min.js"></script>

</head>
<body>
	<div id="box" style="margin:0 auto;">
		 
	</div>
	<template class="panelAllNews">
   	 	<div class="panel-body">
			<span>作者：{news_title}</span>&nbsp;&nbsp;<span>{author}</span><h5 class="newsdata">{data}</h5>
			<p>{content}</p>
    	</div>  
	</template>
</body>
<script type="text/javascript">
 var id = <%= request.getParameter("id") %>//新闻ID
 $('body').ready(function(){
	 var templatenews = $('.panelAllNews').html();
	 var htmlnews = '';
	 $.ajax({
		 url:'${APP_PATH}/getNews',
		 type:'get',
		 data:{newsId:id},
		 async : true,
	     success : function(result){
				htmlnews += templatenews.replace('{news_title}',result.extend.newlist.list[0].newsTitle).replace('{data}',result.extend.newlist.list[0].newsData).replace('{content}',result.extend.newlist.list[0].newsContent).replace('{author}','作者：'+result.extend.newlist.list[0].author);
				$('#box').html(htmlnews);
	   	 },
	     error:function(){
	    	alert("error");
	     }
	 })
 })

</script>
</html>