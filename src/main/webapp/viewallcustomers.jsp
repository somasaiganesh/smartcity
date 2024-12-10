<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<%-- <%@ taglib uri="jakarta.tags.core" prefix="c"%>
 --%>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">

    <style>
       
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
                        color: black; /* Set text color to black */
            
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 15px;
            text-align: left;
        }

        th {
            background-color: #333;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

    <%@ include file="adminnavbar.jsp" %>
 <header>
        <h1>Customer Details</h1>
    </header>
    <div class="container">
      
        <table>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>UserName</th>
                <th>Email</th>
                <th>Gender</th>
                <th>DOB</th>
                <th>Address</th>
            </tr>

            <c:forEach items="${customerdata}" var="c">
                <tr>
                    <td><c:out value="${c.id}" /></td>
                    <td><c:out value="${c.name}" /></td>
                    <td><c:out value="${c.username}" /></td>
                    <td><c:out value="${c.email}" /></td>
                    <td><c:out value="${c.gender}" /></td>
                    <td><c:out value="${c.dob}" /></td>
                    <td><c:out value="${c.address}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
