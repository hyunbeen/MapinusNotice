<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body data-spy="scroll" data-target="#header">
	<!--Start Hedaer Section-->
	<section id="header">
	<div class="header-area" data-spy="affix" data-offset-top="50">
		 <div class="top_header">
                    <div class="container">
                        <div class="row">
                            <div style="float:right">
                                <div class="social_icon text-right">
                                	
                                	<span class="whiteWord">
                                		<b><spring:message code="header.language" text="default text" /></b>
                                	</span>
                                	&nbsp
									<!-- 언어선택 -->
                                    <select  id="langSelect">
                                    	<option value='ko'></option>
                                    	<option value='ko' data-icon="${pageContext.request.contextPath}/img/kr.png">한국어</option>
                                    	<option value='us' data-icon="${pageContext.request.contextPath}/img/us.png">English</option>
                                    	<option value='cn' data-icon="${pageContext.request.contextPath}/img/cn.png">中国</option>
                                    	<option value='jp' data-icon="${pageContext.request.contextPath}/img/jp.png">日本</option>
                                    </select>
                                   
                                </div>
                            </div>
                            <!--End of col-md-4-->
                        </div>
                        <!--End of row-->
                    </div>
                    <!--End of container-->
                </div>
                <!--End of top header-->
		<div class="header_menu text-center"  id="nav">
			<div class="container">
				<div class="row">
				<nav class="navbar navbar-default zero_mp "> <!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a id='brandlogo' value='header' class="navbar-brand custom_navbar-brand menu" href="#header"><img
						src="${pageContext.request.contextPath}/img/logo.png" alt=""></a>
				</div>
				<!--End of navbar-header--> <!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse zero_mp"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right main_menu">
						<li class="active"><a class='menu' value='header' href="#header"><spring:message code="header.home" text="default text" /></a></li>
								<span class="sr-only">(current)</span>
						</a></li>
						<li><a class='menu' value='welcome' href="#welcome"><spring:message code="header.welcome" text="default text" /></a></li>
						<li><a class='menu' value='story' href="#story"><spring:message code="header.story" text="default text" /></a></li>
						<li><a class='menu' value='technical' href="#technical"><spring:message code="header.technical" text="default text" /></a></li>
						<li><a class='menu' value='friendly' href="#friendly"><spring:message code="header.friendly" text="default text" /></a></li>
						<li><a class='menu' value='contact' href="#contact"><spring:message code="header.contact" text="default text" /></a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse --> 
				</nav>
				<!--End of nav-->
				</div>
				
			</div>
			<!--End of container-->
		</div>
		<!--End of header menu-->
	</div>
	<!--end of header area--> 
	</section>
	<!--End of Header Section-->
</body>
</html>