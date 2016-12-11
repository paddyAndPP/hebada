<%--
  Created by IntelliJ IDEA.
  User: MrLuo
  Date: 2016/12/10
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script src="${pageContext.request.contextPath}/assets/vendor/js/jquery-1.9.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/plugins/fileupload/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/assets/plugins/fileupload/jquery.iframe-transport.js"></script>
<script src="${pageContext.request.contextPath}/assets/plugins/fileupload/jquery.fileupload.js"></script>
<%--
<script src="${pageContext.request.contextPath}/assets/plugins/fileupload/jquery.fileupload-image.js"></script>
--%>

<div id="demo1">
    <input id="fileupload" type="file" name="files[]" data-url="${pageContext.request.contextPath}/image/upload" multiple>
</div>

<script>
    $(document).ready(function () {
        $('#fileupload').fileupload({
            dataType: 'json',
            type:"POST",
            done: function (e, data) {
                $.each(data.result.files, function (index, file) {
                    $('<p/>').text(file.name).appendTo(document.body);
                });
            }
        });
    });
</script>
</body>
</html>
