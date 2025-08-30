function SequenceObjectHelper_Run()

	local index = 0;

	SEQPLAYER_SEC_1							= index; index = index + 1;
	SEQPLAYER_SEC_2							= index; index = index + 1;
	SEQPLAYER_SEC_3							= index; index = index + 1;
	SEQPLAYER_SEC_4							= index; index = index + 1;
	SEQPLAYER_SEC_5							= index; index = index + 1;
	SEQPLAYER_SEC_6							= index; index = index + 1;
	SEQPLAYER_SEC_7							= index; index = index + 1;
	SEQPLAYER_SEC_8							= index; index = index + 1;
	SEQPLAYER_SEC_9							= index; index = index + 1;
	SEQPLAYER_SEC_10						= index; index = index + 1;
	SEQPLAYER_SEC_20						= index; index = index + 1;
	SEQPLAYER_SEC_30						= index; index = index + 1;
	SEQPLAYER_MIN_1							= index; index = index + 1;
	SEQPLAYER_MIN_2							= index; index = index + 1;
	SEQPLAYER_MIN_3							= index; index = index + 1;
	SEQPLAYER_MIN_5							= index; index = index + 1;

	SEQPLAYER_ROUND							= index; index = index + 1;
	SEQPLAYER_SL_ROUND						= index; index = index + 1;
	SEQPLAYER_ROUND_NOTICE					= index; index = index + 1;
	SEQPLAYER_RESETROUND_NOTICE				= index; index = index + 1;
	SEQPLAYER_SL_RESETROUND_NOTICE			= index; index = index + 1;
	SEQPLAYER_TIMEOVER						= index; index = index + 1;

	SEQPLAYER_SET_WIN_DEATHMATCH			= index; index = index + 1;
	SEQPLAYER_SET_LOSE_DEATHMATCH			= index; index = index + 1;
	SEQPLAYER_SET_WIN_TOUCHDOWN				= index; index = index + 1;
	SEQPLAYER_SET_LOSE_TOUCHDOWN			= index; index = index + 1;
	SEQPLAYER_SET_WIN_SURVIVAL				= index; index = index + 1;
	SEQPLAYER_SET_LOSE_SURVIVAL				= index; index = index + 1;
	SEQPLAYER_SET_WIN_MISSION				= index; index = index + 1;
	SEQPLAYER_SET_LOSE_MISSION				= index; index = index + 1;
	SEQPLAYER_SET_WIN_ARCADE				= index; index = index + 1;
	SEQPLAYER_SET_LOSE_ARCADE				= index; index = index + 1;
	SEQPLAYER_SET_WIN_SLAUGHTER				= index; index = index + 1;
	SEQPLAYER_SET_LOSE_SLAUGHTER			= index; index = index + 1;

	SEQPLAYER_FOOTBALL_BALL_RESET			= index; index = index + 1;
	SEQPLAYER_FOOTBALL_GETBALL_ME			= index; index = index + 1;
	SEQPLAYER_FOOTBALL_GETBALL_ALLY			= index; index = index + 1;
	SEQPLAYER_FOOTBALL_GETBALL_ENEMY		= index; index = index + 1;
	SEQPLAYER_FOOTBALL_LOSTBALL_ALLY		= index; index = index + 1;
	SEQPLAYER_FOOTBALL_LOSTBALL_ENEMY		= index; index = index + 1;

	SEQPLAYER_SCORE_ALLY					= index; index = index + 1;
	SEQPLAYER_SCORE_ENEMY					= index; index = index + 1;
	SEQPLAYER_SCORE_DRAW					= index; index = index + 1;
	SEQPLAYER_LEAD_ALLY						= index; index = index + 1;
	SEQPLAYER_LEAD_ENEMY					= index; index = index + 1;

	SEQPLAYER_KILL_ENEMY					= index; index = index + 1;
	SEQPLAYER_MISSOIN_BLAST_OBJECT			= index; index = index + 1;

	SEQPLAYER_KILL_COMBO1					= index; index = index + 1;
	SEQPLAYER_KILL_COMBO2					= index; index = index + 1;
	SEQPLAYER_KILL_COMBO3					= index; index = index + 1;
	SEQPLAYER_KILL_COMBO4					= index; index = index + 1;
	SEQPLAYER_KILL_COMBO5					= index; index = index + 1;
	SEQPLAYER_KILL_COMBO6					= index; index = index + 1;
	SEQPLAYER_KILL_COMBO7					= index; index = index + 1;
	SEQPLAYER_KILL_COMBO8					= index; index = index + 1;

	SEQPLAYER_SLAUGHTERER_WIN				= index; index = index + 1;
	SEQPLAYER_SLAUGHTERER_DEFEAT			= index; index = index + 1;
	SEQPLAYER_INNOCENT_PEOPLE_WIN			= index; index = index + 1;
	SEQPLAYER_INNOCENT_PEOPLE_DEFEAT		= index; index = index + 1;

	SEQPLAYER_INNOCENT_SLAUGHTER_1			= index; index = index + 1;
	SEQPLAYER_INNOCENT_SLAUGHTER_2			= index; index = index + 1;

	SEQPLAYER_YOU_ARE_THE_KINGPLAYER		= index; index = index + 1;
	SEQPLAYER_YOU_KILLED_THE_PLAYER			= index; index = index + 1;
	SEQPLAYER_YOU_KILLED_THE_KINGPLAYER		= index; index = index + 1;

	SEQPLAYER_YOU_KILLED_THE_CAPTAIN_PLYAER	= index; index = index + 1;
	SEQPLAYER_YOU_DOMINATION_ROUND_WIN		= index; index = index + 1;
	SEQPLAYER_YOU_DOMINATION_ROUND_LOSE		= index; index = index + 1;

	SEQPLAYER_EVENT_PRESENT_GET				= index; index = index + 1;

	SEQPLAYER_EVENT_CAPTURE_FLAG			= index; index = index + 1;

	SEQPLAYER_WARFARE_AI_DAMAGED_NOTIFY		= index; index = index + 1;
	SEQPLAYER_WARFARE_AIKILL_ALLY			= index; index = index + 1;
	SEQPLAYER_WARFARE_AIKILL_ENEMY			= index; index = index + 1;
	SEQPLAYER_WARFARE_AI_INCREASE_HP		= index; index = index + 1;
	
	SEQPLAYER_ARENA_PREPARE_ROUND			= index; index = index + 1;
	SEQPLAYER_ARENA_ROUND_READY				= index; index = index + 1;
	SEQPLAYER_ARENA_ROUND_START				= index; index = index + 1;
	SEQPLAYER_ARENA_ROUND_WIN				= index; index = index + 1;
	SEQPLAYER_ARENA_ROUND_LOSE				= index; index = index + 1;
	SEQPLAYER_ARENA_ROUND_DRAW				= index; index = index + 1;
	SEQPLAYER_ARENA_STOPPED_WIN				= index; index = index + 1;
	SEQPLAYER_ARENA_FULL_CHARGE				= index; index = index + 1;
	SEQPLAYER_ARENA_LEADER_SHOWDOWN			= index; index = index + 1;
	SEQPLAYER_ARENA_ALPHA_SPATTACK_ALLY		= index; index = index + 1;
	SEQPLAYER_ARENA_ALPHA_SPHEAL_ALLY		= index; index = index + 1;
	SEQPLAYER_ARENA_ALPHA_SPATTACK_ENEMY	= index; index = index + 1;
	SEQPLAYER_ARENA_ALPHA_SPHEAL_ENEMY		= index; index = index + 1;
	SEQPLAYER_ARENA_BETA_SPATTACK_ALLY		= index; index = index + 1;
	SEQPLAYER_ARENA_BETA_SPHEAL_ALLY		= index; index = index + 1;
	SEQPLAYER_ARENA_BETA_SPATTACK_ENEMY		= index; index = index + 1;
	SEQPLAYER_ARENA_BETA_SPHEAL_ENEMY		= index; index = index + 1;
	SEQPLAYER_ARENA_SUPPORT_HELP			= index; index = index + 1;	

	SEQPLAYER_TOTAL							= index; index = index + 1;
	
	-- 옵션	
	OPTION_NULL							= 0;
	OPTION_GET_RANDOM					= 1;		-- 랜덤하게 얻어옴
	OPTION_MATCH_INDEX					= 2;		-- 시퀀스와 사운드파일 인덱스 일치

	-- 유니크키
	UNIQUEKEY_NOT_USE					= 0;		-- 유니크키 사용안함

	local suquenceObjectCurr;

	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SEC_1
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SEC_1					);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_count_1.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/1.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SEC_2
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SEC_2					);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_count_2.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/2.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SEC_3
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SEC_3					);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_count_3.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/3.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SEC_4
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SEC_4					);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_count_4.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/4.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SEC_5
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SEC_5					);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_count_5.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/5.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SEC_6
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SEC_6					);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_count_6.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/6.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SEC_7
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SEC_7					);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_count_7.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/7.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SEC_8
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SEC_8					);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_count_8.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/8.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SEC_9
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SEC_9					);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_count_9.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/9.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SEC_10
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SEC_10					);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_count_10.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/10.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SEC_20
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SEC_20					);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SEC_30
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SEC_30					);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_30seconds_left.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/_rc_30second.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_MIN_1
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_MIN_1					);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_1minute_left.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/_rc_1minute.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_MIN_2
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_MIN_2					);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_2minutes_left.seq" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_MIN_3
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_MIN_3					);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_3minutes_left.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/_rc_3minute.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_MIN_5
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_MIN_5					);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_5minute_left.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/_rc_5minute.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_ROUND
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_ROUND					);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_ready.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/ready1.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/ready2.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_ROUND_NOTICE
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_ROUND_NOTICE				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_new_round_in.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/new_round_in.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/new_round_in1.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_RESETROUND_NOTICE
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_RESETROUND_NOTICE		);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_next_round_in.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/next_round_in.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/next_round_in1.ogg" );
	-------------------------------------------------------------------------------------------------------------	

	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SL_RESETROUND_NOTICE
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SL_RESETROUND_NOTICE		);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_next_round_in.seq" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_TIMEOVER
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_TIMEOVER					);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_time_over.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/inter_timeover.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SET_WIN_DEATHMATCH
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SET_WIN_DEATHMATCH		);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_set_win_d.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_have_won_the_match.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_have_won_the_match1.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SET_LOSE_DEATHMATCH
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SET_LOSE_DEATHMATCH		);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_set_lose_d.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_lost_the_match.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_lost_the_match1.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SET_WIN_TOUCHDOWN
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SET_WIN_TOUCHDOWN		);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_set_win.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_have_won_the_match.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_have_won_the_match1.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SET_LOSE_TOUCHDOWN
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SET_LOSE_TOUCHDOWN		);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_set_lose.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_lost_the_match.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_lost_the_match1.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SET_WIN_SURVIVAL
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SET_WIN_SURVIVAL		);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_have_won_the_match.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_have_won_the_match1.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SET_LOSE_SURVIVAL
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SET_LOSE_SURVIVAL		);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_lost_the_match.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_lost_the_match1.ogg" );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SET_WIN_MISSION
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SET_WIN_MISSION		);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_set_win_d.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_have_won_the_match.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_have_won_the_match1.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SET_LOSE_MISSION
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SET_LOSE_MISSION		);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_set_lose_d.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_lost_the_match.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_lost_the_match1.ogg" );
	-------------------------------------------------------------------------------------------------------------	

	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SET_WIN_ARCADE
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SET_WIN_ARCADE		);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_arcade_clear.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_have_won_the_match.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_have_won_the_match1.ogg" );
	-------------------------------------------------------------------------------------------------------------	

	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SET_LOSE_ARCADE
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SET_LOSE_ARCADE		);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_arcade_fail.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_lost_the_match.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_lost_the_match1.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SET_WIN_SLAUGHTER
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SET_WIN_SLAUGHTER		);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_match_over.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_have_won_the_match.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_have_won_the_match1.ogg" );
	-------------------------------------------------------------------------------------------------------------	

	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SET_LOSE_SLAUGHTER
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SET_LOSE_SLAUGHTER		);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_set_lose.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_lost_the_match.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_lost_the_match1.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_FOOTBALL_BALL_RESET
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_FOOTBALL_BALL_RESET		);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 1 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_rule_ball_reset.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/_rc_ball_reset.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_FOOTBALL_GETBALL_ME
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_FOOTBALL_GETBALL_ME		);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 1 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_rule_you_are_attacking1.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_are_attacking.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_are_attacking1.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_are_attacking2.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_are_attacking3.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_are_attacking4.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_are_attacking5.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_are_attacking6.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_are_attacking7.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_are_attacking8.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_FOOTBALL_GETBALL_ALLY
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_FOOTBALL_GETBALL_ALLY	);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 1 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_rule_myteam_get_ball.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_are_attacking.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_are_attacking1.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_are_attacking2.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_are_attacking3.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_are_attacking4.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_are_attacking5.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_are_attacking6.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_are_attacking7.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_FOOTBALL_GETBALL_ENEMY
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_FOOTBALL_GETBALL_ENEMY	);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 1 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_rule_rivalteam_get_ball.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_are_defending.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_are_defending1.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/you_are_defending2.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_FOOTBALL_LOSTBALL_ALLY
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_FOOTBALL_LOSTBALL_ALLY	);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 1 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_rule_myteam_fumbled.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/blue_fumbled.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/blue_fumbled1.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/blue_fumbled2.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/blue_fumbled3.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/blue_fumbled4.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_FOOTBALL_LOSTBALL_ENEMY
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_FOOTBALL_LOSTBALL_ENEMY	);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 1 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_rule_rivalteam_fumbled.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/red_fumbled.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/red_fumbled1.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SCORE_ALLY
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SCORE_ALLY				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 1 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_your_team_scores.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/blue_team_scores.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/blue_team_scores1.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/blue_team_scores2.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/blue_team_scores3.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/blue_team_scores4.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SCORE_ENEMY
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SCORE_ENEMY				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 1 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_rival_team_scores.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/red_team_scores.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/red_team_scores1.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/red_team_scores2.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SCORE_DRAW
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SCORE_DRAW				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 1 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_score_draw.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/score_draw.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_LEAD_ALLY
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_LEAD_ALLY				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 1 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_your_takes_lead.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/blue_team_take_the_lead.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/blue_team_take_the_lead1.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_LEAD_ENEMY
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_LEAD_ENEMY				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 1 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_rival_takes_lead.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/red_team_take_the_lead.ogg" );
	-------------------------------------------------------------------------------------------------------------	
		
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_KILL_ENEMY
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_KILL_ENEMY				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/kill1.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/kill2.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/kill3.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/kill4.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/kill5.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/kill6.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/kill7.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/kill8.ogg" );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
  -- SEQPLAYER_MISSOIN_BLAST_OBJECT
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_MISSOIN_BLAST_OBJECT				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/kill1.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/kill2.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/kill3.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/kill4.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/kill5.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/kill6.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/kill7.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/kill8.ogg" );
	-------------------------------------------------------------------------------------------------------------


	-- SEQPLAYER_KILL_COMBO1
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_KILL_COMBO1				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 2 );
	-- suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/kill_combo1.seq" );
	-- suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/kill_combo1.ogg" );
	-------------------------------------------------------------------------------------------------------------	

	-- SEQPLAYER_KILL_COMBO2
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_KILL_COMBO2				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 2 );
	-- suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/kill_combo2.seq" );
	-- suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/kill_combo2.ogg" );
	-------------------------------------------------------------------------------------------------------------	

	-- SEQPLAYER_KILL_COMBO3
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_KILL_COMBO3				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 2 );
	-- suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/kill_combo3.seq" );
	-- suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/kill_combo3.ogg" );
	-------------------------------------------------------------------------------------------------------------	

	-- SEQPLAYER_KILL_COMBO4
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_KILL_COMBO4				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 2 );
	-- suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/kill_combo4.seq" );
	-- suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/kill_combo4.ogg" );
	-------------------------------------------------------------------------------------------------------------	

	-- SEQPLAYER_KILL_COMBO5
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_KILL_COMBO5				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 2 );
	-- suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/kill_combo5.seq" );
	-- suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/kill_combo5.ogg" );
	-------------------------------------------------------------------------------------------------------------	

	-- SEQPLAYER_KILL_COMBO6
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_KILL_COMBO6				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 2 );
	-- suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/kill_combo6.seq" );
	-- suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/kill_combo6.ogg" );
	-------------------------------------------------------------------------------------------------------------	

	-- SEQPLAYER_KILL_COMBO7
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_KILL_COMBO7				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 2 );
	-- suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/kill_combo7.seq" );
	-- suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/kill_combo7.ogg" );
	-------------------------------------------------------------------------------------------------------------	

	-- SEQPLAYER_KILL_COMBO8
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_KILL_COMBO8				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 2 );
	-- suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/kill_combo8.seq" );
	-- suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/kill_combo8.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SLAUGHTERER_WIN
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SLAUGHTERER_WIN				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 2 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_bs_win.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/10_winlose.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_SLAUGHTERER_DEFEAT
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_SLAUGHTERER_DEFEAT				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 2 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_bs_defeat.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/10_winlose.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_INNOCENT_PEOPLE_WIN
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_INNOCENT_PEOPLE_WIN				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 2 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_bs_win.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/10_winlose.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_INNOCENT_PEOPLE_DEFEAT
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_INNOCENT_PEOPLE_DEFEAT				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 2 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_bs_defeat.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/10_winlose.ogg" );
	-------------------------------------------------------------------------------------------------------------	

	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_INNOCENT_SLAUGHTER_1
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_INNOCENT_SLAUGHTER_1				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 2 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_bs_chaser_1.seq" );
	--suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/red_team_scores.ogg" );
	--suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/red_team_scores1.ogg" );
	--suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/red_team_scores2.ogg" );
	-------------------------------------------------------------------------------------------------------------	

	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_INNOCENT_SLAUGHTER_2
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_INNOCENT_SLAUGHTER_2				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 2 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_bs_chaser_2.seq" );
	--suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/red_team_scores.ogg" );
	--suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/red_team_scores1.ogg" );
	--suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/red_team_scores2.ogg" );
	-------------------------------------------------------------------------------------------------------------	


	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_YOU_ARE_THE_KINGPLAYER
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_YOU_ARE_THE_KINGPLAYER				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 1 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/br_you_king.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/be_the_king_01.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/be_the_king_02.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_YOU_KILLED_THE_PLAYER
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_YOU_KILLED_THE_PLAYER				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 1 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/br_killed_king.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/what_a_shame_01.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/what_a_shame_02.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/what_a_shame_03.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_YOU_KILLED_THE_KINGPLAYER
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_YOU_KILLED_THE_KINGPLAYER				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 1 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/br_killed_king.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/yeah_01.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/yeah_02.ogg" );
	-------------------------------------------------------------------------------------------------------------	

	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_YOU_KILLED_THE_CAPTAIN_PLYAER
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_YOU_KILLED_THE_CAPTAIN_PLYAER				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 1 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/captain_kill.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/cpt_kill_01.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/cpt_kill_02.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_YOU_DOMINATION_ROUND_WIN
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_YOU_DOMINATION_ROUND_WIN				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 1 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/captain_win.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/round_win_01.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/round_win_02.ogg" );
	-------------------------------------------------------------------------------------------------------------	

	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_YOU_DOMINATION_ROUND_LOSE
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_YOU_DOMINATION_ROUND_LOSE				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 1 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/captain_rose.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/round_lose_01.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/round_lose_02.ogg" );
	-------------------------------------------------------------------------------------------------------------	

	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_EVENT_PRESENT_GET
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_EVENT_PRESENT_GET				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 1 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/x_mas_event.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/item_get.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/item_get.ogg" );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_EVENT_CAPTURE_FLAG
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr	= SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_EVENT_CAPTURE_FLAG				);
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 1 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/seize_ok.seq" );
	-------------------------------------------------------------------------------------------------------------	

	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_WARFARE_AI_DAMAGED_NOTIFY
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr = SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_WARFARE_AI_DAMAGED_NOTIFY );
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 1 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/under_attack.seq" );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_WARFARE_AIKILL_ALLY
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr = SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_WARFARE_AIKILL_ALLY );
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 1 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_win.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/cpt_kill_01.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/cpt_kill_02.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/yeah_01.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/yeah_02.ogg" );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_WARFARE_AIKILL_ENEMY
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr = SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_WARFARE_AIKILL_ENEMY );
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 1 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/inter_lose.seq" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/round_lose_01.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/round_lose_02.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/what_a_shame_01.ogg" );
	suquenceObjectCurr:AddSoundFileName( "Resources/Sound/Interface/what_a_shame_02.ogg" );
	-------------------------------------------------------------------------------------------------------------		

	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_WARFARE_AI_INCREASE_HP
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr = SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_WARFARE_AI_INCREASE_HP );
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 1 );
	suquenceObjectCurr:AddSeqFileName( "Resources/uieffect/hp_up.seq" );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_ARENA_PREPARE_ROUND
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr = SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_ARENA_PREPARE_ROUND );
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 4 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/fade_out.seq" );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_ARENA_ROUND_READY
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr = SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_ARENA_ROUND_READY );
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 5 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/ready_arena.seq" );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_ARENA_ROUND_START
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr = SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_ARENA_ROUND_START );
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 5 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/go_arena.seq" );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_ARENA_ROUND_WIN
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr = SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_ARENA_ROUND_WIN );
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 5 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/arena_win.seq" );
	-------------------------------------------------------------------------------------------------------------
		
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_ARENA_ROUND_LOSE
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr = SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_ARENA_ROUND_LOSE );
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 5 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/arena_lose.seq" );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_ARENA_ROUND_DRAW
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr = SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_ARENA_ROUND_DRAW );
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 5 );
	suquenceObjectCurr:AddSeqFileName( "Resources/uieffect/draw_arena.seq" );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_ARENA_STOPPED_WIN
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr = SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_ARENA_STOPPED_WIN );
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 5 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/stop_win_arena.seq" );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_ARENA_FULL_CHARGE
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr = SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_ARENA_FULL_CHARGE );
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 5 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/full_arena.seq" );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_ARENA_LEADER_SHOWDOWN
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr = SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_ARENA_LEADER_SHOWDOWN );
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 5 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/leader_arena.seq" );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_ARENA_ALPHA_SPATTACK_ALLY
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr = SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_ARENA_ALPHA_SPATTACK_ALLY );
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 6 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/green_attack.seq" );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_ARENA_ALPHA_SPHEAL_ALLY
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr = SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_ARENA_ALPHA_SPHEAL_ALLY );
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 6 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/green_heal.seq" );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_ARENA_ALPHA_SPATTACK_ENEMY
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr = SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_ARENA_ALPHA_SPATTACK_ENEMY );
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 6 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/red2_attack.seq" );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_ARENA_ALPHA_SPHEAL_ENEMY
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr = SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_ARENA_ALPHA_SPHEAL_ENEMY );
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 6 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/red2_heal.seq" );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_ARENA_BETA_SPATTACK_ALLY
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr = SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_ARENA_BETA_SPATTACK_ALLY );
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 7 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/green2_attack.seq" );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_ARENA_BETA_SPHEAL_ALLY
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr = SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_ARENA_BETA_SPHEAL_ALLY );
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 7 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/green2_heal.seq" );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_ARENA_BETA_SPATTACK_ENEMY
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr = SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_ARENA_BETA_SPATTACK_ENEMY );
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 7 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/red_attack.seq" );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_ARENA_BETA_SPHEAL_ENEMY
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr = SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_ARENA_BETA_SPHEAL_ENEMY );
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 7 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/red_heal.seq" );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- SEQPLAYER_ARENA_SUPPORT_HELP
	-------------------------------------------------------------------------------------------------------------
	suquenceObjectCurr = SequenceObjectHelper:GetSequenceObjectInfo( SEQPLAYER_ARENA_SUPPORT_HELP );
	suquenceObjectCurr:SetOption( OPTION_GET_RANDOM );
	suquenceObjectCurr:SetUniqueKey( 8 );
	suquenceObjectCurr:AddSeqFileName( "Resources/Uieffect/attack_arena.seq" );	
	-------------------------------------------------------------------------------------------------------------	
end