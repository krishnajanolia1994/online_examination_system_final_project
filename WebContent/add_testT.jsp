<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
  <meta charset="UTF-8">
  <title>add test</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css1/style.css">

  
</head>

<body>
<%
if(session.getAttribute("email")==null)
{
	session.setAttribute("teacher_login_error", "login_eail");
	response.sendRedirect("index2.jsp");

}
%>
  <div class="form">
      
      
      <div class="tab-content">
        <div id="signup">   
         <h1>ADD TEST</h1>
          <form action="Add_test" method="post">
          
         

          <div class="field-wrap">
            <label>
              Enter a test<span class="req">*</span>
            </label>
            <input type="text"required autocomplete="off" name="test_name"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Enter Number Of Question<span class="req">*</span>
            </label>
            <input type="text"required autocomplete="off" name="Number_question"/>
          </div>
          <div class="field-wrap">
            <label>
              Enter Number Of Hours for test<span class="req">*</span>
            </label>
            <input type="text"required autocomplete="off" name="hours"/>
          </div>
          <div class="field-wrap">
            <label>
              Enter Number Of Hours for test<span class="req">*</span>
            </label>
            <input type="text"required autocomplete="off" name="minute"/>
          </div>
          
          
          
          <button type="submit" class="button button-block"/>Get Started</button>
          
          </form>

        </div>
        
        
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js1/index.js"></script>

</body>
</html>
