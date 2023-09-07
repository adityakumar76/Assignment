<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>Customer Management Application</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>

           <br>
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">
                        <c:if test="${customer != null}">
                            <form action="update" method="post">
                        </c:if>
                        <c:if test="${customer == null}">
                            <form action="insert" method="post">
                        </c:if>

                        <caption>
                            <h2>
                                <c:if test="${customer != null}">
                                    Edit customer
                                </c:if>
                                <c:if test="${customer == null}">
                                    Add New customer
                                </c:if>
                            </h2>
                        </caption>

                        <c:if test="${customer != null}">
                            <input type="hidden" name="id" value="<c:out value='${customer.id}' />" />
                        </c:if>

                        <fieldset class="form-group">
                            <label>First name</label> <input type="text" value="<c:out value='${customer.firstname}' />" class="form-control" name="firstname" required="required">
                        </fieldset>
                        
                          <fieldset class="form-group">
                            <label>Last name</label> <input type="text" value="<c:out value='${customer.lastname}' />" class="form-control" name="lastname" required="required">
                        </fieldset>
                        
                          <fieldset class="form-group">
                            <label>Street</label> <input type="text" value="<c:out value='${customer.street}' />" class="form-control" name="street" required="required">
                        </fieldset>
                        
                          <fieldset class="form-group">
                            <label>Address</label> <input type="text" value="<c:out value='${customer.address}' />" class="form-control" name="address" required="required">
                        </fieldset>
                        
                          <fieldset class="form-group">
                            <label>City</label> <input type="text" value="<c:out value='${customer.city}' />" class="form-control" name="city" required="required">
                        </fieldset>
                        
                          <fieldset class="form-group">
                            <label>State</label> <input type="text" value="<c:out value='${customer.state}' />" class="form-control" name="state" required="required">
                        </fieldset>
                        
                          <fieldset class="form-group">
                            <label> Email</label> <input type="text" value="<c:out value='${customer.email}' />" class="form-control" name="email" required="required">
                        </fieldset>
                        
                          <fieldset class="form-group">
                            <label>Phone</label> <input type="text" value="<c:out value='${customer.phone}' />" class="form-control" name="phone" required="required">
                        </fieldset>

                        

                        <button type="submit" class="btn btn-success">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
            <br>
        </body>

     </html>