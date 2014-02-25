<%@ tag %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ attribute name="collection" required="true" type="java.lang.Object"%>
<c:forEach items="${collection}" var="value"><option value="${fn:escapeXml(value)}"<c:if test="${selectedValue == value}"> selected="selected"</c:if>>${fn:escapeXml(value)}</option></c:forEach>