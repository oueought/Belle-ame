<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<title>ARTORAQ</title>

<!-- jquery  -->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript">

	var msg = '<%=request.getAttribute("msg") %>'
    var url = '<%=request.getAttribute("url") %>' 
    alert(msg);
    document.location.href = url;

</script>