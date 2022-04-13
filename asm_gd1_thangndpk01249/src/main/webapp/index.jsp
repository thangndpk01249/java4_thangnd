<%-- 
    Document   : index
    Created on : Mar 26, 2022, 7:24:45 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name='copyright' content=''>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Title Tag  -->
        <title>giai đoạn 2</title>
        <!-- Favicon -->
        <link rel="icon" type="image/png" href="image/favicon.png">
        <!-- Web Font -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">

        <!-- StyleSheet -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Bootstrap -->
        <link rel="stylesheet" href="./css/bootstrap.css">
        <!-- Magnific Popup -->
        <link rel="stylesheet" href="./css/magnific-popup.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="./css/font-awesome.css">
        <!-- Fancybox -->
        <link rel="stylesheet" href="./css/jquery.fancybox.min.css">
        <!-- Themify Icons -->
        <link rel="stylesheet" href="./css/themify-icons.css">
        <!-- Nice Select CSS -->
        <link rel="stylesheet" href="./css/niceselect.css">
        <!-- Animate CSS -->
        <link rel="stylesheet" href="./css/animate.css">
        <!-- Flex Slider CSS -->
        <link rel="stylesheet" href="./css/flex-slider.min.css">
        <!-- Owl Carousel -->
        <link rel="stylesheet" href="./css/owl-carousel.css">
        <!-- Slicknav -->
        <link rel="stylesheet" href="./css/slicknav.min.css">

        <!-- Eshop StyleSheet -->
        <link rel="stylesheet" href="./css/reset.css">
        <link rel="stylesheet" href="./css/style.css">
        <link rel="stylesheet" href="./css/responsive.css">    </head>
    <body class="js">

        <!-- Preloader -->
        <div class="preloader">
            <div class="preloader-inner">
                <div class="preloader-icon">
                    <span></span>
                    <span></span>
                </div>
            </div>
        </div>
        <!-- End Preloader -->


        <!-- Header -->
        <header class="header shop">
            <!-- Topbar -->
            <div class="topbar">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-12 col-12">
                            <!-- Top Left -->
                            <div class="top-left">
                                <ul class="list-main">
                                    <li><i class="fa fa-phone-square" aria-hidden="true"></i> số điện thoại</li>
                                    <li><i class="fa fa-envelope-o" aria-hidden="true"></i> email</li>
                                </ul>
                            </div>
                            <!--/ End Top Left -->
                        </div>
                        <div class="col-lg-8 col-md-12 col-12">
                            <!-- Top Right -->
                            <div class="right-content">
                                <ul class="list-main">
                                    <c:if test="${sessionScope.acc != null}">
                                        <li><i class="fa fa-user" aria-hidden="true"></i>Xin chào : ${sessionScope.acc.password}</li>
                                        <form action="logout" method="post">
                                            <li><i class="fa fa-arrow-right" aria-hidden="true"></i> <button type="submit">logout</button></li>
                                        </form>
                                    
                                    </c:if>
                                    <c:if test="${sessionScope.acc == null}">
                                         <li><i class="fa fa-power-off" aria-hidden="true"></i><a href="login.jsp">Đăng nhập</a></li>
                                        </c:if>
                                    
                                           
                                       
                                    
                                </ul>
                            </div>
                            <!-- End Top Right -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Topbar -->
            <div class="middle-inner">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-2 col-md-2 col-12">
                            <!-- Logo -->
                            <div class="logo">
                                <a href="index.html"><img src="./image/logo.png" alt="logo"></a>
                            </div>
                            <!--/ End Logo -->
                            <!-- Search Form -->
                            <div class="search-top">
                                <div class="top-search"><a href="#0"><i class="ti-search"></i></a></div>
                                <!-- Search Form -->
                                <div class="search-top">
                                    <form class="search-form">
                                        <input type="text" placeholder="Search here..." name="search">
                                        <button value="search" type="submit"><i class="ti-search"  ></i></button>
                                    </form>
                                </div>
                                <!--/ End Search Form -->
                            </div>
                            <!--/ End Search Form -->
                            <div class="mobile-nav"></div>
                        </div>
                        <div class="col-lg-8 col-md-7 col-12">
                            <div class="search-bar-top">
                                <div class="search-bar">
                                    <select>
                                        <option selected="selected">Sản phẩm</option>
                                        <option>Đồng hồ </option>
                                        <option>Điện thoại</option>
                                        <option>Khác</option>
                                    </select>
                                    <form>
                                        <input name="search" placeholder="Tìm kiếm ....." type="search">
                                        <button class="btnn"><i class="fa fa-search" aria-hidden="true"></i></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-3 col-12">
                            <div class="right-bar">
                                <!-- Search Form -->
                                <div class="sinlge-bar">
                                    <a href="#" class="single-icon"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                </div>
                                <div class="sinlge-bar">
                                    <a href="#" class="single-icon"><i class="fa fa-user-circle-o" aria-hidden="true"></i></a>
                                </div>
                                <div class="sinlge-bar shopping">
                                    <a href="#" class="single-icon"><i class="ti-bag"></i> <span class="total-count">2</span></a>
                                    <!-- Shopping Item -->
                                    <div class="shopping-item">
                                        <div class="dropdown-cart-header">
                                            <span>2 Sản pẩm</span>
                                            <a href="#">Giỏ hàng</a>
                                        </div>
                                        <ul class="shopping-list">
                                            <li>
                                                <a href="#" class="remove" title="Remove this item"><i class="fa fa-remove"></i></a>
                                                <a class="cart-img" href="#"><img src="https://via.placeholder.com/70x70" alt="#"></a>
                                                <h4><a href="#">Nhẫn nữ</a></h4>
                                                <p class="quantity">1x - <span class="amount">$99.00</span></p>
                                            </li>
                                            <li>
                                                <a href="#" class="remove" title="Remove this item"><i class="fa fa-remove"></i></a>
                                                <a class="cart-img" href="#"><img src="https://via.placeholder.com/70x70" alt="#"></a>
                                                <h4><a href="#">Vòng cổ nữ</a></h4>
                                                <p class="quantity">1x - <span class="amount">$35.00</span></p>
                                            </li>
                                        </ul>
                                        <div class="bottom">
                                            <div class="total">
                                                <span>Toàn bộ</span>
                                                <span class="total-amount">$134.00</span>
                                            </div>
                                            <a href="checkout.html" class="btn animate">Thanh toán</a>
                                        </div>
                                    </div>
                                    <!--/ End Shopping Item -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Header Inner -->
            <div class="header-inner">
                <div class="container">
                    <div class="cat-nav-head">
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="all-category">
                                    <h3 class="cat-heading"><i class="fa fa-bars" aria-hidden="true"></i>Thể loại</h3>
                                    <ul class="main-category">
                                        <li><a href="#">Điểm đến mới <i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                            <ul class="sub-category">
                                                <li><a href="#">phụ kiện</a></li>
                                                <li><a href="#">Giảm giá</a></li>
                                                <li><a href="#">100 ưu đãi</a></li>
                                                <li><a href="#">kính râm</a></li>
                                                <li><a href="#">Đồng hồ</a></li>
                                                <li><a href="#">phụ kiện nam</a></li>
                                                <li><a href="#">phụ kiện nữ</a></li>
                                                <li><a href="#">váy</a></li>
                                                <li><a href="#">khác </a></li>
                                            </ul>
                                        </li>
                                        <li class="main-mega"><a href="#">giảm giá <i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                            <ul class="mega-menu">
                                                <li class="single-menu">
                                                    <a href="#" class="title-link">khác</a>
                                                    <div class="image">
                                                        <img src="https://via.placeholder.com/225x155" alt="#">
                                                    </div>
                                                    <div class="inner-link">
                                                        <a href="#">đồ chơi trẻ em</a>
                                                        <a href="#">xe đồ chơi</a>
                                                        <a href="#">chịu</a>
                                                        <a href="#">lều</a>
                                                    </div>
                                                </li>
                                                <li class="single-menu">
                                                    <a href="#" class="title-link">thời trang nam</a>
                                                    <div class="image">
                                                        <img src="https://via.placeholder.com/225x155" alt="#">
                                                    </div>
                                                    <div class="inner-link">
                                                        <a href="#">Đồng hồ</a>
                                                        <a href="#">áo thun</a>
                                                        <a href="#">Hoodies</a>
                                                        <a href="#">đồ lót</a>
                                                    </div>
                                                </li>
                                                <li class="single-menu">
                                                    <a href="#" class="title-link">thời trang nữ</a>
                                                    <div class="image">
                                                        <img src="https://via.placeholder.com/225x155" alt="#">
                                                    </div>
                                                    <div class="inner-link">
                                                        <a href="#">áo sơ mi</a>
                                                        <a href="#">váy</a>
                                                        <a href="#">kính</a>
                                                        <a href="#">đồng hồ</a>
                                                    </div>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a href="#">phụ kiện</a></li>
                                        <li><a href="#">100 ưu đãi</a></li>
                                        <li><a href="#">kính râm</a></li>
                                        <li><a href="#">đồng hồ</a></li>
                                        <li><a href="#">phụ kiện nam</a></li>
                                        <li><a href="#">phụ kiện nữ</a></li>
                                        <li><a href="#">váy</a></li>
                                        <li><a href="#">khác </a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-9 col-12">
                                <div class="menu-area">
                                    <!-- Main Menu -->
                                    <nav class="navbar navbar-expand-lg">
                                        <div class="navbar-collapse">	
                                            <div class="nav-inner">	
                                                <ul class="nav main-menu menu navbar-nav">
                                                    <li class="active"><a href="#">trang chủ</a></li>
                                                    <li><a href="#">sản phẩm</a></li>												
                                                    <li><a href="#">dịch vụ</a></li>
                                                    <li><a href="#">cửa hàng<i class="fa fa-sort" aria-hidden="true"></i><span class="new">New</span></a>
                                                        <ul class="dropdown">
                                                            
                                                            <li><a href="cart.html">Cart</a></li>
                                                            <li><a href="checkout.html">Checkout</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Pages</a></li>									
                                                    <li><a href="#">Blog<i class="fa fa-sort" aria-hidden="true"></i></a>
                                                        <ul class="dropdown">
                                                            <li><a href="blog-single-sidebar.html">Blog Single Sidebar</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="contact.html">liên hệ</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </nav>
                                    <!--/ End Main Menu -->	
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/ End Header Inner -->
        </header>
        <!--/ End Header -->

        <!-- Slider Area -->
        <section class="hero-slider">
            <!-- Single Slider -->
            <div class="single-slider">
                <div class="container">
                    <div class="row no-gutters">
                        <div class="col-lg-9 offset-lg-3 col-12">
                            <div class="text-inner">
                                <div class="row">
                                    <div class="col-lg-7 col-12">
                                        <div class="hero-text">
                                            <h1><span>giảm giá tới 50% </span>áo thun nam</h1>
                                            <p>áo thun  <br> giảm giá</p>
                                            <div class="button">
                                                <a href="#" class="btn">Đến ngay</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/ End Single Slider -->
        </section>
        <!--/ End Slider Area -->

        <!-- Start Small Banner  -->
        <section class="small-banner section">
            <div class="container-fluid">
                <div class="row">
                    <!-- Single Banner  -->
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-banner">
                            <img src="data:image/jpeg;base64,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" alt="#">
                            <div class="content">
                                <pMan's Collectons>Man's Collectons</p>
                                <h3>Summer travel <br> collection</h3>
                                <a href="#">Discover Now</a>
                            </div>
                        </div>
                    </div>
                    <!-- /End Single Banner  -->
                    <!-- Single Banner  -->
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-banner">
                            <img src="data:image/jpeg;base64,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" alt="#">
                            <div class="content">
                                <p>Bag Collectons</p>
                                <h3>Awesome Bag <br> 2020</h3>
                                <a href="#">Shop Now</a>
                            </div>
                        </div>
                    </div>
                    <!-- /End Single Banner  -->
                    <!-- Single Banner  -->
                    <div class="col-lg-4 col-12">
                        <div class="single-banner tab-height">
                            <img src="data:image/jpeg;base64,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" alt="#">
                            <div class="content">
                                <p>Flash Sale</p>
                                <h3>Mid Season <br> Up to <span>40%</span> Off</h3>
                                <a href="#">Discover Now</a>
                            </div>
                        </div>
                    </div>
                    <!-- /End Single Banner  -->
                </div>
            </div>
        </section>
        <!-- End Small Banner -->

        <!-- Start Product Area -->
        <div class="product-area section">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title">
                            <h2>Trending Item</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="product-info">
                            <div class="nav-main">
                                <!-- Tab Nav -->
                                <ul class="nav nav-tabs" id="myTab" role="tablist">
                                    <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#man" role="tab">Man</a></li>
                                    <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#women" role="tab">Woman</a></li>
                                    <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#kids" role="tab">Kids</a></li>
                                    <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#accessories" role="tab">Accessories</a></li>
                                    <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#essential" role="tab">Essential</a></li>
                                    <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#prices" role="tab">Prices</a></li>
                                </ul>
                                <!--/ End Tab Nav -->
                            </div>
                            <div class="tab-content" id="myTabContent">
                                <!-- Start Single Tab -->
                                <div class="tab-pane fade show active" id="man" role="tabpanel">
                                    <div class="tab-single">
                                        <div class="row">
                                            <c:forEach items="${list}" var="cat">
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="${cat.getImage()}" alt="#">
                                                            <img class="hover-img" src="${cat.getImage()}" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#"> thêm giỏ hàng</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    
                                                        <div class="product-content">
                                                        <h3><a href="#">${cat.getName()}</a></h3>
                                                        <div class="product-price" value="${cat.getPrice()}">
                                                            <span>VNĐ</span>
                                                        </div>
                                                    </div>
                                                    
                                                    
                                                </div>
                                            </div>
                                            </c:forEach>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Pink Show</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Bags Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="new">New</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Women Pant Collectons</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Bags Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="price-dec">30% Off</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Cap For Women</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Polo Dress For Women</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="out-of-stock">Hot</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Black Sunglass For Women</a></h3>
                                                        <div class="product-price">
                                                            <span class="old">$60.00</span>
                                                            <span>$50.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--/ End Single Tab -->
                                <!-- Start Single Tab -->
                                <div class="tab-pane fade" id="women" role="tabpanel">
                                    <div class="tab-single">
                                        <div class="row">
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Women Hot Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Pink Show</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Bags Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="new">New</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Women Pant Collectons</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Bags Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="price-dec">30% Off</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Cap For Women</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Polo Dress For Women</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="out-of-stock">Hot</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Black Sunglass For Women</a></h3>
                                                        <div class="product-price">
                                                            <span class="old">$60.00</span>
                                                            <span>$50.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--/ End Single Tab -->
                                <!-- Start Single Tab -->
                                <div class="tab-pane fade" id="kids" role="tabpanel">
                                    <div class="tab-single">
                                        <div class="row">
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Women Hot Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Pink Show</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Bags Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="new">New</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Women Pant Collectons</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Bags Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="price-dec">30% Off</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Cap For Women</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Polo Dress For Women</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="out-of-stock">Hot</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Black Sunglass For Women</a></h3>
                                                        <div class="product-price">
                                                            <span class="old">$60.00</span>
                                                            <span>$50.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--/ End Single Tab -->
                                <!-- Start Single Tab -->
                                <div class="tab-pane fade" id="accessories" role="tabpanel">
                                    <div class="tab-single">
                                        <div class="row">
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Women Hot Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Pink Show</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Bags Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="new">New</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Women Pant Collectons</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Bags Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="price-dec">30% Off</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Cap For Women</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Polo Dress For Women</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="out-of-stock">Hot</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Black Sunglass For Women</a></h3>
                                                        <div class="product-price">
                                                            <span class="old">$60.00</span>
                                                            <span>$50.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--/ End Single Tab -->
                                <!-- Start Single Tab -->
                                <div class="tab-pane fade" id="essential" role="tabpanel">
                                    <div class="tab-single">
                                        <div class="row">
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Women Hot Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Pink Show</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Bags Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="new">New</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Women Pant Collectons</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Bags Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="price-dec">30% Off</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Cap For Women</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Polo Dress For Women</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="out-of-stock">Hot</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Black Sunglass For Women</a></h3>
                                                        <div class="product-price">
                                                            <span class="old">$60.00</span>
                                                            <span>$50.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--/ End Single Tab -->
                                <!-- Start Single Tab -->
                                <div class="tab-pane fade" id="prices" role="tabpanel">
                                    <div class="tab-single">
                                        <div class="row">
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Women Hot Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Pink Show</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Bags Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="new">New</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Women Pant Collectons</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Bags Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="price-dec">30% Off</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Cap For Women</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Polo Dress For Women</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="out-of-stock">Hot</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Black Sunglass For Women</a></h3>
                                                        <div class="product-price">
                                                            <span class="old">$60.00</span>
                                                            <span>$50.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--/ End Single Tab -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Product Area -->

        <!-- Start Midium Banner  -->
        <section class="midium-banner">
            <div class="container">
                <div class="row">
                    <!-- Single Banner  -->
                    <div class="col-lg-6 col-md-6 col-12">
                        <div class="single-banner">
                            <img src="https://via.placeholder.com/600x370" alt="#">
                            <div class="content">
                                <p>Man's Collectons</p>
                                <h3>Man's items <br>Up to<span> 50%</span></h3>
                                <a href="#">Shop Now</a>
                            </div>
                        </div>
                    </div>
                    <!-- /End Single Banner  -->
                    <!-- Single Banner  -->
                    <div class="col-lg-6 col-md-6 col-12">
                        <div class="single-banner">
                            <img src="https://via.placeholder.com/600x370" alt="#">
                            <div class="content">
                                <p>shoes women</p>
                                <h3>mid season <br> up to <span>70%</span></h3>
                                <a href="#" class="btn">Shop Now</a>
                            </div>
                        </div>
                    </div>
                    <!-- /End Single Banner  -->
                </div>
            </div>
        </section>
        <!-- End Midium Banner -->

        <!-- Start Most Popular -->
        <div class="product-area most-popular section">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title">
                            <h2>Hot Item</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="owl-carousel popular-slider">
                            <!-- Start Single Product -->
                            <div class="single-product">
                                <div class="product-img">
                                    <a href="product-details.html">
                                        <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                        <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                        <span class="out-of-stock">Hot</span>
                                    </a>
                                    <div class="button-head">
                                        <div class="product-action">
                                            <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                            <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                            <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                        </div>
                                        <div class="product-action-2">
                                            <a title="Add to cart" href="#">Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h3><a href="product-details.html">Black Sunglass For Women</a></h3>
                                    <div class="product-price">
                                        <span class="old">$60.00</span>
                                        <span>$50.00</span>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="single-product">
                                <div class="product-img">
                                    <a href="product-details.html">
                                        <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                        <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                    </a>
                                    <div class="button-head">
                                        <div class="product-action">
                                            <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                            <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                            <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                        </div>
                                        <div class="product-action-2">
                                            <a title="Add to cart" href="#">Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h3><a href="product-details.html">Women Hot Collection</a></h3>
                                    <div class="product-price">
                                        <span>$50.00</span>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="single-product">
                                <div class="product-img">
                                    <a href="product-details.html">
                                        <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                        <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                        <span class="new">New</span>
                                    </a>
                                    <div class="button-head">
                                        <div class="product-action">
                                            <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                            <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                            <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                        </div>
                                        <div class="product-action-2">
                                            <a title="Add to cart" href="#">Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h3><a href="product-details.html">Awesome Pink Show</a></h3>
                                    <div class="product-price">
                                        <span>$50.00</span>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="single-product">
                                <div class="product-img">
                                    <a href="product-details.html">
                                        <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                        <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                    </a>
                                    <div class="button-head">
                                        <div class="product-action">
                                            <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                            <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                            <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                        </div>
                                        <div class="product-action-2">
                                            <a title="Add to cart" href="#">Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h3><a href="product-details.html">Awesome Bags Collection</a></h3>
                                    <div class="product-price">
                                        <span>$50.00</span>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Most Popular Area -->

        <!-- Start Shop Home List  -->
        <section class="shop-home-list section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="row">
                            <div class="col-12">
                                <div class="shop-section-title">
                                    <h1>On sale</h1>
                                </div>
                            </div>
                        </div>
                        <!-- Start Single List  -->
                        <div class="single-list">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="list-image overlay">
                                        <img src="https://via.placeholder.com/115x140" alt="#">
                                        <a href="#" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-12 no-padding">
                                    <div class="content">
                                        <h4 class="title"><a href="#">Licity jelly leg flat Sandals</a></h4>
                                        <p class="price with-discount">$59</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single List  -->
                        <!-- Start Single List  -->
                        <div class="single-list">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="list-image overlay">
                                        <img src="https://via.placeholder.com/115x140" alt="#">
                                        <a href="#" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-12 no-padding">
                                    <div class="content">
                                        <h5 class="title"><a href="#">Licity jelly leg flat Sandals</a></h5>
                                        <p class="price with-discount">$44</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single List  -->
                        <!-- Start Single List  -->
                        <div class="single-list">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="list-image overlay">
                                        <img src="https://via.placeholder.com/115x140" alt="#">
                                        <a href="#" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-12 no-padding">
                                    <div class="content">
                                        <h5 class="title"><a href="#">Licity jelly leg flat Sandals</a></h5>
                                        <p class="price with-discount">$89</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single List  -->
                    </div>
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="row">
                            <div class="col-12">
                                <div class="shop-section-title">
                                    <h1>Best Seller</h1>
                                </div>
                            </div>
                        </div>
                        <!-- Start Single List  -->
                        <div class="single-list">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="list-image overlay">
                                        <img src="https://via.placeholder.com/115x140" alt="#">
                                        <a href="#" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-12 no-padding">
                                    <div class="content">
                                        <h5 class="title"><a href="#">Licity jelly leg flat Sandals</a></h5>
                                        <p class="price with-discount">$65</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single List  -->
                        <!-- Start Single List  -->
                        <div class="single-list">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="list-image overlay">
                                        <img src="https://via.placeholder.com/115x140" alt="#">
                                        <a href="#" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-12 no-padding">
                                    <div class="content">
                                        <h5 class="title"><a href="#">Licity jelly leg flat Sandals</a></h5>
                                        <p class="price with-discount">$33</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single List  -->
                        <!-- Start Single List  -->
                        <div class="single-list">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="list-image overlay">
                                        <img src="https://via.placeholder.com/115x140" alt="#">
                                        <a href="#" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-12 no-padding">
                                    <div class="content">
                                        <h5 class="title"><a href="#">Licity jelly leg flat Sandals</a></h5>
                                        <p class="price with-discount">$77</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single List  -->
                    </div>
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="row">
                            <div class="col-12">
                                <div class="shop-section-title">
                                    <h1>Top viewed</h1>
                                </div>
                            </div>
                        </div>
                        <!-- Start Single List  -->
                        <div class="single-list">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="list-image overlay">
                                        <img src="https://via.placeholder.com/115x140" alt="#">
                                        <a href="#" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-12 no-padding">
                                    <div class="content">
                                        <h5 class="title"><a href="#">Licity jelly leg flat Sandals</a></h5>
                                        <p class="price with-discount">$22</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single List  -->
                        <!-- Start Single List  -->
                        <div class="single-list">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="list-image overlay">
                                        <img src="https://via.placeholder.com/115x140" alt="#">
                                        <a href="#" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-12 no-padding">
                                    <div class="content">
                                        <h5 class="title"><a href="#">Licity jelly leg flat Sandals</a></h5>
                                        <p class="price with-discount">$35</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single List  -->
                        <!-- Start Single List  -->
                        <div class="single-list">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="list-image overlay">
                                        <img src="https://via.placeholder.com/115x140" alt="#">
                                        <a href="#" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-12 no-padding">
                                    <div class="content">
                                        <h5 class="title"><a href="#">Licity jelly leg flat Sandals</a></h5>
                                        <p class="price with-discount">$99</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single List  -->
                    </div>
                </div>
            </div>
        </section>
        <!-- End Shop Home List  -->

        <!-- Start Cowndown Area -->
        <section class="cown-down">
            <div class="section-inner ">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-6 col-12 padding-right">
                            <div class="image">
                                <img src="https://via.placeholder.com/750x590" alt="#">
                            </div>	
                        </div>	
                        <div class="col-lg-6 col-12 padding-left">
                            <div class="content">
                                <div class="heading-block">
                                    <p class="small-title">Deal of day</p>
                                    <h3 class="title">Beatutyful dress for women</h3>
                                    <p class="text">Suspendisse massa leo, vestibulum cursus nulla sit amet, frungilla placerat lorem. Cars fermentum, sapien. </p>
                                    <h1 class="price">$1200 <s>$1890</s></h1>
                                    <div class="coming-time">
                                        <div class="clearfix" data-countdown="2021/02/30"></div>
                                    </div>
                                </div>
                            </div>	
                        </div>	
                    </div>
                </div>
            </div>
        </section>
        <!-- /End Cowndown Area -->

        <!-- Start Shop Blog  -->
        <section class="shop-blog section">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title">
                            <h2>From Our Blog</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-12">
                        <!-- Start Single Blog  -->
                        <div class="shop-single-blog">
                            <img src="https://via.placeholder.com/370x300" alt="#">
                            <div class="content">
                                <p class="date">22 July , 2020. Monday</p>
                                <a href="#" class="title">Sed adipiscing ornare.</a>
                                <a href="#" class="more-btn">Continue Reading</a>
                            </div>
                        </div>
                        <!-- End Single Blog  -->
                    </div>
                    <div class="col-lg-4 col-md-6 col-12">
                        <!-- Start Single Blog  -->
                        <div class="shop-single-blog">
                            <img src="https://via.placeholder.com/370x300" alt="#">
                            <div class="content">
                                <p class="date">22 July, 2020. Monday</p>
                                <a href="#" class="title">Man’s Fashion Winter Sale</a>
                                <a href="#" class="more-btn">Continue Reading</a>
                            </div>
                        </div>
                        <!-- End Single Blog  -->
                    </div>
                    <div class="col-lg-4 col-md-6 col-12">
                        <!-- Start Single Blog  -->
                        <div class="shop-single-blog">
                            <img src="https://via.placeholder.com/370x300" alt="#">
                            <div class="content">
                                <p class="date">22 July, 2020. Monday</p>
                                <a href="#" class="title">Women Fashion Festive</a>
                                <a href="#" class="more-btn">Continue Reading</a>
                            </div>
                        </div>
                        <!-- End Single Blog  -->
                    </div>
                </div>
            </div>
        </section>
        <!-- End Shop Blog  -->

        <!-- Start Shop Services Area -->
        <section class="shop-services section home">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Service -->
                        <div class="single-service">
                            <i class="fa fa-rocket" aria-hidden="true"></i>
                            <h4>Free shiping</h4>
                            <p>Orders over $100</p>
                        </div>
                        <!-- End Single Service -->
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Service -->
                        <div class="single-service">
                          <i class="fa fa-history" aria-hidden="true"></i>
                            <h4>Free Return</h4>
                            <p>Within 30 days returns</p>
                        </div>
                        <!-- End Single Service -->
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Service -->
                        <div class="single-service">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                            <h4>Sucure Payment</h4>
                            <p>100% secure payment</p>
                        </div>
                        <!-- End Single Service -->
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Service -->
                        <div class="single-service">
                            <i class="fa fa-tag" aria-hidden="true"></i>
                            <h4>Best Peice</h4>
                            <p>Guaranteed price</p>
                        </div>
                        <!-- End Single Service -->
                    </div>
                </div>
            </div>
        </section>
        <!-- End Shop Services Area -->

        <!-- Start Shop Newsletter  -->
        <section class="shop-newsletter section">
            <div class="container">
                <div class="inner-top">
                    <div class="row">
                        <div class="col-lg-8 offset-lg-2 col-12">
                            <!-- Start Newsletter Inner -->
                            <div class="inner">
                                <h4>Newsletter</h4>
                                <p> Subscribe to our newsletter and get <span>10%</span> off your first purchase</p>
                                <form action="mail/mail.php" method="get" target="_blank" class="newsletter-inner">
                                    <input name="EMAIL" placeholder="Your email address" required="" type="email">
                                    <button class="btn">Subscribe</button>
                                </form>
                            </div>
                            <!-- End Newsletter Inner -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Shop Newsletter -->

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span class="ti-close" aria-hidden="true"></span></button>
                    </div>
                    <div class="modal-body">
                        <div class="row no-gutters">
                            <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                                <!-- Product Slider -->
                                <div class="product-gallery">
                                    <div class="quickview-slider-active">
                                        <div class="single-slider">
                                            <img src="https://via.placeholder.com/569x528" alt="#">
                                        </div>
                                        <div class="single-slider">
                                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNjakPvnB_TXYBz4k5PY3H5ED5i4x01UG3ksVWViMBRt1aBGeO3c8aImvftM9I6rDi5HE&usqp=CAU" alt="#">
                                        </div>
                                        <div class="single-slider">
                                            <img src="https://via.placeholder.com/569x528" alt="#">
                                        </div>
                                        <div class="single-slider">
                                            <img src="https://via.placeholder.com/569x528" alt="#">
                                        </div>
                                    </div>
                                </div>
                                <!-- End Product slider -->
                            </div>
                            <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                                <div class="quickview-content">
                                    <h2>Flared Shift Dress</h2>
                                    <div class="quickview-ratting-review">
                                        <div class="quickview-ratting-wrap">
                                            <div class="quickview-ratting">
                                                <i class="yellow fa fa-star"></i>
                                                <i class="yellow fa fa-star"></i>
                                                <i class="yellow fa fa-star"></i>
                                                <i class="yellow fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                            <a href="#"> (1 customer review)</a>
                                        </div>
                                        <div class="quickview-stock">
                                            <span><i class="fa fa-check-circle-o"></i> in stock</span>
                                        </div>
                                    </div>
                                    <h3>$29.00</h3>
                                    <div class="quickview-peragraph">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia iste laborum ad impedit pariatur esse optio tempora sint ullam autem deleniti nam in quos qui nemo ipsum numquam.</p>
                                    </div>
                                    <div class="size">
                                        <div class="row">
                                            <div class="col-lg-6 col-12">
                                                <h5 class="title">Size</h5>
                                                <select>
                                                    <option selected="selected">s</option>
                                                    <option>m</option>
                                                    <option>l</option>
                                                    <option>xl</option>
                                                </select>
                                            </div>
                                            <div class="col-lg-6 col-12">
                                                <h5 class="title">Color</h5>
                                                <select>
                                                    <option selected="selected">orange</option>
                                                    <option>purple</option>
                                                    <option>black</option>
                                                    <option>pink</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="quantity">
                                        <!-- Input Order -->
                                        <div class="input-group">
                                            <div class="button minus">
                                                <button type="button" class="btn btn-primary btn-number" disabled="disabled" data-type="minus" data-field="quant[1]">
                                                    <i class="ti-minus"></i>
                                                </button>
                                            </div>
                                            <input type="text" name="quant[1]" class="input-number"  data-min="1" data-max="1000" value="1">
                                            <div class="button plus">
                                                <button type="button" class="btn btn-primary btn-number" data-type="plus" data-field="quant[1]">
                                                    <i class="ti-plus"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <!--/ End Input Order -->
                                    </div>
                                    <div class="add-to-cart">
                                        <a href="#" class="btn">Add to cart</a>
                                        <a href="#" class="btn min"><i class="ti-heart"></i></a>
                                        <a href="#" class="btn min"><i class="fa fa-compress"></i></a>
                                    </div>
                                    <div class="default-social">
                                        <h4 class="share-now">Share:</h4>
                                        <ul>
                                            <li><a class="facebook" href="#"<i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                                            <li><a class="twitter" href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                            <li><a class="youtube" href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                                            <li><a class="dribbble" href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal end -->

        <!-- Start Footer Area -->
        <footer class="footer">
            <!-- Footer Top -->
            <div class="footer-top section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5 col-md-6 col-12">
                            <!-- Single Widget -->
                            <div class="single-footer about">
                                <div class="logo">
                                    <a href="index.html"><img src="./image/logo.png" alt="#"></a>
                                </div>
                                <p class="text">Praesent dapibus, neque id cursus ucibus, tortor neque egestas augue,  magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.</p>
                                <p class="call">Got Question? Call us 24/7<span><a href="tel:123456789">+0123 456 789</a></span></p>
                            </div>
                            <!-- End Single Widget -->
                        </div>
                        <div class="col-lg-2 col-md-6 col-12">
                            <!-- Single Widget -->
                            <div class="single-footer links">
                                <h4>Information</h4>
                                <ul>
                                    <li><a href="#">About Us</a></li>
                                    <li><a href="#">Faq</a></li>
                                    <li><a href="#">Terms & Conditions</a></li>
                                    <li><a href="#">Contact Us</a></li>
                                    <li><a href="#">Help</a></li>
                                </ul>
                            </div>
                            <!-- End Single Widget -->
                        </div>
                        <div class="col-lg-2 col-md-6 col-12">
                            <!-- Single Widget -->
                            <div class="single-footer links">
                                <h4>Customer Service</h4>
                                <ul>
                                    <li><a href="#">Payment Methods</a></li>
                                    <li><a href="#">Money-back</a></li>
                                    <li><a href="#">Returns</a></li>
                                    <li><a href="#">Shipping</a></li>
                                    <li><a href="#">Privacy Policy</a></li>
                                </ul>
                            </div>
                            <!-- End Single Widget -->
                        </div>
                        <div class="col-lg-3 col-md-6 col-12">
                            <!-- Single Widget -->
                            <div class="single-footer social">
                                <h4>Get In Tuch</h4>
                                <!-- Single Widget -->
                                <div class="contact">
                                    <ul>
                                        <li>NO. 342 - London Oxford Street.</li>
                                        <li>012 United Kingdom.</li>
                                        <li>info@eshop.com</li>
                                        <li>+032 3456 7890</li>
                                    </ul>
                                </div>
                                <!-- End Single Widget -->
                                <ul>
                                    <li><a href="#"><i class="ti-facebook"></i></a></li>
                                    <li><a href="#"><i class="ti-twitter"></i></a></li>
                                    <li><a href="#"><i class="ti-flickr"></i></a></li>
                                    <li><a href="#"><i class="ti-instagram"></i></a></li>
                                </ul>
                            </div>
                            <!-- End Single Widget -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Footer Top -->
            <div class="copyright">
                <div class="container">
                    <div class="inner">
                        <div class="row">
                            <div class="col-lg-6 col-12">
                                <div class="left">
                                    <p>Copyright © 2020 <a href="http://www.wpthemesgrid.com" target="_blank">Wpthemesgrid</a>  -  All Rights Reserved.</p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-12">
                                <div class="right">
                                    <img src="./images/payments.png" alt="#">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- /End Footer Area -->

        <!-- Jquery -->
        <script src="./js/jquery.min.js"></script>
        <script src="./js/jquery-ui.min.js"></script>
        <script src="./js/jquery-migrate-3.0.0.js"></script>
        <script src="./js/jquery-ui.min.js"></script>
        <!-- Popper JS -->
        <script src="./js/popper.min.js"></script>
        <!-- Bootstrap JS -->
        <script src="./js/bootstrap.min.js"></script>
        <!-- Color JS -->
        <script src="./js/colors.js"></script>
        <!-- Slicknav JS -->
        <script src="./js/slicknav.min.js"></script>
        <!-- Owl Carousel JS -->
        <script src="./js/owl-carousel.js"></script>
        <!-- Magnific Popup JS -->
        <script src="./js/magnific-popup.js"></script>
        <!-- Waypoints JS -->
        <script src="./js/waypoints.min.js"></script>
        <!-- Countdown JS -->
        <script src="./js/finalcountdown.min.js"></script>
        <!-- Nice Select JS -->
        <script src="./js/nicesellect.js"></script>
        <!-- Flex Slider JS -->
        <script src="./js/flex-slider.js"></script>
        <!-- ScrollUp JS -->
        <script src="./js/scrollup.js"></script>
        <!-- Onepage Nav JS -->
        <script src="./js/onepage-nav.min.js"></script>
        <!-- Easing JS -->
        <script src="./js/easing.js"></script>
        <!-- Active JS -->
        <script src="./js/active.js"></script>
    </body>
</html>
