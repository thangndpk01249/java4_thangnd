<%-- 
    Document   : categorynew
    Created on : Apr 6, 2022, 11:57:09 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<div class="x_content">
    <h4>Thông tin tài khoản</h4>
    <div class="table-responsive">
        <button class="btn btn-outline-primary " id="btnCreatecategory">add new</button>
        <table class="table table-striped jambo_table bulk_action">
            <thead>
                <tr class="headings">                          

                    <th class="column-title">name </th>
                    <th class="column-title">description </th>
                    <th class="column-title">image</th>                           
                    <th class="column-title no-link last"><span class="nobr">Action</span>
                    </th>
                    <th class="bulk-actions" colspan="7">
                        <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                    </th>
                </tr>
            </thead>
            <tbody>  
                <c:forEach items="${list}" var="catz">
                    <tr class="even pointer" data-id="${catz.getId()}">                           
                        <td class=" "><strong>${catz.getName()}</strong></td>
                        <td class=" ">${catz.getDescription()}</td>
                        <td class=" ">${catz.getImage()}</td>   

                        <td class=" dropdown"><a href="#"></a>
                            <a href="#"  data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-bars" aria-hidden="true"></i></a>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="javascript:void(0);"onclick="EditCategory1(${catz.getId()}  {
                                   'name': '${catz.getName()}',
                                   'description':'${catz.getDescription()}',
                                   'image': '${catz.getImage()}'
                                   })"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Sửa</a>
                                <a class="dropdown-item" href="javascript:void(0);" onclick="DeleteCategory(${cat.getId()})"  ><i class="fa fa-trash-o" aria-hidden="true"></i>Xoá</a>
                            </div>
                        </td>

                    </tr> 
                </c:forEach>
            </tbody>
        </table>
        <!-- Modal -->
        <div class="modal fade" id="category" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">create category</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                        </button>
                    </div>

                    <div class="modal-body">
                        <form id="categoryForm12"  method="post" action="AdminCategoryControler">
                           
                              <input type="hidden" class="form-control" name="id" id="txtId"
                            <label for="defaultFormControlInput" class="form-label">Name</label>
                            <input type="text" class="form-control" name="name" id="txtName"
                                   placeholder="name" />
                            <span class="error" id="error-name"></span>
                            <label for="defaultFormControlInput" class="form-label">image</label>
                            <input type="text" name="image" id="image" class="form-control"
                                   placeholder="image" />
                            <span class="error" id="error-des"></span>
                            <label for="exampleFormControlTextarea1" class="form-label">description</label>
                            <textarea class="form-control" id="txtdescription" name="description" rows="3"></textarea>
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
