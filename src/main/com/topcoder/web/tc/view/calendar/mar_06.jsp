<%@  page language="java"  %>
<%@ taglib uri="tc.tld" prefix="tc" %>
<%@ taglib uri="tc-webtags.tld" prefix="tc-webtag" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>TopCoder Events Calendar</title>
<jsp:include page="/script.jsp"/>
<jsp:include page="/style.jsp">
<jsp:param name="key" value="tc_stats"/>
</jsp:include>

<STYLE TYPE="text/css">
        #calendarTCO06
        {
        color: #FFF;
        font-size: 11px;
        font-weight: normal;
        text-align: left;
        vertical-align: top;
        background-color: #0F4377;
        background-image: url(/i/bg_calcell_tco06_gradient.gif);
        background-repeat: repeat-x;
        }
        #calendarTCO06Date
        {
        color: #FFFFFF;
        font-weight: bold;
        }
        A.calendarTCO06Link:link
        {
        color: #DDDDFF;
        text-decoration: underline;
        }
        A.calendarTCO06Link:visited
        {
        color: #DDDDFF;
        text-decoration: underline;
        }
        A.calendarTCO06Link:hover
        {
        color: #FF0000;
        text-decoration: none;
        }

</STYLE>

</head>

<body>


<jsp:include page="../top.jsp" >
    <jsp:param name="level1" value=""/>
</jsp:include>

<table width="100%" border="0" cellpadding="0" cellspacing="0">
   <tr valign="top">
<!-- Left Column Begins-->
        <td width="180">
<jsp:include page="../includes/global_left.jsp">
<jsp:param name="node" value="competition_calendar"/>
</jsp:include>
        </td>
<!-- Left Column Ends -->

<!-- Center Column Begins -->
<td class="statTableSpacer" width="100%" valign="top">
<div class="bodyText">
<jsp:include page="../page_title.jsp" >
<jsp:param name="image" value="calendar"/>
<jsp:param name="title" value="March 2006"/>
</jsp:include>

<jsp:include page="dropdown.jsp" >
<jsp:param name="currMonth" value="mar_06"/>
</jsp:include>

<table width="100%" cellspacing="1" cellpadding="3" id="calendarFrame">
    <tr> 
        <td id="calendarDays" width="14%">Sun</td>
        <td id="calendarDays" width="14%">Mon</td>
        <td id="calendarDays" width="14%">Tues</td>
        <td id="calendarDays" width="14%">Wed</td>
        <td id="calendarDays" width="14%">Thurs</td>
        <td id="calendarDays" width="14%">Fri</td>
        <td id="calendarDays" width="14%">Sat</td>
    </tr>
  
    <tr> 
        <td id="calendarBlank">
            &#160;<br />
            &#160;<br />
            &#160;<br />
            &#160;<br />
            &#160;<br />
            &#160;<br />
            &#160;</td>
        <td id="calendarBlank">&#160;</td>
        <td id="calendarBlank">&#160;</td>
        <td id="calendarTCO06">
            <span id="calendarTCO06Date">1</span><br/>
            <strong>2006 TopCoder Open Algorithm Competition</strong><br/>
            Qualification Round END: 12:00 PM ET (noon)
            &#160;<br />
            <img src="/i/clear.gif" width="50" height="1" border="0"/><br/>
            <A class="calendarTCO06Link" href="/tc?module=Static&d1=tournaments&d2=tco06&d3=alg_schedule">Details</A>
            </td>
        <td id="calendar">2</td>
        <td id="calendar">3</td>
        <td id="calendarTCO06">
            <span id="calendarTCO06Date">4</span><br/>
            <strong>2006 TopCoder Open Algorithm Competition</strong><br/>
            Online Round #1<br />
            Registration: 9:00 - 11:55 AM ET<br />
            Compete: 12:00 PM ET (noon)
            &#160;<br />
            <img src="/i/clear.gif" width="50" height="1" border="0"/><br/>
            <A class="calendarTCO06Link" href="/tc?module=Static&d1=tournaments&d2=tco06&d3=alg_schedule">Details</A>
            </td>
    </tr>
    
    <tr> 
        <td id="calendar">5</td>
        <td id="calendarSRM">
            <span id="calendarSRMDate">6</span><br />
            <strong>Match 292</strong><br />
            Register: 6:00&#160;PM<br />
            Compete: 9:00&#160;PM<br />
            Sponsored by: <br><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=nsa">NSA</A><br />
            <IMG src="/i/clear.gif" width="50" height="5" border="0" /><br />
            <A href="/tc?module=MatchDetails&rd=9813">Details</A><br/><br/></td>
        <td id="calendar">7</td>
        <td id="calendarTCO06">
            <span id="calendarTCO06Date">8</span><br/>
            <strong>2006 TopCoder Open Algorithm Competition</strong><br/>
            Online Round #2<br />
            Registration: 6:30 - 9:25 PM ET<br />
            Compete: 9:30 PM ET
            &#160;<br />
            &#160;<br />
            <img src="/i/clear.gif" width="50" height="1" border="0"/><br/>
            <A class="calendarTCO06Link" href="/tc?module=Static&d1=tournaments&d2=tco06&d3=alg_schedule">Details</A>
            </td>
        <td id="calendar">9</td>
        <td id="calendar">10</td>
        <td id="calendar">11</td>
    </tr>
    
    <tr> 
        <td id="calendar">12</td>
        <td id="calendar">13</td>
        <td id="calendar">14</td>
        <td id="calendarTCO06">
            <span id="calendarTCO06Date">15</span><br/>            
            <strong>2006 TopCoder Open Algorithm Competition</strong><br/>
            Online Round #3<br />
            Registration: 6:30 - 9:25 PM ET<br />
            Compete: 9:30 PM ET
            &#160;<br />
            <A class="calendarTCO06Link" href="/tc?module=Static&d1=tournaments&d2=tco06&d3=alg_schedule">Details</A>
            </td>
        <td id="calendarTCO06">
            <span id="calendarTCO06Date">16</span><br/>
            <strong>2006 TopCoder Open Component Competition</strong><br/>
            Online Championship Round #1 Projects Posted: 9:00 AM ET
            &#160;<br />
            <img src="/i/clear.gif" width="50" height="1" border="0"/><br/>
            <A class="calendarTCO06Link" href="/tc?module=Static&d1=tournaments&d2=tco06&d3=comp_schedule">Details</A>
            </td>
        <td id="calendarSRM">
            <span id="calendarSRMDate">17</span><br />
            <strong>Match 293</strong><br />
            Register: 8:00&#160;AM<br />
            Compete: 11:00&#160;AM<br />
            Sponsored by: <br><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=amd">AMD</A><br />
            <IMG src="/i/clear.gif" width="50" height="5" border="0" /><br />
            <A href="/tc?module=MatchDetails&rd=9814">Details</A><br/><br/></td>
        <td id="calendar">18</td>
    </tr>
    
    <tr> 
        <td id="calendar" rowspan="2">19</td>
        <td id="calendar" rowspan="2">20</td>
        <td id="calendar" rowspan="2">21</td>
        <td id="calendarTCO06">
            <span id="calendarTCO06Date">22</span><br/>
            <strong>2006 TopCoder Open Algorithm Competition</strong><br/>
            Online Round #4<br />
            Registration: 6:30 - 9:25 PM ET<br />
            Compete: 9:30 PM ET
            &#160;<br />
            <A class="calendarTCO06Link" href="/tc?module=Static&d1=tournaments&d2=tco06&d3=alg_schedule">Details</A>
            </td>            
        <td id="calendarTCO06" rowspan="2">
            <span id="calendarTCO06Date">23</span><br/>
            <strong>2006 TopCoder Open Component Competition</strong><br/>
            Online Championship Round #1 Submission Deadline: 9:00 AM ET
            &#160;<br />
            <img src="/i/clear.gif" width="50" height="1" border="0"/><br/>
            <A class="calendarTCO06Link" href="/tc?module=Static&d1=tournaments&d2=tco06&d3=comp_schedule">Details</A>
            </td>
        <td id="calendar" rowspan="2">24</td>
        <td id="calendarSRM" rowspan="2">
            <span id="calendarSRMDate">25</span><br />
            <strong>Match 294</strong><br />
            Register: 9:00&#160;AM<br />
            Compete: 12:00&#160;PM<br />
            <IMG src="/i/clear.gif" width="50" height="5" border="0" /><br />
            <A href="/tc?module=MatchDetails&rd=9815">Details</A><br/><br/></td>
    </tr>
    <tr> 
            <td id="calendarIntel">
            <strong>Intel Multi-threading Competition 3</strong><br />
            Registration Opens: 12:00 Noon<br />
            <IMG src="/i/clear.gif" width="50" height="5" border="0" /><br />
            <A id="calendarIntelLink" href="/longcontest/?module=Static&d1=intel_rules">Details</A><br/><br/></td>
    </tr>
   
    <tr> 
        <td id="calendar">26</td>
        <td id="calendar">27</td>
        <td id="calendar">28</td>
        <td id="calendarSRM">
            <span id="calendarSRMDate">29</span><br />
            <strong>Match 295</strong><br />
            Register: 6:00&#160;PM<br />
            Compete: 9:00&#160;PM<br />
            <IMG src="/i/clear.gif" width="50" height="5" border="0" /><br />
            <A href="/tc?module=MatchDetails&rd=9816">Details</A><br/><br/></td>
        <td id="calendarTCO06">
            <span id="calendarTCO06Date">30</span><br/>
            <strong>2006 TopCoder Open Component Competition</strong><br/>
            Online Championship Round #2 Projects Posted: 9:00 AM ET
            &#160;<br />
            <img src="/i/clear.gif" width="50" height="1" border="0"/><br/>
            <A class="calendarTCO06Link" href="/tc?module=Static&d1=tournaments&d2=tco06&d3=comp_schedule">Details</A>
            </td>
        <td id="calendar">31</td>
        <td id="calendarBlank">
            &#160;<br />
            &#160;<br />
            &#160;<br />
            &#160;<br />
            &#160;<br />
            &#160;</td>
    </tr>
        
</table>

</div>
</td>
<!-- Center Column Ends -->

<!-- Gutter -->
         <td width="10"><img src="/i/clear.gif" width="10" height="1" border="0"></td>
<!-- Gutter Ends -->
    </tr>
</table>

<jsp:include page="../foot.jsp" />

</body>

</html>
