<%@ tag %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ attribute name="name" required="true"%>
<%@ attribute name="cssClass" required="false"%>
<%@ attribute name="onchange" required="false"%>
<%@ attribute name="htmlID" required="false"%>
<%@ attribute name="defaultValue" required="false"%>
<%@ variable name-given="selectedValue" scope="NESTED"%>
<c:choose>
	<c:when test="${!empty defaultValue && empty param[name]}">
		<c:set var="selectedValue" value="${defaultValue}" scope="request"/>	
	</c:when>
	<c:otherwise>
		<c:set var="selectedValue" value="${param[name]}" scope="request"/>
	</c:otherwise>
</c:choose>
<select name="${name}" <c:choose><c:when test="${!empty htmlID}"> id="${htmlID}"</c:when><c:otherwise> id="${name}"</c:otherwise></c:choose> <c:if test="${!empty cssClass}"> class="${cssClass}"</c:if> <c:if test="${!empty onchange}"> onchange="${onchange}"</c:if>>
<jsp:doBody/>
<c:remove var="selectedValue" scope="request"/>
</select>
