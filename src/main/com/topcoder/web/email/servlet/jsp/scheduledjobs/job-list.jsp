<jsp:useBean id="JobList" scope="session" class="java.util.ArrayList"/>


<% // alternate colors every row...
	int row = 0;
	String[] colors = { "#EEEEEE", "#FFFFFF" };
%>

<table border=1 cellpadding=2 cellspacing=0>
	<tr>
	<th align="left" class="bodyText">
	Sender
	</th>
	<th align="left" class="bodyText">
	Subject
	</th>
	<th align="left" class="bodyText">
	Start time
	</th>
	<th align="left" class="bodyText">
	Status
	</th>
	<th align="left" class="bodyText">
	Edit
	</th>
	<th align="left" class="bodyText">
	Log
	</th>
	<th class="bodyText">
	Task
	</th>
	</tr>
<email:iterator id="jobID" collection="<%=JobList%>">
	<tr bgcolor="<%=colors[(row++)%colors.length]%>">
	<email:scheduledJobSummary id="summary" jobId="<%=String.valueOf(jobID)%>">
	<td class="bodyText">
		<%=summary.getFromPersonal()%> (<%=summary.getFromAddress()%>)
	</td>
	<td class="bodyText">
		<%=summary.getSubject()%>
	</td>
	<td class="bodyText">
		<%=summary.getStartDate()%>
	</td>
	<td class="bodyText">
		<%=summary.getStatus()%>
	</td>
	<td class="bodyText">
<% int jobTypeId = Integer.parseInt(summary.getJobTypeId());
if (jobTypeId == EmailConstants.JOB_TYPE_PREDETAIL) { %>

	<a href="javascript:taskSubmit('<%=EmailConstants.SCHEDULEDJOB_TASK%>', '<%=EmailConstants.SCHEDULEDJOB_EDIT%>', '<%=jobID%>');"
		onMouseOver="window.status='Edit job'; return true;"
		onMouseOut="window.status=''; return true;">
	[edit]
	</a>

<% } else { %>

	<a href="javascript:taskSubmit('<%=EmailConstants.SCHEDULEDJOB_TASK%>', '<%=EmailConstants.SCHEDULEDJOB_VIEW%>', '<%=jobID%>');"
		onMouseOver="window.status='View job'; return true;"
		onMouseOut="window.status=''; return true;">
	[view]
	</a>

<% } %>

	</td>
	<td class="bodyText">
	<a href="javascript:taskSubmit('<%=EmailConstants.SCHEDULEDJOB_TASK%>', '<%=EmailConstants.SCHEDULEDJOB_SHOW_LOG%>', '<%=jobID%>');"
		onMouseOver="window.status='Display log'; return true;"
		onMouseOut="window.status=''; return true;">
	[log]
	</a>
	</td>
	<td class="bodyText">
<% int statusId = Integer.parseInt(summary.getStatusId());
if (statusId == EmailConstants.JOB_STATUS_CANCELLED) { %>

	<a href="javascript:taskSubmit('<%=EmailConstants.SCHEDULEDJOB_TASK%>', '<%=EmailConstants.SCHEDULEDJOB_RESUME_JOB%>', '<%=jobID%>', '<%=thisPage%>');"
		onMouseOver="window.status='Resume job'; return true;"
		onMouseOut="window.status=''; return true;">
	[resume]
	</a>

<% }

else if (statusId == EmailConstants.JOB_STATUS_ACTIVE ||
	statusId == EmailConstants.JOB_STATUS_CREATING ||
	statusId == EmailConstants.JOB_STATUS_READY) { %>

	<a href="javascript:taskSubmit('<%=EmailConstants.SCHEDULEDJOB_TASK%>', '<%=EmailConstants.SCHEDULEDJOB_CANCEL_JOB%>', '<%=jobID%>', '<%=thisPage%>');"
		onMouseOver="window.status='Cancel job'; return true;"
		onMouseOut="window.status=''; return true;">
	[cancel]
	</a>

<% } %>

	</td>

	</email:scheduledJobSummary>
	</tr>
</email:iterator>
</table>
