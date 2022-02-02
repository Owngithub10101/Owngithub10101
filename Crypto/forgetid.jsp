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
                    <div class="" style="padding-left: 60%;">
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
            <div class="content" style="padding-inline-start: 9%; padding-top:10%"><h2>Forget Username!</h2></div>
            <div class="row">
                <div class="col-md-6" style="padding-top:3%; padding-left:10%;">
                   <form action="">
                        <div class="form-group">
                          <label for="email">Email ID:</label>
                          <input type="email" class="form-control" placeholder="Enter email address" id="email">
                        </div>
                        <div class="form-row">
                            <div class="col">
                        <label for="inputName">Name:</label>
                            <input type="text" class="form-control" placeholder="Enter full name">
                            </div>
                            <div class="col">
                        <label for="inputDate">Date Of Birth:</label>
                            <input type="date" class="form-control" placeholder="Enter date of birth">
                            </div>
                        </div>
                        <div class="form-group" style="padding-top:13px;">
                          <label for="pwd">Password:</label>
                          <a href="forget.jsp" style="padding-inline-start: 50%;">Forget password?</a>
                          <input type="password" class="form-control" placeholder="Enter password" id="pwd">
                        </div>
                        <button type="submit" class="btn btn-primary">Change !</button>
                        <button type="button" class="btn btn-link"></button>
                       <%
                        if(request.getParameter("b1")!=null)
                        {
                            Connection con;
                            Statement st;
                            ResultSet rs;
                            String gemail=request.getParameter("t1");
                            String gpwd=request.getParameter("t2");
                            try{
                                Class.forName("oracle.jdbc.driver.OracleDriver");
                                String url="jdbc:oracle:thin:@localhost:1521:";
                                con=DriverManager.getConnection(url,"system","oracle");
                                st=con.createStatement();
                                String sql="select email,passwd from stu where email='"+gemail+"' and passwd='"+gpwd+"'";
                                rs=st.executeQuery(sql);
                                if(rs.next())
                                {
                                    // out.println("Registration Complete");
                                    response.sendRedirect("stuhome.jsp");
                                }
                                else
                                    out.println("Invalid User Name or Password");
                            }catch(Exception e)
                            {
                                out.println(e.toString());
                            }
                        }
                        if(request.getParameter("b2")!=null)
                        {
                            response.sendRedirect("sturegister.jsp");
                        }
                       %>
                   </form>
                </div>
                <div class="col-md-6"><img src="forgetid.png" alt="" width="500px" style="padding-inline-start: 20px; padding-bottom: 20px"></div>
            </div>
        </div>
    </body>
</html>