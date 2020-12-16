<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="" />

<!-- css -->
<link
	href="https://fonts.googleapis.com/css?family=Noto+Serif:400,400italic,700|Open+Sans:300,400,600,700"
	rel="stylesheet">
<link href="static/css/bootstrap.css" rel="stylesheet" />
<link href="static/css/bootstrap-responsive.css" rel="stylesheet" />
<link href="static/css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="static/css/jcarousel.css" rel="stylesheet" />
<link href="static/css/flexslider.css" rel="stylesheet" />
<link href="static/css/style.css" rel="stylesheet" />
<!-- Theme skin -->
<link href="static/skins/default.css" rel="stylesheet" />
<!-- boxed bg -->
<link id="bodybg" href="bodybg/bg1.css" rel="stylesheet" type="text/css" />
<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="ico/apple-touch-icon-144-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="ico/apple-touch-icon-114-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="ico/apple-touch-icon-72-precomposed.png" />
<link rel="apple-touch-icon-precomposed"
	href="ico/apple-touch-icon-57-precomposed.png" />
<link rel="shortcut icon" href="ico/favicon.png" />

</head>

<body>
	<div id="wrapper">
		<!-- toggle top area -->
		<div class="hidden-top">
			<div class="hidden-top-inner container">
				<div class="row">
					<div class="span12">
						<ul>
							<li><strong>We are available for any custom works
									this month</strong></li>
							<li>Main office: Springville center X264, Park Ave S.01</li>
							<li>Call us <i class="icon-phone"></i> (123) 456-7890 -
								(123) 555-7891
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- end toggle top area -->
		<!-- start header -->
		<jsp:include page="header.jsp" />
		<!-- end header -->
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="span4">
						<div class="inner-heading">
							<h2>Upload Product</h2>
						</div>
					</div>
					<div class="span8">
						<ul class="breadcrumb">
							<li><a href="home"><i class="icon-home"></i></a><i
								class="icon-angle-right"></i></li>
							<li><a href="home">Home</a><i class="icon-angle-right"></i></li>
							<li class="active">Upload Product</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<section id="content">
			<div class="container">
				<div class="row">
					<div class="span6">
						<h3 class="text-center">Upload Your Product Here!</h3>
						<form:form action="upload" modelAttribute="product" method="post"
							class="form-horizontal">
							<h3 class="text-center">
								<span class="text-success"> ${success}</span> <span
									class="text-error text-center">${error}</span>
							</h3>
							<div class="control-group">
								<label class="control-label" for="category">Category*</label>
								<div class="controls">
									<form:input type="text" path="category" placeholder="Category" />
									<div class="has-error">
										<form:errors path="category" class="text-error" />
									</div>
								</div>

							</div>
							<div class="control-group">
								<label class="control-label" for="description">Description*</label>
								<div class="controls">
									<form:input type="text" path="description"
										placeholder="Description" />
									<div class="has-error">
										<form:errors path="description" class="text-error" />
									</div>
								</div>

							</div>

							<div class="control-group">
								<label class="control-label" for="inStock">In stock</label>
								<div class="controls">
									<form:input type="text" path="inStock"
										placeholder="In stock" />
									<div class="has-error">
										<form:errors path="inStock" class="text-error" />
									</div>
								</div>

							</div>

							<div class="control-group">
								<label class="control-label" for="price">Price*</label>
								<div class="controls">
									<form:input type="text" path="price" placeholder="Price" />
									<div class="has-error">
										<form:errors path="price" class="text-error" />
									</div>
								</div>

							</div>

							<div class="control-group">
								<label class="control-label" for="productName">Product Name*</label>
								<div class="controls">
									<form:input type="text" path="productName" placeholder="Product Name" />
									<div class="has-error">
										<form:errors path="productName" class="text-error" />
									</div>
								</div>

							</div>

							 <%-- <div class="control-group">
								<label class="control-label" for="orderId">Order ID</label>
								<div class="controls">
									<form:input type="text" path="orderId" placeholder="Order Id" />
									<div class="has-error">
										<form:errors path="orderId" class="text-error" />
									</div>
								</div>

							</div> --%>

							<div class="control-group">
								<div class="controls">
									<button type="submit" id="submit" class="btn btn-danger">Submit</button>
									<a href="home" class="btn btn-success">Cancel</a>

								</div>

							</div>
						</form:form>


					</div>
					<div class="span4">
						<!-- start flexslider -->
						<div class="flexslider">
							<ul class="slides">
								<li><img src="static/img/works/full/Upload.webp"
									alt="" /></li>
								<li><img src="static/img/works/full/createyouritem.jpg"
									alt="" /></li>
								<li><img src="static/img/works/full/8items.png"
									alt="" /></li>
							</ul>
						</div>
						<!-- end flexslider -->
					</div>
				</div>
				<!-- divider -->
				<div class="row">
					<div class="span12">
						<div class="solidline"></div>
					</div>
				</div>
				<!-- end divider -->

			</div>
		</section>
		<jsp:include page="footer.jsp" />
	</div>
	<a href="#" class="scrollup"><i
		class="icon-chevron-up icon-square icon-32 active"></i></a>
	<!-- javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="static/js/jquery.js"></script>
	<script src="static/js/jquery.easing.1.3.js"></script>
	<script src="static/js/bootstrap.js"></script>
	<script src="static/js/jcarousel/jquery.jcarousel.min.js"></script>
	<script src="static/js/jquery.fancybox.pack.js"></script>
	<script src="static/js/jquery.fancybox-media.js"></script>
	<script src="static/js/google-code-prettify/prettify.js"></script>
	<script src="static/js/portfolio/jquery.quicksand.js"></script>
	<script src="static/js/portfolio/setting.js"></script>
	<script src="static/js/jquery.flexslider.js"></script>
	<script src="static/js/jquery.nivo.slider.js"></script>
	<script src="static/js/modernizr.custom.js"></script>
	<script src="static/js/jquery.ba-cond.min.js"></script>
	<script src="static/js/jquery.slitslider.js"></script>
	<script src="static/js/animate.js"></script>

	<!-- Template Custom JavaScript File -->
	<script src="static/js/custom.js"></script>

</body>

</html>