require "Resources/Script/SentryGunAttrib_Constants.lua"

function SentryGunAttribIndexer_Run()

	LoadStringTable( "Language/Script/sentrygun_string_table.x7" );

	local currSentryGun;
	
	-------------------------------------------------------------------------------------------------------------
	--SENTRYGUNATTRIB_NULL
	-------------------------------------------------------------------------------------------------------------
	currSentryGun = SentryGunAttribIndexer:GetCreateSentryGunAttrib( 0 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- SENTRYGUNATTRIB_SENTRYGUN
	-------------------------------------------------------------------------------------------------------------
	currSentryGun	= SentryGunAttribIndexer:GetCreateSentryGunAttrib( SENTRYGUNATTRIB_SENTRYGUN );	

	currSentryGun:SetName					( GetString( "NAME_SENTRYGUN" ) );
	currSentryGun:SetBoundSize				( 150.0, 240.0 );
	currSentryGun:SetRange					( 4000.0, 120.0, 40.0 );
	currSentryGun:SetSceneFileName			( "Resources/Model/Weapon/SentryGun.scn" );
--	currSentryGun:SetCreationSequence		( "Resources/Effects/skill_hacker_sentrygun_1_launch_1.seq", "Resources/Sound/sentrygun_loading.ogg" );
	currSentryGun:SetCreationSequence		( "", "Resources/Sound/sentrygun_loading.ogg" );
	currSentryGun:SetTargetSearchSequence	( "Resources/Effects/skill_hacker_sentrygun_2_waiting.seq", "" );
	currSentryGun:SetTargetDetectSequence	( "Resources/Effects/skill_hacker_sentrygun_2_attack.seq", "Resources/Sound/sentrygun_blast.ogg" );
	currSentryGun:SetDestructionSequence	( "Resources/Effects/mapeffect_blast_glass.seq", "Resources/Sound/sentrygun_die.ogg" );
	
	currSentryGun:SetTime					( 2500, 2000, 3000, 400, 1000 );				-- ( u32 uiAttackTime, u32 uiCreationTime, u32 uiDestuctionTime, u32 uiFindTargetTerm, u32 uiReloadTime )
	currSentryGun:SetAttack					( ATTACK_STYLE_SENTRYGUN, 500, 300, 0, 5.5 );							-- ( u32 uiCollisionTimeStart, u32 uiCollisionTimePeriod, u32 uiDamageDelay, float fDamageOnce );
	currSentryGun:SetEnableHeadRotation		( true );
	currSentryGun:SetHP						( 110 );
	-------------------------------------------------------------------------------------------------------------	

	-------------------------------------------------------------------------------------------------------------
	-- SENTRYGUNATTRIB_SENTIWALL
	-------------------------------------------------------------------------------------------------------------
	currSentryGun	= SentryGunAttribIndexer:GetCreateSentryGunAttrib( SENTRYGUNATTRIB_SENTIWALL );	

	currSentryGun:SetName					( GetString( "NAME_SENTIWALL" ) );
	currSentryGun:SetBoundSize				( 150.0, 240.0 );
	currSentryGun:SetRange					( 700.0, 360.0, 180.0 );
	currSentryGun:SetSceneFileName			( "Resources/Model/Weapon/sentiwall.scn" );
	currSentryGun:SetCreationSequence		( "", "Resources/Sound/bsentrygun_loading.ogg" );
	currSentryGun:SetTargetSearchSequence	( "Resources/Effects/skill_hacker_sentrygun_2_waiting.seq", "" );
	currSentryGun:SetTargetDetectSequence	( "Resources/Effects/weapon_sentwall_attack.seq", "Resources/Sound/bsentrygun_blast.ogg" );
	currSentryGun:SetDestructionSequence	( "Resources/Effects/mapeffect_blast_glass.seq", "Resources/Sound/bsentrygun_die.ogg" );
	currSentryGun:SetTime					( 500, 2000, 3000, 400, 3000 );				-- ( u32 uiAttackTime, u32 uiCreationTime, u32 uiDestuctionTime, u32 uiFindTargetTerm, u32 uiReloadTime )
	currSentryGun:SetAttack					( ATTACK_STYLE_SENTIWALL, 500, 3000, 0, 40.0 );		-- ( u32 uiCollisionTimeStart, u32 uiCollisionTimePeriod, u32 uiDamageDelay, float fDamageOnce );
	currSentryGun:SetEnableHeadRotation		( false );
	currSentryGun:SetHP						( 150 );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SENTRYGUNATTRIB_TUTO_SENTRYGUN
	-------------------------------------------------------------------------------------------------------------
	currSentryGun	= SentryGunAttribIndexer:GetCreateSentryGunAttrib( SENTRYGUNATTRIB_TUTO_SENTRYGUN );	

	currSentryGun:SetName					( GetString( "NAME_TUTO_SENTRYGUN" ) );
	currSentryGun:SetBoundSize				( 150.0, 240.0 );
	currSentryGun:SetRange					( 2000.0, 120.0, 40.0 );
	currSentryGun:SetSceneFileName			( "Resources/Model/Weapon/SentryGun.scn" );
	currSentryGun:SetCreationSequence		( "", "Resources/Sound/bsentrygun_loading.ogg" );
	currSentryGun:SetTargetSearchSequence	( "Resources/Effects/skill_hacker_sentrygun_2_waiting.seq", "" );
	currSentryGun:SetTargetDetectSequence	( "Resources/Effects/skill_hacker_sentrygun_2_attack.seq", "Resources/Sound/sentrygun_blast.ogg" );
	currSentryGun:SetDestructionSequence	( "Resources/Effects/mapeffect_blast_glass.seq", "Resources/Sound/sentrygun_die.ogg" );
	
	currSentryGun:SetTime					( 5000, 4000, 3000, 400, 2000 );				-- ( u32 uiAttackTime, u32 uiCreationTime, u32 uiDestuctionTime, u32 uiFindTargetTerm, u32 uiReloadTime )
	currSentryGun:SetAttack					( ATTACK_STYLE_SENTRYGUN, 1000, 2000, 0, 2.0 );							-- ( u32 uiCollisionTimeStart, u32 uiCollisionTimePeriod, u32 uiDamageDelay, float fDamageOnce );
	currSentryGun:SetEnableHeadRotation		( true );
	currSentryGun:SetHP						( 30 );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SENTRYGUNATTRIB_TUTO_SENTIWALL
	-------------------------------------------------------------------------------------------------------------
	currSentryGun	= SentryGunAttribIndexer:GetCreateSentryGunAttrib( SENTRYGUNATTRIB_TUTO_SENTIWALL );

	currSentryGun:SetName					( GetString( "NAME_TUTO_SENTIWALL" ) );
	currSentryGun:SetBoundSize				( 150.0, 240.0 );
	currSentryGun:SetRange					( 700.0, 360.0, 180.0 );
	currSentryGun:SetSceneFileName			( "Resources/Model/Weapon/sentiwall.scn" );
	currSentryGun:SetCreationSequence		( "", "Resources/Sound/bsentrygun_loading.ogg" );
	currSentryGun:SetTargetSearchSequence	( "Resources/Effects/skill_hacker_sentrygun_2_waiting.seq", "" );
	currSentryGun:SetTargetDetectSequence	( "Resources/Effects/weapon_sentwall_attack.seq", "Resources/Sound/bsentrygun_blast.ogg" );
	currSentryGun:SetDestructionSequence	( "Resources/Effects/mapeffect_blast_glass.seq", "Resources/Sound/bsentrygun_die.ogg" );
	currSentryGun:SetTime					( 500, 1000, 800, 400, 1500 );				-- ( u32 uiAttackTime, u32 uiCreationTime, u32 uiDestuctionTime, u32 uiFindTargetTerm, u32 uiReloadTime )
	currSentryGun:SetAttack					( ATTACK_STYLE_SENTIWALL, 500, 3000, 0, 5.0 );						-- ( u32 uiCollisionTimeStart, u32 uiCollisionTimePeriod, u32 uiDamageDelay, float fDamageOnce );
	currSentryGun:SetEnableHeadRotation		( false );
	currSentryGun:SetHP						( 30 );
	-------------------------------------------------------------------------------------------------------------	
	
		
	
	-------------------------------------------------------------------------------------------------------------
	-- SENTRYGUNATTRIB_EXERCISE_SENTRYGUN1
	-------------------------------------------------------------------------------------------------------------
	currSentryGun	= SentryGunAttribIndexer:GetCreateSentryGunAttrib( SENTRYGUNATTRIB_EXERCISE_SENTRYGUN1 );	

	currSentryGun:SetName					( GetString( "NAME_EXERCISE_SENTRYGUN1" ) );
	currSentryGun:SetBoundSize				( 150.0, 240.0 );
	currSentryGun:SetRange					( 20000.0, 120.0, 40.0 );
	currSentryGun:SetSceneFileName			( "Resources/Model/Weapon/SentryGun.scn" );
	currSentryGun:SetCreationSequence		( "", "Resources/Sound/bsentrygun_loading.ogg" );
	currSentryGun:SetTargetSearchSequence	( "Resources/Effects/skill_hacker_sentrygun_2_waiting.seq", "" );
	currSentryGun:SetTargetDetectSequence	( "Resources/Effects/skill_hacker_sentrygun_2_attack.seq", "Resources/Sound/sentrygun_blast.ogg" );
	currSentryGun:SetDestructionSequence	( "Resources/Effects/mapeffect_blast_glass.seq", "Resources/Sound/sentrygun_die.ogg" );
	
	currSentryGun:SetTime					( 5000, 4000, 3000, 400, 2000 );				-- ( u32 uiAttackTime, u32 uiCreationTime, u32 uiDestuctionTime, u32 uiFindTargetTerm, u32 uiReloadTime )
	currSentryGun:SetAttack					( ATTACK_STYLE_SENTRYGUN, 1000, 2000, 0, 2.0 );						-- ( u32 uiCollisionTimeStart, u32 uiCollisionTimePeriod, u32 uiDamageDelay, float fDamageOnce );
	currSentryGun:SetEnableHeadRotation		( true );
	currSentryGun:SetHP						( 30 );
	-------------------------------------------------------------------------------------------------------------	




	-------------------------------------------------------------------------------------------------------------
	-- SENTRYGUNATTRIB_EXERCISE_SENTRYGUN2
	-------------------------------------------------------------------------------------------------------------
	currSentryGun	= SentryGunAttribIndexer:GetCreateSentryGunAttrib( SENTRYGUNATTRIB_EXERCISE_SENTRYGUN2 );	

	currSentryGun:SetName					( GetString( "NAME_EXERCISE_SENTRYGUN2" ) );
	currSentryGun:SetBoundSize				( 150.0, 240.0 );
	currSentryGun:SetRange					( 20000.0, 120.0, 40.0 );
	currSentryGun:SetSceneFileName			( "Resources/Model/Weapon/SentryGun.scn" );
	currSentryGun:SetCreationSequence		( "", "Resources/Sound/bsentrygun_loading.ogg" );
	currSentryGun:SetTargetSearchSequence	( "Resources/Effects/skill_hacker_sentrygun_2_waiting.seq", "" );
	currSentryGun:SetTargetDetectSequence	( "Resources/Effects/skill_hacker_sentrygun_2_attack.seq", "Resources/Sound/sentrygun_blast.ogg" );
	currSentryGun:SetDestructionSequence	( "Resources/Effects/mapeffect_blast_glass.seq", "Resources/Sound/sentrygun_die.ogg" );
	
	currSentryGun:SetTime					( 4000, 2000, 3000, 300, 1500 );				-- ( u32 uiAttackTime, u32 uiCreationTime, u32 uiDestuctionTime, u32 uiFindTargetTerm, u32 uiReloadTime )
	currSentryGun:SetAttack					( ATTACK_STYLE_SENTRYGUN, 1000, 1000, 0, 4.0 );						-- ( u32 uiCollisionTimeStart, u32 uiCollisionTimePeriod, u32 uiDamageDelay, float fDamageOnce );
	currSentryGun:SetEnableHeadRotation		( true );
	currSentryGun:SetHP						( 50 );
	-------------------------------------------------------------------------------------------------------------	




	-------------------------------------------------------------------------------------------------------------
	-- SENTRYGUNATTRIB_EXERCISE_SENTRYGUN3
	-------------------------------------------------------------------------------------------------------------
	currSentryGun	= SentryGunAttribIndexer:GetCreateSentryGunAttrib( SENTRYGUNATTRIB_EXERCISE_SENTRYGUN3 );	

	currSentryGun:SetName					( GetString( "NAME_EXERCISE_SENTRYGUN3" ) );
	currSentryGun:SetBoundSize				( 150.0, 240.0 );
	currSentryGun:SetRange					( 20000.0, 120.0, 40.0 );
	currSentryGun:SetSceneFileName			( "Resources/Model/Weapon/SentryGun.scn" );
	currSentryGun:SetCreationSequence		( "", "Resources/Sound/bsentrygun_loading.ogg" );
	currSentryGun:SetTargetSearchSequence	( "Resources/Effects/skill_hacker_sentrygun_2_waiting.seq", "" );
	currSentryGun:SetTargetDetectSequence	( "Resources/Effects/skill_hacker_sentrygun_2_attack.seq", "Resources/Sound/sentrygun_blast.ogg" );
	currSentryGun:SetDestructionSequence	( "Resources/Effects/mapeffect_blast_glass.seq", "Resources/Sound/sentrygun_die.ogg" );
	
	currSentryGun:SetTime					( 3000, 1000, 3000, 200, 1000 );				-- ( u32 uiAttackTime, u32 uiCreationTime, u32 uiDestuctionTime, u32 uiFindTargetTerm, u32 uiReloadTime )
	currSentryGun:SetAttack					( ATTACK_STYLE_SENTRYGUN, 500, 600, 0, 6.0 );						-- ( u32 uiCollisionTimeStart, u32 uiCollisionTimePeriod, u32 uiDamageDelay, float fDamageOnce );
	currSentryGun:SetEnableHeadRotation		( true );
	currSentryGun:SetHP						( 70 );
	-------------------------------------------------------------------------------------------------------------	




	-------------------------------------------------------------------------------------------------------------
	-- SENTRYGUNATTRIB_EXERCISE_SENTRYGUN4
	-------------------------------------------------------------------------------------------------------------
	currSentryGun	= SentryGunAttribIndexer:GetCreateSentryGunAttrib( SENTRYGUNATTRIB_EXERCISE_SENTRYGUN4 );	

	currSentryGun:SetName					( GetString( "NAME_EXERCISE_SENTRYGUN4" ) );
	currSentryGun:SetBoundSize				( 150.0, 240.0 );
	currSentryGun:SetRange					( 20000.0, 120.0, 40.0 );
	currSentryGun:SetSceneFileName			( "Resources/Model/Weapon/SentryGun.scn" );
	currSentryGun:SetCreationSequence		( "", "Resources/Sound/bsentrygun_loading.ogg" );
	currSentryGun:SetTargetSearchSequence	( "Resources/Effects/skill_hacker_sentrygun_2_waiting.seq", "" );
	currSentryGun:SetTargetDetectSequence	( "Resources/Effects/skill_hacker_sentrygun_2_attack.seq", "Resources/Sound/sentrygun_blast.ogg" );
	currSentryGun:SetDestructionSequence	( "Resources/Effects/mapeffect_blast_glass.seq", "Resources/Sound/sentrygun_die.ogg" );
	
	currSentryGun:SetTime					( 2500, 500, 3000, 100, 500 );				-- ( u32 uiAttackTime, u32 uiCreationTime, u32 uiDestuctionTime, u32 uiFindTargetTerm, u32 uiReloadTime )
	currSentryGun:SetAttack					( ATTACK_STYLE_SENTRYGUN, 500, 300, 0, 10.0 );						-- ( u32 uiCollisionTimeStart, u32 uiCollisionTimePeriod, u32 uiDamageDelay, float fDamageOnce );
	currSentryGun:SetEnableHeadRotation		( true );
	currSentryGun:SetHP						( 90 );
	-------------------------------------------------------------------------------------------------------------	

	-------------------------------------------------------------------------------------------------------------
	-- SENTRYGUNATTRIB_SENTRYGUN_TYPE_A
	-------------------------------------------------------------------------------------------------------------
	currSentryGun	= SentryGunAttribIndexer:GetCreateSentryGunAttrib( SENTRYGUNATTRIB_SENTRYGUN_TYPE_A );	

	currSentryGun:SetName					( GetString( "NAME_SENTRYGUN_TYPE_A" ) );
	currSentryGun:SetBoundSize				( 150.0, 240.0 );
	currSentryGun:SetRange					( 4000.0, 120.0, 40.0 );
	currSentryGun:SetSceneFileName			( "Resources/Model/Weapon/SentryGun_1.scn" );
	currSentryGun:SetCreationSequence		( "", "Resources/Sound/bsentrygun_loading.ogg" );
	currSentryGun:SetTargetSearchSequence	( "Resources/Effects/skill_hacker_sentrygun_2_waiting.seq", "" );
	currSentryGun:SetTargetDetectSequence	( "Resources/Effects/skill_hacker_sentrygun_2_attack.seq", "Resources/Sound/sentrygun_blast.ogg" );
	currSentryGun:SetDestructionSequence	( "Resources/Effects/mapeffect_blast_glass.seq", "Resources/Sound/sentrygun_die.ogg" );
	
	currSentryGun:SetTime					( 2500, 2000, 3000, 400, 1000 );				-- ( u32 uiAttackTime, u32 uiCreationTime, u32 uiDestuctionTime, u32 uiFindTargetTerm, u32 uiReloadTime )
	currSentryGun:SetAttack					( ATTACK_STYLE_SENTRYGUN, 500, 300, 0, 5.5 );							-- ( u32 uiCollisionTimeStart, u32 uiCollisionTimePeriod, u32 uiDamageDelay, float fDamageOnce );
	currSentryGun:SetEnableHeadRotation		( true );
	currSentryGun:SetHP						( 110 );
	-------------------------------------------------------------------------------------------------------------	

	-------------------------------------------------------------------------------------------------------------
	-- SENTRYGUNATTRIB_SENTRYGUN_TYPE_B
	-------------------------------------------------------------------------------------------------------------
	currSentryGun	= SentryGunAttribIndexer:GetCreateSentryGunAttrib( SENTRYGUNATTRIB_SENTRYGUN_TYPE_B );	

	currSentryGun:SetName					( GetString( "NAME_SENTRYGUN_TYPE_B" ) );
	currSentryGun:SetBoundSize				( 150.0, 240.0 );
	currSentryGun:SetRange					( 4000.0, 120.0, 40.0 );
	currSentryGun:SetSceneFileName			( "Resources/Model/Weapon/SentryGun_2.scn" );
	currSentryGun:SetCreationSequence		( "", "Resources/Sound/bsentrygun_loading.ogg" );
	currSentryGun:SetTargetSearchSequence	( "Resources/Effects/skill_hacker_sentrygun_2_waiting.seq", "" );
	currSentryGun:SetTargetDetectSequence	( "Resources/Effects/skill_hacker_sentrygun_2_attack.seq", "Resources/Sound/sentrygun_blast.ogg" );
	currSentryGun:SetDestructionSequence	( "Resources/Effects/mapeffect_blast_glass.seq", "Resources/Sound/sentrygun_die.ogg" );
	
	currSentryGun:SetTime					( 2500, 2000, 3000, 400, 1000 );				-- ( u32 uiAttackTime, u32 uiCreationTime, u32 uiDestuctionTime, u32 uiFindTargetTerm, u32 uiReloadTime )
	currSentryGun:SetAttack					( ATTACK_STYLE_SENTRYGUN, 500, 300, 0, 5.5 );							-- ( u32 uiCollisionTimeStart, u32 uiCollisionTimePeriod, u32 uiDamageDelay, float fDamageOnce );
	currSentryGun:SetEnableHeadRotation		( true );
	currSentryGun:SetHP						( 110 );
	-------------------------------------------------------------------------------------------------------------	

	-------------------------------------------------------------------------------------------------------------
	-- SENTRYGUNATTRIB_SENTRYGUN_TYPE_C
	-------------------------------------------------------------------------------------------------------------
	currSentryGun	= SentryGunAttribIndexer:GetCreateSentryGunAttrib( SENTRYGUNATTRIB_SENTRYGUN_TYPE_C );	

	currSentryGun:SetName					( GetString( "NAME_SENTRYGUN_TYPE_C" ) );
	currSentryGun:SetBoundSize				( 150.0, 240.0 );
	currSentryGun:SetRange					( 4000.0, 120.0, 40.0 );
	currSentryGun:SetSceneFileName			( "Resources/Model/Weapon/SentryGun_3.scn" );
	currSentryGun:SetCreationSequence		( "", "Resources/Sound/bsentrygun_loading.ogg" );
	currSentryGun:SetTargetSearchSequence	( "Resources/Effects/skill_hacker_sentrygun_2_waiting.seq", "" );
	currSentryGun:SetTargetDetectSequence	( "Resources/Effects/skill_hacker_sentrygun_2_attack.seq", "Resources/Sound/sentrygun_blast.ogg" );
	currSentryGun:SetDestructionSequence	( "Resources/Effects/mapeffect_blast_glass.seq", "Resources/Sound/sentrygun_die.ogg" );
	
	currSentryGun:SetTime					( 2500, 2000, 3000, 400, 1000 );				-- ( u32 uiAttackTime, u32 uiCreationTime, u32 uiDestuctionTime, u32 uiFindTargetTerm, u32 uiReloadTime )
	currSentryGun:SetAttack					( ATTACK_STYLE_SENTRYGUN, 500, 300, 0, 5.5 );							-- ( u32 uiCollisionTimeStart, u32 uiCollisionTimePeriod, u32 uiDamageDelay, float fDamageOnce );
	currSentryGun:SetEnableHeadRotation		( true );
	currSentryGun:SetHP						( 110 );
	-------------------------------------------------------------------------------------------------------------	

	-------------------------------------------------------------------------------------------------------------
	-- SENTRYGUNATTRIB_SENTINEL
	-------------------------------------------------------------------------------------------------------------
	currSentryGun	= SentryGunAttribIndexer:GetCreateSentryGunAttrib( SENTRYGUNATTRIB_SENTINEL );	

	currSentryGun:SetName					( GetString( "NAME_SENTINEL" ) );
	currSentryGun:SetBoundSize				( 150.0, 240.0 );
	currSentryGun:SetRange					( 700.0, 360.0, 180.0 );
	currSentryGun:SetSceneFileName			( "Resources/Model/Weapon/sentiwall.scn" );
--	currSentryGun:SetCreationSequence		( "Resources/Effects/skill_hacker_sentrygun_1_launch_1.seq", "Resources/Sound/bsentrygun_loading.ogg" );
	currSentryGun:SetCreationSequence		( "", "Resources/Sound/bsentrygun_loading.ogg" );
	currSentryGun:SetTargetSearchSequence	( "Resources/Effects/skill_hacker_sentrygun_2_waiting.seq", "" );
	currSentryGun:SetTargetDetectSequence	( "Resources/Effects/weapon_sentwall_attack.seq", "Resources/Sound/bsentrygun_blast.ogg" );
	currSentryGun:SetDestructionSequence	( "Resources/Effects/mapeffect_blast_glass.seq", "Resources/Sound/bsentrygun_die.ogg" );
	currSentryGun:SetTime					( 500, 2000, 3000, 400, 4000 );				-- ( u32 uiAttackTime, u32 uiCreationTime, u32 uiDestuctionTime, u32 uiFindTargetTerm, u32 uiReloadTime )
	currSentryGun:SetAttack					( ATTACK_STYLE_SENTINEL, 200, 3000, 0, 20.0 );						-- ( u32 uiCollisionTimeStart, u32 uiCollisionTimePeriod, u32 uiDamageDelay, float fDamageOnce );
	currSentryGun:SetEnableHeadRotation		( false );
	currSentryGun:SetHP						( 110 );
	-------------------------------------------------------------------------------------------------------------	

	-------------------------------------------------------------------------------------------------------------
	-- SENTRYGUNATTRIB_SENTINEL_TYPE_A
	-------------------------------------------------------------------------------------------------------------
	currSentryGun	= SentryGunAttribIndexer:GetCreateSentryGunAttrib( SENTRYGUNATTRIB_SENTINEL_TYPE_A );	

	currSentryGun:SetName					( GetString( "NAME_SENTINEL_TYPE_A" ) );
	currSentryGun:SetBoundSize				( 150.0, 240.0 );
	currSentryGun:SetRange					( 700.0, 360.0, 180.0 );
	currSentryGun:SetSceneFileName			( "Resources/Model/Weapon/sentiwall_1.scn" );
--	currSentryGun:SetCreationSequence		( "Resources/Effects/skill_hacker_sentrygun_1_launch_1.seq", "Resources/Sound/bsentrygun_loading.ogg" );
	currSentryGun:SetCreationSequence		( "", "Resources/Sound/bsentrygun_loading.ogg" );
	currSentryGun:SetTargetSearchSequence	( "Resources/Effects/skill_hacker_sentrygun_2_waiting.seq", "" );
	currSentryGun:SetTargetDetectSequence	( "Resources/Effects/weapon_sentwall_attack.seq", "Resources/Sound/bsentrygun_blast.ogg" );
	currSentryGun:SetDestructionSequence	( "Resources/Effects/mapeffect_blast_glass.seq", "Resources/Sound/bsentrygun_die.ogg" );
	currSentryGun:SetTime					( 500, 2000, 3000, 400, 4000 );				-- ( u32 uiAttackTime, u32 uiCreationTime, u32 uiDestuctionTime, u32 uiFindTargetTerm, u32 uiReloadTime )
	currSentryGun:SetAttack					( ATTACK_STYLE_SENTINEL, 200, 3000, 0, 20.0 );						-- ( u32 uiCollisionTimeStart, u32 uiCollisionTimePeriod, u32 uiDamageDelay, float fDamageOnce );
	currSentryGun:SetEnableHeadRotation		( false );
	currSentryGun:SetHP						( 110 );
	-------------------------------------------------------------------------------------------------------------	

	-------------------------------------------------------------------------------------------------------------
	-- SENTRYGUNATTRIB_SENTINEL_TYPE_B
	-------------------------------------------------------------------------------------------------------------
	currSentryGun	= SentryGunAttribIndexer:GetCreateSentryGunAttrib( SENTRYGUNATTRIB_SENTINEL_TYPE_B );	

	currSentryGun:SetName					( GetString( "NAME_SENTINEL_TYPE_B" ) );
	currSentryGun:SetBoundSize				( 150.0, 240.0 );
	currSentryGun:SetRange					( 700.0, 360.0, 180.0 );
	currSentryGun:SetSceneFileName			( "Resources/Model/Weapon/sentiwall_2.scn" );
--	currSentryGun:SetCreationSequence		( "Resources/Effects/skill_hacker_sentrygun_1_launch_1.seq", "Resources/Sound/bsentrygun_loading.ogg" );
	currSentryGun:SetCreationSequence		( "", "Resources/Sound/bsentrygun_loading.ogg" );
	currSentryGun:SetTargetSearchSequence	( "Resources/Effects/skill_hacker_sentrygun_2_waiting.seq", "" );
	currSentryGun:SetTargetDetectSequence	( "Resources/Effects/weapon_sentwall_attack.seq", "Resources/Sound/bsentrygun_blast.ogg" );
	currSentryGun:SetDestructionSequence	( "Resources/Effects/mapeffect_blast_glass.seq", "Resources/Sound/bsentrygun_die.ogg" );
	currSentryGun:SetTime					( 500, 2000, 3000, 400, 4000 );				-- ( u32 uiAttackTime, u32 uiCreationTime, u32 uiDestuctionTime, u32 uiFindTargetTerm, u32 uiReloadTime )
	currSentryGun:SetAttack					( ATTACK_STYLE_SENTINEL, 200, 3000, 0, 20.0 );						-- ( u32 uiCollisionTimeStart, u32 uiCollisionTimePeriod, u32 uiDamageDelay, float fDamageOnce );
	currSentryGun:SetEnableHeadRotation		( false );
	currSentryGun:SetHP						( 110 );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SENTRYGUNATTRIB_SENTRYBEE
	-------------------------------------------------------------------------------------------------------------
	currSentryGun	= SentryGunAttribIndexer:GetCreateSentryGunAttrib( SENTRYGUNATTRIB_HONEYBEE );	

	currSentryGun:SetName					( GetString( "NAME_HONEYBEE" ) );
	currSentryGun:SetBoundSize				( 150.0, 240.0 );
	currSentryGun:SetRange					( 4000.0, 120.0, 40.0 );
	currSentryGun:SetSceneFileName			( "Resources/Model/Weapon/honey_bee.scn" );
--	currSentryGun:SetCreationSequence		( "Resources/Effects/skill_hacker_sentrygun_1_launch_1.seq", "Resources/Sound/bsentrygun_loading.ogg" );
	currSentryGun:SetCreationSequence		( "", "Resources/Sound/bsentrygun_loading.ogg" );
-- currSentryGun:SetTargetSearchSequence	( "Resources/Effects/skill_hacker_sentrygun_2_waiting.seq", "" );
--	currSentryGun:SetTargetDetectSequence	( "Resources/Effects/weapon_sentwall_attack.seq", "Resources/Sound/bsentrygun_blast.ogg" );
	currSentryGun:SetDestructionSequence	( "Resources/Effects/mapeffect_blast_glass.seq", "Resources/Sound/bsentrygun_die.ogg" );
	currSentryGun:SetTime					( 2500, 2000, 3000, 400, 1000 );				-- ( u32 uiAttackTime, u32 uiCreationTime, u32 uiDestuctionTime, u32 uiFindTargetTerm, u32 uiReloadTime )
	currSentryGun:SetAttack					( ATTACK_STYLE_SENTRYGUN, 500, 300, 0, 5.5 );							-- ( u32 uiCollisionTimeStart, u32 uiCollisionTimePeriod, u32 uiDamageDelay, float fDamageOnce );
	currSentryGun:SetEnableHeadRotation		( true );
	currSentryGun:SetHP						( 110 );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SENTRYGUNATTRIB_SENTIFUMBI
	-------------------------------------------------------------------------------------------------------------
	currSentryGun	= SentryGunAttribIndexer:GetCreateSentryGunAttrib( SENTRYGUNATTRIB_SENTIFUMBI );	

	currSentryGun:SetName					( GetString( "NAME_SENTIFUMBI" ) );
	currSentryGun:SetBoundSize				( 150.0, 240.0 );
	currSentryGun:SetRange					( 700.0, 360.0, 180.0 );
	currSentryGun:SetSceneFileName			( "Resources/Model/Weapon/sentipumbe.scn" );
--	currSentryGun:SetCreationSequence		( "Resources/Effects/skill_hacker_sentrygun_1_launch_1.seq", "Resources/Sound/bsentrygun_loading.ogg" );
	currSentryGun:SetCreationSequence		( "", "Resources/Sound/bsentrygun_loading.ogg" );
	currSentryGun:SetTargetSearchSequence	( "Resources/Effects/skill_hacker_sentrygun_2_waiting.seq", "" );
	currSentryGun:SetTargetDetectSequence	( "Resources/Effects/weapon_sentwall_attack.seq", "Resources/Sound/bsentrygun_blast.ogg" );
	currSentryGun:SetDestructionSequence	( "Resources/Effects/mapeffect_blast_glass.seq", "Resources/Sound/bsentrygun_die.ogg" );
	currSentryGun:SetTime					( 500, 2000, 3000, 400, 4000 );				-- ( u32 uiAttackTime, u32 uiCreationTime, u32 uiDestuctionTime, u32 uiFindTargetTerm, u32 uiReloadTime )
	currSentryGun:SetAttack					( ATTACK_STYLE_SENTINEL, 200, 3000, 0, 20.0 );						-- ( u32 uiCollisionTimeStart, u32 uiCollisionTimePeriod, u32 uiDamageDelay, float fDamageOnce );
	currSentryGun:SetEnableHeadRotation		( false );
	currSentryGun:SetHP						( 110 );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- SENTRYGUNATTRIB_SENTRYGUN_BOMB
	-------------------------------------------------------------------------------------------------------------
	currSentryGun	= SentryGunAttribIndexer:GetCreateSentryGunAttrib( SENTRYGUNATTRIB_SENTRYGUN_BOMB );	

	currSentryGun:SetName					( GetString( "NAME_SENTRYGUN_BOMB" ) );
	currSentryGun:SetBoundSize				( 150.0, 240.0 );
	currSentryGun:SetRange					( 700.0, 360.0, 180.0 );   --길이,x축둘레,y축둘레
	currSentryGun:SetSceneFileName			( "Resources/Model/Weapon/sentipumbe.scn" );
--	currSentryGun:SetCreationSequence		( "Resources/Effects/skill_hacker_sentrygun_1_launch_1.seq", "Resources/Sound/bsentrygun_loading.ogg" );
	currSentryGun:SetCreationSequence		( "", "Resources/Sound/bsentrygun_loading.ogg" );
	currSentryGun:SetTargetSearchSequence	( "Resources/Effects/skill_hacker_sentrygun_2_waiting.seq", "" );
	currSentryGun:SetTargetDetectSequence	( "Resources/Effects/weapon_sentwall_attack.seq", "Resources/Sound/bsentrygun_blast.ogg" );
	currSentryGun:SetDestructionSequence	( "Resources/Effects/mapeffect_blast_glass.seq", "Resources/Sound/bsentrygun_die.ogg" );
	currSentryGun:SetTime					( 5500, 2000, 3000, 400, 4000 );	--2500(전체 공격포함하는 시간),2000, 3000, 400, 4000)			-- ( u32 uiAttackTime, u32 uiCreationTime, u32 uiDestuctionTime, u32 uiFindTargetTerm, u32 uiReloadTime )
	currSentryGun:SetAttack					( ATTACK_STYLE_SENTIBOMB, 100, 0, 0, 0 ); --(최초공격초(100),다음공격초(1000),0,20.0) 	다음 공격초는 wepon_sentry.lua내 uiCollisionTimePeriod의 플러스 수치로 잡음					-- ( u32 uiCollisionTimeStart, u32 uiCollisionTimePeriod, u32 uiDamageDelay, float fDamageOnce );
	currSentryGun:SetEnableHeadRotation		( false );
	currSentryGun:SetHP						( 80 );  -- 센트리봄 체력
	currSentryGun:SetAttackLuaFunction		( "StandardSentryMineAttack" );
	-------------------------------------------------------------------------------------------------------------	

	ClearStringTable();  
	
end
