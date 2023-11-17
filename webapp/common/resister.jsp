<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>
<script>
    window.onpageshow = function(event) {
//back 이벤트 일 경우
        if (event.persisted) {
            location.reload(true);
        }

    }
</script>
