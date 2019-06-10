<%--
  Created by IntelliJ IDEA.
  User: mcg
  Date: 26.05.2019
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Student Registration Form</title>
</head>
<body>

    <form:form action="processForm" modelAttribute="student">

        First Name : <form:input path="firstName" />

        <br><br>

        Last Name : <form:input path="lastName" />

        <br><br>

        Country:
        <form:select path="country">

            <form:options items="${countries}"/>

        </form:select>

        <br><br>

        Favorite Language:
        Java <form:radiobutton path="favoriteLanguage" value="Java"/>
        C# <form:radiobutton path="favoriteLanguage" value="C#"/>
        PHP <form:radiobutton path="favoriteLanguage" value="PHP"/>
        Ruby <form:radiobutton path="favoriteLanguage" value="Ruby"/>

        <br><br>

        Linux <form:checkbox path="operatingSystems" value="Linux"/>
        Mac OS <form:checkbox path="operatingSystems" value="Mac OS"/>
        MS Windows <form:checkbox path="operatingSystems" value="MS Windows"/>

        <br><br>

        <input type="submit" value="Submit"/>

    </form:form>

</body>
</html>
