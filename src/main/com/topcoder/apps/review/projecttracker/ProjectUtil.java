/**
 * Copyright (C) 2005 TopCoder Inc., All Rights Reserved.
 */
package com.topcoder.apps.review.projecttracker;


import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

import com.topcoder.project.phases.Dependency;
import com.topcoder.project.phases.Phase;
import com.topcoder.project.phases.PhaseStatus;
import com.topcoder.project.phases.template.ConfigurationException;
import com.topcoder.project.phases.template.DefaultPhaseTemplate;
import com.topcoder.project.phases.template.PhaseTemplate;
import com.topcoder.util.errorhandling.BaseException;
import com.topcoder.util.idgenerator.IDGenerationException;
import com.topcoder.util.idgenerator.IDGenerator;
import com.topcoder.util.idgenerator.IDGeneratorFactory;

/**
 * The test of ProjectUtil.
 *
 * @author brain_cn
 * @version 1.0
 */
public class ProjectUtil {
    private static final int PHASE_TYPE_SUBMISSION = 2;
    private static final int PHASE_TYPE_SCREEN = 3;
    private static final int PHASE_TYPE_REVIEW = 4;
    private static final DateFormat DATE_FORMAT = new SimpleDateFormat("MM/dd/yyyy hh:mm", Locale.US);
    static void userInquiry(Connection conn, long userId, long projectId) throws SQLException {
        PreparedStatement ps = null;
        ResultSet rs = null;

        // Prepare resource
        ps = conn.prepareStatement("INSERT INTO resource " + 
        		"(resource_id, resource_role_id, project_id, create_user, create_date, modify_user, modify_date) " +
        		" VALUES (?, 1, ?, ?, CURRENT, ?, CURRENT)");

        long resourceId = ProjectUtil.nextId(ProjectUtil.RESOURCE_ID_SEQ);
        int index = 1;
        ps.setLong(index++, resourceId);
        ps.setLong(index++, projectId);
        ps.setString(index++, String.valueOf(userId));
        ps.setString(index++, String.valueOf(userId));

        int nr = ps.executeUpdate();

        if (nr != 1) {
            throw new RuntimeException("Could not create resource!");
        }

        close(rs);
        close(ps);

        // prepare rating/Reliability
        ps = conn.prepareStatement("SELECT rating from user_rating where user_id = ? and phase_id = " +
                "(select 111+project_category_id from project where project_id = ?)");
        ps.setLong(1, userId);
        ps.setLong(2, projectId);
        rs = ps.executeQuery();

        double old_rating = 0;

        if (rs.next()) {
            old_rating = rs.getLong(1);
        }

        close(rs);
        close(ps);

        ps = conn.prepareStatement("SELECT rating from user_reliability where user_id = ? and phase_id = " +
                "(select 111+project_category_id from project where project_id = ?)");
        ps.setLong(1, userId);
        ps.setLong(2, projectId);
        rs = ps.executeQuery();

        double oldReliability = 0;

        if (rs.next()) {
            oldReliability = rs.getDouble(1);
        }

        close(rs);
        close(ps);

        // add reliability_ind and old_reliability
        ps = conn.prepareStatement("INSERT INTO project_result " +
                "(project_id, user_id, rating_ind, reliability_ind, valid_submission_ind, old_rating, old_reliability) " +
                "values (?, ?, ?, ?, ?, ?, ?)");

        ps.setLong(1, projectId);
        ps.setLong(2, userId);
        ps.setLong(3, 0);
        ps.setLong(4, 0);
        ps.setLong(5, 0);

        if (old_rating == 0) {
            ps.setNull(6, Types.DOUBLE);
        } else {
            ps.setDouble(6, old_rating);
        }

        if (oldReliability == 0) {
            ps.setNull(7, Types.DOUBLE);
        } else {
            ps.setDouble(7, oldReliability);
        }

        ps.execute();
        close(ps);

        // External Reference ID
        ps = conn.prepareStatement("INSERT INTO resource_info " +
        		"(resource_id, resource_info_type_id, value, create_user, create_date, modify_user, modify_date) " +
                " VALUES (?, ?, ?, ?, CURRENT, ?, CURRENT)");
        index = 1;
        ps.setLong(index++, resourceId);
        ps.setLong(index++, 1); // External Reference ID 1
        ps.setString(index++, String.valueOf(userId));
        ps.setString(index++, String.valueOf(userId));
        ps.setString(index++, String.valueOf(userId));
        nr = ps.executeUpdate();

        if (nr != 1) {
            throw new RuntimeException("Could not create External Reference ID resourceinfo !");
        }
        
        // handle 2
        String handle = getUserHandleInfo(conn, userId);
        index = 1;
        ps.setLong(index++, resourceId);
        ps.setLong(index++, 2); // handle
        ps.setString(index++, handle);
        ps.setString(index++, String.valueOf(userId));
        ps.setString(index++, String.valueOf(userId));
        ps.executeUpdate();	

        // Rating 4, 
        if (old_rating > 0) {
            index = 1;
            ps.setLong(index++, resourceId);
            ps.setLong(index++, 4);
            ps.setString(index++, String.valueOf(old_rating));
            ps.setString(index++, String.valueOf(userId));
            ps.setString(index++, String.valueOf(userId));
            nr = ps.executeUpdate();

            if (nr != 1) {
                throw new RuntimeException("Could not create Rating resourceinfo !");
            }
        }

        // Reliability 5 
        if (oldReliability > 0) {
            index = 1;
            ps.setLong(index++, resourceId);
            ps.setLong(index++, 5);
            ps.setString(index++, String.valueOf(oldReliability * 100));
            ps.setString(index++, String.valueOf(userId));
            ps.setString(index++, String.valueOf(userId));
            nr = ps.executeUpdate();

            if (nr != 1) {
                throw new RuntimeException("Could not create Reliability resourceinfo !");
            }
        }

        // Registration Date 6
        index = 1;
        ps.setLong(index++, resourceId);
        ps.setLong(index++, 6);
        ps.setString(index++, DATE_FORMAT.format(new java.util.Date()));
        ps.setString(index++, String.valueOf(userId));
        ps.setString(index++, String.valueOf(userId));
        nr = ps.executeUpdate();

        if (nr != 1) {
            throw new RuntimeException("Could not create Registration Date resourceinfo !");
        }

        close(ps);    	
    }

    static long createProject(Connection conn, String projectVersion, long compVersId, long projectTypeId, long modUserId) throws SQLException, BaseException {
        PreparedStatement ps = null;
        ResultSet rs = null;
        ps = conn.prepareStatement("SELECT p.project_id " + 
        		"FROM project p " + 
        		"inner join project_info pi_vi " +
                "on p.project_id = pi_vi.project_id " +
                "and pi_vi.project_info_type_id = 1 and pi_vi.value = ? " + // 1 is external id
                "inner join project_info pi_vt " + 
                "on p.project_id = pi_vt.project_id " +
                "and pi_vt.project_info_type_id = 7 and pi_vt.value = ? " + // 7 is project_version
                "where p.project_status_id in (1, 7) " + // 1 is active, 7 is complete
                "	and p.project_category_id = ?");
        ps.setString(1, String.valueOf(compVersId)); // In project_info, value field is string type
        ps.setString(2, projectVersion);
        ps.setLong(3, projectTypeId);
        rs = ps.executeQuery();

        if (rs.next()) {
            throw new BaseException("Online Review: A project already exists! Terminate it before changing phase!");
        }

        close(rs);
        close(ps);

        long projectId = nextId(PROJECT_ID_SEQ);

        // Create project
        ps = conn.prepareStatement("INSERT INTO project " + 
        		"(project_id, project_status_id, project_category_id, create_user, create_date, modify_user, modify_date) " +
        		" VALUES (?, ?, ?, ?, CURRENT, ?, CURRENT)");

        long projectStatId = 1; // Active

        int index = 1;
        ps.setLong(index++, projectId);
        ps.setLong(index++, projectStatId);
        ps.setLong(index++, projectTypeId);
        ps.setString(index++, String.valueOf(modUserId));
        ps.setString(index++, String.valueOf(modUserId));

        ps.executeUpdate();
        close(ps);

        prepareProjectInfo(conn, compVersId, projectId, modUserId);

        // Prepare project_audit the modify reason is Created
        ps = conn.prepareStatement("INSERT INTO project_audit " +
                "(project_id, project_audit_id, update_reason, create_user, create_date, modify_user, modify_date) " +
                " values (?, ?, 'Created', ?, CURRENT, ?, CURRENT)");
        index = 1;

        long auditId = nextId(PROJECT_AUDIT_ID_SEQ);
        ps.setLong(index++, projectId);
        ps.setLong(index++, auditId);
        ps.setString(index++, String.valueOf(modUserId));
        ps.setString(index++, String.valueOf(modUserId));
        ps.executeUpdate();
        close(ps);

        // Create phase instances for project
        PhaseTemplate template = getPhaseTemplate();
        String templateName = (projectTypeId == 1) ? "Design" : "Development";
        com.topcoder.project.phases.Project project = template.applyTemplate(templateName);
        com.topcoder.project.phases.Phase[] phases = project.getAllPhases();
        for (int i = 0; i < phases.length; i++) {
        	phases[i].setFixedStartDate(phases[i].calcStartDate());
        	phases[i].setScheduledStartDate(phases[i].calcStartDate());
        	phases[i].setScheduledEndDate(phases[i].calcEndDate());
        	phases[i].setPhaseStatus(PhaseStatus.SCHEDULED);
        }
        Map phaseIds = new HashMap();
        Set dependencies = new HashSet();

        // insert default scorecards
        long screenTemplateId = getScorecardId(conn, projectTypeId, 1);
        long reviewTemplateId = getScorecardId(conn, projectTypeId, 2);

        for (int i = 0; i < phases.length; i++) {
            long phaseId = nextId(PROJECT_PHASE_ID_SEQ);
            createPhase(conn, projectId, phaseId, phases[i], modUserId);

            if (phases[i].getPhaseType().getId() == PHASE_TYPE_SCREEN) {
                // Create scorecard id
                // 1, 'Scorecard ID'
                createPhaseCriteria(conn, phaseId, 1, String.valueOf(screenTemplateId), modUserId);
            }

            if (phases[i].getPhaseType().getId() == PHASE_TYPE_REVIEW) {
                // Create scorecard id
                // 1, 'Scorecard ID'
                createPhaseCriteria(conn, phaseId, 1, String.valueOf(reviewTemplateId), modUserId);
            }

            if (phases[i].getPhaseType().getId() == PHASE_TYPE_SUBMISSION) {
                // Manual Screening
                // 5, 'Manual Screening'
                createPhaseCriteria(conn, phaseId, 5, "Yes", modUserId);
            }

            phaseIds.put(phases[i], String.valueOf(phaseId));
            dependencies.addAll(Arrays.asList(phases[i].getAllDependencies()));
        }

        // Prepare phase dependency
        for (Iterator iter = dependencies.iterator(); iter.hasNext();) {
            Dependency d = (Dependency) iter.next();
            createPhaseDependency(conn, phaseIds, d, modUserId);
        }

        // Prepare resource for pm
        ps = conn.prepareStatement("INSERT INTO resource " + 
        		"(resource_id, resource_role_id, project_id, create_user, create_date, modify_user, modify_date) " +
        		"VALUES (?, 13, ?, ?, CURRENT, ?, CURRENT)"); // 13 is manager

        long resourceId = nextId(RESOURCE_ID_SEQ);
        index = 1;
        ps.setLong(index++, resourceId);
        ps.setLong(index++, projectId);
        ps.setString(index++, String.valueOf(modUserId));
        ps.setString(index++, String.valueOf(modUserId));
        ps.executeUpdate();
        close(ps);

        // External Reference ID
        ps = conn.prepareStatement("INSERT INTO resource_info " + 
        		"(resource_id, resource_info_type_id, value, create_user, create_date, modify_user, modify_date) " +
        		" VALUES (?, ?, ?, ?, CURRENT, ?, CURRENT)");
        index = 1;
        ps.setLong(index++, resourceId);
        ps.setLong(index++, 1); // External Reference ID 1
        ps.setString(index++, String.valueOf(modUserId));
        ps.setString(index++, String.valueOf(modUserId));
        ps.setString(index++, String.valueOf(modUserId));
        ps.executeUpdate();
        close(ps);

        // Clean up this variable for reuse - bblais
        ps = null;
        return projectId;
    }
    
    private static final String SELECT_HANDLER = "SELECT handle FROM USER WHERE user_id = ? ";

    private static String getUserHandleInfo(Connection conn, long userID)
        throws SQLException {
        PreparedStatement pstmt = conn.prepareStatement(SELECT_HANDLER);
        pstmt.setLong(1, userID);

        ResultSet rs = pstmt.executeQuery();

        try {
            if (rs.next()) {
                return rs.getString(1);
            }

            return null;
        } finally {
            rs.close();
            pstmt.close();
        }
    }

    /**
     * Create phase with given project id, phase id and created user id.
     *
     * @param conn the jdbc connection
     * @param projectId the project id
     * @param phaseId the phase id
     * @param phase the create phase which contains start/end time and duration.
     * @param userId the created user id
     *
     * @throws SQLException if error occurs while execute jdbc statement
     */
    private static void createPhase(Connection conn, long projectId, long phaseId, Phase phase, long userId)
        throws SQLException {
        PreparedStatement ps = conn.prepareStatement("INSERT INTO project_phase " + 
        		"(project_phase_id, project_id, " +
                "phase_type_id, phase_status_id, duration, fixed_start_time, scheduled_start_time, scheduled_end_time, " +
                "actual_start_time, actual_end_time, create_user, create_date, modify_user, modify_date) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ? , ?, CURRENT, ?, CURRENT)"); // 1: Scheduled
        int index = 1;
        ps.setLong(index++, phaseId);
        ps.setLong(index++, projectId);
        ps.setLong(index++, phase.getPhaseType().getId());
        ps.setLong(index++, phase.getPhaseStatus() == null ? 1 : phase.getPhaseStatus().getId());
        ps.setLong(index++, phase.getLength());
        ps.setDate(index++, phase.getFixedStartDate() == null ? null : new Date(phase.getFixedStartDate().getTime()));
        ps.setDate(index++, phase.getScheduledStartDate() == null ? null : new Date(phase.getScheduledStartDate().getTime()));
        ps.setDate(index++, phase.getScheduledEndDate() == null ? null : new Date(phase.getScheduledEndDate().getTime()));
        ps.setDate(index++, phase.getActualStartDate() == null ? null : new Date(phase.getActualStartDate().getTime()));
        ps.setDate(index++, phase.getActualEndDate() == null ? null : new Date(phase.getActualEndDate().getTime()));
        ps.setString(index++, String.valueOf(userId));
        ps.setString(index++, String.valueOf(userId));
        ps.execute();
        close(ps);
    }

    /**
     * Create PhaseCriteria with given phaseId, parameter and created user id.
     *
     * @param conn the jdbc connection
     * @param phaseId the phase id
     * @param type DOCUMENT ME!
     * @param parameter the Criteria parameter
     * @param userId the created user id
     *
     * @throws SQLException if error occurs while execute jdbc statement
     */
    private static void createPhaseCriteria(Connection conn, long phaseId, int type, String parameter, long userId)
        throws SQLException {
        PreparedStatement ps = conn.prepareStatement("INSERT INTO phase_criteria " +
                "(project_phase_id, phase_criteria_type_id, parameter, create_user, create_date, modify_user, modify_date) " +
                "VALUES (?, ?, ?, ?, CURRENT, ?, CURRENT)"); // 1: Scheduled
        int index = 1;
        ps.setLong(index++, phaseId);
        ps.setLong(index++, type);
        ps.setString(index++, parameter);
        ps.setString(index++, String.valueOf(userId));
        ps.setString(index++, String.valueOf(userId));
        ps.execute();
        close(ps);
    }

    static final String RESOURCE_ID_SEQ = "resource_id_seq";

    static long nextId(String tableId) {
    	try {
    		IDGenerator idgen = IDGeneratorFactory.getIDGenerator(tableId);
    		return idgen.getNextID();
    	} catch (IDGenerationException e) {
			throw new RuntimeException("Failed to get id generator for " + tableId);
		}
    }

    private static void prepareProjectInfo(Connection conn, long compVersId, long projectId, long modUserId) throws SQLException {
        PreparedStatement ps = null;
        ResultSet rs = null;
        long componentId = -1;
        int version = -1;
        String versionText = "";
        long forumId = -1;
        long rootCatagoryId = -1;
        String componentName = "";
        float price = (float) 0.0;
        int phaseId = -1;
        
        // Retrieve project_info
        // component id, version
        ps = conn.prepareStatement("SELECT * FROM comp_versions where comp_vers_id = ?");
        ps.setLong(1, compVersId);
        rs = ps.executeQuery();
        if (rs.next()) {
        	componentId = rs.getLong("component_id");
        	version = rs.getInt("version");
        	phaseId=  rs.getInt("phase_id");
        	versionText = rs.getString("version_text");
        } 

        close(rs);
        close(ps);
        
        // forum id
        ps = conn.prepareStatement("SELECT * FROM comp_forum_xref where comp_vers_id = ?  and forum_type = 2");
        ps.setLong(1, compVersId);
        rs = ps.executeQuery();
        if (rs.next()) {
        	forumId = rs.getLong("forum_id");
        }            

        close(rs);
        close(ps);
        
        // root category id
        ps = conn.prepareStatement("SELECT * FROM comp_catalog where component_id = ?");
        ps.setLong(1, componentId);
        rs = ps.executeQuery();
        if (rs.next()) {
        	rootCatagoryId = rs.getLong("root_category_id");
        	componentName = rs.getString("component_name");
        }

        close(rs);
        close(ps);

    	// check if it's aol
    	if (rootCatagoryId == 5801776) {
    		ps = conn.prepareStatement("select category_id from comp_categories where component_id = ? and category_id = 22774808");
            ps.setLong(1, componentId);
            rs = ps.executeQuery();
            if (rs.next()) {
            	rootCatagoryId = 22774808;
            }
            close(rs);
            close(ps);
    	}
    	
    	// price
    	ps = conn.prepareStatement("SELECT * FROM comp_version_dates WHERE comp_vers_id = ? and phase_id = ?");
    	ps.setLong(1, compVersId);
    	ps.setInt(2, phaseId);
    	rs = ps.executeQuery();
    	
    	if (rs.next()) {
    		price = rs.getFloat("price");
    	}

        close(rs);
        close(ps);

        // Prepare version_id
        ps = conn.prepareStatement("INSERT INTO project_info " +
                "(project_id, project_info_type_id, value, create_user, create_date, modify_user, modify_date) " +
                " values (?, ?, ?, ?, CURRENT, ?, CURRENT)");
        
        createProjectInfo(ps, projectId, 1, String.valueOf(compVersId), modUserId);
        
        // component id
        createProjectInfo(ps, projectId, 2, String.valueOf(componentId), modUserId);
        
        // version id
        createProjectInfo(ps, projectId, 3, String.valueOf(version), modUserId);
        
        // forum id
        createProjectInfo(ps, projectId, 4, String.valueOf(forumId), modUserId);
        
        // rootCatagoryId
        createProjectInfo(ps, projectId, 5, String.valueOf(rootCatagoryId), modUserId);
        
        // component name
        createProjectInfo(ps, projectId, 6, componentName, modUserId);

        // Prepare project_version
        createProjectInfo(ps, projectId, 7, versionText, modUserId);

        // Prepare auto_pilot_ind
        createProjectInfo(ps, projectId, 9, "On", modUserId);

        // Status Notification
        createProjectInfo(ps, projectId, 10, "On", modUserId);
        
        // Timeline Notification
        createProjectInfo(ps, projectId, 11, "On", modUserId);

        // Public
        createProjectInfo(ps, projectId, 12, "Yes", modUserId);

        // Rated
        createProjectInfo(ps, projectId, 13, "Yes", modUserId);
        
        // Payments
        createProjectInfo(ps, projectId, 16, String.valueOf(price), modUserId);
        
        close(ps);        
    }

    /**
     * Create project info.
     * 
     * @param ps the preparedstatement
     * @param projectInfoTypeId the info type id
     * @param value the value
     * @throws SQLException if error occurs
     */
    private static void createProjectInfo(PreparedStatement ps, long projectId, long projectInfoTypeId, String value, long modUserId) throws SQLException {
        int index = 1;
        ps.setLong(index++, projectId);
        ps.setLong(index++, projectInfoTypeId);
        ps.setString(index++, value);
        ps.setString(index++, String.valueOf(modUserId));
        ps.setString(index++, String.valueOf(modUserId));
        ps.executeUpdate();
    }

    private static final String PROJECT_ID_SEQ = "project_id_seq";
    private static final String PROJECT_AUDIT_ID_SEQ = "project_audit_id_seq";
    private static final String PROJECT_PHASE_ID_SEQ = "project_phase_id_seq";

    static PhaseTemplate getPhaseTemplate() {
    	try {
			return new DefaultPhaseTemplate(DefaultPhaseTemplate.class.getName());
		} catch (ConfigurationException e) {
			throw new RuntimeException("Failed to get phase template", e);
		}
    }

    /**
     * Retrieve scorecard id with given project type and scorecard type.
     * 
     * @param conn the connection
     * @param projectTypeId the project type id
     * @param scorecardTypeId the scorecard type id
     * @return the scorecard id
     */
    private static long getScorecardId(Connection conn, long projectTypeId, int scorecardTypeId) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
	        ps = conn.prepareStatement("SELECT scorecard_id FROM default_scorecard " +
	        						   "WHERE project_category_id = ? and scorecard_type_id = ? ");
	        ps.setLong(1, projectTypeId);
	        ps.setInt(2, scorecardTypeId);
	        rs = ps.executeQuery();
	        if (rs.next()) {
	        	return rs.getInt("scorecard_id");
	        } else {
	        	throw new RuntimeException("Cannot find default scorecard id for project type: " + 
	        			projectTypeId + ", scorecard type: " + scorecardTypeId);
	        }
        } catch(SQLException e) {
        	throw new RuntimeException("default_scorecard table does not exist");
        } finally {
        	close(rs);
        	close(ps);
        }
    }

    /**
     * Create PhaseDependency with given Dependency, phaseIds and created user id.
     *
     * @param conn the jdbc connection
     * @param phaseIds that map which map phase to its phase id in persistence
     * @param d the denpendency and dependent instance
     * @param userId the created user id
     *
     * @throws SQLException if error occurs while execute jdbc statement
     */
    private static void createPhaseDependency(Connection conn, Map phaseIds, Dependency d, long userId)
        throws SQLException {
        PreparedStatement ps = conn.prepareStatement("INSERT INTO phase_dependency " +
                "(dependency_phase_id, dependent_phase_id, dependency_start, " +
                "dependent_start, lag_time, create_user, create_date, modify_user, modify_date) " +
                "VALUES (?, ?, ?, ?, ?, ?, CURRENT, ?, CURRENT)"); // 1: Scheduled

        Phase denpendency = d.getDependency();
        Phase denpendent = d.getDependent();
        String denpendencyId = (String) phaseIds.get(denpendency);
        String denpendentId = (String) phaseIds.get(denpendent);

        int index = 1;
        ps.setLong(index++, Long.parseLong(denpendencyId));
        ps.setLong(index++, Long.parseLong(denpendentId));
        ps.setDate(index++, denpendency.getScheduledStartDate() == null ? null : new Date(denpendency.getScheduledStartDate().getTime()));
        ps.setDate(index++, denpendent.getScheduledStartDate() == null ? null : new Date(denpendent.getScheduledStartDate().getTime()));
        ps.setLong(index++, d.getLagTime());
        ps.setString(index++, String.valueOf(userId));
        ps.setString(index++, String.valueOf(userId));
        ps.execute();
        close(ps);
    }

    private static void close(Object obj) {
    	if (obj instanceof ResultSet) {
    		try {
    			((ResultSet) obj).close();
    		} catch(Exception e) {    			
    		}
    	}
    	if (obj instanceof PreparedStatement) {
    		try {
    			((PreparedStatement) obj).close();
    		} catch(Exception e) {    			
    		}
    	}
    }
}
