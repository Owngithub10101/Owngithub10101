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
            <div class="content" style="padding-inline-start: 5%; padding-top: 20px;"><h3>Create New Account!</h3></div>
            <div class="row">
                <div class="col-md-6" style="padding-left:6%; padding-top: 1%;">
                    <form>
                        <div class="form-row">
                            <div class="col">
                            <label for="inputEmail">Email ID:</label>
                            <input type="email" name="t1" class="form-control" placeholder="Enter email address">
                            </div>
                            <div class="col">
                            <label for="inputName">Name:</label>
                            <input type="text" name="t2" class="form-control" placeholder="Enter full name">
                            </div>
                        </div>
                        <div class="form-row" style="padding-top:10px;">
                            <div class="col">
                            <label for="inputText">Gender:</label>
                            <!-- <input type="text" class="form-control" placeholder="-Select-"> -->
                            <select name="t3" class="custom-select mr-sm-2" id="inlineFormCustomSelect">
                                <option selected>-Select-</option>
                                <option value="male">Male</option>
                                <option value="female">Female</option>
                                <option value="other">Other</option>
                            </select>
                            </div>
                            <div class="col">
                            <label for="inputDate">Date Of Birth:</label>
                            <input type="date" name="t4" format="yyyy-MM-dd"class="form-control" placeholder="Enter your DOB">
                            </div>
                        </div>
                        
                        <div class="form-row" style="padding-top:10px;">
                            <div class="col">
                            <label for="inputText">PAN Number:</label>
                            <input type="text" name="t5" class="form-control text-uppercase" placeholder="PAN">
                            </div>
                            <div class="col">
                            <label for="inputnumbers">Aadhar Number:</label>
                            <input type="text" name="t6" class="form-control" placeholder="Enter aadhar number">
                            </div>
                        </div>
                        <div class="form-group" style="padding-top:10px;">
                            <label for="inputAddress">Account Number:</label>
                            <input type="text" name="t7" class="form-control" placeholder="Enter account number">
                        </div>
                        <div class="form-row">
                            <div class="col">
                            <label for="inputDate">IFSC Code:</label>
                            <input type="text" name="t8" class="form-control text-uppercase" placeholder="IFSC">
                            </div>
                            <div class="col">
                            <label for="inputtel">Mobile Number:</label>
                            <input type="tel" name="t9" class="form-control" placeholder="Mobile (+918658623643)">
                            </div>
                        </div>
                        <div class="form-row" style="padding-top:10px;">
                            <div class="col">
                            <label for="inputText">Username:</label>
                            <input type="text" name="t10" class="form-control" placeholder="Enter username">
                            </div>
                            <div class="col">
                            <label for="inputPass">Password:</label>
                            <input type="password" name="t11" class="form-control" placeholder="Enter password">
                            </div>
                        </div>
                        <div class="form-row" style="padding-inline-start:5px; padding-top:15px;">
                            <button type="submit" class="btn btn-primary" name="b1" style="background-color: #01e4fc; border-color:#01e4fc;">Register</button>
                        </div>
                        <div style="padding-top: 10px;">Already have an account?<a href="index.jsp" style="padding-inline-start: 43%;">Back to Login</a></div>
                        <%
                        if(request.getParameter("b1")!=null)
                        {
                             String gemail=request.getParameter("t1");
                             String gname=request.getParameter("t2");
                             String ggen=request.getParameter("t3");
                             String gdob=request.getParameter("t4");
                             String gpan=request.getParameter("t5");
                             String gaadhar=request.getParameter("t6");
                             String gaccount=request.getParameter("t7");
                             String gifsc=request.getParameter("t8");
                             String gmob=request.getParameter("t9");
                             String gusername=request.getParameter("t10");
                             String gpass=request.getParameter("t11");
                             Connection con;
                             Statement st;
                             try{
                                 Class.forName("oracle.jdbc.driver.OracleDriver");
                                 String url="jdbc:oracle:thin:@localhost:1521:";
                                 con=DriverManager.getConnection(url,"system","oracle");
                                 st=con.createStatement();
                                 String sql="insert into usernew values('"+gemail+"','"+gname+"','"+ggen+"','"+gdob+"','"+gpan+"','"+gaadhar+"','"+gaccount+"','"+gifsc+"','"+gmob+"','"+gusername+"','"+gpass+"')";
                                 int res=st.executeUpdate(sql);
                                 if(res!=0)
                                 {
                                     //out.println("Registration Successfully");
                                     response.sendRedirect("index.jsp");
                                 }
                                 else
                                     out.println("Not Registred");
                             }catch(Exception e)
                             {
                                 out.println(e.toString());
                             }
                        }
                        %>
                   </form>
                </div>
                <div class="col-md-6"><img src="removebg.png" alt="" width="700px" style="padding-top: 0px; padding-bottom: 20px"></div>
            </div>
        </div>
    </body>
</html>