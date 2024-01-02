<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation</title>


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







<!-- form for make a reservation -->
<div class="form">
        <form action="insert" method="post" onsubmit="return validateNIC()">
       <div> <label>Name:</label>
             <input type="text" name="uname">
        </div>
        <div>
              <label>Contact number:</label>
              <input type="number" name="cnum" maxlength="10" minlength="10">
          </div>  <br>
       <div> <label>Service type :
        <select name="satic">
            <option value="Full service">Full service</option>
            <option value="Oil change">Oil change</option>
            <option value="Body wash">Body wash</option>  
            </select>
            </label>   </div>   
          <div>  <label>Resevation Date:</label>
            <input type="date" name="date">
           </div> <label>Vehicle Number:</label>
            <input type="text" name="vt"><div>
            <label>Vehicle type:
            
                   <select name="ty">
                   <option value="Car">Car</option>
                   <option value="Van">Van</option>
                   <option value="Bike">Bike</option>
                   <option value="other">Other</option>
                   </select>
                   
            </label></div>
            
            <div><label>NIC number:</label>
            <input type="text" name="nic"></div>
            
            
            <div>
            <label>Payment type::
            
                   <select name="pay">
                   <option value="Money">Money</option>
                   <option value="Card">Visa/master</option>
                   <option value="transfer">Onling transfer</option>
                   <option value="cripto">cripto</option>
                   </select>
            </label></div>
            <button type="submit" class="btn">Submit</button>
            <div id="signup">
                          Need To Check The Reservation Status ? <a href="reservationview.jsp">Click here</a>
                        </div>
        </form>
</div>
<script type="text/javascript">
    function validateNIC() {
        var nicInput = document.getElementById("nic");
        var nicValue = nicInput.value;

        // Regular expression for a simple Sri Lankan NIC format
        var nicPattern = /^[0-9]{9}[VvXx]$/;

        if (!nicPattern.test(nicValue)) {
            alert("Invalid NIC format. NIC should be 9 digits followed by 'V' or 'X'.");
            nicInput.focus(); // Put focus back on the NIC input field
            return false;
        }

        return true;
    }
</script>

</body>
</html>