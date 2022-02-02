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
                    <h1 style="text-align: center; color: red;">Winter Training Management System</h1>
                    <hr>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                   <form>
                       <input type="text" name="t1" class="form-control" placeholder="Roll Number" required /><br>
                       <input type="text" name="t2" class="form-control" placeholder="Name" required /> <br>
                       <input type="email" name="t3" class="form-control" placeholder="Email ID" required /> <br>
                       <input type="password" name="t4" class="form-control" placeholder="Password" required /> <br>
                       
                       <select name="t5" class="form-control">
                            <option>Select Course</option>
                            <option>B.Tech.</option>
                            <option>MCA</option>
                            <option>BCA</option>
                            <option>B. Pharma.</option>
                       </select>
                       <br>
                       <select name="t6" class="form-control">
                            <option>Select Branch</option>
                            <option>CS</option>
                            <option>IT</option>
                            <option>EC</option>
                            <option>ME</option>
                            <option>Others</option>
                        </select>
                        <br>
                        <select name="t7" class="form-control">
                            <option>Select Semester</option>
                            <option>I</option>
                            <option>II</option>
                            <option>III</option>
                            <option>IV</option>
                            <option>V</option>
                            <option>VI</option>
                            </select>
                            <br>
                        <select name="t8" class="form-control">
                            <option>Course</option>
                            <option>Python</option>
                            <option>Advance Java</option>
                            <option>Machine Learning</option>
                            <option>Competetive Coding</option>
                           </select>
                           <br>
                       <input type="submit" value="Register Me" name="b1" class="btn btn-success" />
                       
                       <%
                       if(request.getParameter("b1")!=null)
                       {
                            int grn=Integer.parseInt(request.getParameter("t1"));
                            String gname=request.getParameter("t2");
                            String gemail=request.getParameter("t3");
                            String gpasswd=request.getParameter("t4");
                            String gcourse=request.getParameter("t5");
                            String gbranch=request.getParameter("t6");
                            String gsemester=request.getParameter("t7");
                            String goptedcourse=request.getParameter("t8");
                            Connection con;
                            Statement st;
                            try{
                                Class.forName("oracle.jdbc.driver.OracleDriver");
                                String url="jdbc:oracle:thin:@localhost:1521:";
                                con=DriverManager.getConnection(url,"system","oracle");
                                st=con.createStatement();
                                String sql="insert into stu values("+grn+",'"+gname+"','"+gemail+"','"+gpasswd+"','"+gcourse+"','"+gbranch+"','"+gsemester+"','"+goptedcourse+"')";
                                int res=st.executeUpdate(sql);
                                if(res!=0)
                                {
                                    //out.println("Registration Complete");
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
                <div class="col-md-6">  
                
                </div>
            </div>
        </div>
    </body>
</html>