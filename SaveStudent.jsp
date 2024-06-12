<%@page import="Mypack.InsertStudent" %>
<jsp:useBean id="student" class="Mypack.Student" scope="session"/>
<jsp:setProperty property="*" name="student"/>

<%
boolean flag= InsertStudent.SaveStudent(student);
if(flag)
	out.println("Data Insert Successfully");
%>

<a href="Student.html">Add new Student</a>
<a href="Displaydata.jsp">DataDisplay</a>