<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="cycbersoft.java10.util.Path"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Thêm mới dự án</title>
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
                                Cybersoft
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
                <h3 class="mb-4">Sửa thông tin dự án </h3>
<%--                 <form method="post" action="<c:url value="<%=Path.USER_ADD %>" />"> --%>
                <form method="post" action="#">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" name="name" value="${ project.name }" class="form-control" placeholder="name" />
                            </div>
                            <div class="form-group">
                                <label>Mô tả</label>
                                <input type="text" name="description" value="${ project.description }" class="form-control" placeholder="description" />
                            </div>
                            <div class="form-group">
                                <label>Ngày bắt đầu</label>
                                <input type="date" name="startdate" value="${ project.startDate }" class="form-control" placeholder="start-date" />
                            </div>
                        </div>
                       
                        <div class="col-md-6">
                       		 <div class="form-group">
                                <label>Ngày kết thúc</label>
                                <input type="date" name="enddate" value="${ project.endDate }" class="form-control" placeholder="end-date" />
                            </div>
                            <div class="form-group">
                                <label>Người thực hiện</label>
                                <select class="form-control" name="createUser">
                                 
                                 <c:forEach items ="${ users }" var ="item">
                               <option value="${ item.id }"
											${ project.createUser== item.id ? 'selected' : '' }>${ item.fullname }</option>
                                 
                                 </c:forEach>
                                 </select>
<!--                                 -->
<!--                                     <option value="1">Quản trị</option> -->
<!--                                     <option value="2">Quản lý </option> -->
<!--                                     <option value="3">Nhân viên</option> -->
<!--                                  -->
                            </div>
                            
                        </div>
                        <div class="col-12 mt-3">
                            <button type="submit" class="btn btn-success">Lưu lại</button>
                            <a class="btn btn-secondary" href="<c:url value="<%=Path.PROJECT %>" />">Quay lại</a>
                        </div>
                    </div>
                </form>
            </section>
        </div>
    </div>
    <script src="<%= request.getContextPath() %>/static/js/jquery.slim.min.js"></script>
    <script src="<%= request.getContextPath() %>/static/js/popper.min.js"></script>
    <script src="<%= request.getContextPath() %>/static/js/bootstrap.min.js"></script>
</body>

</html>