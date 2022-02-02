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
                    <div class="" style="padding-left: 63%;">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                              <a class="nav-link" href="index.jsp">Login</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" href="newuser.jsp">New User</a>
                            </li>
                          </ul>
                    </div>
                  </nav>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <img src="backg.jpg" class="float-right" alt="" style="width:980px; height: 540px;">
                </div>
                <div class="col-md-6" style="padding-top:2%; padding-left:10%;">
                <div class="content" style="padding-top:10%;"><h1 style="color: #56c4f0;">Welcome!</h1><h2>World of Cryptocurrency</h2></div>
                <div class="content" style="padding-top:5%;"><h4>Sign in to your account</h4></div>
                    <br>
                   <form action="">
                        <div class="form-group">
                          <label for="username">Username:</label>
                          <input type="text" name="t1" class="form-control" placeholder="Enter Username" id="email">
                        </div>
                        <div class="form-group">
                          <label for="pwd">Password:</label>
                          <input type="password" name="t2" class="form-control" placeholder="Enter password" id="pwd">
                        </div>
                        
                        <button type="submit" class="btn btn-primary" name="b1" style="background-color: #56c4f0;border-color:#fff">Login</button>
                        <a href="forget.jsp" style="padding-inline-start: 55%;">Forget password?</a><br><br>
                        <div>Don't have an account with us?<a href="newuser.jsp" style="padding-inline-start: 18%;">Create new account</a></div>
                       <%
                        if(request.getParameter("b1")!=null)
                        {
                            Connection con;
                            Statement st;
                            ResultSet rs;
                            String guser=request.getParameter("t1");
                            String gpwd=request.getParameter("t2");
                            try{
                                Class.forName("oracle.jdbc.driver.OracleDriver");
                                String url="jdbc:oracle:thin:@localhost:1521:";
                                con=DriverManager.getConnection(url,"system","oracle");
                                st=con.createStatement();
                                String sql="select user_name,password from usernew where user_name='"+guser+"' and password='"+gpwd+"'";
                                rs=st.executeQuery(sql);
                                if(rs.next())
                                {
                                    // out.println("Registration Complete");
                                    response.sendRedirect("index_home.jsp");
                                }
                                else
                                    out.println("Invalid Username or Password");
                            }catch(Exception e)
                            {
                                out.println(e.toString());
                            }
                        }
                       %>
                   </form>
                </div>
            </div>
        </div>
    </body>
</html>