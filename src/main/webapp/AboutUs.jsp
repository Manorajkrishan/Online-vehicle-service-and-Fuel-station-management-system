<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>

<style>


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

	/* About Us Page */
.Abt{
	background-color:White;
	color:Black;
	font-family:Century Gothic;
	text-align:center;
	height:50px;
	width:150px;
	padding:0px 10px 0px 10px;
}

.ABTUS{
	border:1px solid coral;
	background-image: url("../Images/book.png");
	opacity:0.9;
	width:1000px;
	height:150px;
	background-size:cover;
	background-position:center;
	text-align:justify;
	padding:50px 50px 50px 50px;
}

.nextPage{
	background-color:coral;
	padding: 10px 20px;
	font-size: 16px;
	cursor: pointer;
	color:black;
	opacity:0.7;
	border-radius:10px;
}

.nextPage:hover{
	background-color:purple;
	color:silver;
}

.tour{
	color:yellow;
}

.ourVideo{
	width:500px;
	height:250px;
	border:3px solid black;
}
.date h1,h3
{
	color: white;
	text-align: center;
}

.Page h1 a
{
	border: 1px solid black;
	background-color: seagreen;
	border-radius: 10px;
	color: white;
	height: 40px;
	width: 250px;
	padding: 10px;
	display: grid;
	grid-template-rows: 1fr 1fr;
	margin: 10px auto;
	gap: 5px;
	text-decoration: none;
}

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
              <a href="../Home.jsp"><img src="images/logo.png" alt="logo not found"></a>
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
    <!-- end header -->

<!-- Java cript used for get the date  -->
	<div class="date">
		<script type="text/javascript">
			var d = new Date();
			theDay=d.getDay();
			switch (theDay)
			{
				case 6:
					document.write("<h1><b>Super Saturday,</b></h1><br><h3>Enjoy the weekend</h3>");
				break;
				case 5:
					document.write("<h1><b>Finally Friday,</h1><br><h3>Have a happy weekend</h3></b>");
				break;
				case 4:
					document.write("<b><h1>Phenomenal Thursday,</h1><br><h3>One more day to weekend</h3></b>");
				break;
				case 3:
					document.write("<b><h1>Miraculous Wednesday,</h1><br><h3>Have a nice day</h3></b>");
				break;
				case 2:
					document.write("<b><h1>Wondrous Tuesday,</h1><br><h3>Keep rocking</h3></b>");
				break;
				case 1:
					document.write("<b><h1>Awesome Monday,</h1><br><h3>a new begining</h3></b>");
				break;
				case 0:
					document.write("<b><h1>Happy Sunday,</h1><br><h3>Stress Buster</h3></b>");
				break;
				default:
				document.write("<h1><b>I'm really looking forward to this weekend!</b></h1>");
			}
		</script>
	   </div>
		<br><br>
		<center>
		
		
		<div class="Abt">
			<h1>About Us</h1>
		</div>
		
		
		<br><br>
		<div class="ABTUS">
			<h3>We "LEO The Petroleum" - Online fuel and service managementsystem '<br> At LEO, we will give you best destination for all your fuel and vehicle service needs and a
best efficiency. 
we have established ourselves as a leading online fuel and vehicle service station.our mission is the  giving the service on time as customer want. vehicle maintenance, one stop solution for fuelling up.And also we are delivering high-quality fuels and lubricants to keep your engine running smoothly.

Join us on the road to convinience and quality service at LEO..</h3></p>
			<p>For Further More Details :
			
			
			<div class="More">
				<a href="contact Us.html"><button type="submit" name="next" class="nextPage" onclick="greeting()">Contact Us</button></a>
			</div>
		</div>
		<br>
		
		
		<div class="tour"><h2>Here a Small Video About Us...</h2></div>
		<video controls class="ourVideo">
			<source src="../Images/StartYourLifeAtSLIIT.mp4" type="video/mp4">
		</video>
		
		
		</center>
</body>
</html>