<%@ tag %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ attribute name="value" required="true"%>
<%@ attribute name="label" required="false"%>
<option value="${fn:escapeXml(value)}"<c:if test="${selectedValue == value}"> selected="selected"</c:if>><c:choose><c:when test="${!empty label}">${label}</c:when><c:otherwise>${fn:escapeXml(value)}</c:otherwise></c:choose></option>

