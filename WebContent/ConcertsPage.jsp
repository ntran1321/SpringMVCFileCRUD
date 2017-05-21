<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="master.css">
<link href="https://fonts.googleapis.com/css?family=Karla|PT+Sans"
	rel="stylesheet">
<title>Upcoming Concert Events</title>
<link rel="stylesheet" href="master.css">
</head>

<nav>
<ul>
	<li><a href="index.jsp">Home</a></li>
	<li><a href="yourConcertsPage.jsp">Your shows</a></li>
	<li><form action="getAllShows.do">
			<a href="ConcertsPage.jsp">All shows</a>
		</form></li>
	<li><form action="GetConcertData.do" method="get">
			Look up artist: <input type="text" name="performer" /> <input
				type="submit" name="LookUp" value="Search" />
		</form></li>
</ul>
</nav>


<body>
	<table>
		<tr>
			<th>Artist</th>
			<th>Venue</th>
			<th>Date</th>
			<th></th>
		</tr>

		<c:forEach var="c" items="${concerts}">
		<tr>
		<td>
			${c.performer}
		</td>
		<td>
			${c.venue}
		</td>
		<td>
			${c.date}
		</td>
		<td>
			<img src="${c.imageUrl}" alt="band photo"/>
		</td>
		</tr>
		</c:forEach>
	</table>

</body>
</html>