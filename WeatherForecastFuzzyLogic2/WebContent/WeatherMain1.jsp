<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.fuzzylogic.*" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Weather Forecast - Predicting future</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/grayscale.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<%

String minT1= request.getParameter("minTemp1");
String avgT1 = request.getParameter("avgTemp1");
String maxT1 = request.getParameter("maxTemp1");

String minT2= request.getParameter("minTemp2");
String avgT2 = request.getParameter("avgTemp2");
String maxT2 = request.getParameter("maxTemp2");

String minT3= request.getParameter("minTemp3");
String avgT3 = request.getParameter("avgTemp3");
String maxT3 = request.getParameter("maxTemp3");

String errMessage=" ";

float predicted_temp1=0.0f;
float predicted_temp2=0.0f;
float predicted_temp3=0.0f;
boolean page_submitted=false;

if(minT1!=null&& avgT1!=null && maxT1!=null){
	if(minT2!=null&& avgT2!=null && maxT2!=null){
		if(minT3!=null&& avgT3!=null && maxT3!=null){	
		
		page_submitted=true;
Temperature1 t1 = new Temperature1(minT1,avgT1,maxT1);
predicted_temp1 = t1.getTemp();
Temperature1 t2 = new Temperature1(minT2,avgT2,maxT2);
predicted_temp2 = t2.getTemp();
Temperature1 t3 = new Temperature1(minT3,avgT3,maxT3);
predicted_temp3 = t3.getTemp();

}
	}
}

%>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

    <!-- Navigation -->
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#input">Input</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#output">Forecast</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <!-- Intro Header -->
    <header class="intro">
        <div class="intro-body">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <h1 class="brand-heading">Weather Prediction</h1>
                        <p class="intro-text">Predicting temperature using Fuzzy logic.</p>
                        <a href="#input" class="btn btn-circle page-scroll">
                            <i class="fa fa-angle-double-down animated"></i>
                            </a>
                            <br/>
                            <%if(page_submitted=true){ %>
                            <a href="#output" class="page-scroll">Link to results</a>  
                            <%} %>                      
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- About Section -->
    <section id="input" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Previous Temperature</h2>
                <p>Please enter previous day's temperature:</p>
                 <form class="form-inline" role="form" method="POST">
                 <label for="day1">Day 1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
  <div class="form-group" id="day1">
    <label for="minTemp1">Min Temperature:&nbsp;</label>
    <input class="form-control" name="minTemp1" placeholder="mintemp" size="5">
    <label for="maxTemp1">Max Temperature:&nbsp;</label>
    <input class="form-control" name="maxTemp1" placeholder="maxtemp" size="5">
     <label for="avgTemp1">Avg Temperature:&nbsp;</label>
    <input class="form-control" name="avgTemp1" placeholder="avgtemp" size="5">
  </div>
  <p>&nbsp;</p>
  <label for="day2">Day 2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
  <div class="form-group" id="day2">
    <label for="minTemp2">Min Temperature:&nbsp;</label>
    <input class="form-control" name="minTemp2" placeholder="mintemp" size="5">
    <label for="maxTemp2">Max Temperature:&nbsp;</label>
    <input class="form-control" name="maxTemp2" placeholder="maxtemp" size="5">
     <label for="avgTemp2">Avg Temperature:&nbsp;</label>
    <input class="form-control" name="avgTemp2" placeholder="avgtemp" size="5">
  </div>
  
  <p>&nbsp;</p>
  <label for="day3">Day 3:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
  <div class="form-group" id="day3">
    <label for="minTemp3">Min Temperature:&nbsp;</label>
    <input class="form-control" name="minTemp3" placeholder="mintemp" size="5">
    <label for="maxTemp3">Max Temperature:&nbsp;</label>
    <input class="form-control" name="maxTemp3" placeholder="maxtemp" size="5">
     <label for="avgTemp3">Avg Temperature:&nbsp;</label>
    <input class="form-control" name="avgTemp3" placeholder="avgtemp" size="5">
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form>
                        </div>
        </div>
    </section>

    <!-- Download Section -->
    <section id="output" class="content-section text-center">
        <div class="download-section">
            <div class="container">
                <div class="col-lg-8 col-lg-offset-2">
                    <h2>Weather Forecast</h2>
                    <div class="form-group" id="outputTemp">
    <label for="minTemp">Today's Temperature:&nbsp;</label><%=predicted_temp1%><br/>
    
    <label for="maxTemp">Tomorrow's Temperature:&nbsp;</label><%=predicted_temp2%><br/>
    
     <label for="avgTemp">Day after tomorrow's Temperature:&nbsp;</label><%=predicted_temp3%>
    
  </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                
             </div>
        </div>
    </section>


    <!-- Footer -->
    <footer>
        <div class="container text-center">
            <p>Copyright</p>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="js/jquery.easing.min.js"></script>

    <!-- Google Maps API Key - Use your own API key to enable the map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/ -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&sensor=false"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/grayscale.js"></script>

</body>

</html>
