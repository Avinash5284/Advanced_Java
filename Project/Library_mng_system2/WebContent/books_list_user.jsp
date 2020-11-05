
<%@page import="com.cdac.dto.Books"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table align="center" >
		<% 
		List<Books> elist = (List<Books>)request.getAttribute("bookList");
		for(Books book : elist){
		%>
		<tr>
		
		    <td>
				<%=book.getBookId()%>
			</td>
			<td>
				<%=book.getCategory()%>
			</td>
			
			<td>
				<%=book.getBookName()%>
			</td>
			
			<td>
				<%=book.getRackNo()%>
			</td>
			<td>
				<%=book.getQuantity()%>
			</td>
			<td>
				<%=book.getUniqId()%>
			</td>
			
			
			
		</tr>
		<% } %>
		<tr>
			<td>
				<a href="user_home.jsp" >Back</a>
			</td>
			
		</tr>
	</table>

</body>
</html>