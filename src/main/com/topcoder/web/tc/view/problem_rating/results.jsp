<%@  page language="java"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib uri="/rsc-taglib.tld" prefix="rsc" %>
<jsp:useBean id="problemRatingResults" scope="request" class="com.topcoder.shared.dataAccess.resultSet.ResultSetContainer" />
<html>
<head>
<title>TopCoder Problem Rating Results</title>
</head>
<body>
    <table>
        <rsc:iterator list="<%=problemRatingResults%>" id="result">
        <tr>
            <td>
                <rsc:item row="<%=result%>" name="question"/>
            </td>
            <td>
                <rsc:item row="<%=result%>" name="avg" format="#.##"/>%
            </td>
        </tr>
        </rsc:iterator>
    </table>
</body>
</html>
