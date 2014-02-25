<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ attribute name="name" required="true"%>
<%@ attribute name="value" required="true"%>
<%@ attribute name="cssClass" required="false"%>
<%@ attribute name="style" required="false"%>
<%@ attribute name="htmlID" required="false"%>
<%@ attribute name="onclick" required="false"%>
<input type="radio" name="${name}" value="${value}" <c:choose><c:when test="${!empty htmlID}"> id="${htmlID}"</c:when><c:otherwise> id="${name}${value}"</c:otherwise></c:choose> <c:if test="${!empty cssClass}"> class="${cssClass}"</c:if> <c:if test="${!empty param[name] && param[name] == value}">checked="checked"</c:if>
<c:if test="${!empty onclick}">onClick="${onclick}"</c:if> <c:if test="${!empty style}">style="${style}"</c:if>/>
