package com.topcoder.web.reg.dao.hibernate;

import com.topcoder.web.reg.model.Company;
import com.topcoder.web.reg.dao.CompanyDAO;
import org.hibernate.Session;

/**
 * @author dok
 * @version $Revision$ Date: 2005/01/01 00:00:00
 *          Create Date: May 10, 2006
 */
public class CompanyDAOHibernate extends Base implements CompanyDAO {

    /**
     * Create a CompanyDAO object using the default connection information.
     */
    public CompanyDAOHibernate() {
        super();
    }

    public CompanyDAOHibernate(Session session) {
        super(session);
    }


    public Company find(Long id) {
        return (Company) find(Company.class, id);

    }

    public void saveOrUpdate(Company u) {
        session.saveOrUpdate(u);
    }
}

