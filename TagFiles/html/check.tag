<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ attribute name="name" required="true"%>
<%@ attribute name="cssClass" required="false"%>
<%@ attribute name="htmlID" required="false"%>
<input type="checkbox" name="${name}" value="true" <c:choose><c:when test="${!empty htmlID}"> id="${htmlID}"</c:when><c:otherwise> id="${name}"</c:otherwise></c:choose> <c:if test="${!empty cssClass}"> class="${cssClass}"</c:if> <c:if test="${!empty param[name]}">checked="checked"</c:if>/>
