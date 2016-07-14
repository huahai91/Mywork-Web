<%@page pageEncoding="UTF-8" %>
<%@ page language="java"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <%@include file="/WEB-INF/view/jsp/front/common/resource.jsp" %>

</head>

<body>

<%@include file="/WEB-INF/view/jsp/front/common/navigation.jsp" %>


<!-- Page Content -->
<div class="container">

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">通知列表
                <small>通知</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="../index.jsp">主页</a>
                </li>
                <li class="active">通知列表</li>
            </ol>
        </div>
    </div>
    <!-- /.row -->

    <!-- Blog Post Row -->
    <div class="row">
        <s:iterator value="%{recordList}">
        <div class="row">
            <div class="col-md-1 text-center">
                <p><i class="fa fa-camera fa-4x"></i>
                </p>
                <%
                    java.util.Date now=new java.util.Date();
                    SimpleDateFormat f=new SimpleDateFormat("yyyy年MM月dd日  hh点mm分");
                    out.println(f.format(now));
                %>
            </div>
            <div class="col-md-5">
                <a href="#">
                    <img class="img-responsive img-hover" src=${pageContext.request.contextPath}/image/<%=new java.util.Random().nextInt(19) %>.jpg height="120" width="350" alt="">
                </a>
            </div>
            <div class="col-md-6">
                <h3>
                    <a href="#">${title}</a>
                </h3>
                <p>${content}</p>
                <a class="btn btn-primary" href="#">详情 <i class="fa fa-angle-right"></i></a>
            </div>
        </div>
        <!-- /.row -->

        <hr>
        </s:iterator>
        <!-- Pager -->
        <div class="row">
            <ul class="pagination" style="margin-left: 60%;">
                <li class="paginate_button previous disabled" aria-controls="dataTables-example" tabindex="0"
                    id="dataTables-example_previous"><s:a action="notificationAction_list?pageNum=1">首页</s:a></li>
                <s:iterator begin="%{beginPageIndex}" end="%{endPageIndex}" var="num">
                    <s:if test="%{currentPage} == #num">
                        <li class="paginate_button active" aria-controls="dataTables-example" tabindex="0">
                            <s:a action="notificationAction_list?pageNum=%{num}">${num}</s:a>
                        </li>
                    </s:if>
                    <s:else>
                        <li class="paginate_button" aria-controls="dataTables-example" tabindex="0">
                            <s:a action="notificationAction_list?pageNum=%{num}">${num}</s:a>
                        </li>
                    </s:else>
                </s:iterator>
                <li class="paginate_button next" aria-controls="dataTables-example" tabindex="0"
                    id="dataTables-example_next"><s:a action="notificationAction_list?pageNum=%{endPageIndex}">尾页</s:a></li>
            </ul>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2015</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/front/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/front/js/bootstrap.min.js"></script>

</body>

</html>
