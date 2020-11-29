<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>

<link href="template/admin/plugins/fontawesome-free/css/all.min.css" rel="stylesheet">
<link href="template/admin/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet">
<link href="template/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css" rel="stylesheet">
<link href="template/admin/plugins/jqvmap/jqvmap.min.css" rel="stylesheet">
<link href="template/admin/dist/css/adminlte.min.css" rel="stylesheet">
<link href="template/admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css" rel="stylesheet">
<link href="template/admin/plugins/daterangepicker/daterangepicker.css" rel="stylesheet">
<link href="template/admin/plugins/summernote/summernote-bs4.css" rel="stylesheet">
<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">

  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
 
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body>
<%@ include file="/common/admin/header.jsp" %>
<%@ include file="/common/admin/menu.jsp" %>
<div class="content-wrapper">
<decorator:body/>
</div>
<%@ include file="/common/admin/footer.jsp" %>

<script type="text/javascript" src="<c:url value='/template/admin/plugins/jquery/jquery.min.js' />"></script>
<script type="text/javascript" src="<c:url value='/template/admin/plugins/jquery-ui/jquery-ui.min.js' />"></script>
<script type="text/javascript" src="<c:url value='/template/admin/plugins/chart.js/Chart.min.js' />"></script>
<script type="text/javascript" src="<c:url value='/template/admin/plugins/sparklines/sparkline.js' />"></script>
<script type="text/javascript" src="<c:url value='/template/admin/plugins/jqvmap/jquery.vmap.min.js' />"></script>
<script type="text/javascript" src="<c:url value='/template/admin/plugins/jqvmap/maps/jquery.vmap.usa.js' />"></script>
<script type="text/javascript" src="<c:url value='/template/admin/plugins/jquery-knob/jquery.knob.min.js' />"></script>
<script type="text/javascript" src="<c:url value='/template/admin/plugins/moment/moment.min.js' />"></script>
<script type="text/javascript" src="<c:url value='/template/admin/plugins/daterangepicker/daterangepicker.js' />"></script>
<script type="text/javascript" src="<c:url value='/template/admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js' />"></script>
<script type="text/javascript" src="<c:url value='/template/admin/plugins/summernote/summernote-bs4.min.js' />"></script>
<script type="text/javascript" src="<c:url value='/template/admin/dist/js/adminlte.js' />"></script>
<script type="text/javascript" src="<c:url value='/template/admin/dist/js/pages/dashboard.js' />"></script>
<script type="text/javascript" src="<c:url value='/template/admin/dist/js/demo.js' />"></script>
<script type="text/javascript" src="<c:url value='/template/admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js' />"></script>


<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>

</body>
</html>