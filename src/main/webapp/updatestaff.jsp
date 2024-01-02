<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>



	<style>
	*
{
	font-family: sans-serif;
	margin: 0;
	padding: 0;
}

.form{
	background-color: rgba(0,0,0, 0.7);
	border: 1px solid white;
    color: bisque;
    border-radius: 20px;
    align-items: center;
    width: 50%;
	height: 750px;
	padding: 15px;
	margin: 10px auto 10px auto;
	display: flex;
	justify-content: center;
}
.form form {
	width: 400px;
}

.form label {
	display: block;
	margin-bottom: 5px;
}

.form input[type="text"],
.form input[type="email"],
.form input[type="password"],
.form textarea {
	width: 100%;
	padding: 10px;
	border-radius: 5px;
	border: 1px solid #ccc;
	margin-bottom: 10px;
}

	.btn:hover{
		background-color:rgba(15, 242, 73, 0.5) ;



	}  
	
#signup{
	font-size: 15px;
	font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
	color: #ccc;
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
.rable{

		text-align: center;
        margin: 0 auto;
        border: 2px solid #fff; /* Change border color to white (#fff) */
        border-collapse: collapse;

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
              <a href="images/Home.jsp"><img src="images/logo.png" alt="logo not found"></a>
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
                      <li><a href="insertstaff.jsp">Admin</a></li>
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

<%		String eid=request.getParameter("id");
         String name =request.getParameter("name");
         String nic=request.getParameter("NIC");
         String num=request.getParameter("number");
         String gen=request.getParameter("gender");
         String add=request.getParameter("address");
         String posi=request.getParameter("position");
         String st=request.getParameter("status");
        /*String eid = request.getParameter("id");
		String name = request.getParameter("name");
		String NIC = request.getParameter("NIC");
		String number = request.getParameter("number");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String position = request.getParameter("position");
		String status = request.getParameter("status");*/
		
		
       %>
    <form action="updatestaff" method="post">
	<table class="rable">
		<tr>
			<td>staff ID</td>
			<td><input type="text" name="resid" value="<%=eid%>" readonly></td>
		</tr>
		<tr>
			<td>name</td>
			<td><input type="text" name="name" value="<%=name%>"></td>
		</tr>
		<tr>
		<td>NIC</td>
		<td><input type="text" name="nic" value="<%=nic%>"></td>
	</tr>
	<tr>
		<td> number :</td>
		<td><input type="text" name="number" value="<%=num%>"></td>
	</tr>
	<tr>
		<td>gender:</td>
		<td><input type="text" name="gender" value="<%=gen%>"></td>
	</tr>
	<tr>
		<td>address</td>
		<td><input type="text" name="address" value="<%=add%>"></td>
	</tr>	
	<tr>
		<td> position:</td>
		<td><input type="text" name="position" value="<%=posi%>"></td>
	</tr>
	<tr>
		<td> status:</td>
		<td><input type="text" name="status" value="<%=st%>"></td>
	</tr>
	<tr>
		
		
	</table>
	<br>
		<input type="submit" name="submit" value="Update My Data">
	</form>

</body>
</html>