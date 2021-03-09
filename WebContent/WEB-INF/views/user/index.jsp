<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="cycbersoft.java10.util.Path"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Danh sách thành viên</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/bootstrap.min.css">
    <link rel="stylesheet" href='<%= request.getContextPath() %>/static/css/style.css'>
</head>

<body>

    <div class="d-flex justify-content-between">
        <!-- SIDE BAR -->
        <div id="side-bar">
            <div class="logo">ADMIN PAGE</div>
            <ul class="list-group rounded-0">
                <li class="dashboard">DASHBOARD</li>
                <li>
                    <a href="<c:url value="<%=Path.USER %>" />">
                        <i class="fa fa-user mr-2"></i> Quản lý thành viên
                    </a>
                </li>
                <li>
                    <a href="<c:url value="<%=Path.ROLE %>" />">
                        <i class="fa fa-book mr-2"></i> Quản lý quyền
                    </a>
                </li>
                 <li>
                    <a href="<c:url value="<%=Path.PROJECT %>" />">
                        <i class="fa fa-slack mr-2"></i> Quản lý dự án
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-cogs mr-2"></i> Cấu hình hệ thống
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-slack mr-2"></i> Thông tin khác
                    </a>
                </li>
            </ul>
        </div>

        <div id="admin-wrapper">
            <!-- HEADER -->
            <nav class="navbar navbar-expand-sm navbar-light bg-light w-100">
                <a class="navbar-brand" href="#"><i class="fa fa-align-justify"></i></a>
                <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse"
                    data-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false"
                    aria-label="Toggle navigation"></button>
                <div class="collapse navbar-collapse" id="collapsibleNavId">
                    <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="dropdownId"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                cycbersoft
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownId">
                                <a class="dropdown-item" href="">Thông tin cá nhân</a>
                                <a class="dropdown-item" href="#">Cài đặt</a>
                                <a class="dropdown-item" href="<c:url value="<%=Path.LOGIN %>" />">Thoát</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>

            <!-- CONTENT -->
            <section id="admin-content" class="p-3">
                <h3 class="mb-3">Danh sách thành viên</h3>
                <div class="row">
                    <div class="col-md-8">
                        <a href="<c:url value="<%=Path.USER_ADD %>" />" class="btn btn-primary">Thêm mới</a>
                    </div>
                    <div class="col-md-4">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Tìm kiếm...">
                            <div class="input-group-append">
                                <span class="input-group-text" id="basic-addon2"><i class="fa fa-search"></i></span>
                            </div>
                        </div>
                    </div>
                </div>
                <table class="table table-bordered table-hover mt-3">
                    <thead>
                        <tr>
                            <th>STT</th>
                            <th>Email</th>
                            <th>Họ Tên</th>
                            <th>Loại người dùng</th>
                            <th>#</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items ="${ listUsers }" var ="item">
                        <tr>
                            <td>${item.id}</td>
                            <td>${item.email}</td>
                            <td>${item.fullname}</td>
                            <td>${item.description}</td>
                            <td>
                                <a href="<c:url value="<%=Path.USER_EDIT %>" />?id=${item.id}" class="btn btn-sm btn-info">
                                    <i class="fa fa-pencil-square-o"></i>
                                </a>
                                <a href="<c:url value="<%=Path.USER_DELETE %>" />?id=${item.id}" class="btn btn-sm btn-danger">
                                    <i class="fa fa-trash-o"></i>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
<!--                         <tr> -->
<!--                             <td>2</td> -->
<!--                             <td>Nguyễn Thùy Linh</td> -->
<!--                             <td>thuylinh@gmail.com</td> -->
<!--                             <td>Nhân Viên</td> -->
<!--                             <td> -->
<!--                                 <a href="user-edit.html" class="btn btn-sm btn-info"> -->
<!--                                     <i class="fa fa-pencil-square-o"></i> -->
<!--                                 </a> -->
<!--                                 <a href="#" class="btn btn-sm btn-danger"> -->
<!--                                     <i class="fa fa-trash-o"></i> -->
<!--                                 </a> -->
<!--                             </td> -->
<!--                         </tr> -->
                    </tbody>
                </table>
            </section>
        </div>
    </div>
    <script src="<%= request.getContextPath() %>/static/js/jquery.slim.min.js"></script>
    <script src="<%= request.getContextPath() %>/static/js/popper.min.js"></script>
    <script src="<%= request.getContextPath() %>/static/js/bootstrap.min.js"></script>
</body>

</html>