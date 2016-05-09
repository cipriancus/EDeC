<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ro.oho.rest.model.User"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Form</title>
</head>
<body>

	<jsp:useBean id="user" scope="request" class="ro.oho.rest.model.User"></jsp:useBean>

	<form action="/onlinehobby/RegisterController" method="post">
		<center>
			<table border="1" width="15%" cellpadding="5">
				<thead>
					<tr>
						<th colspan="2">Register Form</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>First Name :</td>
						<td><input type="text" name="first_name"
							value="<jsp:getProperty name="user" property="nume"/>"></td>
					</tr>
					<tr>
						<td>Last Name :</td>
						<td><input type="text" name="last_name"
							value="<jsp:getProperty name="user" property="prenume"/>"></td>
					</tr>
					<tr>
						<td>Username :</td>
						<td><input type="text" name="username"
							value="<jsp:getProperty name="user" property="username"/>"></td>
					</tr>
					<tr>
						<td>Password :</td>
						<td><input type="password" name="password"
							value="<jsp:getProperty name="user" property="password"/>"></td>
					</tr>
					<tr>
						<td>Email :</td>
						<td><input type="email" name="email"
							value="<jsp:getProperty name="user" property="email"/>"></td>
					</tr>
					<tr>
						<td>Date of birth :</td>
						<td><input type="date" name="data_nasterii"
							value="<jsp:getProperty name="user" property="dataNasterii"/>"></td>
					</tr>
					<tr>
						<td><center>
								<input type="reset" value="Reset" />
							</center></td>
						<td><center>
								<input type="submit" value="Register">
							</center></td>
					</tr>
				</tbody>
			</table>
		</center>
	</form>
</body>
</html>
