 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirming page</title>
<style>
    /* Center the div content */
    #mk{
        text-align: center;
        margin: 0 auto;
        max-width: 500px; /* Adjust the maximum width as needed */
    }

    /* Add styling to the properties */
    #mk {
        background-color: #f5f5f5; /* Light gray background */
        border: 1px solid #ccc;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2); /* Add a subtle shadow */
        font-family: Arial, sans-serif;
    }

    /* Style individual properties */
    #mk span {
        font-weight: bold;
        color: #333;
    }

    /* Add some spacing between properties */
    #mk br {
        margin: 10px 0;
    }
    
    
    	body
{
    width: 100%;
    height: 100%;
    background-image: linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url("images/fuel.jpeg");
    background-size: cover;
    background-position:center;
}
	/*Header start*/
.header
{
	text-align: center;
	color: white;
	background-color: black;
}
.menu
{
	height: 100px;
	background-color: rgba(0,0,0,0.2);
	display: grid;
	grid-template-columns: 1fr 6fr 1fr 2fr;
	gap: 10px;
}
.logo img
{
    height: 100px;
    width: 100px;
    border-radius: 40%;
	margin-left: 10px;
}
.menu ul
{
	display:flex;
	flex-direction:coloumn;
	padding-right: 10px;
	list-style: none;
	margin: 10px;
}
.menu ul li
{
	display:inline;
	position: relative;
}
.menu ul li a
{
	font-size:1em;
	font-weight: bold;
	text-decoration:none;
	color:white;
	padding:10px;
	text-transform: uppercase;
}
.menu ul li a:hover
{
	padding-top: 5px;
	background-color:rgba(15, 242, 73, 0.5);
	border-radius: 10px;
}
.nav
{
	display: grid;
	grid-template-rows: 1fr 1fr 1fr;
}
.search
{
	max-width: 500px;
	height: 30px;
	width: 80%;
	background-color:white;
	display: flex;
	margin: 5px 490px 5px 10px;
	padding: 5px;
	outline: none;
	border: 0px;
	border-radius: 10px;
}
.search input
{
	border: none;
	outline: none;
	width: 90%;
}
.search button
{
	width: 100px;
	height: 30px;
	border-color:white;
	display: block;
	padding: 0;
	margin-top: 0;
	color: black;
}
.profile img
{
    width: 100px;
    height: 100px;
}
.login ul li
{
	margin-top: 20px;
}
.in_menu
{
	display: none;
}
.menu ul li:hover .in_menu
{
	display:block;
	position: absolute;
	top: 100%;
	left: 0px;
	background-color:rgba(15, 242, 73, 0.5);
	border-radius: 0px;
}
.in_menu ul
{
	display:flex;
	flex-direction:row;
}
.in_menu ul li
{
	width: 100px;
	padding: 2px;
	margin: 2px;
}
/*Header end*/  

/* Center the button */
    .senter {
        text-align: center;
    }

    /* Style the round button */
    .round {
        display: inline-block;
        background-color: #3498db; /* Button color */
        color: #fff; /* Text color */
        border: none;
        border-radius: 50%; /* Makes the button round */
        padding: 15px 20px; /* Adjust padding as needed */
        text-align: center;
        font-size: 16px; /* Adjust font size as needed */
        cursor: pointer;
    }
</style>

</head>
<body>


<div id="container">
        <!-- header -->
        <div class="header">
          <h1>LEO The Petroleum</h1>
      </div>
        <div class="menu">
          <div class="logo">
              <a href="Home.jsp"><img src="images/logo.png" alt="logo not found"></a>
          </div>
          <div class="nav">
              <div class="search">
                  <input type="text" placeholder="What you are looking for?">
                  <button type="submit">search</button>
              </div>
              <div class="list">
                  <ul>
                      <li><a href="Home.jsp">Home</a></li>
                      <li><a href="AboutUs.jsp">About Us</a></li>
                      <li><a href="ContactUs.jsp">Contact Us</a></li>
                      <li><a href="#">Admin</a></li>
                  </ul>
              </div>
          </div>
          <div class="profile">
              <a href="useraccount.html"><img src="../Images/profile.png"></a>
          </div>
          <div class="login">
              <ul>
                  <li><a href="signup.html">Log in</a>
                      <div class="in_menu">
                          <ul>
                              <li><a href="#">Sign up</a></li>
                              <li><a href="#">Sign in</a></li>
                          </ul>
                      </div>
                  </li>
              </ul>
          
              <ul>
                  <li><a href="resevation.jsp">Make reservation</a>
                      <div class="in_menu">
                          <ul>
                              <li><a href="resevation.jsp">Make reservation</a></li>
                              <li><a href="reservationview.jsp">Check reservation Status</a></li>
                          </ul>
                      </div>
                  </li>
              </ul>
          </div>
      </div>
    </div>
<c:forEach var="res" items="${Details}">
	
	<c:set var="id" value="${res.RID}"></c:set>
	<c:set var="Name" value="${res.name}"></c:set>
	<c:set var="contact" value="${res.contactnumber}"></c:set>
	<c:set var="service" value="${res.servicetype}"></c:set>
	<c:set var="date" value="${res.date}"></c:set>
	<c:set var="vnumber" value="${res.vehiclenumber}"></c:set>
	<c:set var="vtype" value="${res.vhicletype}"></c:set>
	<c:set var="payment" value="${res.payment_type}"></c:set>
	<c:set var="nic" value="${res.nic}"></c:set>
	
	<div id="mk">
        <!-- Accessing properties of the 'res' object -->
        RID: ${res.RID}<br>
        Name: ${res.name}<br>
        Contact Number: ${res.contactnumber}<br>
        Service Type: ${res.servicetype}<br>
        Date: ${res.date}<br>
        Vehicle Number: ${res.vehiclenumber}<br>
        Vehicle Type: ${res.vhicletype}<br>
        PType: ${res.payment_type}<br>
        NIC: ${res.nic}<br>
    </div>
    <br>
	
	</c:forEach>
	
	<c:url value="updatereservation.jsp" var="resupdate">
	
		<c:param name="id" value="${id}"></c:param>
		<c:param name="name" value="${Name}"></c:param>
		<c:param name="cnumber" value="${contact}"></c:param>
		<c:param name="stype" value="${service}"></c:param>
		<c:param name="date" value="${date}"></c:param>
		<c:param name="vnumber" value="${vnumber}"></c:param>
		<c:param name="vtype" value="${vtype}"></c:param>
		<c:param name="ptype" value="${payment}"></c:param>
		<c:param name="nic" value="${nic}"></c:param> 
		
	
	</c:url>
	
	<div class="senter">
	<a href="${resupdate}">
	<button type="submit" class="round">Edit reservation</button>
	</a><br>
	</div>
	<c:url value="deletereservation.jsp" var="conre">
	
		<c:param name="id" value="${id}"></c:param>
		<c:param name="name" value="${Name}"></c:param>
		<c:param name="cnumber" value="${contact}"></c:param>
		<c:param name="stype" value="${service}"></c:param>
		<c:param name="date" value="${date}"></c:param>
		<c:param name="vnumber" value="${vnumber}"></c:param>
		<c:param name="vtype" value="${vtype}"></c:param>
		<c:param name="ptype" value="${payment}"></c:param>
		<c:param name="nic" value="${nic}"></c:param> 
	
	
	
	</c:url>
	<div class="senter">
	<a href="${conre}">
	<button type="submit" class="round">Delete reservation</button>
	</a>
	</div>
	
</body>
</html>