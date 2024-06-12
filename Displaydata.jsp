<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<sql:setDataSource var="dataSource"
driver="com.mysql.cj.jdbc.Driver"
url="jdbc:mysql://localhost:3306/banking"
user="root"
password="boot"
/>

<body>
<sql:query var="students" dataSource="${dataSource}">
select*from student
</sql:query>
<table border="1">
<tr>
<th>Id</th>
<th>Name</th>
<th>Email</th>
<th>Rollno</th>
<th>Department</th>
<th>Course</th>
</tr>
<c:forEach var="student" items="${students.rows}">
<tr>
<td><c:out value="student.id"/></td>
<td><c:out value="student.sname"/></td>
<td><c:out value="student.semail"/></td>
<td><c:out value="student.srollno"/></td>
<td><c:out value="student.department"/></td>
<td><c:out value="student.course"/></td>


</tr>

</c:forEach>


</table>
</body>