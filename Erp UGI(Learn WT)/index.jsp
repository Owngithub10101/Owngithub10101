<%@ page import="java.sql.*" %>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1  style="text-align: center;">Winter Training Management System</h1>
                    <hr>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <img src="infy.jpg" width="100%" />
                </div>

                <div class="col-md-4">
                    <br>
                   <form action="">
                       <label for="Email">Email:</label>
                       <input type="email" name="t1" class="form-control" placeholder="Enter Email Address" required/><br>
                       <label for="Email">Password:</label>
                       <input type="password" name="t2" class="form-control" placeholder="Enter Password" /> <br>
                       <input type="submit" value="Login" name="b1" class="btn btn-success" />
                       <input type="submit" value="New User? Sign up.." name="b2" class="btn btn-danger" />
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
            </div>
        </div>
    </body>
</html>