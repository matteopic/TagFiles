<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ attribute name="name" required="true"%>
<%@ attribute name="value" required="false"%>
<input type="hidden" name="${name}" value="<c:choose><c:when test="${!empty param[name]}">${param[name]}</c:when><c:otherwise>${value}</c:otherwise></c:choose>"/>