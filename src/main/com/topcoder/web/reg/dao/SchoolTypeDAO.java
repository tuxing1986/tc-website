package com.topcoder.web.reg.dao;

import com.topcoder.web.reg.model.SchoolType;

import java.util.List;

/**
 * @author dok
 * @version $Revision$ Date: 2005/01/01 00:00:00
 *          Create Date: May 15, 2006
 */
public interface SchoolTypeDAO {
    List getSchoolTypes();
    SchoolType find(Integer id);

}
