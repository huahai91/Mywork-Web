<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Modern Business - Start Bootstrap Template</title>

    <%@include file="/WEB-INF/view/jsp/front/common/resource.jsp" %>
</head>

<body>
<%@include file="/WEB-INF/view/jsp/front/common/navigation.jsp" %>

<!-- Page Content -->
<div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">论坛
                <small>帖子列表</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="../index.jsp">主页</a>
                </li>
                <li class="active">帖子</li>
            </ol>
        </div>
    </div>
    <!-- /.row -->

    <!-- Content Row -->
    <div class="row">
        <!-- Sidebar Column -->
        <div class="col-md-12">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>帖子名称</th>
                        <th>作者</th>
                        <th>发表时间</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%-- Loop body --%>
                    <s:iterator value="%{recordList}">
                        <tr>
                            <td><s:a action="topicAction_show?id=%{id}">${title}</s:a></td>
                            <td>${author.username}</td>
                            <td>${postTime}</td>
                        </tr>
                    </s:iterator>
                    </tbody>
                </table>
                <a href="${pageContext.request.contextPath}/topicAction_saveView?forumId=${forum.id}" class="btn btn-primary">发表新帖</a>
            </div>
        </div>
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
