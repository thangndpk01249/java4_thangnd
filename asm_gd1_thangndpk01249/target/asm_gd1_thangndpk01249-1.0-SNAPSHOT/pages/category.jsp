<%-- 
    Document   : category
    Created on : Apr 3, 2022, 6:05:10 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<script src="../asserts/custom.js"></script>
<div class="x_content">
    <h4>Thông tin tài khoản</h4>
    <div class="table-responsive">
        <button class="btn btn-outline-primary " id="btnCreate">add new</button>
        <table class="table table-striped jambo_table bulk_action">
            <thead>
                <tr class="headings">                          

                    <th >Tài khoản </th>
                    <th >Mật khẩu </th>
                    <th >Email</th>                           
                    <th class="column-title no-link last"><span class="nobr">Action</span>
                    </th>
                    <th class="bulk-actions" colspan="7">
                        <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                    </th>
                </tr>
            </thead>
            <tbody>     
                <c:forEach items="${list}" var="cat">
                    <tr class="even pointer" data-id="${cat.getId()}">                           
                    <td class=" "><strong>${cat.getUsername()}</strong></td>
                    <td class=" ">${cat.getPassword()}</td>
                    <td class=" ">${cat.getEmail()}</td>   

                    <td class=" dropdown"><a href="#"></a>
                        <a href="#"  data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-bars" aria-hidden="true"></i></a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript:void(0);" onclick="EditCategory(${cat.getId()}, {
                                                'name': '${cat.getUsername()}',
                                                'password':'${cat.getPassword()}',
                                                'email': '${cat.getEmail()}'
                                            })"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Sửa</a>
                            <a class="dropdown-item" href="javascript:void(0);" onclick="DeleteCategory(${cat.getId()})" ><i class="fa fa-trash-o" aria-hidden="true"></i>Xoá</a>
                        </div>
                    </td>

                </tr> 
                </c:forEach>
                
            </tbody>
        </table>
        <div class="modal fade" id="catModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">create category</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                        </button>
                    </div>

                    <div class="modal-body">
                        <form id="categoryForm1"  method="post" action="adminUserControler">
                            <%--<c:import url="${pageContext.request.contextPath}/admin/forms/categoryForm.jsp"/>--%> 
                              <input type="hidden" class="form-control" name="id" id="txtId"
                            <label for="defaultFormControlInput" class="form-label">Tài khoản</label>
                            <input type="text" class="form-control" name="name" id="txtName"
                                   placeholder="tài khoản" />
                            <span class="error" id="error-name"></span>
                            <label for="defaultFormControlInput" class="form-label">mật khẩu</label>
                            <input type="text" name="password" id="password" class="form-control"
                                   placeholder="mật khẩu" />
                            <span class="error" id="error-des"></span>
                            <label for="exampleFormControlTextarea1" class="form-label">email</label>
                            <textarea class="form-control" id="txtemail" name="email" rows="3"></textarea>
                            <span class="error" id="error-mail"></span>
                            <button style="margin-top: 30px " type="submit" class="btn btn-primary">Save</button>
                        </form>

                    </div>
                    <div class="modal-footer">
                    </div>
                </div>
            </div>
        </div>
    </div>			
</div>
<style>
    .error {
        color: red;
        display: block;
    }
</style>