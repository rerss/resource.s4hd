require "Resources/Script/ActorStates_Constants.lua"


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH1,	WEAPONTYPE_BREAKER	
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash1State_Breaker( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 2500 );
	
	state:AddGhostTrail( "GhostTrail_Breaker_01", 50, 300 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "HM001",			0,	200,		0,		LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "HM002",		0,	200,	100,	LOOP_FALSE,	1.0, RESET_TRUE	);

end	



-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_STRONG,	WEAPONTYPE_BREAKER	
-------------------------------------------------------------------------------------------------------------
function SwordAtkStrongState_Breaker( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 2500 );
	
	state:AddGhostTrail( "GhostTrail_Breaker_01", 50, 600 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "HM001",			0,	200,		0,		LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "HM002",		0,	200,	100,	LOOP_FALSE,	1.0, RESET_TRUE	);

end	


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH4,	WEAPONTYPE_BREAKER	- 특수공격/특수공격회수	
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash4State_Breaker( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );
	state:AddSequence( 0, "Resources/Effects/weapon_breaker_chargeattcack.seq", "", 500, 5000 );
	state:AddSequence( 0, "", "Resources/Sound/breaker_big_smash.ogg", 0, 0 );

	state:AddGhostTrail( "GhostTrail_Breaker_01", 100, 900 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "HM004",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "HM005",		0,	200,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end	

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH5,	WEAPONTYPE_BREAKER	- 차지 유지
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash5State_Breaker( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/	Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );
--	state:AddSequence( 0, "Resources/Effects/weapon_brealer_charge_loop.seq", "Resources/Sound/sword_power.ogg", 500, 5000 );


	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "HM007",		0,	200,	0,	LOOP_TRUE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "HM007",		0,	1000,	1000,	LOOP_TRUE,	1.0, RESET_TRUE	);

	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "SG018", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT			):SetAnim( "SG019", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "SG020", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT		):SetAnim( "SG021", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "SG022", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "SG023", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK			):SetAnim( "SG024", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK			):SetAnim( "SG025", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "HM007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );	

end	

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_JUMPATK,	WEAPONTYPE_BREAKER	
-------------------------------------------------------------------------------------------------------------
function SwordJumpAtkState_Breaker( state )


	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );

	state:AddGhostTrail( "GhostTrail_Breaker_01", 50, 350 );
	state:AddSequence( 0, "Resources/Effects/skill_bat_strike.seq", "", 0, 5000 );    -- ( 0, "Resources/Effects/skill_bat_strike.seq", "", 사운드가 들리는 시간, 상대에게 사운드가 들리는 거리 )
	state:AddSequence( 0, "Resources/Effects/skill_bat_strike1.seq", "Resources/Sound/sword_power.ogg", 300, 5000 );
	state:AddSequence( 0, "Resources/Effects/hm_jumpattack.seq", "", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "HM016",		300,	200,	1000,	LOOP_FALSE,	0.85, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "HM017",		1000,	50,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);

end	

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_JUMPATK,	WEAPONTYPE_BREAKER	- 게이트브레이커 점프공격
-------------------------------------------------------------------------------------------------------------
function SwordJumpAtkState_GateBreaker( state )


	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );

	state:AddGhostTrail( "GhostTrail_Breaker_01", 50, 350 );
	state:AddSequence( 0, "Resources/Effects/skill_bat_strike.seq", "", 0, 5000 );
	state:AddSequence( 0, "Resources/Effects/skill_bat_strike1.seq", "Resources/Sound/sword_power.ogg", 300, 5000 );
	state:AddSequence( 0, "Resources/Effects/gate_jump.seq", "", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "HM016",		300,	200,	1000,	LOOP_FALSE,	0.85, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "HM017",		1000,	50,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);

end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON2,	WEAPONTYPE_BREAKER	- 차지 모으기
-------------------------------------------------------------------------------------------------------------
function UseWeapon2State_Breaker( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );
--	state:AddSequence( 0, "Resources/Effects/weapon_breaker_charge.seq", "Resources/Sound/sword_power.ogg", 500, 5000 );


	local index = 0;

	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "HM006",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
--	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "HM006",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "SG018", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT			):SetAnim( "SG019", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "SG020", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT		):SetAnim( "SG021", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "SG022", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "SG023", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK			):SetAnim( "SG024", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK			):SetAnim( "SG025", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "HM006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );	

end

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_JUMPATK,	WEAPONTYPE_BREAKER	- 브레이커 유니크 점프공격
-------------------------------------------------------------------------------------------------------------
function SwordJumpAtkState_BreakerUnique( state )


	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );

	state:AddGhostTrail( "GhostTrail_Breaker_01", 50, 350 );
	state:AddSequence( 0, "Resources/Effects/skill_bat_strike.seq", "", 0, 5000 );
	state:AddSequence( 0, "Resources/Effects/skill_bat_strike1.seq", "Resources/Sound/sword_power.ogg", 300, 5000 );
	state:AddSequence( 0, "Resources/Effects/breaker_oriental_jump.seq", "", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "HM016",		300,	200,	1000,	LOOP_FALSE,	0.85, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "HM017",		1000,	50,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);

end

function SwordJumpAtkState_Breaker_project( state )


	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );

	state:AddGhostTrail( "GhostTrail_Breaker_01", 50, 350 );
	state:AddSequence( 0, "Resources/Effects/skill_bat_strike.seq", "", 0, 5000 );
	state:AddSequence( 0, "Resources/Effects/skill_bat_strike1.seq", "Resources/Sound/sword_power.ogg", 300, 5000 );
	state:AddSequence( 0, "Resources/Effects/119_weapon_breaker_jump_eff.seq", "", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "HM016",		300,	200,	1000,	LOOP_FALSE,	0.85, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "HM017",		1000,	50,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);

end
