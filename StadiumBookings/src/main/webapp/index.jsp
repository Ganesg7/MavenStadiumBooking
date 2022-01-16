<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="theme-color" content="#4285f4">
<meta http-equiv="refresh" content="60">
<meta name="theme-color" content="#1b1b1b">
<link rel = "icon" type = "" href = "image/Studium.png">




    <title>Matchbooking.com</title>
    
    <style>
        body {
            background-image: url('image/StadiumBackGround.jpg');
            background-repeat: no-repeat;
            background-size: 1370px;
            background-color: #ffffff10;
            backdrop-filter:blur(12px);
            -webkit-backdrop-filter:blur(12px);
            
        }
        ul {
            margin: 0;
            overflow: hidden;
            background-color: transparent;
            color: white;
            font-weight: bolder;
            padding: 16px;
            opacity: 0.5px;
        }

        li {
            float: right;
            color: black;
            font-size: 18px;
        }
        li:hover{
        color:white;
        cursor: pointer;
        }
      #logo {
            font-size:x-large;
            color: black;
            font-style: oblique;
            position: absolute;
            left: 130px;
            top: 35px;
        }

        #png{
            position: absolute;
            top: -5px;
        }

        #login {
            visibility: hidden;
            position: absolute;
            width: 300px;
            height: 300px;
            border: 2px solid white;
            left: 500px;
            top: 250px;
            color: white;
        }

        #login input,
        #login label,
        #login  button,
        #login  i {

            position: relative;
            top: 60px;
            left: 50px;
        }

        #login input {
            background: transparent;
            border: none;
            border-bottom: 2px solid lawngreen;
            color: white;
            font-weight: bold;
            outline: none;
        }


        #register {
            color: white;

            visibility: hidden;
            position: absolute;
    width: 300px;
            height: 340px;
            border: 2px solid white;
            top: 250px;
            left:  500px;
        }


        #register input {
            border: none;
            background: transparent;
            border-bottom: 2px solid lawngreen;
            color: white;
            font-weight: bold;
            position: relative;
            left: 60px;
            top: 20px;
            outline: none;
        }

        input::placeholder {
            color:white;
            font-size: 14px;
        }
        #register button,
        #register i{
            position: relative;
            left: 40px;
            top: 15px;
        }
        #register label{
        position:relative;
        left:60px;
        top:20px
        }

        button {
            background-color: red;
            color: white;
            width: 100px;
            height: 25px;
            border-radius: 10px;
            font-weight: bold;

        }

        button:hover {
            background-color: green;
            cursor: pointer;
        }
        #register button{
        position:relative;
        top:30px;}

        b{
            color:blue;
            font-size: large;
        }
.iconImg{

transition:box-shadow .4s, color .8s, transform .4s;
}        
.iconImg:hover{
color:red;
box-shadow: 0 20px 20px rgba(0,0,0,0.205),
inset -30px 0 20px 	#c0c0c0;
transform:translateY(-10px);
}
        #registered{
            color: green;
            position: absolute;
            left: 500px;
            top: 200px;
            font-weight: bolder;
            font-size: xx-large;
        }
      
      input:-webkit-autofill,
input:-webkit-autofill:hover, 
input:-webkit-autofill:focus, 
input:-webkit-autofill:active  {
  transition: background-color 5000s;
  -webkit-text-fill-color: #fff !important;
}
  
    </style>
</head>

<body>
   
   
    <!--Nav Bar-->
    <div id="nav">

        <ul type="none">
            
            <img id="png" src="image/Studium.png" 
            style="height: 100px; width: 100px;"
            >
            <b id="logo" class="iconImg"> MatchBooking</b>
    
            <li onclick="regsiter()">SignUp</li>
            <li>&nbsp; &nbsp;</li>
            <li>/</li>
            <li> &nbsp; &nbsp; </li>
            <li onclick="logV()">Login</li>
        </ul>
    </div>
  


    <!--Login-->

    <div id="login">
        <b>Login Form</b>
        <form action="adminHomeServes"  onsubmit="return validate()">
           
            <input type="text" id="uname" name="username" placeholder="Username" />
            <br> <label id="luser" style="color:yellow; visibility: hidden;">Enter Username</label> <br>
            <input type="password" id="pass" name="password" placeholder="Password" />
            <br> <label id="lpass" style="color: yellow; visibility: hidden;">Enter Password</label>
            <br> <br>
            <button class="btn btn-primary" type="submit">Submit</button>

            <br> <br><i onclick="RegD()">Don't Have An Account...??</i>
        </form>
    </div>
    <!-- Error Message -->
  
    <%
    String error=(String)session.getAttribute("error");
    if (error!=null) {
    %>
     <h2  id="Emesg" onclick="Error()" style="position:absolute; left:500px; top:150px;color:red;visibility:visible"> <%=session.getAttribute("error") %></h2>
   <%} %>
    <!--Regster-->
    <div id="register">
        <b>Register Form</b>
        <form action="loginserv" method="get" onsubmit="return  reg()">
            <input type="text" id="name" name="name" placeholder="Enter Your Name"> <br>
            <label id="lname" style="visibility: hidden;">Enter Your Name</label>
            <br>
            <input type="text" id="runame" name="uname" placeholder="Enter Your Username"> <br>
            <label for="username" id="luname" style="visibility: hidden;">Enter Your Username</label>
            <br>
            <input type="password" name="pass" id="rpass"    placeholder="Enter Your Password"> <br>
            <label id="repass" style="visibility: hidden;">Enter Password</label>
            <br>
            <input type="email" id="mail" name="mail" placeholder="Enter Your E-mail"> <br>
            <label id="lmail" style="visibility: hidden;">Enter Your E-Mail</label>
            <br>
            <input type="text" name="phone" id="phone" placeholder="Enter Your Mobile Number"> <br>

            <label id="mobile" style="visibility: hidden;">Enter Mobile Number</label>
            <br>
            <button class="btn btn-primary" type="submit">Sign Up</button> &nbsp; &nbsp; <button class="btn btn-info" type="reset">Reset</button>
            <br> <br> <i onclick="RegV()">Already Have An Account..??</i>

        </form>

    </div>


</body>

</html>
<script>
    function logV() {

        document.getElementById("login").style.visibility = "visible";
        document.getElementById("register").style.visibility = "hidden";
        document.getElementById("lname").style.visibility = "hidden";
        document.getElementById("luname").style.visibility = "hidden";
        document.getElementById("repass").style.visibility = "hidden"; 
        document.getElementById("lmail").style.visibility = "hidden";
        document.getElementById("mobile").style.visibility = "hidden";
        document.getElementById("registered").style.visibility="hidden";
        document.getElementById("Emesg").style.visibility="hidden";
        
        
    }

    function regsiter() {
        document.getElementById("login").style.visibility = "hidden";
        document.getElementById("register").style.visibility = "visible";
        document.getElementById("luser").style.visibility = "hidden";
        document.getElementById("lpass").style.visibility = "hidden";
        document.getElementById("registered").style.visibility="hidden";
        document.getElementById("Emesg").style.visibility="hidden";
    }

    function RegD() {


        document.getElementById("register").style.visibility = "visible";
        document.getElementById("login").style.visibility = "hidden";
        document.getElementById("luser").style.visibility = "hidden";
        document.getElementById("lpass").style.visibility = "hidden";
        document.getElementById("registered").style.visibility="hidden";
        document.getElementById("Emesg").style.visibility="hidden";
    }

    function RegV() {

        document.getElementById("login").style.visibility = "visible";
        document.getElementById("register").style.visibility = "hidden";
        document.getElementById("lname").style.visibility = "hidden";
        document.getElementById("luname").style.visibility = "hidden";
        document.getElementById("repass").style.visibility = "hidden"; 
        document.getElementById("lmail").style.visibility = "hidden";
        document.getElementById("mobile").style.visibility = "hidden";
        document.getElementById("registered").style.visibility="hidden";
        document.getElementById("Emesg").style.visibility="hidden";
    }
    
    function Error(){
    	 document.getElementById("Emesg").style.visibility="hidden";
    	 document.getElementById("login").style.visibility = "visible";
    }

    function validate() {
        var username = document.getElementById("uname");
        var password = document.getElementById("pass");

        if (username.value.trim() == "") {

            document.getElementById("luser").style.visibility = "visible";
            username.style.borderBottom = "solid 3px black";
            return false;

        }
        else if (password.value.trim() == "") {

            password.style.borderBottom = "solid 3px black";
            document.getElementById("lpass").style.visibility = "visible";
            return false;
        }
        else if (password.value.trim().length < 5) {

            document.getElementById("lpass").style.visibility = "visible";
            document.getElementById("lpass").innerHTML = "Password Too Short";
            return false;
        }
        else {
            return true;
        }
    }



    function reg() {
        var name = document.getElementById("name");
        var username = document.getElementById("runame");
        var password = document.getElementById("rpass");
        var email = document.getElementById("mail");
        var mobileNumber = document.getElementById("phone");
        
        var passExpression = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,12}$/;
        var emailExpression=/[A-Za-z0-9]+[@][a-zA-Z]+[.][A-Za-z]{2,3}/;
        var mobileExpression = /[6-9][0-9]{9}$/;

        if (name.value.trim() == "") {
            document.getElementById("lname").style.visibility = "visible";
            document.getElementById("lname").style.color = "yellow";
            name.style.borderBottom = "2px solid black";
            return false;
        }
        
        else if(name.value.trim().length<5){
            document.getElementById("lname").style.visibility = "visible";
            document.getElementById("lname").style.color = "yellow";
            document.getElementById("lname").innerHTML="Name Too Short";
            username.style.borderBottom = "2px solid black";
            return false;
        }
        
        else if (username.value.trim() == "") {
            document.getElementById("luname").style.visibility = "visible";
            document.getElementById("luname").style.color = "yellow";
            username.style.borderBottom = "2px solid black";
            return false;
        }
        else if(username.value.trim().length<5){
            document.getElementById("luname").style.visibility = "visible";
            document.getElementById("luname").style.color = "yellow";
            document.getElementById("luname").innerHTML="Username Too Short";
            username.style.borderBottom = "2px solid black";
            return false;
        }
        else if (password.value.trim() == "") {
            document.getElementById("repass").style.visibility = "visible";
            document.getElementById("repass").style.color = "yellow";
            password.style.borderBottom = "2px solid black";
            return false;
        }
        else if (password.value.trim().length < 5) {

            document.getElementById("repass").style.visibility = "visible";
            document.getElementById("repass").style.color = "yellow";
            document.getElementById("repass").innerHTML = "Password Too Short";
            return false;
        }
        
        else if (passExpression .test(password.value) == false) {
			document.getElementById("repass").style.visibility = "visible";
			document.getElementById("repass").style.color = "yellow";
			document.getElementById("repass").innerHTML = "Invalid Password Format";

			return false;
		}
        else if (email.value.trim() == "") {
            document.getElementById("lmail").style.visibility = "visible";
            document.getElementById("lmail").style.color = "yellow";
            email.style.borderBottom = "2px solid black";
            return false;
        }

        else if(emailExpression.test(email.value) == false){
            document.getElementById("lmail").style.visibility = "visible";
            document.getElementById("lmail").style.color = "yellow";
            document.getElementById("lmail").innerHTML="Invalid Email Format";
            email.style.borderBottom = "2px solid black";
            return false;
        }
        
        else if (mobileNumber.value.trim() == "") {
            document.getElementById("mobile").style.visibility = "visible";
            document.getElementById("mobile").style.color = "yellow";
            mobileNumber.style.borderBottom = "2px solid black";
            return false;
        }
        else if (mobileExpression.test(mobileNumber.value) == false) {
            document.getElementById("mobile").innerHTML = "Invalid Number";
            document.getElementById("mobile").style.visibility = "visible";
            document.getElementById("mobile").style.color = "yellow";
            return false;
        }
        
        else if (mobileExpression.test(mobileNumber.value) && emailExpression.test(email.value)
        		&& passExpression .test(password.value)) {
            return true;
        }
        
        
        

    }



</script>