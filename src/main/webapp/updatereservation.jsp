<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update ur data</title>
<style type="text/css">

	body
{
    width: 100%;
    height: 100%;
    background-image: linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url("images/fuel.jpeg");
    background-size: cover;
    background-position:center;
}
	*
{
	font-family: sans-serif;
	margin: 0;
	padding: 0;
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

.rable{

		text-align: center;
        margin: 0 auto;
        border: 2px solid #fff; /* Change border color to white (#fff) */
        border-collapse: collapse;

}




</style>
</head>
<body>

<!-- Header -->
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
                  <li><a href="login.jsp">Log in</a>
                      <div class="in_menu">
                          <ul>
                              <li><a href="customerinsert.jsp">Sign up</a></li>
                              <li><a href="login.jsp">Sign in</a></li>
                          </ul>
                      </div>
                  </li>
              </ul>
          
              <ul>
                  <li><a href="reservation.jsp">Make reservation</a>
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
    <!-- end header -->
       <%
        String id = request.getParameter("id");
		String name = request.getParameter("name");
		String number = request.getParameter("cnumber");
		String stype = request.getParameter("stype");
		String date = request.getParameter("date");
		String vnum = request.getParameter("vnumber");
		String vtype = request.getParameter("vtype");
		String payment = request.getParameter("ptype");
		String nic = request.getParameter("nic");
		
       %>
    <form action="updatereservation" method="post">
	<table class="rable">
		<tr>
			<td>Reservation ID</td>
			<td><input type="text" name="resid" value="<%=id%>" readonly></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" value="<%=name%>"></td>
		</tr>
		<tr>
		<td>Contact number:</td>
		<td><input type="text" name="cnum" value="<%=number%>"></td>
	</tr>
	<tr>
		<td>Service type :</td>
		<td><input type="text" name="sertype" value="<%=stype%>"></td>
	</tr>
	<tr>
		<td>Resevation Date:</td>
		<td><input type="date" name="date" value="<%=date%>"></td>
	</tr>
	<tr>
		<td>Vehicle Number:</td>
		<td><input type="text" name="vnum" value="<%=vnum%>"></td>
	</tr>	
	<tr>
		<td>Vehicle type:</td>
		<td><input type="text" name="vtype" value="<%=vtype%>"></td>
	</tr>
	<tr>
		<td>Payment type:</td>
		<td><input type="text" name="payment" value="<%=payment%>"></td>
	</tr>
	<tr>
		<td>NIC number:</td>
		<td><input type="text" name="nic" value="<%=nic%>"></td>
	</tr>
	
		
	</table>
	<br>
	<input type="submit" name="submit" value="Update My Data">
	</form>
</body>
</html>