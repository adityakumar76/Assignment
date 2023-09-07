<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>customer Management Application</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>

 
            <br>

            <div class="row">
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                <div class="container">
                    <h3 class="text-center">List of customer</h3>
                    <hr>
                    <div class="container text-left">

                        <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
     New customer</a>
                    </div>
                    <br>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>firstname</th>
                                <th>lastname</th>
                                <th>street</th>
                                <th>address</th>
                                  <th>city</th>
                                    <th>state</th>
                                      <th>email</th>
                                        <th>phone</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!--   for (Todo todo: todos) {  -->
                            <c:forEach var="customer" items="${listcustomer}">

                                <tr>
                                    <td>
                                        <c:out value="${customer.id}" />
                                    </td>
                                    <td>
                                        <c:out value="${customer.firstname}" />
                                    </td>
                                      <td>
                                        <c:out value="${customer.lastname}" />
                                    </td>
                                      <td>
                                        <c:out value="${customer.street}" />
                                    </td>
                                      <td>
                                        <c:out value="${customer.address}" />
                                    </td>
                                      <td>
                                        <c:out value="${customer.city}" />
                                    </td>
                                     <td>
                                        <c:out value="${customer.state}" />
                                    </td>
                                    <td>
                                        <c:out value="${customer.email}" />
                                    </td>
                                    <td>
                                        <c:out value="${customer.phone}" />
                                    </td>
                                    <td><a href="edit?id=<c:out value='${customer.id}' />">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?id=<c:out value='${customer.id}' />">Delete</a></td>
                                </tr>
                            </c:forEach>
                            <!-- } -->
                        </tbody>

                    </table>
                </div>
            </div>
        </body>

        </html>