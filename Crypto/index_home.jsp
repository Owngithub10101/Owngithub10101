<%@ page import="java.sql.*" %>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="style.css" type="text/css">
    </head>
    <body>
        <div class="container">
            <div class="col-md-12">
                <nav class="navbar navbar-expand-sm bg-light-white navbar-light-white">
                    <a class="navbar-brand" href="index.jsp"><img src="images.jfif" alt="" style="max-width:20%;"></a>
                    <div class="" style="padding-left: 62%;">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                              <a class="nav-link" href="index.jsp">Logout</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" href="newuser.jsp">New User</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <div>
            <h1 style="color:#56c4f0; padding-top:10px; padding-inline-start: 20%;">Welcome!</h1>
            <h1 style="padding-inline-start: 20%;">Home Page!</h1>
            <div class="para" style="padding-top:10px; padding-inline-start: 20%;">
                <p>You can add your Dashboard here!</p>
            </div>
        </div>
    </body>
</html>