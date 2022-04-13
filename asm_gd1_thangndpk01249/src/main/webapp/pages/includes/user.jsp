<%-- 
    Document   : user
    Created on : Apr 3, 2022, 6:06:01 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div class="x_content">
    <h4>Thông tin tài khoản</h4>
    <div class="table-responsive">
        <button class="btn btn-outline-primary " id="btnCreate">add new</button>
        <table class="table table-striped jambo_table bulk_action">
            <thead>
                <tr class="headings">                          
                    <th class="column-title">ID </th>
                    <th class="column-title">Tài khoản </th>
                    <th class="column-title">Mật khẩu </th>
                    <th class="column-title">Email</th>                           
                    <th class="column-title no-link last"><span class="nobr">Action</span>
                    </th>
                    <th class="bulk-actions" colspan="7">
                        <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                    </th>
                </tr>
            </thead>
            <tbody>                         
                <tr class="even pointer">                           
                    <td class=" ">1</td>
                    <td class=" ">admin</td>
                    <td class=" ">admin 
                    </td>
                    <td class=" ">admin@gmail.com</td>   
                    
                    <td class=" dropdown"><a href="#"></a>
                       <a href="#"  data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-bars" aria-hidden="true"></i></a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="#">Sửa</a>
                            <a class="dropdown-item" href="#">Xoá</a>
                          </div>
                    </td>
                    
                </tr> 
            </tbody>
        </table>
    </div>			
</div>
