<%@ page import="pulse.Monitor" %>



<div class="fieldcontain ${hasErrors(bean: monitorInstance, field: 'cpuavguseperc', 'error')} required">
	<label for="cpuavguseperc">
		<g:message code="monitor.cpuavguseperc.label" default="Cpuavguseperc" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cpuavguseperc" value="${fieldValue(bean: monitorInstance, field: 'cpuavguseperc')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: monitorInstance, field: 'driveuseperc', 'error')} required">
	<label for="driveuseperc">
		<g:message code="monitor.driveuseperc.label" default="Driveuseperc" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="driveuseperc" value="${fieldValue(bean: monitorInstance, field: 'driveuseperc')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: monitorInstance, field: 'memuseperc', 'error')} required">
	<label for="memuseperc">
		<g:message code="monitor.memuseperc.label" default="Memuseperc" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="memuseperc" value="${fieldValue(bean: monitorInstance, field: 'memuseperc')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: monitorInstance, field: 'netrxtot', 'error')} required">
	<label for="netrxtot">
		<g:message code="monitor.netrxtot.label" default="Netrxtot" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="netrxtot" value="${fieldValue(bean: monitorInstance, field: 'netrxtot')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: monitorInstance, field: 'nettxtot', 'error')} required">
	<label for="nettxtot">
		<g:message code="monitor.nettxtot.label" default="Nettxtot" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="nettxtot" value="${fieldValue(bean: monitorInstance, field: 'nettxtot')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: monitorInstance, field: 'time', 'error')} ">
	<label for="time">
		<g:message code="monitor.time.label" default="Time" />
		
	</label>
	<g:textField name="time" value="${monitorInstance?.time}"/>
</div>

