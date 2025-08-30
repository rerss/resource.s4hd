require "Resources/Script/SlaughterTagAttrib_Constants.lua"

function SlaughterTagAttribIndexer_Run()

	LoadStringTable( "Language/Script/slaughter_tag_string_table.x7" );

	local currSlaughterTag;
	
	--[[
	-- 체이서에서 사용하는 상수값 주석
	currSlaughterTag:SetAttackConst					( 더하는 보정값, 곱하는 보정값 );
	( ex )  ( 특정값 + 더하는 보정값 ) * 곱하는 보정값
	
	currSlaughterTag:SetDamageConst					( 더하는 보정값, 곱하는 보정값 );
	( ex )  ( 특정값 + 더하는 보정값 ) * 곱하는 보정값

	currSlaughterTag:SetMPRecoveryConst				( 더하는 보정값, 곱하는 보정값 );
	( ex )  ( 특정값 + 더하는 보정값 ) * 곱하는 보정값

	currSlaughterTag:SetReloadTimeConst				( 곱하는 비율값 );
	(ex) uiSLAddReloadPeriod = ( u32 )( ( float )월래 리로드 시간 * 곱하는 비율값 ); 으로 슬러터 일때 단축시킬 시간을 생성한다음
		m_ReloadTA.Init( 월래 리로드시간 - ( u32 )추가 감소시간( 이펙트 같은것 ) - uiSLAddReloadPeriod ); <- 옆에와 같이 시간을 계산합니다
	
	currSlaughterTag:SetMoveSpeedConst				( 곱하는 비율값 );
	(ex) 기존의 속도 * 곱하는 비율값으로 계산
	
	currSlaughterTag:SetEmuneStunConst				( 곱하는 비율값 );
	(ex) 기존 스턴시간 - ( 기존의 스턴 시간 * 곱하는 비율값으로 계산 ) 으로 나온값으로 스턴 시간 책정 ( 아스테로이드가 사용중 )
	
	]]--
	
	
	-------------------------------------------------------------------------------------------------------------
	--SLAUGHTERTAGATTRIB_NULL
	-------------------------------------------------------------------------------------------------------------
	currSlaughterTag	= SlaughterTagAttribIndexer:GetCreateSlaughterTagAttrib( 0 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- SLAUGHTERTAGATTRIB_DEVIL
	-------------------------------------------------------------------------------------------------------------
		
	currSlaughterTag	= SlaughterTagAttribIndexer:GetCreateSlaughterTagAttrib( SLAUGHTERTAGATTRIB_DEVIL );	

	currSlaughterTag:SetName				( GetString( "NAME_DEVIL" ) );
	currSlaughterTag:SetBoundSize				( 150.0, 240.0 );
	currSlaughterTag:SetSceneFileName			( "Resources/Model/Slaughter/grimreaper.scn" );
	currSlaughterTag:SetMovieCameraFileName			( "Resources/Model/Slaughter/camera_dummy_grimreaper.scn", 0, 6333 );
	currSlaughterTag:SetMovieCamera2FileName		( "Resources/Model/Slaughter/camera_dummy_grimreaper2.scn", 0, 3300 );
	currSlaughterTag:SetCustomarySequence			( "Resources/Effects/ggrim.seq", "" );
	currSlaughterTag:SetNormalSequence			( "", "" );
	currSlaughterTag:SetCreationSequence			( "", "", "Resources/Sound/Slaughter/change_bgm.ogg", "Resources/Sound/Slaughter/change_bgm_short.ogg" );
	currSlaughterTag:SetAttackSequence			( "", "" );
	currSlaughterTag:SetSlaySequence			( "Resources/Effects/ggrim_kill.seq", "" );
	currSlaughterTag:SetWinSequence				( "", "" );
	currSlaughterTag:SetDefeatSequence			( "", "" );
	currSlaughterTag:SetTime				( 6300, 3300, 2083 ); -- CreationTime, Creation2Time, SlayTime
	currSlaughterTag:SetAttackConst					( 3.0, 4.0 );
	currSlaughterTag:SetDamageConst					( 2.0, 0.1 );
	currSlaughterTag:SetMPRecoveryConst				( 2.0, 3.0 );
	currSlaughterTag:SetReloadTimeConst				( 0.4 );
	currSlaughterTag:SetMoveSpeedConst				( 1.3 );
	currSlaughterTag:SetEmuneStunConst				( 0.0 );
	currSlaughterTag:SetEmuneCounterSwordGuard			( 0 );   -- 0 ( x )   1 ( 0 )
	-------------------------------------------------------------------------------------------------------------	

	-------------------------------------------------------------------------------------------------------------
	-- SLAUGHTERTAGATTRIB_PIERROT
	-------------------------------------------------------------------------------------------------------------
		
	currSlaughterTag	= SlaughterTagAttribIndexer:GetCreateSlaughterTagAttrib( SLAUGHTERTAGATTRIB_PIERROT);	

	currSlaughterTag:SetName				( GetString( "NAME_PIERROT" ) );
	currSlaughterTag:SetBoundSize				( 150.0, 240.0 );
	currSlaughterTag:SetSceneFileName			( "Resources/Model/Slaughter/card_slaughter.scn" );
	currSlaughterTag:SetMovieCameraFileName			( "Resources/Model/Slaughter/camera_dummy_slaughter.scn", 0, 6333 );
	currSlaughterTag:SetMovieCamera2FileName		( "Resources/Model/Slaughter/camera_dummy_slaughter2.scn", 0, 3800 );
	currSlaughterTag:SetCustomarySequence			( "", "" );
	currSlaughterTag:SetNormalSequence			( "Resources/Effects/card_girl_normal.seq", "" );
	currSlaughterTag:SetCreationSequence			( "Resources/Effects/card_intro.seq", "", "Resources/Sound/Slaughter/change_bgm.ogg", "Resources/Sound/Slaughter/change_bgm_short.ogg" );
	currSlaughterTag:SetAttackSequence			( "Resources/Effects/card_joker_tentacle.seq", "" );
	currSlaughterTag:SetSlaySequence			( "Resources/Effects/card_kill.seq", "" );
	currSlaughterTag:SetWinSequence				( "Resources/Effects/card_girl_win.seq", "" );
	currSlaughterTag:SetDefeatSequence			( "", "" );
	currSlaughterTag:SetTime				( 6300, 3300, 2083 ); -- CreationTime, Creation2Time, SlayTime
	currSlaughterTag:SetAttackConst					( 3.0, 4.0 );
	currSlaughterTag:SetDamageConst					( 2.0, 0.1 );
	currSlaughterTag:SetMPRecoveryConst				( 2.0, 3.0 );
	currSlaughterTag:SetReloadTimeConst				( 0.5 );
	currSlaughterTag:SetMoveSpeedConst				( 1.2 );
	currSlaughterTag:SetEmuneStunConst				( 0.0 );
	currSlaughterTag:SetEmuneCounterSwordGuard			( 0 );   -- 0 ( x )   1 ( 0 )
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SLAUGHTERTAGATTRIB_ALICE
	-------------------------------------------------------------------------------------------------------------
		
	currSlaughterTag	= SlaughterTagAttribIndexer:GetCreateSlaughterTagAttrib( SLAUGHTERTAGATTRIB_ALICE);	

	currSlaughterTag:SetName				( GetString( "NAME_ALICE" ) );
	currSlaughterTag:SetBoundSize				( 150.0, 240.0 );
	currSlaughterTag:SetSceneFileName			( "Resources/Model/Slaughter/alice.scn" );
	currSlaughterTag:SetMovieCameraFileName			( "Resources/Model/Slaughter/camera_dummy_alice.scn", 0, 6333 );
	currSlaughterTag:SetMovieCamera2FileName		( "Resources/Model/Slaughter/camera_dummy_alice2.scn", 0, 3300 );
	currSlaughterTag:SetCustomarySequence			( "", "" );
	currSlaughterTag:SetNormalSequence			( "", "" );
	currSlaughterTag:SetCreationSequence			( "Resources/Effects/card_intro.seq", "", "Resources/Sound/Slaughter/change_bgm.ogg", "Resources/Sound/Slaughter/change_bgm_short.ogg" );
	currSlaughterTag:SetAttackSequence			( "", "" );
	currSlaughterTag:SetSlaySequence			( "", "" );
	currSlaughterTag:SetWinSequence				( "", "" );
	currSlaughterTag:SetDefeatSequence			( "", "" );
	currSlaughterTag:SetTime				( 6300, 3300, 2083 ); -- CreationTime, Creation2Time, SlayTime
	currSlaughterTag:SetAttackConst					( 3.0, 5.0 );
	currSlaughterTag:SetDamageConst					( 2.0, 0.05 );
	currSlaughterTag:SetMPRecoveryConst				( 2.0, 3.0 );
	currSlaughterTag:SetReloadTimeConst				( 0.4 );
	currSlaughterTag:SetMoveSpeedConst				( 1.3 );
	currSlaughterTag:SetEmuneStunConst				( 0.0 );
	currSlaughterTag:SetEmuneCounterSwordGuard			( 0 );   -- 0 ( x )   1 ( 0 )
	-------------------------------------------------------------------------------------------------------------	

	-------------------------------------------------------------------------------------------------------------
	-- SLAUGHTERTAGATTRIB_ASTEROID
	-------------------------------------------------------------------------------------------------------------
		
	currSlaughterTag	= SlaughterTagAttribIndexer:GetCreateSlaughterTagAttrib( SLAUGHTERTAGATTRIB_ASTEROID);	

	currSlaughterTag:SetName				( GetString( "NAME_ASTEROID" ) );
	currSlaughterTag:SetBoundSize				( 150.0, 240.0 );
	currSlaughterTag:SetSceneFileName			( "Resources/Model/Slaughter/asteroid.scn" );
	currSlaughterTag:SetMovieCameraFileName			( "Resources/Model/Slaughter/camera_dummy_asteroid.scn", 0, 6333 );
	currSlaughterTag:SetMovieCamera2FileName		( "Resources/Model/Slaughter/camera_dummy_asteroid2.scn", 0, 3300 );
	currSlaughterTag:SetCustomarySequence			( "Resources/Effects/asteroid_all.seq", "" );
	currSlaughterTag:SetNormalSequence			( "Resources/Effects/asteroid.seq", "" );
	currSlaughterTag:SetRandom1Sequence			( "Resources/Effects/asteroid_scan.seq", "" );
	currSlaughterTag:SetRandom2Sequence			( "Resources/Effects/asteroid_mri.seq", "" );
	currSlaughterTag:SetCreationSequence			( "Resources/Effects/asteroid_load1.seq", "Resources/Effects/asteroid_load2.seq", "Resources/Sound/Slaughter/change_bgm.ogg", "Resources/Sound/Slaughter/change_bgm_short.ogg" );
	currSlaughterTag:SetAttackSequence			( "Resources/Effects/asteroid_attack.seq", "" );
	currSlaughterTag:SetSlaySequence			( "Resources/Effects/asteroid_kill.seq", "" );
	currSlaughterTag:SetWinSequence				( "Resources/Effects/asteroid_win.seq", "" );
	currSlaughterTag:SetDefeatSequence			( "Resources/Effects/asteroid_dead.seq", "" );
	currSlaughterTag:SetTime				( 6300, 3300, 2083 ); -- CreationTime, Creation2Time, SlayTime
	currSlaughterTag:SetAttackConst					( 3.0, 4.0 );
	currSlaughterTag:SetDamageConst					( 2.0, 0.1 );
	currSlaughterTag:SetMPRecoveryConst				( 2.0, 3.0 );
	currSlaughterTag:SetReloadTimeConst				( 0.4 );
	currSlaughterTag:SetMoveSpeedConst				( 1.0 );
	currSlaughterTag:SetEmuneStunConst				( 1.0 ); -- 1.0 (= 100%)
	currSlaughterTag:SetEmuneCounterSwordGuard			( 1 );   -- 0 ( x )   1 ( 0 )
	-------------------------------------------------------------------------------------------------------------	

	-------------------------------------------------------------------------------------------------------------
	-- SLAUGHTERTAGATTRIB_OPHELIA
	-------------------------------------------------------------------------------------------------------------
		
	currSlaughterTag	= SlaughterTagAttribIndexer:GetCreateSlaughterTagAttrib( SLAUGHTERTAGATTRIB_OPHELIA);	

	currSlaughterTag:SetName				( GetString( "NAME_OPHELIA" ) );
	currSlaughterTag:SetBoundSize				( 150.0, 240.0 );
	currSlaughterTag:SetSceneFileName			( "Resources/Model/Slaughter/ophelia.scn" );
	currSlaughterTag:SetMovieCameraFileName			( "Resources/Model/Slaughter/camera_dummy_ophelia.scn", 0, 6333 );
	currSlaughterTag:SetMovieCamera2FileName		( "Resources/Model/Slaughter/camera_dummy_ophelia2.scn", 0, 3300 );
	currSlaughterTag:SetCustomarySequence			( "Resources/Effects/ophelia_all.seq", "" );
	currSlaughterTag:SetNormalSequence			( "", "" );
	currSlaughterTag:SetRandom1Sequence			( "Resources/Effects/ophelia_love.seq", "" );
	currSlaughterTag:SetRandom2Sequence			( "", "" );
	currSlaughterTag:SetCreationSequence			( "", "", "Resources/Sound/Slaughter/change_bgm.ogg", "Resources/Sound/Slaughter/change_bgm_short.ogg" );
	currSlaughterTag:SetAttackSequence			( "Resources/Effects/ophelia_att.seq", "" );
	currSlaughterTag:SetSlaySequence			( "", "" );
	currSlaughterTag:SetWinSequence				( "", "" );
	currSlaughterTag:SetDefeatSequence			( "", "" );
	currSlaughterTag:SetTime				( 6300, 3300, 2083 ); -- CreationTime, Creation2Time, SlayTime
	currSlaughterTag:SetAttackConst					( 3.0, 5.0 );
	currSlaughterTag:SetDamageConst					( 2.0, 0.05 );
	currSlaughterTag:SetMPRecoveryConst				( 2.0, 3.0 );
	currSlaughterTag:SetReloadTimeConst				( 0.4 );
	currSlaughterTag:SetMoveSpeedConst				( 1.3 );
	currSlaughterTag:SetEmuneStunConst				( 0.0 );
	currSlaughterTag:SetEmuneCounterSwordGuard			( 0 );   -- 0 ( x )   1 ( 0 )
	-------------------------------------------------------------------------------------------------------------	

	-------------------------------------------------------------------------------------------------------------
	-- SLAUGHTERTAGATTRIB_LILIT
	-------------------------------------------------------------------------------------------------------------
		
	currSlaughterTag	= SlaughterTagAttribIndexer:GetCreateSlaughterTagAttrib( SLAUGHTERTAGATTRIB_LILIT);	

	currSlaughterTag:SetName				( GetString( "NAME_LILIT" ) );
	currSlaughterTag:SetBoundSize				( 150.0, 240.0 );
	currSlaughterTag:SetSceneFileName			( "Resources/Model/Slaughter/lilit.scn" );
	currSlaughterTag:SetMovieCameraFileName			( "Resources/Model/Slaughter/camera_dummy_lilit.scn", 0, 6333 );
	currSlaughterTag:SetMovieCamera2FileName		( "Resources/Model/Slaughter/camera_dummy_lilit2.scn", 0, 3300 );
	currSlaughterTag:SetCustomarySequence			( "Resources/Effects/chaser_lilith_bf_effect_all.seq", "" );
	currSlaughterTag:SetNormalSequence			( "", "" );
	currSlaughterTag:SetCreationSequence			( "", "", "Resources/Sound/Slaughter/change_bgm.ogg", "Resources/Sound/Slaughter/change_bgm_short.ogg" );
	currSlaughterTag:SetAttackSequence			( "Resources/Effects/chaser_lilith_attack01.seq", "" );
	currSlaughterTag:SetRandom1Sequence			( "", "" );
	currSlaughterTag:SetRandom2Sequence			( "", "" );
	currSlaughterTag:SetWinSequence				( "", "" );
	currSlaughterTag:SetDefeatSequence			( "Resources/Effects/chaser_lilith_lose01.seq", "" );
	currSlaughterTag:SetTime				( 6300, 3300, 2083 ); -- CreationTime, Creation2Time, SlayTime
	currSlaughterTag:SetAttackConst					( 3.0, 5.0 );
	currSlaughterTag:SetDamageConst					( 2.0, 0.05 );
	currSlaughterTag:SetMPRecoveryConst				( 2.0, 3.0 );
	currSlaughterTag:SetReloadTimeConst				( 0.4 );
	currSlaughterTag:SetMoveSpeedConst				( 1.3 );
	currSlaughterTag:SetEmuneStunConst				( 0.0 );
	currSlaughterTag:SetEmuneCounterSwordGuard			( 0 );   -- 0 ( x )   1 ( 0 )
	-------------------------------------------------------------------------------------------------------------	

	ClearStringTable();  
	
end
