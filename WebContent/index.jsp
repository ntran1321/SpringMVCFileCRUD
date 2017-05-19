<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Your Concert Events</title>
</head>
<h2>Keep track of upcoming concerts</h2>
<body>

	<form action="GetConcertData.do" method="get">
		<h3>Look up an artist:</h3>
		<br> <input type="text" name="performer" /> <input type="submit"
			value="Look up" />
	</form>


	<h3>Add your own concert:</h3>

	<form action="GetConcertData.do" method="get">
		Artist: <input type="text" name="performer" /><br> Venue: <input
			type="text" name="venue" /><br> Date: <input type="text"
			name="date" /><br> <input type="submit" value="Add Event" />
	</form>

	<h3>Get all of your shows:</h3>
	<form action="GetConcertData.do" method="get">
		<input type="submit" value="showAll" />
	</form>
</body>
</html>