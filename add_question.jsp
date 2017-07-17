<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
  <meta charset="UTF-8">
  <title>add question</title>
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
         <h1>ADD QUESTION</h1>
          <form action="Add_Qustion_Servlet" method="post">
          
         

          <div class="field-wrap">
            <label>
              Enter Question<span class="req">*</span>
            </label>
            <input type="text"required autocomplete="off" name="question"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Enter I option<span class="req">*</span>
            </label>
            <input type="text"required autocomplete="off" name="option_1"/>
          </div>
          <div class="field-wrap">
            <label>
              Enter II option<span class="req">*</span>
            </label>
            <input type="text"required autocomplete="off" name="option_2"/>
          </div>
          <div class="field-wrap">
            <label>
              enter III Option<span class="req">*</span>
            </label>
            <input type="text"required autocomplete="off" name="option_3"/>
          </div>
          <div class="field-wrap">
            <label>
              enter IV option<span class="req">*</span>
            </label>
            <input type="text"required autocomplete="off" name="option_4"/>
          </div>
          <div class="field-wrap">
            <label>
              Enter Correct Answer<span class="req">*</span>
            </label>
            <input type="text"required autocomplete="off" name="Answer"/>
          </div>
          
          <button type="submit" class="button button-block"/>Get Started</button>
          
          </form>

        </div>
        
        
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js1/index.js"></script>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online Examination System</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/animate.css" rel="stylesheet" />
    <!-- Squad theme CSS -->
    <link href="css/style.css" rel="stylesheet">
	<link href="color/default.css" rel="stylesheet">

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
	<!-- Preloader -->
	<%
	if(session.getAttribute("email")==null)
	{
		session.setAttribute("teacher_login_error", "login_eail");
		response.sendRedirect("index2.jsp");

	}
	%>
	<div>
	<%
		//if(session.getAttribute("user_name")==null)
		//{
			//session.setAttribute("login_error","please login first");
			//response.sendRedirect("index2.jsp");
		//}
	%>
	</div>
	<div id="preloader">
	  <div id="load"></div>
	</div>

    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
               
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#intro">Home</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Add Menu <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="add_subject.jsp">Add Subject</a></li>
            <li><a href="create_subject_koocki.jsp">Add Test</a></li>
            <li><a href="create_subject_koocki1.jsp">Add Question</a></li>
            
          </ul>
        </li>
      </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

	<!-- Section: intro -->
    <section id="intro" class="intro">
	
		<div class="slogan">
			<form action="Add_subject" method="post" >
			    <h1>Enter a subject you want to add!</h1>
				<input type="text" class="tex" name="subject_name">
				<br>
				<br>
				<input  class="button" type="submit">
				<br>
				
			
			</form>
		</div>
		
    </section>
	<!-- /Section: intro -->

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-12">
					<div class="wow shake" data-wow-delay="0.4s">
					<div class="page-scroll marginbot-30">
						<a href="#intro" id="totop" class="btn btn-circle">
							<i class="fa fa-angle-double-up animated"></i>
						</a>
					</div>
					</div>
					<p>&copy;All rights reserved by Krishna Janoliya</p>
                    <!-- 
                        All links in the footer should remain intact. 
                        Licenseing information is available at: http://bootstraptaste.com/license/
                        You can buy this theme without footer links online at: http://bootstraptaste.com/buy/?theme=Squadfree
                    -->
				</div>
			</div>	
		</div>
	</footer>

    <!-- Core JavaScript Files -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>	
	<script src="js/jquery.scrollTo.js"></script>
	<script src="js/wow.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.js"></script>

</body>

</html>

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

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <title>Bootstrap Example</title>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online Examination System</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/animate.css" rel="stylesheet" />
    <!-- Squad theme CSS -->
    <link href="css/style.css" rel="stylesheet">
	<link href="color/default.css" rel="stylesheet">
 
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<head>
	<title>available subject</title>
	<style>
		div.container {
    width: 100%;
    border: 1px solid gray;
}

header {
    padding: 1em;
    color: white;
    background-color: grey;
    clear: left;
}
footer
{
 padding: 1em;
    color: white;
    background-color: grey;
    clear: left;
    text-align: center;
}
.button 
{
  display: inline-block;
  padding: 10px 20px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 10px;
  box-shadow: 0 9px black;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
  #di{
    border: 10px solid grey;
    background-color:powderblue;
  }
  p {
	  text-align: center;
	  font-size: 30px;
	}
	</style>
</head>
<body >

	<div>
		 <ul class="nav navbar-nav">
        <li class="active"><a href="index.html">Home</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Login Menu <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="index1.jsp">student Login</a></li>
            <li><a href="index2.jsp">Teacher Login</a></li>
          </ul>
        </li>
      </ul>
	</div>
		<p id="time">.</p>
	
  <div id="di">
 <header>
  <h1 id="para2">Choose a subject</h1></header>
  <div class="container">
  <form action="Add_Subject_to_Session_student" method="post">
  <%
  		if(session.getAttribute("avable_subject_number")==null)
  		{
  			session.setAttribute("erro", "No subject available");
  			response.sendRedirect("error.jsp");
  		}
  %>
  <h1>
  
  </h1>
  	<% 
  		int i=(Integer)session.getAttribute("avable_subject_number");
  		int j;
  		for(j=0;j<i;j++)
  		{
  	%>
  	
  	
    <div class="radio">
      <label><input type="radio" name="subject_name" value="<%= session.getAttribute(j+"Avalable_Subject") %>"><%= session.getAttribute(j+"Avalable_Subject") %> </label>
    </div>
    <% } %>
   	<div class=radio>
   	<input type="submit">
   	</div>
  </form>
</div>

 <footer><p>  
 	<form action ="logout" method= post >
 	            <input class="button" type="submit" value="logout" align="left">                         <br>      </p>
    </form> 
 </footer>
 </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <title>Bootstrap Example</title>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online Examination System</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/animate.css" rel="stylesheet" />
    <!-- Squad theme CSS -->
    <link href="css/style.css" rel="stylesheet">
	<link href="color/default.css" rel="stylesheet">
 
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<head>
	<title>available subject</title>
	<style>
		div.container {
    width: 100%;
    border: 1px solid gray;
}

header {
    padding: 1em;
    color: white;
    background-color: grey;
    clear: left;
}
footer{
 padding: 1em;
    color: white;
    background-color: grey;
    clear: left;
    text-align: center;
}
.button {
  display: inline-block;
  padding: 10px 20px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 10px;
  box-shadow: 0 9px black;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
  #di{
    border: 10px solid grey;
    background-color:powderblue;
  }
  p {
	  text-align: center;
	  font-size: 30px;
	}
 
	</style>
</head>
<body >
<% if(session.getAttribute("email")==null)
{
	session.setAttribute("teacher_login_error", "login_eail");
	response.sendRedirect("index2.jsp");

}
%>
	<div>
		 <ul class="nav navbar-nav">
        <li class="active"><a href="index.html">Home</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Login Menu <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="index1.jsp">student Login</a></li>
            <li><a href="index2.jsp">Teacher Login</a></li>
          </ul>
        </li>
      </ul>
	</div>
		<p id="time">.</p>
	
  <div id="di">
 <header>
  <h1 id="para2">Choose a subject</h1></header>
  <div class="container">
  <%
  if(session.getAttribute("avable_subject_number")==null)
	{
		session.setAttribute("erro", "No subject available");
		response.sendRedirect("error.jsp");
	}
  %>
  <form action="Add_Subject_to_Session" method="post">
  
  </h1>
  	<% 
  		int i=(Integer)session.getAttribute("avable_subject_number");
  		int j;
  		for(j=0;j<i;j++)
  		{
  	%>
  	
  	
    <div class="radio">
      <label><input type="radio" name="subject_name" value="<%= session.getAttribute(j+"subject") %>"><%= session.getAttribute(j+"subject") %> </label>
    </div>
    <% } %>
   	<div class=radio>
   	<input type="submit">
   	</div>
  </form>
</div>
 <footer><p>  
 <form action ="logout" method= post >
 	            <input class="button" type="submit" value="logout" align="left">                         <br>      </p>
    </form> 
 </footer>
 </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <title>Bootstrap Example</title>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online Examination System</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/animate.css" rel="stylesheet" />
    <!-- Squad theme CSS -->
    <link href="css/style.css" rel="stylesheet">
	<link href="color/default.css" rel="stylesheet">
 
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<head>
	<title>available subject</title>
	<style>
		div.container {
    width: 100%;
    border: 1px solid gray;
}

header {
    padding: 1em;
    color: white;
    background-color: grey;
    clear: left;
}
footer{
 padding: 1em;
    color: white;
    background-color: grey;
    clear: left;
    text-align: center;
}
.button {
  display: inline-block;
  padding: 10px 20px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 10px;
  box-shadow: 0 9px black;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
  #di{
    border: 10px solid grey;
    background-color:powderblue;
  }
  p {
	  text-align: center;
	  font-size: 30px;
	}
	</style>
</head>
<body >

	<div>
		 <ul class="nav navbar-nav">
        <li class="active"><a href="index.html">Home</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Login Menu <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="index1.jsp">student Login</a></li>
            <li><a href="index2.jsp">Teacher Login</a></li>
          </ul>
        </li>
      </ul>
	</div>
		<p id="time">.</p>
	
  <div id="di">
 <header>
  <h1 id="para2">Choose a subject</h1></header>
  <div class="container">
  <%
  if(session.getAttribute("avable_subject_number")==null)
	{
		session.setAttribute("erro", "No subject available");
		response.sendRedirect("error.jsp");
	}
  %>
  <form action="Add_Subject_to_Session1" method="post">
  	<% 
  		int i=1;
		Cookie cookie[] =request.getCookies();
  		for(Cookie k : cookie)
  		{
  	%>
  	
  	
    <div class="radio">
      <label><input type="radio" name="subject_name" value="<%= k.getValue() %>"><%= k.getValue() %> </label>
    </div>
    <% } %>
   	<div class=radio>
   	<input type="submit">
   	</div>
  </form>
</div>
 <footer><p>  
 <form action ="logout" method= post >
 	            <input class="button" type="submit" value="logout" align="left">                         <br>      </p>
    </form> 
 </footer>
 </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <title>Bootstrap Example</title>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online Examination System</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/animate.css" rel="stylesheet" />
    <!-- Squad theme CSS -->
    <link href="css/style.css" rel="stylesheet">
	<link href="color/default.css" rel="stylesheet">
 
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<head>
	<title>available email</title>
	<style>
		div.container {
    width: 100%;
    border: 1px solid gray;
}

header {
    padding: 1em;
    color: white;
    background-color: grey;
    clear: left;
}
footer{
 padding: 1em;
    color: white;
    background-color: grey;
    clear: left;
    text-align: center;
}
.button {
  display: inline-block;
  padding: 10px 20px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 10px;
  box-shadow: 0 9px black;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
  #di{
    border: 10px solid grey;
    background-color:powderblue;
  }
  p {
	  text-align: center;
	  font-size: 30px;
	}
	</style>
</head>
<body >

	<div>
		 <ul class="nav navbar-nav">
        <li class="active"><a href="index.html">Home</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Login Menu <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="index1.jsp">student Login</a></li>
            <li><a href="index2.jsp">Teacher Login</a></li>
          </ul>
        </li>
      </ul>
	</div>
		<p id="time">.</p>
	
  <div id="di">
 <header>
  <h1 id="para2">Choose a email</h1></header>
  <div class="container">
  
  <form action="Add_Email_to_session" method="post">
  <%
  if(session.getAttribute("avable_Email_number")==null)
	{
		session.setAttribute("erro", "No subject available");
		response.sendRedirect("error.jsp");
	}
  %>
  
  	<% 
  		int i=(Integer)session.getAttribute("avable_Email_number");
  		int j;
  		for(j=0;j<i;j++)
  		{
  	%>
  	
  	
    <div class="radio">
      <label><input type="radio" name="Email_Eddress" value="<%= session.getAttribute(j+"Email_of_teacher") %>"><%= session.getAttribute(j+"Email_of_teacher") %> </label>
    </div>
    <% } %>
   	<div class=radio>
   	<input type="submit">
   	</div>
  </form>
</div>
 <footer><p>  
 <form action ="logout" method= post >
 	            <input class="button" type="submit" value="logout" align="left">                         <br>      </p>
    </form> 
 </footer>
 </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <title>Bootstrap Example</title>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online Examination System</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/animate.css" rel="stylesheet" />
    <!-- Squad theme CSS -->
    <link href="css/style.css" rel="stylesheet">
	<link href="color/default.css" rel="stylesheet">
 
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<head>
	<title>available test</title>
	<style>
		div.container {
    width: 100%;
    border: 1px solid gray;
}

header {
    padding: 1em;
    color: white;
    background-color: grey;
    clear: left;
}
footer{
 padding: 1em;
    color: white;
    background-color: grey;
    clear: left;
    text-align: center;
}
.button {
  display: inline-block;
  padding: 10px 20px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 10px;
  box-shadow: 0 9px black;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
  #di{
    border: 10px solid grey;
    background-color:powderblue;
  }
  p {
	  text-align: center;
	  font-size: 30px;
	}
	</style>
</head>
<body >

	<div>
		 <ul class="nav navbar-nav">
        <li class="active"><a href="index.html">Home</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Login Menu <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="index1.jsp">student Login</a></li>
            <li><a href="index2.jsp">Teacher Login</a></li>
          </ul>
        </li>
      </ul>
	</div>
		<p id="time">.</p>
	
  <div id="di">
 <header>
  <h1 id="para2">Choose a test</h1></header>
  <div class="container">
  
  <form action="Add_test_to_session_student" method="post">
  <%
  if(session.getAttribute("avable_subject_number")==null)
	{
		session.setAttribute("erro", "No test available");
		response.sendRedirect("error.jsp");
	}
  %>
  
  	<% 
  		int i=(Integer)session.getAttribute("avable_test");
  		int j;
  		for(j=0;j<i;j++)
  		{
  	%>
  	
  	
    <div class="radio">
      <label><input type="radio" name="test_name_student" value="<%= session.getAttribute(j+"test_Available") %>"><%= session.getAttribute(j+"test_Available") %> </label>
    </div>
    <% } %>
   	<div class=radio>
   	<input type="submit">
   	</div>
  </form>
</div>
 <footer><p>  
 <form action ="logout" method= post >
 	            <input class="button" type="submit" value="logout" align="left">                         <br>      </p>
    </form> 
 </footer>
 </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <title>available test</title>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online Examination System</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/animate.css" rel="stylesheet" />
    <!-- Squad theme CSS -->
    <link href="css/style.css" rel="stylesheet">
	<link href="color/default.css" rel="stylesheet">
 
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<head>
	<title>Question page</title>
	<style>
		div.container {
    width: 100%;
    border: 1px solid gray;
}

header {
    padding: 1em;
    color: white;
    background-color: grey;
    clear: left;
}
footer{
 padding: 1em;
    color: white;
    background-color: grey;
    clear: left;
    text-align: center;
}
.button {
  display: inline-block;
  padding: 10px 20px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 10px;
  box-shadow: 0 9px black;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
  #di{
    border: 10px solid grey;
    background-color:powderblue;
  }
  p {
	  text-align: center;
	  font-size: 30px;
	}
	</style>
</head>
<body >

	<div>
		 <ul class="nav navbar-nav">
        <li class="active"><a href="index.html">Home</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Login Menu <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="index1.jsp">student Login</a></li>
            <li><a href="index2.jsp">Teacher Login</a></li>
          </ul>
        </li>
      </ul>
	</div>
		<p id="time">.</p>
	
  <div id="di">
 <header>
  <h1 id="para2">Choose a test</h1></header>
  <div class="container">
  
  <form action="Add_Test_to_Session" method="post">
  	<% 
  		int i=1;
		Cookie cookie[] =request.getCookies();
  		for(Cookie k : cookie)
  		{
  	%>
  	
  	
    <div class="radio">
      <label><input type="radio" name="test_name" value="<%= k.getValue() %>"><%= k.getValue() %> </label>
    </div>
    <% } %>
   	<div class=radio>
   	<input type="submit">
   	</div>
  </form>
</div>
 <footer><p>  
 <form action ="logout" method= post >
 	            <input class="button" type="submit" value="logout" align="left">                         <br>      </p>
    </form> 
 </footer>
 </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html >
<head>
  <meta charset="UTF-8">
  <title>available subject subject</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css1/style.css">

  
</head>

<body>
  <div class="form">
      
      
      <div class="tab-content">
        <div id="signup">   
         <h1>PLEASE CLICK HERE TO GET AVAILABLE SUBJECT</h1>
          <form action="Create_Available_Subject_For_Student" method="post">
        
          <button type="submit" class="button button-block"/>Get Started</button>
          
          </form>

        </div>
        
        
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js1/index.js"></script>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html >
<head>
  <meta charset="UTF-8">
  <title>create email</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css1/style.css">

  
</head>

<body>
  <div class="form">
      
      
      <div class="tab-content">
        <div id="signup">   
         <h1>PLEASE CLICK HERE TO GET AVAILABLE SUBJECT</h1>
          <form action="Create_Email" method="post">
        
          <button type="submit" class="button button-block"/>Get Started</button>
          
          </form>

        </div>
        
        
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js1/index.js"></script>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html >
<head>
  <meta charset="UTF-8">
  <title>create question paper</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css1/style.css">

  
</head>

<body>
  <div class="form">
      
      
      <div class="tab-content">
        <div id="signup">   
         <h1>PLEASE CLICK HERE TO GET start test</h1>
          <form action="Create_question_paper" method="post">
        
          <button type="submit" class="button button-block"/>Get Started</button>
          
          </form>

        </div>
        
        
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js1/index.js"></script>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html >
<head>
  <meta charset="UTF-8">
  <title>create subject</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css1/style.css">

  
</head>

<body>
<% if(session.getAttribute("email")==null)
{
	session.setAttribute("teacher_login_error", "login_eail");
	response.sendRedirect("index2.jsp");

}
%>
  <div class="form">
      
      
      <div class="tab-content">
        <div id="signup">   
         <h1>PLEASE CLICK HERE TO GET AVAILABLE SUBJECT</h1>
          <form action="Create_Subject_Koocki" method="post">
        
          <button type="submit" class="button button-block"/>Get Started</button>
          
          </form>

        </div>
        
        
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js1/index.js"></script>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html >
<head>
  <meta charset="UTF-8">
  <title>create subject</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css1/style.css">

  
</head>

<body>
  <div class="form">
      
      
      <div class="tab-content">
        <div id="signup">   
         <h1>PLEASE CLICK HERE TO GET AVAILABLE SUBJECT</h1>
          <form action="Create_Subject_Koocki1" method="post">
        
          <button type="submit" class="button button-block"/>Get Started</button>
          
          </form>

        </div>
        
        
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js1/index.js"></script>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html >
<head>
  <meta charset="UTF-8">
  <title>create test</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css1/style.css">

  
</head>

<body>
  <div class="form">
      
      
      <div class="tab-content">
        <div id="signup">   
         <h1>PLEASE CLICK HERE TO GET AVAILABLE SUBJECT</h1>
          <form action="Create_test_for_student" method="post">
        
          <button type="submit" class="button button-block"/>Get Started</button>
          
          </form>

        </div>
        
        
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js1/index.js"></script>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html >
<head>
  <meta charset="UTF-8">
  <title>create test</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css1/style.css">

  
</head>

<body>
  <div class="form">
      
      
      <div class="tab-content">
        <div id="signup">   
         <h1>PLEASE CLICK HERE TO GET AVAILABLE TEST</h1>
          <form action="Create_test_Koocki" method="post">
        
          <button type="submit" class="button button-block"/>Get Started</button>
          
          </form>

        </div>
        
        
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js1/index.js"></script>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>display teacher</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/animate.css" rel="stylesheet" />
    <!-- Squad theme CSS -->
    <link href="css/style.css" rel="stylesheet">
	<link href="color/default.css" rel="stylesheet">

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
	<!-- Preloader -->
	<div>
	<%
		if(session.getAttribute("email")==null)
		{
			session.setAttribute("teacher_login_error", "login_eail");
			response.sendRedirect("index2.jsp");

		}
	%>
	</div>
	<div id="preloader">
	  <div id="load"></div>
	</div>

    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
               
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#intro">Home</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Add Menu <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="add_subjectT.jsp">Add Subject</a></li>
            <li><a href="create_subject_koocki.jsp">Add Test</a></li>
            
          </ul>
        </li>
      </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

	<!-- Section: intro -->
    <section id="intro" class="intro">
	
		<div class="slogan">
			<h2>WELCOME TO<br> <span class="text_color">Online Exanmination system</span> </h2>
			<h4>have a test and enhance your Skills</h4>
		</div>
		
    </section>
	<!-- /Section: intro -->

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-12">
					<div class="wow shake" data-wow-delay="0.4s">
					<div class="page-scroll marginbot-30">
						<a href="#intro" id="totop" class="btn btn-circle">
							<i class="fa fa-angle-double-up animated"></i>
						</a>
					</div>
					</div>
					<p>&copy; All rights reserved by Krishna Janoliya</p>
                    <!-- 
                        All links in the footer should remain intact. 
                        Licenseing information is available at: http://bootstraptaste.com/license/
                        You can buy this theme without footer links online at: http://bootstraptaste.com/buy/?theme=Squadfree
                    -->
				</div>
			</div>	
		</div>
	</footer>

    <!-- Core JavaScript Files -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>	
	<script src="js/jquery.scrollTo.js"></script>
	<script src="js/wow.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.js"></script>

</body>

</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online Examination System</title>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/animate.css" rel="stylesheet" />
    <!-- Squad theme CSS -->
    <link href="css/style.css" rel="stylesheet">
	<link href="color/default.css" rel="stylesheet">

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
	<!-- Preloader -->
	<div>
	<%
		//if(session.getAttribute("user_name")==null)
		//{
		//	session.setAttribute("login_error","please login first");
			//response.sendRedirect("index1.jsp");
		//}
	%>
	</div>
	<div id="preloader">
	  <div id="load"></div>
	</div>

    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
               
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#intro">Home</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">please select <b class="caret"></b></a>
          <ul class="dropdown-menu">
          	
            <li><a href="create_email.jsp">select teacher email</a></li>
            <li><a href="generate_result_table.jsp">see result</a></li>
            
            
          </ul>
        </li>
      </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

	<!-- Section: intro -->
    <section id="intro" class="intro">
	
		<div class="slogan">
			<h2>WELCOME TO<br> <span class="text_color">Online Exanmination system</span> </h2>
			<h4>have a test and enhance your Skills</h4>
		</div>
		
    </section>
	<!-- /Section: intro -->

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-12">
					<div class="wow shake" data-wow-delay="0.4s">
					<div class="page-scroll marginbot-30">
						<a href="#intro" id="totop" class="btn btn-circle">
							<i class="fa fa-angle-double-up animated"></i>
						</a>
					</div>
					</div>
					<p>&copy; All rights reserved by Krishna Janoliya</p>
                    <!-- 
                        All links in the footer should remain intact. 
                        Licenseing information is available at: http://bootstraptaste.com/license/
                        You can buy this theme without footer links online at: http://bootstraptaste.com/buy/?theme=Squadfree
                    -->
				</div>
			</div>	
		</div>
	</footer>

    <!-- Core JavaScript Files -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>	
	<script src="js/jquery.scrollTo.js"></script>
	<script src="js/wow.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.js"></script>

</body>

</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html >
<head>
  <meta charset="UTF-8">
  <title>create email</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css1/style.css">
<style>
footer{
 padding: 1em;
    color: white;
    background-color: grey;
    clear: left;
    text-align: center;
}
.button {
  display: inline-block;
  padding: 10px 20px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 10px;
  box-shadow: 0 9px black;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
</style>
  
</head>

<body>
  <div class="form">
      
      
      <div class="tab-content">
        <div id="signup">   
         <h1><%= session.getAttribute("error")  %></h1>
          
		 <footer><p>  
		 <form action ="go_to_home" method= post >
           <input class="button" type="submit" value="go to home" align="left">   
          </form>                      <br>      </p>
 		</footer>
        </div>
        
        
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js1/index.js"></script>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>result table</title>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
div.container {
    width: 100%;
    border: 1px solid gray;
}

header {
    padding: 1em;
    color: white;
    background-color: grey;
    clear: left;
}
footer{
 padding: 1em;
    color: white;
    background-color: grey;
    clear: left;
    text-align: center;
}
.button {
  display: inline-block;
  padding: 10px 20px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 10px;
  box-shadow: 0 9px black;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
  #di{
    border: 10px solid grey;
    background-color:powderblue;
  }
 
	p {
	  text-align: center;
	  font-size: 30px;
	}


</style>
</head>
<body>

<table>
  <tr>
    <th>Test Name</th>
    <th>Total Marks</th>
    <th>Marks Obtain</th>
  </tr>
  <%
  int total =(Integer)session.getAttribute("avable_test_number");		
  %>
  <%
  int i;
  for(i=0;i<total;i++)
  {
	  %>
	  <tr>
	    <td><%= session.getAttribute(i+"test_name_tab") %></td>
	    <td><%= session.getAttribute(i+"max_mark") %></td>
	    <td><%= session.getAttribute(i+"marks_obtain") %></td>
	  </tr>
	
	  <%
  }
  %> 
 <footer><p>
   <form action ="go_to_home" method= post >
           <input class="button" type="submit" value="go to home" align="left">   
          </form> 
 </footer>
</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html >
<head>
  <meta charset="UTF-8">
  <title>generate result table</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css1/style.css">

  
</head>

<body>
  <div class="form">
      
      
      <div class="tab-content">
        <div id="signup">   
         <h1>PLEASE CLICK HERE TO SEE YOUR RESULT</h1>
          <form action="Create_result_table" method="post">
        
          <button type="submit" class="button button-block"/>Get Started</button>
          
          </form>

        </div>
        
        
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js1/index.js"></script>

</body>
</html>

<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Flat HTML5/CSS3 Login Form</title>
  
  
  
      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>
  <div class="login-page">
  <div class="form">
    <form class="register-form">
      <input type="text" placeholder="name"/>
      <input type="password" placeholder="password"/>
      <input type="text" placeholder="email address"/>
      <button>create</button>
      <p class="message">Already registered? <a href="#">Sign In</a></p>
    </form>
    <form class="login-form">
      <input type="text" placeholder="username"/>
      <input type="password" placeholder="password"/>
      <button>login</button>
      <p class="message">Not registered? <a href="#">Create an account</a></p>
    </form>
  </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>

</body>
</html>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>main page</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/animate.css" rel="stylesheet" />
    <!-- Squad theme CSS -->
    <link href="css/style.css" rel="stylesheet">
	<link href="color/default.css" rel="stylesheet">

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
	<!-- Preloader -->
	<div id="preloader">
	  <div id="load"></div>
	</div>

    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
               
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#intro">Home</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Login Menu <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="index1.jsp">student Login</a></li>
            <li><a href="index2.jsp">Teacher Login</a></li>
          </ul>
        </li>
      </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

	<!-- Section: intro -->
    <section id="intro" class="intro">
	
		<div class="slogan">
			<h2>WELCOME TO<br> <span class="text_color">Online Exanmination system</span> </h2>
			<h4>have a test and enhance your Skills</h4>
		</div>
		
    </section>
	<!-- /Section: intro -->

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-12">
					<div class="wow shake" data-wow-delay="0.4s">
					<div class="page-scroll marginbot-30">
						<a href="#intro" id="totop" class="btn btn-circle">
							<i class="fa fa-angle-double-up animated"></i>
						</a>
					</div>
					</div>
					<p>&copy; All rights reserved by Krishna Janoliya</p>
                    <!-- 
                        All links in the footer should remain intact. 
                        Licenseing information is available at: http://bootstraptaste.com/license/
                        You can buy this theme without footer links online at: http://bootstraptaste.com/buy/?theme=Squadfree
                    -->
				</div>
			</div>	
		</div>
	</footer>

    <!-- Core JavaScript Files -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>	
	<script src="js/jquery.scrollTo.js"></script>
	<script src="js/wow.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.js"></script>

</body>

</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
  <meta charset="UTF-8">
  <title>add question</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css1/style.css">

  
</head>

<body>

  <div class="form">
      
      
      <div class="tab-content">
        <div > 
        <a href="index1.jsp">Sign Up</a>
      
          
         <h1>plese login</h1>
          <form action="Student_login" method="post">
          <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email"required autocomplete="off" name="Email_Address"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Set A Password<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off" name="password"/>
          </div>
          
         

          
          
          <input type="submit" class="button button-block"/>
          
          </form>

        </div>
        
        
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js1/index.js"></script>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
  <meta charset="UTF-8">
  <title>Sign-Up/Login Form</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css1/style.css">

  
</head>

<body>
  <div class="form">
      <ul class="tab-group">
        <li class="tab active"><a href="#signup">Sign Up</a></li>
        <li class="tab"><a href="index1_login.jsp">Log In</a></li>
      </ul>
      
      <div class="tab-content">
        <div id="signup">   
          <h1>Sign Up for Free</h1>
          <h3>${Error}</h3>
          <h3>${login_erro}</h3>
          <form action="Student_signup" method="post">
          
          <div class="top-row">
            <div class="field-wrap">
              <label>
                First Name<span class="req">*</span>
              </label>
              <input type="text" required autocomplete="off" name ="First_name" />
            </div>
        
            <div class="field-wrap">
              <label>
                Last Name<span class="req">*</span>
              </label>
              <input type="text"required autocomplete="off" name="Last_Name"/>
            </div>
          </div>

          <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email"required autocomplete="off" name="Email_Address"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Set A Password<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off" name="password"/>
          </div>
          
          <button type="submit" class="button button-block"/>Get Started</button>
          
          </form>

        </div>
        
        <div id="login">   
          <h1>Welcome Back!</h1>
          
          <form action="Student_login" method="post">
          
            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email"required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off"/>
          </div>
          
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          
          <button class="button button-block"/>Log In</button>
          
          </form>

        </div>
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js1/index.js"></script>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
  <meta charset="UTF-8">
  <title>add question</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css1/style.css">

  
</head>

<body>

  <div class="form">
      
      
      <div class="tab-content">
        <div id="signup">   
        <ul class="tab-group">
        <li class="tab active"><a href="index2.jsp">Sign Up</a></li>
      </ul>
        
         <h1>plese login</h1>
          <form action="Teacher_login" method="post">
          <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email"required autocomplete="off" name="Email_Address"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Set A Password<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off" name="password"/>
          </div>
          
         

          
          
          <button type="submit" class="button button-block"/>Get Started</button>
          
          </form>

        </div>
        
        
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js1/index.js"></script>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
  <meta charset="UTF-8">
  <title>Sign-Up/Login Form</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css1/style.css">

  
</head>

<body>
  <div class="form">
      <ul class="tab-group">
        <li class="tab active"><a href="#signup">Sign Up</a></li>
        <li class="tab"><a href="index2_login.jsp">Log In</a></li>
      </ul>
      
      <div class="tab-content">
        <div id="signup">   
          <h1>Sign Up for Free</h1>
          <h3> ${Error}</h3>
          <h3>${login_erro }</h3>
          <form action="Teacher_signup" method="post">
          
          <div class="top-row">
            <div class="field-wrap">
              <label>
                First Name<span class="req">*</span>
              </label>
              <input type="text" required autocomplete="off" name ="First_name" />
            </div>
        
            <div class="field-wrap">
              <label>
                Last Name<span class="req">*</span>
              </label>
              <input type="text"required autocomplete="off" name="Last_Name"/>
            </div>
          </div>

          <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email"required autocomplete="off" name="Email_Address"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Set A Password<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off" name="password"/>
          </div>
          
          <button type="submit" class="button button-block"/>Get Started</button>
          
          </form>

        </div>
        
        <div id="login">   
          <h1>Welcome Back!</h1>
          
          <form action="Student_login" method="post">
          
            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email"required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off"/>
          </div>
          
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          
          <button class="button button-block"/>Log In</button>
          
          </form>

        </div>
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js1/index.js"></script>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <title>Bootstrap Example</title>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online Examination System</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/animate.css" rel="stylesheet" />
    <!-- Squad theme CSS -->
    <link href="css/style.css" rel="stylesheet">
	<link href="color/default.css" rel="stylesheet">
 
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<head>
	<title>start test</title>
	<style>
	
		div.container {
    width: 100%;
    border: 1px solid gray;
}

header {
    padding: 1em;
    color: white;
    background-color: grey;
    clear: left;
}
footer{
 padding: 1em;
    color: white;
    background-color: grey;
    clear: left;
    text-align: center;
}
.button {
  display: inline-block;
  padding: 10px 20px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 10px;
  box-shadow: 0 9px black;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
  #di{
    border: 10px solid grey;
    background-color:powderblue;
  }
 
	p {
	  text-align: center;
	  font-size: 30px;
	}

</style>
</head>
<body>
<%
	int total_sec=(Integer) session.getAttribute("time_in_sec");
	int sec=total_sec % 60;
	int min=total_sec / 60;
	min%=60;
	int hour=total_sec / 3600;
%>

	<div>
		 <ul class="nav navbar-nav">
        <li class="active"><a href="#intro">Home</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Login Menu <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="index1.jsp">student Login</a></li>
            <li><a href="index2.jsp">Teacher Login</a></li>
          </ul>
        </li>
      </ul>
      <p>
      <span id ="h"><%= hour %></span>
      <span id ="m"><%= min %></span>
      <span id ="s"><%= sec %></span>
      </p>
	</div>
  <div id="di">
 <header>
  <h1 id="para2">START YOUR TEST</h1></header>
  <div class="container">
  <form id = "test" action="Evalute_result" method="post">
  
  </h1>
  	<% 
  		int i=(Integer)session.getAttribute("avable_question_option");
  		int j;
  		for(j=0;j<i;j+=5)
  		{ 
  			int q=j;
  			int o1=j+1;
  			int o2=j+2;
  			int o3=j+3;
  			int o4=j+4;
  	%>
  	
  	<h4><%= session.getAttribute(q+"Question") %></h4>
    <div class="radio"> 
      <label><input type="radio" name=<%=q+"Question" %>  value="<%= session.getAttribute(o1+"OptionI") %>"><%= session.getAttribute(o1+"OptionI") %> </label>
    </div>
    <div class="radio">
      <label><input type="radio" name=<%=q+"Question" %>  value="<%= session.getAttribute(o2+"OptionII") %>"><%= session.getAttribute(o2+"OptionII") %> </label>
    </div>
    <div class="radio">
      <label><input type="radio" name=<%=q+"Question" %>  value="<%= session.getAttribute(o3+"OptionIII") %>"><%= session.getAttribute(o3+"OptionIII") %> </label>
    </div>
    <div class="radio">
      <label><input type="radio" name=<%=q+"Question" %> value="<%= session.getAttribute(o4+"OptionIV") %>"><%= session.getAttribute(o4+"OptionIV") %> </label>
    </div><br>
    
    <% } %>
   	<div class=radio>
   	<input type="submit">
   	</div>
  </form>
</div>
 <footer><p>  
           <input class="button" type="submit" value="logout" align="left">                         <br>      </p>
 </footer>
 </div>
 <script >
 
 var h=document.getElementById("h").value;
 
 var m=document.getElementById("m").value;
 var s=document.getElementById("s").value;
  function update()
 {
	 if(s==0)
		 {
		 	s=60;
		 	m--;
		 	if(m==0)
		 		{
		 			h--;
		 			if(h==0)
		 				if(m==0)
		 					if(s==0)
		 						document.getElement.ById("test").submit();
		 		}
		 
		 }
	 else
		 s--;
	 document.getElementById("h").innerHTML=h;
	 document.getElementById("m").innerHTML=m;
	 document.getElementById("s").innerHTML=s;
 }
 window.onload = setInterva(update , 1000);
 </script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <tr>
    <td>Alfreds Futterkiste</td>
    <td>Maria Anders</td>
    <td>Germany</td>
    
  </tr>
</body>
</html>
