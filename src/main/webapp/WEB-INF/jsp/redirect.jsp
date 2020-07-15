<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script>
	var alertMsg = '${alertMsg}'.trim();

	if ( alertMsg ) {
		alert(alertMsg);
	}

	var locationReplace = '${locationReplace}'.trim();

	if ( locationReplace ) {
		location.replace(locationReplace);
	}
</script>