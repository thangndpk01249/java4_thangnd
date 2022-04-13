<%-- 
    Document   : categoryForms
    Created on : Apr 3, 2022, 5:30:34 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<form id="categoryForm" method="post" action="adminUserControler">
    <label for="defaultFormControlInput" class="form-label">Name</label>
    <input type="text" class="form-control" name="name" id="txtName"
           placeholder="name" />
    <span class="error" id="error-name"></span>
    <label for="defaultFormControlInput" class="form-label">image</label>
    <input type="text" name="image" class="form-control"
           placeholder="description" />
    <label for="exampleFormControlTextarea1" class="form-label">description</label>
    <textarea class="form-control" name="description" id="txtDescription" rows="3"></textarea>
    <button class="btn btn-primary">create</button>
</form>


<style>
    .error {
        color: red;
        display: block;
    }
</style>
