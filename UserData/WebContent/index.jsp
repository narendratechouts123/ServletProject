<!DOCTYPE html>
<html>
<head>
 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/5002aecafb.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <meta charset="ISO-8859-1">
<title>register.com</title>
 
<script>
 
	$(document).ready(function(){
	  $("#account1").click(function(){
	    $("#slider").slideToggle("slow");
		  
	  });
	});
</script>
    <style>
  
 
.container123{
   
     height: 400px;  
      display:none;   
}
 #ribbon {
 height :60px;
  
  
 
 }
  #kart  {
   
 height :70px;  
 
 
 }
 
 #userid {
 
 padding-left:1000px;
 text-transform: uppercase;
 text-decoration: none;
 font-size:15px;
 }
  #account,#account1{
 padding-left:100px;
 text-transform: uppercase;
 text-decoration: none;
 font-size:15px;
 
 }
 
 #ribin {
 position:relative;
  padding-top: 15px;
  font-family : sans-serif;
  padding-left:100px;
  font-size:25px;
  color:black;
 }
 
 
 #kartdata,td {
 padding-top:20px;
 border: 1px solid black   ;
 border-bottom-style :hidden;
 border-collapse: collapse;
 
 
 }
 #first{
 padding-left:200px;
 border-left-style: hidden;
 width:1150px;
 }
 
  #last{
 color:#199c91;
 border-right-style: hidden;
  
 }
 #sbar{
 margin-left: 100px;
 }
 
 #mid1 {
 color:#199c91;
  
 width:200px;
 }
   #category ul li  {
   padding-left:100px;
    text-transform:uppercase;
     list-style-type: none;
     display:inline;
     color:white;
 
 }
 #links{
 background-color:#0c6e5a;
 color:white; 
 
 }
 #bordere{
 border: 0.5px solid white;
 padding-top:50px;
  
 
 } 
  
 /*headermenu
 * {
  box-sizing: border-box;
}

body {
  margin: 0;
}

.navbar {
  overflow: hidden;
  background-color: #208999;
  font-family: Arial, Helvetica, sans-serif;
  
}

.navbar a {
  float: left;
  font-size: 14px;
  color: white;
  text-align: center;
  padding: 14px 10px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 20px 16px;
  background-color: inherit;
  font: inherit;
  margin: 0px;

}

 
.dropdown-content {
padding-left:515px;
padding-top:25px;
  display: none;
  position:absolute;
   width: 90%;
  left: 0;
  
}

.dropdown-content .header {
 
  color: white;
}
#carot{
color:white;
}
.dropdown:hover .dropdown-content {
  display: block;
}

/* Create three equal columns that floats next to each other */
.column {
padding-left:20px;
  float: left;
  width: 33.380%;
  background-color: #edf2f2;
  height: 340px;
}

.column a {
  float: none;
  color: black;
  text-decoration: none;
  display: block;
  text-align: left;
}

 

 

/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column {
    width: 80%;
    height: auto;
  }
}
#l{
color:white;
}
#l{
padding-left:80px;
}
a:hover{
text-decoration:none;
color:white;
}
a{
text-decoration:none;
color:white;
}
/*rates
/*head
a #out{
color:black;
}
 </style>

 
</head>

<body>
 <div id="ribbon">
 <div id="ribin">
 <b> B<sub>2</sub>c Accelarator</b> 
 
<span id="userid">
 <%
  String s="" ;
 
 s= (String) session.getAttribute("username");
 if(s==null){
	 s=" ";
 }
 
 
 %>
 
 <%="WelCome  "+s%> </span>
 
 
 
 <span id="account1">My Account</span><span id="account"><a href="logout.jsp" id="out" style="color:black"> signout</a>  </span>   
   
 </div>
 </div>
     
     <div id="links" >
  <div   class="container123" id="slider" >
  <div class="row">
    <div id="bordere" class="col-sm">
 &nbsp; &nbsp; <a href="getData.jsp">Personal Details</a><br><br> 
    </div>
    <div id="bordere" class="col-sm">
       &nbsp; &nbsp;   <span> Email Address</span><br> 
    </div>
   <a href="login.html"> <div  id="bordere" class="col-sm">
   &nbsp; &nbsp; Login</a><br> 
    </div>
  </div>
    <div  class="row">
    <div id="bordere" class="col-sm">
     &nbsp; &nbsp;  <a href="register.html"> Register</a> <br> <br>
    </div>
    <div id="bordere" class="col-sm">
     &nbsp; &nbsp;      Order History  
    </div>
    <div id="bordere" class="col-sm">
      &nbsp; &nbsp;    Address Book 
    </div>
  </div> 
   <div class="row">
    <div id="bordere" class="col-sm">
      &nbsp; &nbsp;    Saved Chart <br> <br>
    </div>
    <div id="bordere" class="col-sm">
    &nbsp; &nbsp;   Consent Management   
    </div>
    <div id="bordere" class="col-sm">
   &nbsp; &nbsp;    Close Account   
    </div>
  </div>  
   <div class="row">
    <div id="bordere" class="col-sm">
  &nbsp; &nbsp;     Support Tickets <br> <br>
    </div>
    <div id="bordere" class="col-sm">
     &nbsp; &nbsp;      Return History 
    </div>
    <div id="bordere" class="col-sm">
    &nbsp; &nbsp;        Dummey Details 
    </div>
  </div>
  </div>
</div>
      
 
     <div id="kart">
   <center> <table style="width:100%" id="kartdata">
    
    <tr>
    <td id="first">
   <div class="form-outline">
  <input style="width:500px" type="search" id="form1" class="form-control" placeholder="  i am looking        &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;   &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;        &#128270;"  aria-label="Search" />
</div>
    </td>
    <td id="mid1">
   <center>	<h2> <i  class="fa fa-map-marker" aria-hidden="true"></h2></i></center>
    </td >
    <td id="mid1">
   <center>	<h2> <i class="fa fa-list-alt" aria-hidden="true"></h2></i></center>
    </td>
     <td  id="last"> 
     	<center><h3>(29items)4000&#x20b9; <sup><i class="fa fa-shopping-cart" aria-hidden="true"></sup></i></h3> </center>																												 
    </td>
    </tr>
    </table>
 </center>
 
     </div>
     
     <iframe src="headmenu.html" name="targetframe" allowTransparency="true" scrolling="no"   width="1900px" height="1500px"></iframe>
      																													 

  
	
 
<iframe src="footer.html" name="targetframe" allowTransparency="true" scrolling="no" frameborder="0" width="1900px" height="700px"  >

    </iframe>
</body>
</html>