<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%-- <jsp:include page="../layout/navbar.jsp" /> --%>
<jsp:include page="../layout/adminNavbar.jsp" />
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<%-- <link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet"> --%>
<%-- <link href="${contextRoot}/css/question.css" rel="stylesheet"> --%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="col-md-9 ml-sm-auto col-lg-10 px-md-4 pt-3 pb-2 mb-3 border-bottom">
 <div class="container-fluid">
	<div class="row justify-content-center">
			<div class="col-9">
				<br>
				<h1 style="text-align: center">常見問題</h1>
				<br>
				<div class="card">
					<div class="card-header">修改常見問題</div>
					<div class="card-body">
						<form:form class="form" method="post"
							action="${contextRoot}/question/editQuestion"
							modelAttribute="Question">
							<form:input path="id" type="hidden"></form:input>
							<table>
								<div class="form-group">
									<tr>
										<td><b>選擇問題分類：</b></td>
										<td><form:select path="questionCategory">
												<form:option value="-" label="-請選擇-" />
												<form:options items="${categoryList}" />
											</form:select></td>
									</tr>
								</div>
							</table>
							<br>
							<div class="form-group">
								<div>修改問題：</div>
								<form:textarea path="questionTitle" class="form-control" />
							</div>
							<div class="form-group">
								<div>修改回答：</div>
								<form:textarea path="answer" class="form-control" />
							</div>
					<input type="submit" name="submit" value="修改常見問題" />

					</form:form>
				</div>
			</div>
		</div>
		
		</div>
	</div>
	</div>
</body>
</html>