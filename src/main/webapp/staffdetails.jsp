<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

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
              <a href="images/Home.jsp"><img src="logo.png" alt="logo not found"></a>
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
                  <li><a href="#">Log in</a>
                      <div class="in_menu">
                          <ul>
                              <li><a href="#">Sign up</a></li>
                              <li><a href="#">Sign in</a></li>
                          </ul>
                      </div>
                  </li>
              </ul>
          
              <ul>
                  <li><a href="esevation.jsp">Make reservation</a>
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
<c:forEach var="staff" items="${staffDetails}">
	
	<c:set var="id" value="${staff.eid}"></c:set>
	<c:set var="name" value="${staff.name}"></c:set>
	<c:set var="NIC" value="${staff.NIC}"></c:set>
	<c:set var="number" value="${staff.number}"></c:set>
	<c:set var="gender" value="${staff.gender}"></c:set>
	<c:set var="address" value="${staff.address}"></c:set>
	<c:set var="position" value="${staff.position}"></c:set>
	<c:set var="status" value="${staff.staff_detailscol}"></c:set>
	
	<div id="mk">
        <!-- Accessing properties of the 'res' object -->
        RID: ${staff.eid}<br>
        Name: ${staff.name}<br>
         NIC: ${staff.NIC}<br>
        number Type: ${staff.number}<br>
        gender: ${staff.gender}<br>
         address: ${staff.address}<br>
         position: ${staff.position}<br>
        status: ${staff.staff_detailscol}<br>
        
    </div>
    <br>
	
	</c:forEach>
	
	<c:url value="updatestaff.jsp" var="staffupdate">
	
		<c:param name="id" value="${id}"></c:param>
		<c:param name="name" value="${name}"></c:param>
		<c:param name="NIC" value="${NIC}"></c:param>
		<c:param name="number" value="${number}"></c:param>
		<c:param name="gender" value="${gender}"></c:param>
		<c:param name="address" value="${address}"></c:param>
		<c:param name="position" value="${position}"></c:param>
		<c:param name="status" value="${status}"></c:param>
		
	
	</c:url>
	
	<div class="senter">
	<a href="${staffupdate}">
	<button type="submit" class="round">Edit Staff Details</button>
	</a><br>
	</div>
	<c:url value="deletestaff.jsp" var="staffdelete">
	
		<c:param name="id" value="${id}"></c:param>
		<c:param name="name" value="${name}"></c:param>
		<c:param name="NIC" value="${NIC}"></c:param>
		<c:param name="number" value="${number}"></c:param>
		<c:param name="gender" value="${gender}"></c:param>
		<c:param name="address" value="${address}"></c:param>
		<c:param name="position" value="${position}"></c:param>
		<c:param name="status" value="${status}"></c:param>
		
		</c:url>
	<div class="senter">
	<a href="${staffdelete}">
	<button type="submit" class="round">Delete Staff</button>
	</a>
	</div>

</body>
</html>