require "Resources/Script/ActorStates_Constants.lua"


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_JUMPATK,	WEAPONTYPE_SPYDAGGER	
-------------------------------------------------------------------------------------------------------------
function SwordJumpAtkState_SpyDagger( state )

--	state:AddSequence( 0, "Resources/Effects/shortknife.seq", "", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL_FIRST	= index; index = index + 1;
	local ANIMPARAMLIST_NORMAL_SECOND	= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_FIRST					):SetAnim( "SN003",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_SECOND					):SetAnim( "SN003",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "SN000",		0,	0,	100,	LOOP_FALSE,	1.0, RESET_TRUE	);

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_WEAK,	WEAPONTYPE_SPYDAGGER	
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_SpyDagger( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0 , 5000 );

	state:AddGhostTrail( "GhostTrail_SpyDagger_01", 50, 300 );
	state:AddSequence( 0, "", "", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL_FIRST	= index; index = index + 1;
	local ANIMPARAMLIST_NORMAL_SECOND	= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_FIRST					):SetAnim( "SN013",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_SECOND					):SetAnim( "SN014",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	
	
	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "DD005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT			):SetAnim( "DD006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "DD007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT		):SetAnim( "DD008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "DD009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "DD010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK			):SetAnim( "DD011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK			):SetAnim( "DD012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "A0024", 0,	500, 300,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON2_WEAK,	WEAPONTYPE_SPYDAGGER	
-------------------------------------------------------------------------------------------------------------
function UseWeapon2State_SpyDagger( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0 , 5000 );

	--state:AddGhostTrail( "GhostTrail_two_hand_sword_01", 50, 350 );
	state:AddSequence( 0, "Resources/Effects/shortknife01.seq", "", 0, 5000 );
	
	local index = 0;
	local ANIMPARAMLIST_NORMAL_FIRST	= index; index = index + 1;
	local ANIMPARAMLIST_NORMAL_SECOND	= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_FIRST					):SetAnim( "SN001",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_SECOND					):SetAnim( "SN001",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "SN012",		0,	0,	100,	LOOP_FALSE,	1.0, RESET_TRUE	);
end

-------------------------------------------------------------------------------------------------------------
-- 스파이 대거 ( 조커 ) 좌클릭 공격
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_SpyDagger3( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0 , 5000 );

	state:AddGhostTrail( "GhostTrail_SpyDagger_03", 50, 300 );
	state:AddSequence( 0, "", "", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL_FIRST	= index; index = index + 1;
	local ANIMPARAMLIST_NORMAL_SECOND	= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_FIRST					):SetAnim( "SN013",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_SECOND					):SetAnim( "SN014",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	
	
	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "DD005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT			):SetAnim( "DD006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "DD007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT		):SetAnim( "DD008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "DD009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "DD010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK			):SetAnim( "DD011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK			):SetAnim( "DD012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "A0024", 0,	500, 300,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end

-------------------------------------------------------------------------------------------------------------
-- 스파이 대거 ( 조커 ) 우클릭 공격
-------------------------------------------------------------------------------------------------------------
function UseWeapon2State_SpyDagger3( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0 , 5000 );

	--state:AddGhostTrail( "GhostTrail_two_hand_sword_01", 50, 350 );
	state:AddSequence( 0, "Resources/Effects/shortknife03_joker.seq", "", 0, 5000 );
	
	local index = 0;
	local ANIMPARAMLIST_NORMAL_FIRST	= index; index = index + 1;
	local ANIMPARAMLIST_NORMAL_SECOND	= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_FIRST					):SetAnim( "SN001",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_SECOND					):SetAnim( "SN001",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "SN012",		0,	0,	100,	LOOP_FALSE,	1.0, RESET_TRUE	);
end

-------------------------------------------------------------------------------------------------------------
-- 스파이 대거 마하3 일반 공격
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_SpyDagger_Mach3( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0 , 5000 );

	state:AddGhostTrail( "GhostTrail_SpyDagger_04", 50, 300 );
	state:AddSequence( 0, "", "", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL_FIRST	= index; index = index + 1;
	local ANIMPARAMLIST_NORMAL_SECOND	= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_FIRST					):SetAnim( "SN013",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_SECOND					):SetAnim( "SN014",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	
	
	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "DD005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT			):SetAnim( "DD006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "DD007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT		):SetAnim( "DD008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "DD009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "DD010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK			):SetAnim( "DD011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK			):SetAnim( "DD012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "A0024", 0,	500, 300,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end

-------------------------------------------------------------------------------------------------------------
-- 스파이 대거 마하3 특수 공격
-------------------------------------------------------------------------------------------------------------
function UseWeapon2State_SpyDagger_Mach3( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0 , 5000 );

	--state:AddGhostTrail( "GhostTrail_two_hand_sword_01", 50, 350 );
	state:AddSequence( 0, "Resources/Effects/shortknife04_mach3.seq", "", 0, 5000 );
	
	local index = 0;
	local ANIMPARAMLIST_NORMAL_FIRST	= index; index = index + 1;
	local ANIMPARAMLIST_NORMAL_SECOND	= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_FIRST					):SetAnim( "SN001",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_SECOND					):SetAnim( "SN001",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "SN012",		0,	0,	100,	LOOP_FALSE,	1.0, RESET_TRUE	);
end

-------------------------------------------------------------------------------------------------------------
-- 스파이 대거 마하3 ( 이벤트 ) 일반 공격
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_SpyDagger_Mach3_Event( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0 , 5000 );

	state:AddGhostTrail( "GhostTrail_SpyDagger_05", 50, 300 );
	state:AddSequence( 0, "", "", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL_FIRST	= index; index = index + 1;
	local ANIMPARAMLIST_NORMAL_SECOND	= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_FIRST					):SetAnim( "SN013",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_SECOND					):SetAnim( "SN014",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	
	
	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "DD005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT			):SetAnim( "DD006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "DD007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT		):SetAnim( "DD008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "DD009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "DD010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK			):SetAnim( "DD011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK			):SetAnim( "DD012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "A0024", 0,	500, 300,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end

-------------------------------------------------------------------------------------------------------------
-- 스파이 대거 마하3 ( 이벤트 ) 특수 공격
-------------------------------------------------------------------------------------------------------------
function UseWeapon2State_SpyDagger_Mach3_Event( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0 , 5000 );

	--state:AddGhostTrail( "GhostTrail_two_hand_sword_01", 50, 350 );
	state:AddSequence( 0, "Resources/Effects/spydagger_mach3_eff_02_violet.seq", "", 0, 5000 );
	
	local index = 0;
	local ANIMPARAMLIST_NORMAL_FIRST	= index; index = index + 1;
	local ANIMPARAMLIST_NORMAL_SECOND	= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_FIRST					):SetAnim( "SN001_2",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_SECOND					):SetAnim( "SN001_2",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "SN012",		0,	0,	100,	LOOP_FALSE,	1.0, RESET_TRUE	);
end

-------------------------------------------------------------------------------------------------------------
-- 글리치 파괴 스파이 대거
-------------------------------------------------------------------------------------------------------------

-- 특수 공격
function UseWeapon2State_GlitchDestroyed_SpyDagger( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0 , 5000 );

	--state:AddGhostTrail( "GhostTrail_two_hand_sword_01", 50, 350 );
	state:AddSequence( 0, "Resources/Effects/spydagger_glitch_eff_01.seq", "", 0, 5000 );
	
	local index = 0;
	local ANIMPARAMLIST_NORMAL_FIRST	= index; index = index + 1;
	local ANIMPARAMLIST_NORMAL_SECOND	= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_FIRST					):SetAnim( "SN001",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_SECOND					):SetAnim( "SN001",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "SN012",		0,	0,	100,	LOOP_FALSE,	1.0, RESET_TRUE	);
end

-- 일반공격
function UseWeapon1State_GlitchDestroyed_SpyDagger( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0 , 5000 );

	state:AddGhostTrail( "GhostTrail_SpyDagger_06", 50, 300 );
	state:AddGhostTrail( "GhostTrail_SpyDagger_07", 50, 300 );
	state:AddSequence( 0, "", "", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL_FIRST	= index; index = index + 1;
	local ANIMPARAMLIST_NORMAL_SECOND	= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_FIRST					):SetAnim( "SN013",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_SECOND					):SetAnim( "SN014",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	
	
	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "DD005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT			):SetAnim( "DD006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "DD007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT		):SetAnim( "DD008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "DD009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "DD010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK			):SetAnim( "DD011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK			):SetAnim( "DD012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "A0024", 0,	500, 300,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end



-------------------------------------------------------------------------------------------------------------
-- 아이스 엣지 좌클릭 공격
-------------------------------------------------------------------------------------------------------------
function UseWeapon1_ice_SpyDagger( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0 , 5000 );

	state:AddGhostTrail( "GhostTrail_SpyDagger_08", 50, 300 );
	state:AddSequence( 0, "", "", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL_FIRST	= index; index = index + 1;
	local ANIMPARAMLIST_NORMAL_SECOND	= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_FIRST					):SetAnim( "SN013",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_SECOND					):SetAnim( "SN014",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	
	
	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "DD005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT			):SetAnim( "DD006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "DD007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT		):SetAnim( "DD008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "DD009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "DD010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK			):SetAnim( "DD011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK			):SetAnim( "DD012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "A0024", 0,	500, 300,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end


-------------------------------------------------------------------------------------------------------------
-- 아이스 엣지 우클릭 공격
-------------------------------------------------------------------------------------------------------------
function UseWeapon2_ice_SpyDagger( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0 , 5000 );

	--state:AddGhostTrail( "GhostTrail_two_hand_sword_01", 50, 350 );
	state:AddSequence( 0, "Resources/Effects/115_spy_weapon_attack_effect.seq", "", 0, 5000 );
	
	local index = 0;
	local ANIMPARAMLIST_NORMAL_FIRST	= index; index = index + 1;
	local ANIMPARAMLIST_NORMAL_SECOND	= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_FIRST					):SetAnim( "SN001",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_SECOND					):SetAnim( "SN001",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "SN012",		0,	0,	100,	LOOP_FALSE,	1.0, RESET_TRUE	);
end