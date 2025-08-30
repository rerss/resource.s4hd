require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------------------------
-- STATE_FIRST_BASIC_ATTACK_DEATH_SCYTHE, WEAPONTYPE_DEATH_SCYTHE (사신낫 - 첫번째 공격)       --
-------------------------------------------------------------------------------------------------
function FirstBasicAttack_DEATHSCYTHE( state )

    state:AddSoundBySex( "Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 0, 2500 );

	state:AddGhostTrail( "", 50, 600 );
	state:AddSequenceBySex( 0, "Resources/Effects/deathscythe_1_att.seq", "Resources/Effects/deathscythe_1_att.seq", "", 0, 5000 );
	state:AddSequence( 0, "", "Resources/Sound/deathside_cut01.ogg",200, 700 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "GR001",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "GR003",		0,	800,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end

-------------------------------------------------------------------------------------------------
-- STATE_SECOND_BASIC_ATTACK_DEATH_SCYTHE, WEAPONTYPE_DEATH_SCYTHE (사신낫 - 이어 두번째 공격) --
-------------------------------------------------------------------------------------------------
function SecondBasicAttack_DEATHSCYTHE( state )

    state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 2500 );

	state:AddGhostTrail( "", 50, 600 );
	state:AddSequenceBySex( 0, "Resources/Effects/deathscythe_2_att.seq", "Resources/Effects/deathscythe_2_att.seq", "", 0, 5000 );
	state:AddSequence( 0, "", "Resources/Sound/deathside_cut02.ogg",0, 1000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "GR002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "GR004",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);
	
end

-------------------------------------------------------------------------------------------------
-- STATE_UPPER_CUT_DEATH_SCYTHE, WEAPONTYPE_DEATH_SCYTHE (사신낫 - 이어 세번째 공격 )          --
-------------------------------------------------------------------------------------------------
function ThirdBasicAttack_DEATHSCYTHE( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_4.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	
	state:AddGhostTrail( "GhostTrail_Death_Scythe_01", 50, 600 );
	state:AddSequenceBySex( 0, "Resources/Effects/deathscythe_3_att.seq", "Resources/Effects/deathscythe_3_att.seq", "", 0, 5000 );
	state:AddSequence( 0, "", "Resources/Sound/deathside_smash.ogg",0, 1000 );
 
	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "GR021",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "GR022",		0,	700,	300,	LOOP_FALSE,	1.0, RESET_TRUE	);

end

-------------------------------------------------------------------------------------------------
-- STATE_UPPER_CUT_DEATH_SCYTHE, WEAPONTYPE_DEATH_SCYTHE (사신낫 올려치기)                     --
-------------------------------------------------------------------------------------------------
function StrongUpperCutAttack_DEATHSCYTHE( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_4.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	
	state:AddGhostTrail( "GhostTrail_Death_Scythe_01", 50, 600 );
	state:AddSequenceBySex( 0, "Resources/Effects/weapon_deathscythe_strong_att.seq", "Resources/Effects/weapon_deathscythe_strong_att.seq", "", 0, 5000 );
	state:AddSequence( 0, "", "Resources/Sound/deathside_jump.ogg",0, 1000 );
 
	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "GR004_1",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "GR006",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end

-------------------------------------------------------------------------------------------------
-- STATE_JUMP_ATTACK_DEATH_SCYTHE, WEAPONTYPE_DEATH_SCYTHE (사신낫 점프 상태에서 공격)         --
-------------------------------------------------------------------------------------------------
function JumpAttack_DEATHSCYTHE( state )

    state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0 , 5000 );

	state:AddGhostTrail( "", 50, 300 );
	state:AddSequence( 0, "", "Resources/Sound/deathside_smash.ogg", 300, 1000 );
	state:AddSequenceBySex( 0, "Resources/Effects/deathscythe_4_att.seq", "Resources/Effects/deathscythe_4_att.seq", "", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL	= index; index = index + 1;
	local ANIMPARAMLIST_DELAY	= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL	):SetAnim( "GR011", 0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );
	state:GetAnimParam( ANIMPARAMLIST_DELAY	    ):SetAnim( "GR012",	0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );

end

-------------------------------------------------------------------------------------------------
-- STATE_SPECIAL_ATTACK_DEATH_SCYTHE, WEAPONTYPE_DEATH_SCYTHE (사신낫 우클릭시 특수 공격)      --
-------------------------------------------------------------------------------------------------
function SpecialAttack_DEATHSCYTHE( state )

    state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0 , 5000 );

	state:AddGhostTrail( "", 50, 300 );
	state:AddSequence( 0, "", "Resources/Sound/deathside_jump.ogg", 0, 5000 );
	
	-- 사신낫에만 있는 특수한 상황...
	-- 첫번째 공격을 수행할 때... 사용될 이펙트...
	state:AddSequenceBySex( 0, "Resources/Effects/deathscythe_ex_att_eff.seq", "Resources/Effects/deathscythe_ex_att_eff.seq", "", 0, 5000 );
	
	-- 아래에 선언된 AddSequence, AddSequenceBySex는 반드시 모든 AddSequence, AddSequenceBySex 보다 아래로 있어야 합니다.
	-- 첫번째 공격이 성공하고 두번째 공격에서 사용될 이펙트와 사운드
	state:AddSequence( 0, "", "Resources/Sound/deathside_Special_laughing.ogg", 1000, 2000 ); -- 이 사운드는 꼭 여기다 추가하세요.
	                                                                    -- 현재 1000 이라고 되어 있는 곳에는 반드시 0보다 큰 값이 들어가야 합니다. 적어도 100 이상 (사신낫에만 있는 특수한 경우)
	state:AddSequenceBySex( 0, "Resources/Effects/deathscythe_ex2_att_eff.seq", "Resources/Effects/deathscythe_ex2_att_eff.seq", "", 500, 5000 );
	-- 여기 뒤로... AddSequence 및 AddSequenceBySex 하지 마세요.

	local index = 0;
	local ANIMPARAMLIST_FIRST_ATTACK	    = index; index = index + 1;
	local ANIMPARAMLIST_FINISH_ATTACK	    = index; index = index + 1;
	local ANIMPARAMLIST_FIRST_ATTACK_DELAY  = index; index = index + 1;
	local ANIMPARAMLIST_FINISH_ATTACK_DELAY = index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_FIRST_ATTACK	        ):SetAnim( "GR007", 0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );    -- 첫번째 공격
	state:GetAnimParam( ANIMPARAMLIST_FINISH_ATTACK	        ):SetAnim( "GR009",	0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );    -- 두번째 특수 자동 공격
    state:GetAnimParam( ANIMPARAMLIST_FIRST_ATTACK_DELAY	):SetAnim( "GR008",	0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );	-- 첫번째 공격 후, Delay
    state:GetAnimParam( ANIMPARAMLIST_FINISH_ATTACK_DELAY	):SetAnim( "GR010",	0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );    -- 두번째 공격 후, Delay

end

----------------------------------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------
-- STATE_FIRST_BASIC_ATTACK_DEATH_SCYTHE, WEAPONTYPE_DEATH_SCYTHE ( 사신낫 유니크 - 첫번째 공격 )       --
-------------------------------------------------------------------------------------------------
function FirstBasicAttack_DEATHSCYTHE_Unique( state )

    state:AddSoundBySex( "Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 0, 2500 );

	state:AddGhostTrail( "", 50, 600 );
	state:AddSequenceBySex( 0, "Resources/Effects/deathscythe_1_att.seq", "Resources/Effects/deathscythe_1_att.seq", "", 0, 5000 );
	state:AddSequence( 0, "", "Resources/Sound/deathside_cut01.ogg",200, 700 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "GR001",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "GR003",		0,	800,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end

-------------------------------------------------------------------------------------------------
-- STATE_SECOND_BASIC_ATTACK_DEATH_SCYTHE, WEAPONTYPE_DEATH_SCYTHE ( 사신낫 유니크 - 이어 두번째 공격) --
-------------------------------------------------------------------------------------------------
function SecondBasicAttack_DEATHSCYTHE_Unique( state )

    state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 2500 );

	state:AddGhostTrail( "", 50, 600 );
	state:AddSequenceBySex( 0, "Resources/Effects/deathscythe_2_att.seq", "Resources/Effects/deathscythe_2_att.seq", "", 0, 5000 );
	state:AddSequence( 0, "", "Resources/Sound/deathside_cut02.ogg",0, 1000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "GR002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "GR004",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);
	
end

-------------------------------------------------------------------------------------------------
-- STATE_UPPER_CUT_DEATH_SCYTHE, WEAPONTYPE_DEATH_SCYTHE ( 사신낫 유니크 - 이어 세번째 공격 )          --
-------------------------------------------------------------------------------------------------
function ThirdBasicAttack_DEATHSCYTHE_Unique( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_4.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	
	state:AddGhostTrail( "GhostTrail_Death_Scythe_01", 50, 600 );
	state:AddSequenceBySex( 0, "Resources/Effects/deathscythe_3_att.seq", "Resources/Effects/deathscythe_3_att.seq", "", 0, 5000 );
	state:AddSequence( 0, "", "Resources/Sound/deathside_smash.ogg",0, 1000 );
 
	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "GR021",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "GR022",		0,	700,	300,	LOOP_FALSE,	1.0, RESET_TRUE	);

end

-------------------------------------------------------------------------------------------------
-- STATE_UPPER_CUT_DEATH_SCYTHE, WEAPONTYPE_DEATH_SCYTHE ( 사신낫 유니크 올려치기 )                     --
-------------------------------------------------------------------------------------------------
function StrongUpperCutAttack_DEATHSCYTHE_Unique( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_4.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	
	state:AddGhostTrail( "GhostTrail_Death_Scythe_01", 50, 600 );
	state:AddSequenceBySex( 0, "Resources/Effects/weapon_deathscythe_tod_strong_att.seq", "Resources/Effects/weapon_deathscythe_tod_strong_att.seq", "", 0, 5000 );
	state:AddSequence( 0, "", "Resources/Sound/deathside_jump.ogg",0, 1000 );
 
	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "GR004_1",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "GR006",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end

-------------------------------------------------------------------------------------------------
-- STATE_JUMP_ATTACK_DEATH_SCYTHE, WEAPONTYPE_DEATH_SCYTHE ( 사신낫 유니크 점프 상태에서 공격)         --
-------------------------------------------------------------------------------------------------
function JumpAttack_DEATHSCYTHE_Unique( state )

    state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0 , 5000 );

	state:AddGhostTrail( "", 50, 300 );
	state:AddSequence( 0, "", "Resources/Sound/deathside_smash.ogg", 300, 1000 );
	state:AddSequenceBySex( 0, "Resources/Effects/deathscythe_4_att.seq", "Resources/Effects/deathscythe_4_att.seq", "", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL	= index; index = index + 1;
	local ANIMPARAMLIST_DELAY	= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL	):SetAnim( "GR011", 0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );
	state:GetAnimParam( ANIMPARAMLIST_DELAY	    ):SetAnim( "GR012",	0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );

end

-------------------------------------------------------------------------------------------------
-- STATE_SPECIAL_ATTACK_DEATH_SCYTHE, WEAPONTYPE_DEATH_SCYTHE ( 사신낫 유니크 우클릭시 특수 공격 )      --
-------------------------------------------------------------------------------------------------
function SpecialAttack_DEATHSCYTHE_Unique( state )

    state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0 , 5000 );

	state:AddGhostTrail( "", 50, 300 );
	state:AddSequence( 0, "", "Resources/Sound/deathside_jump.ogg", 0, 5000 );
	
	-- 사신낫에만 있는 특수한 상황...
	-- 첫번째 공격을 수행할 때... 사용될 이펙트...
	state:AddSequenceBySex( 0, "Resources/Effects/deathscythe_ex_att_eff.seq", "Resources/Effects/deathscythe_ex_att_eff.seq", "", 0, 5000 );
	
	-- 아래에 선언된 AddSequence, AddSequenceBySex는 반드시 모든 AddSequence, AddSequenceBySex 보다 아래로 있어야 합니다.
	-- 첫번째 공격이 성공하고 두번째 공격에서 사용될 이펙트와 사운드
	state:AddSequence( 0, "", "Resources/Sound/deathside_Special_laughing.ogg", 1000, 2000 ); -- 이 사운드는 꼭 여기다 추가하세요.
	                                                                    -- 현재 1000 이라고 되어 있는 곳에는 반드시 0보다 큰 값이 들어가야 합니다. 적어도 100 이상 (사신낫에만 있는 특수한 경우)
	state:AddSequenceBySex( 0, "Resources/Effects/deathscythe_ex2_att_eff.seq", "Resources/Effects/deathscythe_ex2_att_eff.seq", "", 500, 5000 );
	-- 여기 뒤로... AddSequence 및 AddSequenceBySex 하지 마세요.

	local index = 0;
	local ANIMPARAMLIST_FIRST_ATTACK	    = index; index = index + 1;
	local ANIMPARAMLIST_FINISH_ATTACK	    = index; index = index + 1;
	local ANIMPARAMLIST_FIRST_ATTACK_DELAY  = index; index = index + 1;
	local ANIMPARAMLIST_FINISH_ATTACK_DELAY = index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_FIRST_ATTACK	        ):SetAnim( "GR007", 0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );    -- 첫번째 공격
	state:GetAnimParam( ANIMPARAMLIST_FINISH_ATTACK	        ):SetAnim( "GR009",	0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );    -- 두번째 특수 자동 공격
    state:GetAnimParam( ANIMPARAMLIST_FIRST_ATTACK_DELAY	):SetAnim( "GR008",	0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );	-- 첫번째 공격 후, Delay
    state:GetAnimParam( ANIMPARAMLIST_FINISH_ATTACK_DELAY	):SetAnim( "GR010",	0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );    -- 두번째 공격 후, Delay

end