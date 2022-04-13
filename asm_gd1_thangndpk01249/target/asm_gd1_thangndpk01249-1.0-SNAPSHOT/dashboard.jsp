    <%-- 
        Document   : dashboard
        Created on : Mar 27, 2022, 12:27:59 PM
        Author     : ADMIN
    --%>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>dashboard</title>
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="icon" href="./image/favicon.ico" type="image/ico" />
            <!-- Bootstrap -->
            <link href="./product/bootstrap.min.css" rel="stylesheet">
            <!-- Font Awesome -->
            <link href="./product/font-awesome.min.css" rel="stylesheet">
            <!-- Custom Theme Style -->
            <link href="./css/custom.min.css" rel="stylesheet">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <style>
                .search_thangnd{
                    width: 100%;
                    display: inline-block;
                }
                .search_thangnd input{
                    width: 85%;
                    height: 35px;
                    margin-bottom: 10px;
                    margin-left: 10px;

                }
                .search_thangnd button{
                    width: 8%;
                    height: 35px;

                }
            </style>
        </head>
        <body class="nav-md">
            <c:import url="pages/includes/menu.jsp"/>
                            <!-- /sidebar menu -->

                            <!-- /menu footer buttons -->
                            <div class="sidebar-footer hidden-small">
                                <a data-toggle="tooltip" data-placement="top" title="Settings">
                                    <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                                </a>
                                <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                                    <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                                </a>
                                <a data-toggle="tooltip" data-placement="top" title="Lock">
                                    <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                                </a>
                                <a data-toggle="tooltip" data-placement="top" title="Logout" href="#">
                                    <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                                </a>
                            </div>
                            <!-- /menu footer buttons -->
                        </div>
                    </div>

                    <!-- top navigation -->
                    <c:import url="pages/includes/headerdashboard.jsp"/>

                    <!-- page content -->
                    <div class="right_col">
                        <form action="#">
                            <div class="search_thangnd">
                                <input type="text" placeholder="Tìm kiếm" name="search">
                            <button type="submit"><i class="fa fa-search"></i></button>
                            </div>

                        </form>

                        <div class="col-md-12 col-sm-12  ">
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>Quản lý <small>Dữ liệu</small></h2>
                        <ul class="nav navbar-right panel_toolbox">
                          <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                          </li>
                          <li><a class="close-link"><i class="fa fa-close"></i></a>
                          </li>
                        </ul>
                        <div class="clearfix"></div>
                      </div>

                      <c:choose>
                                <c:when test="${sessionScope.view != null}">
                                    <c:import url="${sessionScope.view}"/> 
                                </c:when>
                                <c:otherwise>
                                    <c:import url="pages/404.jsp"/>
                                </c:otherwise>
                            </c:choose>
                      
                    </div>



                  </div>
                    </div>
                </div>
            </div>
            <!-- footer content -->
            <footer>

                <div class="clearfix"></div>
            </footer>
            <!-- /footer content -->
        </div>
    </div>

    <!-- jQuery -->
    <script src="./product/jquery.min.js"></script>

    <!-- Bootstrap -->
    <script src="./product/bootstrap.bundle.min.js"></script>
    <!-- FastClick -->
    <script src="./product/fastclick.js"></script>


    <!-- gauge.js -->
    <script src="./product/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="./product/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="./product/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="./product/skycons.js"></script>
    <!-- Flot -->
    <script src="./product/jquery.flot.js"></script>
    <script src="./product/jquery.flot.pie.js"></script>
    <script src="./product/jquery.flot.time.js"></script>
    <script src="./product/jquery.flot.stack.js"></script>
    <script src="./product/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="./product/jquery.flot.orderBars.js"></script>
    <script src="./product/jquery.flot.spline.min.js"></script>
    <script src="./product/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="./product/build/date.js"></script>
    <!-- JQVMap -->
    <script src="./product/jquery.vmap.js"></script>
    <script src="./product/maps/jquery.vmap.world.js"></script>
    <script src="./product/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="./product/moment.min.js"></script>
    <script src="./product/daterangepicker.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="./product/custom.min.js"></script>

    </body>
    <!<!-- <script src="./asserts/custom.js"> -->
    <script src="${pageContext.request.contextPath}/asserts/custom.js"></script>
    <script src="${pageContext.request.contextPath}/asserts/product.js"></script>
    <script src="${pageContext.request.contextPath}/asserts/customnew.js"></script>
    </html>
