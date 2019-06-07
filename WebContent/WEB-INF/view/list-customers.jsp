<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
	<link 	type="text/css" 
			rel="styleSheet" 
			href="${pageContext.request.contextPath}/ressources/css/style.css"/>
			
	<title>List Customers</title>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer relashionship manager</h2>
		</div>
	</div>
	
	<div id="container">
		<div id="content">
		
			<input type="button" value="Add Customer"
					onClick="window.location.href='showFormForAdd'; return false;"
					class="add-button"
					/>
		
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
				<c:forEach var="tempCustomer" items="${customers}">
				
					<c:url var="updateLink" value="/customer/showFormForUpdate">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>
					
					<c:url var="deleteLink" value="/customer/delete">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>
					
					<tr>
						<th>${tempCustomer.firstName}</th>
						<th>${tempCustomer.lastName}</th>
						<th>${tempCustomer.email}</th>
						<th>
							<a href="${updateLink}">Update</a>
							| 
							<a href="${deleteLink}">Delete</a>
						</th>
					</tr>		
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>