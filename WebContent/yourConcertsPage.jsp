<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="master.css">
<link href="https://fonts.googleapis.com/css?family=Karla|PT+Sans" rel="stylesheet">
<title>Your Concert Events</title>
<link rel="stylesheet" href="master.css">
</head>

<nav>
<ul>
<li><a href="index.jsp">Home</a></li>
<li><a href="yourConcertsPage.jsp">Your shows</a></li>
<li><form action="GetConcertData.do" method="get">
		Look up artist: <input type="text" name="performer" /> <input type="submit" name="LookUp"
			value="Search" />
	</form></li>
</ul>
</nav>

<h1>Your saved concerts</h1>
<body>
	<c:if test="${sessionScope.concertList} != null">
You do not have any saved concerts!
</c:if>
	<table>
		<tr>
			<td><c:forEach var="c" items="${sessionScope.concertList}">
${c.performer}<br>
				</c:forEach></td>
			<td><c:forEach var="c" items="${sessionScope.concertList}">
${c.venue}<br>
				</c:forEach></td>
			<%-- <td>
<c:forEach var="c" items="${sessionScope.concertList}">
<img src=${c.imageUrl} alt="band photo"/><br>
</c:forEach></td> --%>
			<td><c:forEach var="c" items="${sessionScope.concertList}">
${c.date}<br>
				</c:forEach></td>
		</tr>
	</table>

	<h3>Remove a show</h3>
	<form action="removeConcert.do" method="get">
		<select name="performer">
			<c:forEach var="c" items="${sessionScope.concertList}">
				<option>${c.performer}</option>
			</c:forEach>
		</select> <input type="submit" value="submit" />
	</form>
	<br>

	<h3>Save concerts to a file:</h3>
	<form action="saveConcerts.do" method="get">
		<input type="submit" value="Save" />
	</form>
	<br>

	<h3>Return to index</h3>
	<a href="index.jsp">Return to index</a>
</body>