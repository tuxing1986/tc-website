package com.topcoder.web.reg.validation;

import com.topcoder.web.common.validation.StringInput;
import com.topcoder.web.common.validation.ValidationResult;
import com.topcoder.web.reg.TCHibernateTestCase;
import com.topcoder.web.reg.model.Referral;

/**
 * @author dok
 * @version $Revision$ Date: 2005/01/01 00:00:00
 *          Create Date: May 30, 2006
 */
public class ReferralValidatorTestCase extends TCHibernateTestCase {
    public void testValidMemberReferral() {
        assertTrue("didn't validate a valid member referral",
                new ReferralValidator("tomek", null).validate(new StringInput(Referral.MEMBER_REFERRAL.toString())).isValid());
    }

    public void testInvalidMemberReferral() {
        ValidationResult res = new ReferralValidator("tomekasdfjakdjfaksjdfaksjf", null).validate(new StringInput(Referral.MEMBER_REFERRAL.toString()));
        assertFalse("did validate an invalid member referral", res.isValid());
    }

    public void testValidReferral() {
        assertTrue("didn't validate a valid member referral",
                new ReferralValidator(null, null).validate(new StringInput("6")).isValid());
    }

    public void testInValidReferral() {
        assertFalse("did validate an invalid member referral",
                new ReferralValidator(null, null).validate(new StringInput("-1")).isValid());
    }

    public void testLongOther() {
        assertFalse("did validate an invalid member referral",
                new ReferralValidator(null, "lkajsfdlaksjfalsdfjalsfjalskfjalsfjaljfaljflaksjflasjdflasjdflkajdflkajsdflkajdflkajsdflkajflkajsdflkajsdflkjasdf").validate(new StringInput(Referral.OTHER.toString())).isValid());
    }

    public void testOther() {
        assertTrue("didn't validate a valid other referral",
                new ReferralValidator(null, "afadfadsf").validate(new StringInput(Referral.OTHER.toString())).isValid());
    }

    public void testOther2() {
        assertFalse("validated an invalid member referral",
                new ReferralValidator(null, null).validate(new StringInput("20")).isValid());
    }

}
