package com.topcoder.web.reg.dao;

import com.topcoder.web.reg.model.FileType;

import java.util.List;

/**
 * @author dok
 * @version $Revision$ Date: 2005/01/01 00:00:00
 *          Create Date: May 16, 2006
 */
public interface FileTypeDAO {
    List getFileTypes();
    FileType find(Integer id);
    FileType find(String mimeType);
}
