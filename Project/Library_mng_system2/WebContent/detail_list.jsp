
<%@page import="com.cdac.dto.Book_mng"%>
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
		List<Book_mng> elist = (List<Book_mng>)request.getAttribute("bookList");
		for(Book_mng book : elist){
		%>
		<tr>
		
		    <td>
				<%=book.getStudentId()%>
			</td>
			<td>
				<%=book.getBookName()%>
			</td>
			
			<td>
				<%=book.getStudentName()%>
			</td>
			
			<td>
				<%=book.getBookCategory()%>
			</td>
			<td>
				<%=book.getIssuedDate()%>
			</td>
			<td>
				<%=book.getReturnDate()%>
			</td>
			<td>
				<a href="detail_update_form.htm?studentId=<%=book.getStudentId()%>">Update</a>
			</td>
			
			
		</tr>
		<% } %>
		<tr>
			<td>
				<a href="home.jsp" >Back</a>
			</td>
			
		</tr>
	</table>

</body>
</html>