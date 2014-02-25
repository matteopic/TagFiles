<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ attribute name="name" required="true"%>
<%@ attribute name="value" required="false" %>
<%@ attribute name="htmlID" required="false"%>
<%@ attribute name="style" required="false"%>
<%@ attribute name="cssClass" required="false"%>
<%@ attribute name="maxlength" required="false"%>
<input type="text" name="${name}"
	value="<c:choose><c:when test="${!empty param[name]}">${param[name]}</c:when><c:otherwise>${value}</c:otherwise></c:choose>" 
	<c:if test="${!empty style}">style="${style}"</c:if>
	<c:if test="${!empty cssClass}">class="${cssClass}"</c:if> 	<c:if test="${!empty maxlength}">maxlength="${maxlength}"</c:if>
	<c:choose><c:when test="${!empty htmlID}"> id="${htmlID}"</c:when><c:otherwise> id="${name}"</c:otherwise></c:choose> 
/>