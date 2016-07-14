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

    <!-- Bootstrap Core CSS -->
    <%@include file="/WEB-INF/view/jsp/front/common/resource.jsp" %>

</head>

<body>
<!-- Page Content -->
<div class="container">

    <%@include file="/WEB-INF/view/jsp/front/common/navigation.jsp" %>
    <!-- Page Heading/Breadcrumbs -->
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">版块列表
                <small>论坛</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="../index.jsp">主页</a>
                </li>
                <li class="active">论坛</li>
            </ol>
        </div>
    </div>
    <!-- /.row -->

    <!-- Service Panels -->
    <!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
    <div class="row">
        <div class="col-lg-12">
            <h2 class="page-header">论坛列表</h2>
        </div>
        <s:iterator value="#forums">
            <div class="col-md-3 col-sm-6">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <span class="fa-stack fa-5x">
                              <i class="fa fa-circle fa-stack-2x text-primary"></i>
                              <i class="fa fa-tree fa-stack-1x fa-inverse"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                        <h4>${name}</h4>

                        <p>${description}</p>
                        <s:a action="forumAction_show?id=%{id}" cssClass="btn btn-primary">进入</s:a>
                    </div>
                </div>
            </div>
        </s:iterator>

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
