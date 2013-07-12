
<%@ page import="pulse.Monitor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'monitor.label', default: 'Monitor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-monitor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-monitor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list monitor">
			
				<g:if test="${monitorInstance?.cpuavguseperc}">
				<li class="fieldcontain">
					<span id="cpuavguseperc-label" class="property-label"><g:message code="monitor.cpuavguseperc.label" default="Cpuavguseperc" /></span>
					
						<span class="property-value" aria-labelledby="cpuavguseperc-label"><g:fieldValue bean="${monitorInstance}" field="cpuavguseperc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monitorInstance?.driveuseperc}">
				<li class="fieldcontain">
					<span id="driveuseperc-label" class="property-label"><g:message code="monitor.driveuseperc.label" default="Driveuseperc" /></span>
					
						<span class="property-value" aria-labelledby="driveuseperc-label"><g:fieldValue bean="${monitorInstance}" field="driveuseperc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monitorInstance?.memuseperc}">
				<li class="fieldcontain">
					<span id="memuseperc-label" class="property-label"><g:message code="monitor.memuseperc.label" default="Memuseperc" /></span>
					
						<span class="property-value" aria-labelledby="memuseperc-label"><g:fieldValue bean="${monitorInstance}" field="memuseperc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monitorInstance?.netrxtot}">
				<li class="fieldcontain">
					<span id="netrxtot-label" class="property-label"><g:message code="monitor.netrxtot.label" default="Netrxtot" /></span>
					
						<span class="property-value" aria-labelledby="netrxtot-label"><g:fieldValue bean="${monitorInstance}" field="netrxtot"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monitorInstance?.nettxtot}">
				<li class="fieldcontain">
					<span id="nettxtot-label" class="property-label"><g:message code="monitor.nettxtot.label" default="Nettxtot" /></span>
					
						<span class="property-value" aria-labelledby="nettxtot-label"><g:fieldValue bean="${monitorInstance}" field="nettxtot"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monitorInstance?.time}">
				<li class="fieldcontain">
					<span id="time-label" class="property-label"><g:message code="monitor.time.label" default="Time" /></span>
					
						<span class="property-value" aria-labelledby="time-label"><g:fieldValue bean="${monitorInstance}" field="time"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${monitorInstance?.id}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
