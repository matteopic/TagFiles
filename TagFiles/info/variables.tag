<%@tag import="org.apache.commons.collections.EnumerationUtils"%>
<%@tag import="org.apache.commons.collections.IteratorUtils"%>
Attribute Names
<br/>
Context
<ul><%
for(Object name : EnumerationUtils.toList(jspContext.getAttributeNamesInScope(PageContext.PAGE_SCOPE))){
	%><li><%= name %></li><%
}
%></ul>
<br/>
Request
<ul><%
for(Object name : EnumerationUtils.toList(request.getAttributeNames())){
	%><li><%= name %></li><%
}
%></ul>

Session
<ul><%
for(Object name : EnumerationUtils.toList(session.getAttributeNames())){
	%><li><%= name %></li><%
}
%></ul>

Application
<ul><%
for(Object name : EnumerationUtils.toList(application.getAttributeNames())){
	%><li><%= name %></li><%
}
%></ul>