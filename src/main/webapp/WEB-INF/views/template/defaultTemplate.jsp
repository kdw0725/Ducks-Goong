<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader("Expires",0);
if(request.getProtocol().equals("HTTP/1.1"))
	response.setHeader("Cache-Control","no-cache");
%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="ITsuda">
		<meta name="author" content="ITsuda">
	
	<link rel="icon" type="image/png" href="resources/images/icons/favicon.png"/>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/themify/themify-icons.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/elegant-font/html-css/style.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/slick/slick.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/lightbox2/css/lightbox.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/noui/nouislider.min.css">
	
	<title>DucksGoong</title>
	</head>
	<body>
		
		<nav role="navigation">
		<tiles:insertAttribute name="header"  ignore="true"/>
		</nav>
		<main role="main flex-shrink-0">
			<tiles:insertAttribute name="body" ignore="true"/>
		</main>
		<footer role="footer">
			<tiles:insertAttribute name="footer" ignore="true"/>
		</footer>


	<script type="text/javascript" src="<c:url value="/resources/vendor/jquery/jquery-3.2.1.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/vendor/animsition/js/animsition.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/vendor/bootstrap/js/popper.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/vendor/select2/select2.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/vendor/slick/slick.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/slick-custom.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/vendor/countdowntime/countdowntime.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/vendor/lightbox2/js/lightbox.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/vendor/sweetalert/sweetalert.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/vendor/parallax100/parallax100.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/vendor/daterangepicker/moment.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/vendor/daterangepicker/daterangepicker.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/vendor/noui/nouislider.min.js"/>"></script>
	
<!-- 	kakao map api -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ffffebca6b6dbc884aed9fae0562c6ee"></script>
	
	<script src="<c:url value="/resources/js/main.js"/>"></script>
	
	<script type="text/javascript">
// 		$(".selection-1").select2({
// 			minimumResultsForSearch: 20,
// 			dropdownParent: $('#dropDownSelect1')
// 		});

		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect2')
		});
	</script>
	<script type="text/javascript">
		$('.block2-btn-addcart').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});

		$('.block2-btn-addwishlist').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");
			});
		});
	</script>
	<script type="text/javascript">
        $('.parallax100').parallax100();
	</script>
	
	<script type="text/javascript">
		$('.block2-btn-addcart').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});

		$('.block2-btn-addwishlist').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");
			});
		});
	</script>

<!--===============================================================================================-->

	<script type="text/javascript">
		/*[ No ui ]
	    ===========================================================*/
	    var filterBar = document.getElementById('filter-bar');

	    noUiSlider.create(filterBar, {
	        start: [ 50, 200 ],
	        connect: true,
	        range: {
	            'min': 50,
	            'max': 200
	        }
	    });

	    var skipValues = [
	    document.getElementById('value-lower'),
	    document.getElementById('value-upper')
	    ];

	    filterBar.noUiSlider.on('update', function( values, handle ) {
	        skipValues[handle].innerHTML = Math.round(values[handle]) ;
	    });
	</script>
	
<!-- 	kakao map api -->
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.487066, 126.826567),
			level: 3
		};
		
		var map = new kakao.maps.Map(container, options);
		
		// 마커가 표시될 위치입니다 
		var markerPosition  = new kakao.maps.LatLng(37.487066, 126.826567); 

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);

		// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
		// marker.setMap(null);
	</script>
	
	</body>
</html>