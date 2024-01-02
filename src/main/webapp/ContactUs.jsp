<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
<style type="text/css">

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
		<div class="form-container">
		<form action="feed" class="ProblemForm" border="1" method="POST">
		<fieldset>
		<legend>Enter your details :-</legend>
		<div class="form-flex">
			<div>
				<label for="Name"><b>First Name : </b></label>
				<input type="text" name="Name" id="Name" class="FName" placeholder="* Enter the Name" required>
			</div>
			
			<br>
			<div>
				<label for="Mail_Address"><b>Email :</b></label>
				<input type="email" name="Mail" id="Mail_Address" class="MailAddress" placeholder="*Enter the email address" maxlength="25" minlength="15" required>
			</div>
			<br>
			
			
			<div>
				<label for="Phone_Number"><b>Contact Number :</b></label>
				<input type="tel" name="YourNumber" id="Phone_Number" class="PhoneNumber" placeholder="*Enter the contact number" maxlength="10" minlength="10" required>
			</div>
			<br>
			<div>
				<p><b>Fill the below text area with your problems :</b></p>
				<textarea class="problem" name="YourProblem">How can we help you?....</textarea>
			</div>
			<br>
			<div class="BTN" align="center">
				<button type="submit" name="submit" class="CustomButton" >Submit</button>
				<button type="reset" class="CustomButton">Reset</button>
			</div>
		</div>
		</fieldset>
		</form>
		<br>
		<div>
			<div class="location" align="left">Our Branches</div>
			<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15843.194046863206!2d79.9729445!3d6.9146775!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae256db1a6771c5%3A0x2c63e344ab9a7536!2sSri%20Lanka%20Institute%20of%20Information%20Technology!5e0!3m2!1sen!2slk!4v1684682395966!5m2!1sen!2slk" width="200" height="250" style="border:1;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" align="right"></iframe>
			<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15732.638546576574!2d80.0188237!3d9.667398!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3afe56a82a20ed27%3A0x1b929fc1913bd72c!2sSLIIT%20JAFFNA%20CENTRE!5e0!3m2!1sen!2slk!4v1684684390270!5m2!1sen!2slk" width="200" height="250" style="border:1;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" align="right"></iframe>
			<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15830.779369140519!2d80.6127217!3d7.2755222!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae368bfd631eeb9%3A0x881fd608acc078bb!2sSLIIT%20Kandy%20Center!5e0!3m2!1sen!2slk!4v1684684495916!5m2!1sen!2slk" width="200" height="250" style="border:1;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" align="right"></iframe>
			<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12794.001758924736!2d79.84820782436951!3d6.906945654024885!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2596aaa8742d9%3A0xced655398fd4d621!2sSLIIT%20Metropolitan%20Campus!5e0!3m2!1sen!2slk!4v1684684649497!5m2!1sen!2slk" width="200" height="250" style="border:1;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" align="right"></iframe>
		</div>
	</div>

</body>
</html>