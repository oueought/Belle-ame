<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">

	var msg = '<%=request.getAttribute("msg") %>'
    var url = '<%=request.getAttribute("url") %>' 
    alert(msg);
    document.location.href = url;

</script>