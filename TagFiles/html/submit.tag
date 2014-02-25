<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ attribute name="name" required="false"%>
<%@ attribute name="value" required="true" %>
<%@ attribute name="htmlID" required="false"%>
<%@ attribute name="style" required="false"%>
<%@ attribute name="cssClass" required="false"%>
<input type="submit" value="${value}" 
	<c:if test="${!empty name}">name="${name}"</c:if>
	<c:if test="${!empty style}">style="${style}"</c:if>
	<c:if test="${!empty cssClass}">class="${cssClass}"</c:if>
	<c:choose><c:when test="${!empty htmlID}"> id="${htmlID}"</c:when><c:when test="${!empty name}"> id="${name}"</c:when><c:otherwise></c:otherwise></c:choose> 
/>
