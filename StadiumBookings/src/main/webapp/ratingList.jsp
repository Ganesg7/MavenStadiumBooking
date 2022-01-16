<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.sql.ResultSet"%>
        <%@page import="com.stadiumbooking.daoimpl.RatingsDaoImpl" %>
     <%@page import="com.stadiumbooking.daoimpl.StadiumDaoImpl" %>
      <%@page import="com.stadiumbooking.daoimpl.UserDaoImpl"%>
     <%StadiumDaoImpl stadiumDao=new StadiumDaoImpl(); 
     RatingsDaoImpl ratingDao=new RatingsDaoImpl();
     UserDaoImpl userDao=new UserDaoImpl();
     %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="refresh" content="60">
<link rel = "icon" type = "" href = "image/Studium.png">
<title>Matchbooking.com</title>
<style>
  img{
            width: 300px;
            height: 300px;
            border: 2px solid black;
            position: relative;
            left: 350px;
        }

        .reviewContainer{
background: rgba(250, 250, 250, .9) !important;
	border: none !important;
	padding: 15px;
	border-radius: 3px;
}
.reviwerName{
	color: #023f72 !important;
	font-family: times;	
	position: relative;
	top:-15px;
	left:5px;
}
    .rating{
	border: 1px solid #023f72 !important;
	box-shadow: 2px 2px 3px rgba(0, 0, 0, .4);
	border-radius: 5px;
} 

.userProfile{
border-radius: 50%;
width: 50px;
height: 50px;
position: relative;
left:0px;
}
        </style>
</head>
<body>
<%ResultSet rs=stadiumDao.getAllStadiumList(); 
while(rs.next()){
%>
     
   <div class="rating">
   <img src="image/<%=rs.getString(3) %>" >
      
       <br>
       <b><%=rs.getString(2) %></b> 
       <br>
       <%int stadiumId=rs.getInt(1);
       //System.out.println(stadiumId);
       ResultSet rs1=ratingDao.getAllRatingsById(stadiumId);
       
       while(rs1.next()){
       int userId=rs1.getInt(2);
       
       ResultSet rs3=userDao.getUserById(userId);
       if(rs3.next()){
       %> 
       
   
       <div class="reviewContainer">
           <img src="image/<%=rs3.getString(9) %>" class="userProfile">
       <b class="reviwerName"><%=rs3.getString(2) %>  &nbsp;
       <%if(rs1.getDouble(4)==5.0){ %>
       <label>&#11088;&#11088;&#11088;&#11088;&#11088;</label></b>
       <%}
       else if(rs1.getDouble(4)==4.0){
       %>
       <label>&#11088;&#11088;&#11088;&#11088;</label></b>
       <%}  else if(rs1.getDouble(4)==3.0){%>
        <label>&#11088;&#11088;&#11088;</label></b> 
       <%} else if(rs1.getDouble(4)==2.0){ %>
       <label>&#11088;&#11088;</label></b>
       <%} else if(rs1.getDouble(4)==1.0){%>
         <label>&#11088;</label></b>
       <%} %>
       <%} %>
        &nbsp; 
      
      <br> <br>
       <label id="review"><%=rs1.getString(3) %></label>
       <br>
       </div>
       <%} %>
       <br>
    </div>

    <br>
        
    <br>
    
     <%} %>
</body>
</html>