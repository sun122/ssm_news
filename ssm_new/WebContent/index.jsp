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
<script charset="utf-8" language="javascript" type="text/javascript" src="${APP_PATH}/script/login_regist.js"></script>
 <style type="text/css">
    	body{
    		-webkit-user-select:none;
    		-moz-user-select:none;
    		-ms-user-select:none;
    		user-select:none;
		}
        div.container-fluid{
            width: 73%;
            margin: 0 auto;
        }
        div.lcj_news,div.lcj_tzgg{
            width: 75%;
            margin: 0 auto;
        }
		#newslist{
			margin:0 auto;
			border:1px solid #ccc;
			display: none;
			width: 1100px;
			
		}
		div.panel-body{
			position: relative;
			padding: 0;
			margin: 8px;
		}
		div.panel-body img.newspic{
			width: 100px;
			height: 80px;
			margin:0 10px 0 0;
			padding:0;
		}
		div.panel-body span{
			position:absolute;
			padding-top:5px;
			display: inline-block;
		}
		div.panel-body span:first_child{
			position:absolute;
			width:900px;
			padding-top:5px;
			display: inline-block;
			overflow: hidden;
			white-space:nowrap;
			text-overflow:ellipsis;
		}
		div.panel-body span.newsdata{
			position:absolute;
			vertical-align:middle;
			right: 10px;
		}
		div.panel-body p{
			position:absolute;
			width:1005px;
			margin-top:32px;
			display: inline-block;
			overflow: hidden;
			white-space:nowrap;
			text-overflow:ellipsis;
		}
		div.panel-body dl{
		/* 	margin-bottom:20px; */
			margin: 3px;
			padding: 0;
		}
		div.panel-body dl dt span.newsdata{
			color:#428BCA;
			font-weight: 100;
		}
		div.panel-body dl dd{
			 border-bottom: 1px solid #cccccc; 
		}
		div.panel-body dl dd p{
			margin-left: 20px;
		}
		div.panel-footer{
			text-align: center;
			padding: 8px;
			padding: 5px;
			width: 1200px;
			margin: 0 auto;
			display: none;
		}
		div.panel-footer span{
			text-align: center;
			padding: 8px;
			cursor: default;
		}
		#fenye{
			cursor: default;
		}
		#fenye span{
			width: 15px;
			height: 10px;
		}
		#navindex li.choose,#navindex li.choose a{
			 color:red;
			 background-color: rgba(0, 51, 255, 0.69);
			 text-align: center;
		}
		#navindex li.choose:hover a{
			color:red;
		}
		div.row{
			position: relative;
			padding: 0;
			width:100%;
			padding-left: 12px;
			margin-bottom: 6px;
		}
		div.row img.newspic{
			width: 100px;
			height: 80px;
			margin:0 10px 0 0;
			padding:0;
		}
		div.row span{
			position:absolute;
			padding-top:5px;
			display: inline-block;
		}
		div.row span:first_child{
			position:absolute;
			width:750px;
			padding-top:5px;
			display: inline-block;
			overflow: hidden;
			white-space:nowrap;
			text-overflow:ellipsis;
		}
		div.row span.newsdata{
			position:absolute;
			vertical-align:middle;
			right: 10px;
		}
		div.row p{
			position:absolute;
			width:80%;
			margin-top:32px;
			display: inline-block;
			overflow: hidden;
			white-space:nowrap;
			text-overflow:ellipsis;
		}
    </style>
</head>
<body>
<div class="jumu"></div>	<!-- 登录注册的巨幕 -->
    <div class="rigest">
    	<h3>用户注册</h3>
    		<span class="close" id="close"></span>
 			<form action="registerServlet" method="post"> 
 				<!-- <input type="hidden" name="action" value="reginster"/> -->
             	<input type="text" name="name" placeholder="用户名" required">
             	<span class="titleu"></span>
            	<input type="password" name="password" placeholder="密码(6~8位数字与字母的组合)" required  pattern="(?=.*[a-zA-Z])(?=.*[0-9])\S{6,8}">
            	<input type="email" placeholder="邮箱" required name="email"/><span class="titleu1"></span>
				<input type="hidden" name="userClass" value="普通用户">
				<button type="submit">立即注册</button>
 			</form>
 			<span class="ts"></span>
 	</div>
 	<div class="login">
        <h3>用户登录</h3>
        <span class="close" id="close1"></span>
        <form action="ptuserlogin" method="post" name="form1">
        	 <!-- <input type="hidden" name="action" value="userlogin"> -->
             <input type="text" name="name" placeholder="用户名" required">
             <input type="password" name="password" placeholder="密码(6~8位数字与字母的组合)" required pattern="(?=.*[a-zA-Z])(?=.*[0-9])\S{6,8}">
             <input type="password" placeholder="确认密码" required pattern="(?=.*[a-zA-Z])(?=.*[0-9])\S{6,8}">
            <button type="submit">登录</button>
        </form>
        <span class="ts"></span>
 	</div>
 	
<nav class="navbar navbar-inverse navbar-fixed-top lcj" role="navigation">
 		
    <div class="container">
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <form class="navbar-form navbar-left " role="search"><!-- 搜索 -->
                <div class="form-group">
                    <input type="text" class="form-control hidden-sm" style="width: 300px; color:white;" placeholder="搜索新闻内容";>
                </div>
                <span class="glyphicon glyphicon-search hidden-sm searchnews" id="Search"></span>
            </form>
            
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#" class="login">登录</a></li>
                <li><a href="#" class="rigist">注册</a></li>
                <li><a href="#" class="welcome"></a></li>
            </ul>
        </div>
    </div>
</nav>
<header>
    <div class="head2 hidden-xs hidden-sm">
        <div class="container">
            <nav class="navbar navbar-default lcj" style="z-index: 0; text-align: center;border-bottom: 1px solid red;">
            	<div class="firstpagenav" style="inline-block;position: absolute;margin-top:8px;text-align: center;"><a href="" style="color:white;font-size: 20px;text-decoration: none;">首页</a></div>
                <ul class="nav navbar-nav" id="navindex">
                	
                </ul>
            </nav>
        </div>
    </div>
</header>
<template><!-- 导航条模板 -->
	<ul class="nav navbar-nav">
        <li><a href="javascript:;" data-id="{id}">{name}</a></li>
   </ul>
</template>
<template class="lunbo"><!-- 轮播图模板 -->
    <div class="item">
        <a href="{id}"><img src="{src}" alt=""></a>
        <p>{content}</p>
    </div>
</template>

<!-- 新闻列表 -->
<div class="panel panel-primary" id="newslist" style="display: block;margin: 0 auto;">
    <div class="panel-body">
		<a href="javascript:;"><span></span><span class="newsdata"></span></a>
    </div>
</div>
<div class="panel-footer" id="fenye">总页数：<label class="totalnews"></label>页 &nbsp;&nbsp;当前第:<label class="CurrentPage">1</label>页  <span class="first">首页</span><span class="uppage">上一页</span><span class="nextpage">下一页</span><span class="endpage">末页</span></div>

<template class="panelAllNews">
    <div class="panel-body">
		<a href="FindPicNews_pic?id={id}"><img src="{src}" class="newspic"/><span>{picNews_title}</span><span class="newsdata">{data}</span></a>
		<p>{content}</p>
    </div>  
</template>
<template class="panelAllTextNews">
    <div class="panel-body">
    	<dl style="height: 60px;">
    		<dt><a href="listNews.jsp?id={id}"><span>{news_title}</span></a><span class="newsdata">{data}</span></dt>
    		<dd><p>{content}</p></dd>
    	</dl>
    </div>  
</template>
<!-- <div class="container-fluid showorhild">
    <div id="slidershow" class="carousel slide lcj-slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#slidershow" data-slide-to="0" class="active"></li>
            <li data-target="#slidershow" data-slide-to="1"></li>
            <li data-target="#slidershow" data-slide-to="2"></li>
            <li data-target="#slidershow" data-slide-to="3"></li>
            <li data-target="#slidershow" data-slide-to="4"></li>
            <li data-target="#slidershow" data-slide-to="5"></li>
        </ol>
        <div class="carousel-inner" id="lunb">
            <div class="item active">
                <a href="##"><img src="images/banner1.jpg" alt=""></a>
            </div>
            <div class="item">
                <a href="##"><img src="images/banner2.jpg" alt=""></a>
            </div>
            <div class="item">
                <a href="##"><img src="images/banner3.jpg" alt=""></a>
            </div>
        </div>
        <a class="left carousel-control" href="#slidershow"  role="button">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#slidershow"  role="button">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>
</div> -->
<!-- <div class="container lcj_news showorhild">
    <section>
        <h3>热点新闻
            <span>HOT</span>
        </h3>
        <a href="#">MORE</a>
    </section>
    <div id="indepicnewslist">
    	<div class="row">
    	</div>
    </div>
</div>
<template class="panelAllPicNews">
    <div class="row">
		<a href="FindPicNews_pic?id={id}"><img src="{src}" class="newspic"/><span>{picNews_title}</span><span class="newsdata">{data}</span></a>
		<p>{content}</p>
    </div>  
</template>

<div class="container lcj_news showorhild">
    <section>
        <h3>新闻推荐
            <span>HOT</span>
        </h3>
        <a href="#">MORE</a>
    </section>
    <div id="indetextnewslist">
    	<div class="row">
    	<dl style="height: 60px;">
    		
    	</dl>
    	</div>
    </div>
</div>
<template class="indexAllTextNews">
    <div class="row" style="border-bottom: 1px solid #ccc;">
    	<dl style="height: 60px; margin-bottom: 2px;">
    		<dt><a href="id={id}"><span>{picNews_title}</span></a><span class="newsdata">{data}</span></dt>
    		<dd><p>{content}</p></dd>
    	</dl>
    </div>  
</template> -->
<footer class="down" style="bottom:0;width:100%;">
    Copyright © Copyright © 重庆文理学院软件工程学院 | 渝ICP备05001037号 | 技术支持：023-61162711 | 渝ICP备05001037号 | 技术支持：023-61162711
</footer>

<script type="text/javascript">
$('body').ready(function(){
	//导航条
    var templatehtml = $('template').html();
    var html = '';
	$.ajax({
    	url :"${APP_PATH}/showAllCatelory",
    	type : "get",
    	data : 'pn=1',
    	async : true,
    	success : function(result){
			$.each(result.extend.catelist.list,function(index,item){
				//alert(this.cateNmae);
                html += templatehtml.replace('{name}',item.cateNmae).replace('{id}',item.cateId);/* 取得新闻类别名称 */
			});
			 $('#navindex').html(html);
   	 	},
    	error:function(){
    		alert("error");
    	}
	});
	
	//导航条单击事件(高亮显示)
	var cateId;
	$('#navindex').on('click','a',function(){
		var li =$(this);
		cateId = li.attr("data-id");
		li.parent().addClass("choose");
 		$("li").each(function(index){
            $(this).click(function(){
                $("li").removeClass("choose");
                $("li").eq(index).addClass("choose");
            });
        });
 		
 		//当点击导航条的类别名时
 		var temtextnewhtml = $('template.panelAllTextNews').html();/* 文本新闻 */
		var temtexthtml = '';/* 文本新闻 */
 		$.ajax({
 	    	url :"${APP_PATH}/getNews",
 	    	type : "get",
 	    	data : {catelogId:cateId},
 	    	async : true,
 	    	success : function(result){
 				$.each(result.extend.newlist.list,function(index,item){
					temtexthtml += temtextnewhtml.replace('{id}',item.newsId).replace('{news_title}', item.newsTitle).replace('{data}',item.newsData).replace('{content}',item.newsContent);
 				});
				var thtml = temtexthtml;
				$('#newslist').html(thtml);
 			},
 	    	error:function(){
 	    		alert("error");
 	    	}
 		});	
	});
})
</script>
</body>
</html>