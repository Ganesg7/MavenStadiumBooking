<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel = "icon" type = "" href = "image/Studium.png">
    <title>Matchbooking.com</title>
     <link rel="stylesheet" href="assets/css/sideNavBar.css">
      <link rel="stylesheet" href="assets/css/stylesheet.css">
  
</head>
<body>
    <div class="sidenav">
           <a href="adminProfile">Profile</a>
        <a href="matchDetails">Match Details</a>
        <a href="stadiumDetalis.jsp">Stadium Details</a>
        <a href="sportsDetalis.jsp">Sports Details</a>
        <a href="Getallusers">All User</a>
        <a href="showMatchToAdmin">All Match Details</a>
        <a href="allBookingDetails">Booking Details</a>
        <a href="allUserWalletList">All User Wallet List</a>
        <a href="stadiumList">Stadium List</a>
        <a href="ratingList">Rating List</a>
        <a href="index.jsp">Logout</a>
    </div>
    <br>
    <div id="sports">
    <form action="sports" onsubmit="return insert()">

        <label ><strong>Sports Name:</strong></label>
        <input type="text" name="sportsName" id="sportsName" >
        <br>
        
        <label style="visibility: hidden;" id="sportsError">Enter Sports Name</label>
        <br>
        <label ><strong>Event Name:</strong></label>
        <input type="text" name="eventName" id="eventName">
        <br>
        <label style="visibility: hidden;" id="event">Enter Event Name</label>
        <br>
        <button type="submit">Submit</button>


    </form>
</div>
</body>
</html>
<script>
    function insert(){

        var sportsName=document.getElementById("sportsName");
        var eventName=document.getElementById("eventName");

        if(sportsName.value.trim() ==""){
           // console.log("working")
            document.getElementById("sportsError").style.visibility="visible";
            document.getElementById("sportsError").style.color="red";
            document.getElementById("sportsError").style.position="relative";
            document.getElementById("sportsError").style.left="100px";
            return false;
        }
        else if(eventName.value.trim()==""){
            document.getElementById("event").style.visibility="visible";
            document.getElementById("event").style.color="red";
            document.getElementById("event").style.position="relative";
            document.getElementById("event").style.left="100px";
            return false;

        }
    }
</script>