select COUNT(*) AS currently_at
  from track_contest tc
     , track_contest_results tcr
	 , track t
 where tc.track_contest_id = tcr.track_contest_id
   and tc.track_contest_type_id = 1
   and tcr.track_contest_placement = 1
   and tc.track_id = t.track_id
   and t.track_type_id in (1, 2)
   and t.track_status_id != 3
   AND t.track_end_date <= CURRENT
   AND tcr.track_contest_prize >0
   AND tcr.user_id = @userId

