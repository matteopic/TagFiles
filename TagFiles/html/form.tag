<%@ 
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" 
%><%@ 
attribute name="cssClass" required="false"
%><%@ 
attribute name="htmlID" required="false"
%><form method="post" action="<%= request.getContextPath()+request.getServletPath()%>"<c:if test="${!empty cssClass}"> class="${cssClass}"</c:if><c:if test="${!empty htmlID}"> id="${htmlID}"</c:if>>
	<jsp:doBody />
</form>