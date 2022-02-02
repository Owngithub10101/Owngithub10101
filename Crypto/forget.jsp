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
            <div class="content" style="padding-inline-start: 9%; padding-top:10%"><h2>Reset Password!</h2></div>
            <div class="row">
                <div class="col-md-6" style="padding-top:2%; padding-left:10%;">
                   <form action="">
                        <div class="form-group">
                          <label for="email">Email ID:</label>
                          <input type="email" name="t1" class="form-control" placeholder="Enter email address" id="email">
                        </div>
                        <div class="form-group">
                          <label for="text">Username:</label>
                          <a href="forgetid.jsp" style="padding-inline-start: 50%;">Forget Username?</a>
                          <input type="text" name="t2" class="form-control" placeholder="Enter Username" id="email">
                        </div>
                        <div class="form-group">
                          <label for="pwd">New Password:</label>
                          <input type="password" name="t3" class="form-control" placeholder="Enter password" id="pwd">
                        </div>
                        <div class="form-group">
                            <label for="pwd">Re-Type Password:</label>
                            <input type="password" name="t4" class="form-control" placeholder="Re-enter password" id="pwd">
                          </div>
                        <button type="submit" name="b1" class="btn btn-primary">Change Password!</button>
                        <%
                        if(request.getParameter("b1")!=null)
                        {
                            Connection con;
                            Statement st;
                            ResultSet rs;
                            String gemail=request.getParameter("t1");
                            String guser=request.getParameter("t2");
                            String gpwd=request.getParameter("t3");
                            String gpwd1=request.getParameter("t4");
                            if(gpwd1.equals(gpwd)){
                              try{
                                Class.forName("oracle.jdbc.driver.OracleDriver");
                                String url="jdbc:oracle:thin:@localhost:1521:";
                                con=DriverManager.getConnection(url,"system","oracle");
                                st=con.createStatement();
                                String sql="update usernew set password='"+gpwd+"' where email_id='"+gemail+"' and user_name='"+guser+"'";
                                rs=st.executeQuery(sql);
                                if(rs.next())
                                {
                                    out.println("Password updated successfully...");
                                }
                                else
                                    out.println("Invalid EmailID or Username");
                                }catch(Exception e){
                                    out.println(e.toString());
                                }
                            }
                            else{
                              out.println("Password's not matching");
                            }
                        }
                        %>
                   </form>
                </div>
                <div class="col-md-6"><img src="forget.png" alt="" width="700px" style="padding-top: 0px;"></div>
            </div>
        </div>
    </body>
</html>