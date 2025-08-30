require "Resources/Script/ActorStates_Constants.lua"


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_WEAK,	WEAPONTYPE_BAT_SWORD
-------------------------------------------------------------------------------------------------------------
function SwordAtkWeakState_BatSword( state )

	state:AddGhostTrail( "GhostTrail_bat_sword_01", 50, 350 );

	local index = 0;
	local ANIMPARAMLIST_FIRST		= index; index = index + 1;
	local ANIMPARAMLIST_SECOND		= index; index = index + 1;
	local ANIMPARAMLIST_THIRD		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FIRST						):SetAnim( "A0002",		600,	200,	300,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SECOND					):SetAnim( "A0003",		600,	200,	300,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_THIRD						):SetAnim( "A0004",		600,	200,	300,	LOOP_FALSE,	1.0, RESET_TRUE		);

	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "E0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "E0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "E0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "E0013", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "A0024", 0,	500, 300,	LOOP_TRUE, 1.0, RESET_TRUE );

end


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_STRONG,	WEAPONTYPE_BAT_SWORD
-------------------------------------------------------------------------------------------------------------
function SwordAtkStrongState_BatSword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 2500 );
	
	state:AddGhostTrail( "GhostTrail_bat_sword_01", 50, 350 );

	local index = 0;
	local ANIMPARAMLIST_FIRST		= index; index = index + 1;
	local ANIMPARAMLIST_SECOND		= index; index = index + 1;
	local ANIMPARAMLIST_THIRD		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FIRST						):SetAnim( "BB001",		900,	200,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SECOND					):SetAnim( "BB001",		900,	200,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_THIRD						):SetAnim( "BB001",		900,	200,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);

	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "E0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "E0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "E0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "E0013", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "A0024",  0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

end


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_JUMPATK,	WEAPONTYPE_BAT_SWORD
-------------------------------------------------------------------------------------------------------------
function SwordJumpAtkState_BatSword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );

	state:AddGhostTrail( "GhostTrail_bat_sword_01", 50, 350 );
	state:AddSequence( 0, "Resources/Effects/skill_bat_strike.seq", "", 0, 5000 );
	state:AddSequence( 0, "Resources/Effects/skill_bat_strike1.seq", "Resources/Sound/sword_power.ogg", 300, 5000 );
	state:AddSequence( 0, "Resources/Effects/bat_jumpattack.seq", "", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "A0015",		300,	200,	1000,	LOOP_FALSE,	0.85, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "A0016",		1000,	50,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);

end


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_STRONG1,	WEAPONTYPE_BAT_SWORD
-------------------------------------------------------------------------------------------------------------
function SwordAtkStrong1State_BatSword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 2500 );

	state:AddGhostTrail( "GhostTrail_bat_sword_01", 50, 350 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "BB001",		900,	200,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "",			0,	50,		0,	LOOP_FALSE,	1.0, RESET_TRUE		);

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_ATTACK2,	WEAPONTYPE_BAT_SWORD
-------------------------------------------------------------------------------------------------------------
function UseWeapon1Attack2State_BatSword( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	state:AddGhostTrail( "GhostTrail_bat_sword_01", 0, 650 );	
	state:AddSequence( 0, "", "Resources/Sound/bat_swing.ogg", 0, 5000 );
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "BB002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "BB003",		0,	0,		400,	LOOP_FALSE,	1.0, RESET_TRUE		);

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_ATTACK3,	WEAPONTYPE_BAT_SWORD
-------------------------------------------------------------------------------------------------------------
function UseWeapon1Attack3State_BatSword( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	state:AddGhostTrail( "GhostTrail_bat_sword_01", 0, 600 );
	state:AddSequence( 0, "", "Resources/Sound/bat_swing.ogg", 0, 5000 );
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "BB002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "BB003",		0,	0,		400,	LOOP_FALSE,	1.0, RESET_TRUE		);

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_ATTACK4,	WEAPONTYPE_BAT_SWORD
-------------------------------------------------------------------------------------------------------------
function UseWeapon1Attack4State_BatSword( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	state:AddGhostTrail( "GhostTrail_bat_sword_01", 0, 550 );
	state:AddSequence( 0, "Resources/Effects/bat_whirlwind1.seq", "Resources/Sound/bat_swing.ogg", 0, 5000 );
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "BB002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "BB003",		0,	0,		200,	LOOP_FALSE,	1.0, RESET_TRUE		);

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_ATTACK5,	WEAPONTYPE_BAT_SWORD
-------------------------------------------------------------------------------------------------------------
function UseWeapon1Attack5State_BatSword( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	state:AddGhostTrail( "GhostTrail_bat_sword_01", 0, 500 );
	state:AddSequence( 0, "Resources/Effects/bat_whirlwind1.seq", "Resources/Sound/bat_swing.ogg", 0, 5000 );
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "BB002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "BB003",		0,	0,		400,	LOOP_FALSE,	1.0, RESET_TRUE		);

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON2,	WEAPONTYPE_BAT_SWORD	
-------------------------------------------------------------------------------------------------------------
function UseWeapon2State_BatSword( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

--	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "B0000",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
--	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "B0001",		800,	0,		1000,	LOOP_FALSE,	1.0, RESET_TRUE		);

	state:AddGhostTrail( "GhostTrail_bat_sword_01", 0, 700 );	
	state:AddSequence( 0, "", "Resources/Sound/bat_swing.ogg", 0, 5000 );
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "BB002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "BB004",		0,	200,		0,	LOOP_FALSE,	1.0, RESET_TRUE		);

end


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_STRONG,	WEAPONTYPE_BAT_SWORD
-------------------------------------------------------------------------------------------------------------
function SwordAtkStrongState_CrashStomBat( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 2500 );
	
	state:AddGhostTrail( "GhostTrail_bat_sword_02", 50, 350 );

	local index = 0;
	local ANIMPARAMLIST_FIRST		= index; index = index + 1;
	local ANIMPARAMLIST_SECOND		= index; index = index + 1;
	local ANIMPARAMLIST_THIRD		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FIRST						):SetAnim( "BB001",		900,	200,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SECOND					):SetAnim( "BB001",		900,	200,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_THIRD						):SetAnim( "BB001",		900,	200,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);

	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "E0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "E0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "E0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "E0013", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "A0024",  0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_JUMPATK,	WEAPONTYPE_BAT_SWORD
-------------------------------------------------------------------------------------------------------------
function SwordJumpAtkState_CrashStomBat( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );

	state:AddGhostTrail( "GhostTrail_bat_sword_02", 50, 350 );
	state:AddSequence( 0, "Resources/Effects/skill_bat_strike.seq", "", 0, 5000 );
	state:AddSequence( 0, "Resources/Effects/skill_bat_strike1.seq", "Resources/Sound/sword_power.ogg", 300, 5000 );
	state:AddSequence( 0, "Resources/Effects/crashbat_jumpattack.seq", "", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "A0015",		300,	200,	1000,	LOOP_FALSE,	0.85, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "A0016",		1000,	50,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);

end



-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_STRONG1,	WEAPONTYPE_BAT_SWORD
-------------------------------------------------------------------------------------------------------------
function SwordAtkStrong1State_CrashStomBat( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 2500 );

	state:AddGhostTrail( "GhostTrail_bat_sword_02", 50, 350 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "BB001",		900,	200,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "",			0,	50,		0,	LOOP_FALSE,	1.0, RESET_TRUE		);

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_ATTACK2,	WEAPONTYPE_BAT_SWORD
-------------------------------------------------------------------------------------------------------------
function UseWeapon1Attack2State_CrashStomBat( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	state:AddGhostTrail( "GhostTrail_bat_sword_02", 0, 650 );	
	state:AddSequence( 0, "", "Resources/Sound/bat_swing.ogg", 0, 5000 );
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "BB002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "BB003",		0,	0,		400,	LOOP_FALSE,	1.0, RESET_TRUE		);

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_ATTACK3,	WEAPONTYPE_BAT_SWORD
-------------------------------------------------------------------------------------------------------------
function UseWeapon1Attack3State_CrashStomBat( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	state:AddGhostTrail( "GhostTrail_bat_sword_02", 0, 600 );
	state:AddSequence( 0, "", "Resources/Sound/bat_swing.ogg", 0, 5000 );
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "BB002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "BB003",		0,	0,		400,	LOOP_FALSE,	1.0, RESET_TRUE		);

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_ATTACK4,	WEAPONTYPE_BAT_SWORD
-------------------------------------------------------------------------------------------------------------
function UseWeapon1Attack4State_CrashStomBat( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	state:AddGhostTrail( "GhostTrail_bat_sword_02", 0, 550 );
	state:AddSequence( 0, "Resources/Effects/crashbat_whirlwind.seq", "Resources/Sound/bat_swing.ogg", 0, 5000 );
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "BB002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "BB003",		0,	0,		200,	LOOP_FALSE,	1.0, RESET_TRUE		);

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_ATTACK5,	WEAPONTYPE_BAT_SWORD
-------------------------------------------------------------------------------------------------------------
function UseWeapon1Attack5State_CrashStomBat( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	state:AddGhostTrail( "GhostTrail_bat_sword_02", 0, 500 );
	state:AddSequence( 0, "Resources/Effects/crashbat_whirlwind.seq", "Resources/Sound/bat_swing.ogg", 0, 5000 );
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "BB002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "BB003",		0,	0,		400,	LOOP_FALSE,	1.0, RESET_TRUE		);

end



-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON2,	WEAPONTYPE_BAT_SWORD	
-------------------------------------------------------------------------------------------------------------
function UseWeapon2State_CrashStomBat( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

--	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "B0000",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
--	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "B0001",		800,	0,		1000,	LOOP_FALSE,	1.0, RESET_TRUE		);

	state:AddGhostTrail( "GhostTrail_bat_sword_02", 0, 700 );	
	state:AddSequence( 0, "", "Resources/Sound/bat_swing.ogg", 0, 5000 );
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "BB002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "BB004",		0,	200,		0,	LOOP_FALSE,	1.0, RESET_TRUE		);

end

---------------------------------------------------------------------------------------------------------------
-- 프라이팬 배트 추가함. 2013-02-19 minho add..
---------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_STRONG,	WEAPONTYPE_BAT_SWORD
-------------------------------------------------------------------------------------------------------------
function SwordAtkStrongState_FrypanBat( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 2500 );
	
	state:AddGhostTrail( "GhostTrail_bat_sword_02", 50, 350 );

	local index = 0;
	local ANIMPARAMLIST_FIRST		= index; index = index + 1;
	local ANIMPARAMLIST_SECOND		= index; index = index + 1;
	local ANIMPARAMLIST_THIRD		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FIRST						):SetAnim( "BB001",		900,	200,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SECOND					):SetAnim( "BB001",		900,	200,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_THIRD						):SetAnim( "BB001",		900,	200,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);

	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "E0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "E0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "E0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "E0013", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "A0024",  0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_JUMPATK,	WEAPONTYPE_BAT_SWORD
-------------------------------------------------------------------------------------------------------------
function SwordJumpAtkState_FrypanBat( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );

	state:AddGhostTrail( "GhostTrail_bat_sword_02", 50, 350 );
	state:AddSequence( 0, "Resources/Effects/skill_bat_strike.seq", "", 0, 5000 );
	state:AddSequence( 0, "Resources/Effects/skill_bat_strike1.seq", "Resources/Sound/sword_power.ogg", 300, 5000 );
	state:AddSequence( 0, "Resources/Effects/frypan_bat_jumpattack.seq", "", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "A0015",		300,	200,	1000,	LOOP_FALSE,	0.85, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "A0016",		1000,	50,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);

end

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_STRONG1,	WEAPONTYPE_BAT_SWORD
-------------------------------------------------------------------------------------------------------------
function SwordAtkStrong1State_FrypanBat( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 2500 );

	state:AddGhostTrail( "GhostTrail_bat_sword_02", 50, 350 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "BB001",		900,	200,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "",			0,	50,		0,	LOOP_FALSE,	1.0, RESET_TRUE		);

end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_ATTACK2,	WEAPONTYPE_BAT_SWORD
-------------------------------------------------------------------------------------------------------------
function UseWeapon1Attack2State_FrypanBat( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	state:AddGhostTrail( "GhostTrail_bat_sword_02", 0, 650 );	
	state:AddSequence( 0, "", "Resources/Sound/bat_swing.ogg", 0, 5000 );
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "BB002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "BB003",		0,	0,		400,	LOOP_FALSE,	1.0, RESET_TRUE		);

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_ATTACK3,	WEAPONTYPE_BAT_SWORD
-------------------------------------------------------------------------------------------------------------
function UseWeapon1Attack3State_FrypanBat( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	state:AddGhostTrail( "GhostTrail_bat_sword_02", 0, 600 );
	state:AddSequence( 0, "", "Resources/Sound/bat_swing.ogg", 0, 5000 );
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "BB002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "BB003",		0,	0,		400,	LOOP_FALSE,	1.0, RESET_TRUE		);

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_ATTACK4,	WEAPONTYPE_BAT_SWORD
-------------------------------------------------------------------------------------------------------------
function UseWeapon1Attack4State_FrypanBat( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	state:AddGhostTrail( "GhostTrail_bat_sword_02", 0, 550 );
	state:AddSequence( 0, "Resources/Effects/frypan_bat_whirlwind.seq", "Resources/Sound/bat_swing.ogg", 0, 5000 );
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "BB002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "BB003",		0,	0,		200,	LOOP_FALSE,	1.0, RESET_TRUE		);

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_ATTACK5,	WEAPONTYPE_BAT_SWORD
-------------------------------------------------------------------------------------------------------------
function UseWeapon1Attack5State_FrypanBat( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	state:AddGhostTrail( "GhostTrail_bat_sword_02", 0, 500 );
	state:AddSequence( 0, "Resources/Effects/frypan_bat_whirlwind.seq", "Resources/Sound/bat_swing.ogg", 0, 5000 );
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "BB002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "BB003",		0,	0,		400,	LOOP_FALSE,	1.0, RESET_TRUE		);

end



-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON2,	WEAPONTYPE_BAT_SWORD	
-------------------------------------------------------------------------------------------------------------
function UseWeapon2State_FrypanBat( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

--	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "B0000",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
--	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "B0001",		800,	0,		1000,	LOOP_FALSE,	1.0, RESET_TRUE		);

	state:AddGhostTrail( "GhostTrail_bat_sword_02", 0, 700 );	
	state:AddSequence( 0, "", "Resources/Sound/bat_swing.ogg", 0, 5000 );
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "BB002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "BB004",		0,	200,		0,	LOOP_FALSE,	1.0, RESET_TRUE		);

end
