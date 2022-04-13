<%-- 
    Document   : login.jsp
    Created on : Mar 27, 2022, 12:27:15 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>JSP Page</title>
        <!-- Bootstrap -->
        <link href="./css/bootstrap.min" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="./css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="./css/nprogress.css" rel="stylesheet">
        <!-- Animate.css -->
        <link href="./css/animate.min.css" rel="stylesheet">

        <!-- Custom Theme Style -->
        <link href="./css/custom.min.css" rel="stylesheet">
    </head>
    <body class="login">
        <div>
            <a class="hiddenanchor" id="signup"></a>
            <a class="hiddenanchor" id="signin"></a>

            <div class="login_wrapper">
                <div class="animate form login_form">
                    <section class="login_content">
                        <form  method="post" action="usercontroler">
                            <h1>Login Form</h1>
                           
                                <input type="text" class="form-control" name="username" placeholder="Tài khoản"  />
                                <input type="password" class="form-control" name="password" placeholder="Mật khẩu" />
                            <div>
                                <button type="submit">Đăng nhập</button>
                                <a class="reset_pass" href="#">Quên mật khẩu</a>
                            </div>
                            <div class="clearfix"></div>
                            <div class="separator">
                                <p class="change_link">mới vào trang web?
                                    <a href="#signup" class="to_register"> Tạo tài khoản </a>
                                </p>
                                 <p class="ket-qua">${mess}</p>
                                <div class="clearfix"></div>
                                <br />
                            </div>
                        </form>
                    </section>
                </div>
                <div id="register" class="animate form registration_form">
                    <section class="login_content">
                        <form method="get" action="registercontroller">
                            <h1>Create Account</h1>
                            <input type="text" class="form-control" name="username" placeholder="tài khoản" required="" />
                          
                            <input type="password" class="form-control" name="password" placeholder="mật khẩu" required="" />
                            <input type="password" name="repassword" placeholder="nhập lại mật khẩu" required="" />
                             <input type="email" class="form-control" name="email" placeholder="Email" required="" />
                             
                            <button type="submit" >Đăng ký</button>
                            <div class="clearfix"></div>
                            <div class="separator">
                                <p class="change_link">Đã có tài khoản ?
                                    <a href="#signin" class="to_register"> Đăng nhập </a>
                                </p>
                                <div class="clearfix"></div>
                                <br />
                            </div>
                        </form>
                    </section>
                </div>
            </div>
        </div>
    </body>
</html>
