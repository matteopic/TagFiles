<%@ tag body-content="scriptless"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ attribute name="name" required="true"%>
<c:if test="${!empty errors[name]}">
	<jsp:doBody var="body_content"/>
	<c:choose>
		<c:when test="${!empty body_content}">
			${body_content}
		</c:when>
		<c:otherwise>
			<span class="errorMessage">${errors[name]}</span>
		</c:otherwise>
	</c:choose>
</c:if>