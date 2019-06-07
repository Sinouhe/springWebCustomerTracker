
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>

<head>
	<title>customer form ... placeholder</title>
	
	<link type="text/css"
		rel="stylesheet"
		href="${pageContext.request.contextPath}/ressources/css/style.css">
	
	<link type="text/css"
		rel="stylesheet"
		href="${pageContext.request.contextPath}/ressources/css/add-customer-style.css">

</head>
<body>
	
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relashionship Manager</h2>
		</div>
	</div>
	
	<div id="container">
		<h3>Save customer</h3>
		<form:form action="saveCustomer" modelAttribute="customer" method="POST">
		<form:hidden path="id" />
			<table>
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><form:input path="firstName" /></td>
					</tr>
					<tr>
						<td><label>last name:</label></td>
						<td><form:input path="lastName" /></td>
					</tr>
					<tr>
						<td><label>Email:</label></td>
						<td><form:input path="email" style=""/></td>
					</tr>
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save"/></td>
					</tr>
				</tbody>
			</table>
		</form:form>
		<div style="clear; both;">
			<p>
				<a href="${pageContext.request.contextPath}/customer/list"> Back to list</a>
			</p>
		</div>
	</div>
	
</body>
</html>