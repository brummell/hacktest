
<%@ page import="pulse.Monitor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'monitor.label', default: 'Monitor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-monitor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-monitor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="cpuavguseperc" title="CPU Use (%) (Avg/Cores)" />
					
						<g:sortableColumn property="driveuseperc" title="Disk Used (%)" />
					
						<g:sortableColumn property="memuseperc" title="Mem in Use (%)" />
					
						<g:sortableColumn property="netrxtot" title="Net In (Gb)" />
					
						<g:sortableColumn property="nettxtot" title="Net Out (Gb)" />
					
						<g:sortableColumn property="time" title="${message(code: 'monitor.time.label', default: 'Time')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${monitorInstanceList}" status="i" var="monitorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${monitorInstance.id}">${fieldValue(bean: monitorInstance, field: "cpuavguseperc")}</g:link></td>
					
						<td>${fieldValue(bean: monitorInstance, field: "driveuseperc")}</td>
					
						<td>${fieldValue(bean: monitorInstance, field: "memuseperc")}</td>
					
						<td>${fieldValue(bean: monitorInstance, field: "netrxtot")}</td>
					
						<td>${fieldValue(bean: monitorInstance, field: "nettxtot")}</td>
					
						<td>${fieldValue(bean: monitorInstance, field: "time")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${monitorInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
