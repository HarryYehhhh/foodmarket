<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<jsp:include page="../layout/navbar.jsp" />
<jsp:include page="../layout/navbarProduct.jsp" />
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<style>
table, td {
	border: 3px rgb(66, 170, 218) solid;
	background-color: rgb(187, 229, 235);
	color: red;
	border-collapse: collapse;
	margin: 10px auto;
	font-size: 125%;
	padding: 10px;
	box-shadow: 5px 5px 2px gray;
}
</style>
<head>
<meta charset="UTF-8">
<title>前台點擊商品查詢商品</title>
</head>
<body>
	<!-- <div class="div1"> -->
	<!-- 				<label for="id" class="id">單筆商品查詢 : </label> <input type="text" -->
	<!-- 					id="id" name="id" autocomplete="off" required /><input -->
	<!-- 					type="submit" value="查詢"> -->
	<!-- 			</div> -->
		<div class="container">
	<div class="row justify-content">
	<div class="card mb-3" style="max-width: 540px;">
  <div class="row no-gutters">
	<c:forEach var="workProduct" items="${workProduct}">
    <div class="col-md-4">
      <img style="width: 400px; height: 400px;" class="img-thumbnail" src="data:image/image/*;base64,${workProduct.productimg}" alt="image">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">${workProduct.productname}</h5>
        <p class="card-text">${workProduct.productdesciption}</p>
        <p class="card-text">$${workProduct.productprice}</p>
<!--         <a -->
<%-- 			href="${contextRoot}/product/productname?productname=${workProduct.productname}" --%>
<!-- 				id="frontdesk" class="btn btn-primary stretched-link">加入購物車</a>																	 -->
      </div>
    </div>
	</c:forEach>
  </div>
</div>
	</div>
	</div>
	
	<br />
	<div class="row">
		<div class="container">

			<%-- 		<c:forEach var="pname" items="${pname}"> --%>
			<div class="row justify-content">
				<%-- 			<c:out  value="${workProduct.productcategory}" /> --%>

				<div class="col-12">

					<div class="album py-3 bg-light">
						<div class="container">

							<div class="row">
								<c:forEach var="workProduct" items="${workProduct}">
									<!-- 									<tr> -->
									<!-- 									<th> -->
									<div class="card row-3">
										<img style="width: 400px; height: 400px;"
											src="data:image/image/*;base64,${workProduct.productimg}"
											alt="image" />

									</div>
									<div class="card row-3">
										<div class="card-body">

											<h5 class="card-title">${workProduct.productname}</h5>
										<hr />
											<%-- 					<form:form action="${contextRoot}/product/productname" method="get"> --%>
											<h5 class="card-title">${workProduct.productdesciption}</h5>
											
											<p class="card-text">$${workProduct.productprice}</p>
											
											<a
												href="${contextRoot}/product/productname?productname=${workProduct.productname}"
												id="frontdesk" class="btn btn-primary stretched-link">加入購物車</a>
											<%-- 					</form:form> --%>
										</div>
									</div>

								</c:forEach>
							</div>
						</div>
					</div>

				</div>
				<!-- 							標題對齊圖 -->
				<!-- 						<figure class="figure"> -->
				<!-- 							<img src="..." class="figure-img img-fluid rounded" alt="..."> -->
				<!-- 							<figcaption class="figure-caption">A caption for the -->
				<!-- 								above image.</figcaption> -->
				<!-- 						</figure> -->
				<!-- 								塗在中間 -->
				<!-- 						<div class="text-center"> -->
				<!-- 							<img src="..." class="rounded" alt="..."> -->
				<!-- 						</div> -->
			</div>
		</div>
		
		<br/>
		
		<div>
		<h5 class="card-title">請詳閱以下注意事項</h5>
		<p>※下單即為消費者同意進行無接觸配送方式。
無接觸配送為貨運司機於指定時間內放置警衛室
或電聯客戶於一樓門口取貨（不送上樓不與客人接觸）
※經聯繫收件者三次以上皆無法配送時，視為配送失敗。
配送失敗後僅補送一次，若補送失敗則回收貨物且不退款
※依照消費者保護法的規定，
生鮮食品不適用7天無條件退貨條款。
※若您收到的貨品有問題請於24小時內連繫客服處理，如收到商品有瑕疵或缺件問題，將採用部分退款。
※生鮮農產品易受天候因素影響，如品質不佳產生缺貨狀況，將更換等值商品，恕不另行通知，敬請見諒。</p>
		</div>
	</div>
</body>

</html>