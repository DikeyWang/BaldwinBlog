<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="author" content="Kodinger">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>My Login Page &mdash; Bootstrap 4 Login Page Snippet</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/my-login.css">
</head>
<body class="my-login-page">
<section class="h-100">
    <div class="container h-100">
        <div class="row justify-content-md-center align-items-center h-100">
            <div class="card-wrapper">
                <div class="brand">
                    <img src="<%=basePath%>image/logo.jpg" alt="bootstrap 4 login page">
                </div>
                <div class="card fat">
                    <div class="card-body">
                        <h4 class="card-title">Forgot Password</h4>
                        <form method="POST" class="my-login-validation" novalidate="">
                            <div class="form-group">
                                <label for="email">E-Mail Address</label>
                                <input id="email" type="email" class="form-control" name="email" value="" required
                                       autofocus>
                                <div class="invalid-feedback">
                                    Email is invalid
                                </div>
                                <div class="form-text text-muted">
                                    By clicking "Reset Password" we will send a password reset link
                                </div>
                            </div>

                            <div class="form-group m-0">
                                <button type="submit" class="btn btn-primary btn-block">
                                    Reset Password
                                </button>
                            </div>
                            <div class="mt-4 text-center">
                                <c:if test="${requestScope.msg != null}"><%=request.getAttribute("msg")%>
                                </c:if>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="footer">
                    <p>Copyright &copy; 2018-2018 www.yzstu.cn All Rights Reserved V.1.0.0 豫ICP备19018621号-1</p>
                </div>
            </div>
        </div>
    </div>
</section>

<%--
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
--%>
<script src="<%=basePath%>js/my-login.js"></script>
</body>
</html>