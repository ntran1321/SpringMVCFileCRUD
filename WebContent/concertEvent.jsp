<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Your Concert Events</title>
</head>
<h1>Your saved concerts</h1>
<body>

	${concert.performer}
	<br> will be playing at: ${concert.venue}
	<br> on: ${concert.date}
	<br>
	<br>


	<img src="${concert.imageUrl}" alt="performer photo" />
	<br> Add this show to your concert list:
	<form action="GetConcertData.do" method="get">
		<input type="submit" name="addThisEvent" value="Add Event" />
	</form>
	<br>

	<h3>Get all of your shows:</h3>
	<form action="GetConcertData.do" method="get">
		<input type="submit" name="GetConcertList" value="showAll" />
	</form>

	<h3>Return to index</h3>
	<a href="index.jsp">Return to index</a>
	<br /> if show has been added, state.add = true, then print: Show has
	been added!
</body>