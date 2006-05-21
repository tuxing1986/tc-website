package com.topcoder.web.reg.dao;

import com.topcoder.web.reg.TCHibernateTestCase;
import com.topcoder.web.reg.model.*;

import java.util.List;
import java.util.HashSet;
import java.util.Iterator;

/**
 * @author dok
 * @version $Revision$ Date: 2005/01/01 00:00:00
 *          Create Date: May 13, 2006
 */
public class DemographicAssignmentDAOTestCase extends TCHibernateTestCase {


    public void testLoadList() {
        CoderType ct = Util.getFactory().getCoderTypeDAO().find(new Integer(1));
        RegistrationType rt = Util.getFactory().getRegistrationTypeDAO().find(new Integer(1));
        HashSet h = new HashSet();
        h.add(rt);
        List l = Util.getFactory().getDemographicAssignmentDAO().getAssignments(ct, Util.getFactory().getStateDAO().find("CO"), h);
        assertTrue("no assignments found", l!=null && !l.isEmpty());
    }


    public void testRequired() {
        CoderType ct = Util.getFactory().getCoderTypeDAO().find(new Integer(1));
        RegistrationType rt = Util.getFactory().getRegistrationTypeDAO().find(new Integer(1));
        HashSet h = new HashSet();
        h.add(rt);
        List l = Util.getFactory().getDemographicAssignmentDAO().getAssignments(ct,Util.getFactory().getStateDAO().find("CO"), h);
        boolean error = false;
        for (Iterator it = l.iterator(); it.hasNext();) {
            try {
                ((DemographicAssignment)it.next()).isRequired();
            } catch (Throwable e) {
                error = true;
            }

        }
        assertTrue("problem getting is required field", !error);
    }

    public void testDecline() {
        CoderType ct = Util.getFactory().getCoderTypeDAO().find(new Integer(1));
        RegistrationType rt = Util.getFactory().getRegistrationTypeDAO().find(new Integer(1));
        HashSet h = new HashSet();
        h.add(rt);
        List l = Util.getFactory().getDemographicAssignmentDAO().getAssignments(ct,Util.getFactory().getStateDAO().find("VT"), h);
        boolean allFound = true;
        DemographicQuestion dq;
        for (Iterator it = l.iterator(); it.hasNext()&&allFound;) {
            dq = ((DemographicAssignment)it.next()).getQuestion();
            if (dq.isMultipleSelect()||dq.isSingleSelect()) {
                boolean found = false;
                for (Iterator it1 = dq.getAnswers().iterator(); it1.hasNext()&&!found;) {
                    found = DemographicAnswer.DECLINE.equals(((DemographicAnswer)it1.next()).getText());
                }
                if (!found) {
                    allFound = false;
                    log.debug("couldn't find decline on question " + dq.getText());
                }
            }
        }
        assertTrue("didn't find all the decline to answers we were supposed to", allFound);
    }



}
