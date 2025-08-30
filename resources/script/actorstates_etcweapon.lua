require "Resources/Script/ActorStates_Constants.lua"


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_RIFLE
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_AimedShotAttack( state )

	-- UpperPart 조준시
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- UpperPart 사격시
	customAnimBlender = state:GetCustomAnimBlender( 1 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "E0004", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "E0006", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "E0004", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "E0006", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "E0004", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "E0006", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "E0004", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "E0006", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "E0004", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "E0006", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "E0004", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "E0006", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "E0004", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "E0006", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "E0004", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "E0006", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "E0004", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "E0006", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "E0004",	"E0005",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "E0006",	"E0005",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "E0004",	"E0005",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "E0006",	"E0005",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "E0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_SUBMACHINE_GUN
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_SubMachineGunAttack( state )

	local index = 0;
	local ANIMPARAMLIST_FIRING		= index; index = index + 1;
	local ANIMPARAMLIST_MISFIRING	= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_FIRING					):SetAnim( "base",		0,	200,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_MISFIRING					):SetAnim( "base",		0,	200,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	
	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "D0004",	"D0004_1",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "D0004_2",	"D0004_1",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "D0005",	"D0005_1",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "D0005_2",	"D0005_1",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "D0006",	"D0006_1",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "D0006_2",	"D0006_1",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "D0007",	"D0007_1",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "D0007_2",	"D0007_1",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "D0008",	"D0008_1",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "D0008_2",	"D0008_1",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "D0009",	"D0009_1",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "D0009_2",	"D0009_1",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "D0010",	"D0010_1",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "D0010_2",	"D0010_1",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "D0011",	"D0011_1",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "D0011_2",	"D0011_1",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "D0000",	"D0001",	250,	500, 500,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "D0002",	"D0001",	250,	500, 500,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "D0000", "D0001", 0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "D0002", "D0001", 0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "D0000", "D0001", 0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "D0002", "D0001", 0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "D0004_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "D0005_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "D0006_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "D0007_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "D0008_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "D0009_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "D0010_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "D0011_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "D0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_MACHINE_GUN
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_MachineGunAttack( state )
	
	local index = 0;
	local ANIMPARAMLIST_BEGIN		= index; index = index + 1;
	local ANIMPARAMLIST_FIRING		= index; index = index + 1;
	local ANIMPARAMLIST_MISFIRING	= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_BEGIN						):SetAnim( "F0001",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FIRING					):SetAnim( "F0003",		0,	200,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_MISFIRING					):SetAnim( "F0003",		0,	200,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	
	
	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "F0003", "F0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "F0005", "F0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "F0003", "F0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "F0005", "F0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "F0003", "F0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "F0005", "F0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "F0003", "F0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "F0005", "F0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "F0003", "F0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "F0005", "F0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "F0003", "F0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "F0005", "F0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "F0003", "F0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "F0005", "F0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "F0003", "F0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "F0005", "F0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "F0003", "F0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "F0005", "F0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "F0003", "F0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "F0005", "F0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "F0003", "F0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "F0005", "F0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "F0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "F0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "F0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "F0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "F0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "F0013", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "F0014", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "F0015", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "F0017", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_MIND_ENERGY
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_MindEnergy1( state )

	local index = 0;
	local ANIMPARAMLIST_BEGIN		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_BEGIN						):SetAnim( "H0000",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "H0000", "H0001", 1000,	500, 500,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "H0002", "H0001", 1000,	500, 500,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	(				):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	(				):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	(				):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	(				):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_MIND_ENERGY ( MAGIC_CUBE )
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_Magic_Cube( state )

	local index = 0;
	local ANIMPARAMLIST_BEGIN	    = index; index = index + 1;
    local ANIMPARAMLIST_FIRING      = index; index = index + 1;
    local ANIMPARAMLIST_MISFIRING   = index; index = index + 1;
    local ANIMPARAMLIST_END         = index; index = index + 1;

    	-- 사용을 시작하는 단계
	state:GetAnimParam( ANIMPARAMLIST_BEGIN     ):SetAnim( "H0020", 0, 200, 0, LOOP_FALSE, 1.0, RESET_TRUE );
	-- 계속 발사 중인 상태...
	state:GetAnimParam( ANIMPARAMLIST_FIRING    ):SetAnim( "H0020", 0, 200, 0, LOOP_FALSE, 1.0, RESET_TRUE );
	-- 탄약이 없는 상태에서 발사 상태가 지속되는 경우
	state:GetAnimParam( ANIMPARAMLIST_MISFIRING ):SetAnim( "H0021", 0, 200, 0, LOOP_TRUE, 1.0, RESET_TRUE );
	-- 상태가 변해 무기에 대한 State가 변화하는 상태
	state:GetAnimParam( ANIMPARAMLIST_END       ):SetAnim( "H0021", 0, 200, 0, LOOP_TRUE, 1.0, RESET_TRUE );
	

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		    ):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		    ):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		    ):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		    ):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		    ):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		    ):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		    ):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		    ):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		    ):SetBlendingAnim( "H0000", "H0001", 1000,	500, 500,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		    ):SetBlendingAnim( "H0002", "H0001", 1000,	500, 500,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	(				):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	(				):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	(				):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	(				):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		    ):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		    ):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		    ):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		    ):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		    ):SetAnim( "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_MINE_LAUNCHER	
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_MineLauncher( state )

	local index = 0;
	local ANIMPARAMLIST_BEGIN		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_BEGIN						):SetAnim( "G0001",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "G0015", "G0016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "G0017", "G0016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "G0015", "G0016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "G0017", "G0016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "G0015", "G0016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "G0017", "G0016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "G0015", "G0016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "G0017", "G0016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "G0015", "G0016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "G0017", "G0016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "G0015", "G0016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "G0017", "G0016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "G0015", "G0016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "G0017", "G0016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "G0015", "G0016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "G0017", "G0016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "G0000", "G0001", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "G0003", "G0001", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "G0015", "G0016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "G0017", "G0016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "G0015", "G0016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "G0017", "G0016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "DD005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "DD006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "DD007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "DD008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "DD009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "DD010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "DD011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "DD012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "G0000", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
																							 
end
	
	
-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_SENTRYGUN_BUILDER	
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_SentryGunBuilder( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "K0000",		1000,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE		);

end	


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_REVOLVER	
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_Revolver( state )	

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "Q0001",		"Q0002",	0,	500,	500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "Q0003",		"Q0002",	0,	500,	500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "Q0001",		"Q0002",	0,	500,	500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "Q0003",		"Q0002",	0,	500,	500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "Q0001",		"Q0002",	0,	500,	500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "Q0003",		"Q0002",	0,	500,	500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "Q0001",		"Q0002",	0,	500,	500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "Q0003",		"Q0002",	0,	500,	500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "Q0001",		"Q0002",	0,	500,	500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "Q0003",		"Q0002",	0,	500,	500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "Q0001",		"Q0002",	0,	500,	500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "Q0003",		"Q0002",	0,	500,	500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "Q0001",		"Q0002",	0,	500,	500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "Q0003",		"Q0002",	0,	500,	500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "Q0001",		"Q0002",	0,	500,	500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "Q0003",		"Q0002",	0,	500,	500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "Q0001",		"Q0002",	0,	500,	500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "Q0003",		"Q0002",	0,	500,	500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "Q0001", "Q0002", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "Q0003", "Q0002", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "Q0001", "Q0002", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "Q0003", "Q0002", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "Q0002", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );

end
		
		
-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_SMG2
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_SMG2( state )

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "W0001",	"W0002",	0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "W0003",	"W0002",	0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "W0001",	"W0002",	0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "W0003",	"W0002",	0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "W0001",	"W0002",	0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "W0003",	"W0002",	0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "W0001",	"W0002",	0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "W0003",	"W0002",	0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "W0001",	"W0002",	0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "W0003",	"W0002",	0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "W0001",	"W0002",	0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "W0003",	"W0002",	0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "W0001",	"W0002",	0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "W0003",	"W0002",	0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "W0001",	"W0002",	0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "W0003",	"W0002",	0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "W0001",	"W0002",	250,	500, 500,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "W0003",	"W0002",	250,	500, 500,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "W0001", "W0002", 0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "W0003", "W0002", 0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "W0001", "W0002", 0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "W0003", "W0002", 0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "W0013", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_CANNONADE	
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_Cannonade( state )

	-- UpperPart 조준시
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- UpperPart 사격시
	customAnimBlender = state:GetCustomAnimBlender( 1 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "E0004_C", "E0005_C", 1500,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "E0006_C", "E0005_C", 1500,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "E0004_C", "E0005_C", 1500,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "E0006_C", "E0005_C", 1500,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "E0004_C", "E0005_C", 1500,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "E0006_C", "E0005_C", 1500,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "E0004_C", "E0005_C", 1500,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "E0006_C", "E0005_C", 1500,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "E0004_C", "E0005_C", 1500,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "E0006_C", "E0005_C", 1500,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "E0004_C", "E0005_C", 1500,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "E0006_C", "E0005_C", 1500,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "E0004_C", "E0005_C", 1500,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "E0006_C", "E0005_C", 1500,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "E0004_C", "E0005_C", 1500,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "E0006_C", "E0005_C", 1500,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "E0004_C", "E0005_C", 1500,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "E0006_C", "E0005_C", 1500,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "E0004_C",	"E0005_C",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "E0006_C",	"E0005_C",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "E0004_C",	"E0005_C",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "E0006_C",	"E0005_C",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "E0001", 0,		500, 0,		LOOP_TRUE, 1.0, RESET_FALSE );
			
end

	
-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_MIND_STROM	
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_MindStorm( state )
	
	local index = 0;
	local ANIMPARAMLIST_BEGIN		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_BEGIN						):SetAnim( "H0000",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_MIND_STROM 마인드 쇼크 유니크	
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_MindStorm_Unique( state )
	
	local index = 0;
	local ANIMPARAMLIST_BEGIN		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_BEGIN						):SetAnim( "H0000",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_SENTIWALL_BUILDER	
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_SentiwallBuilder( state )
	
	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "K0000",		0,	1000,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_SENTINEL_BUILDER	
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_SentinelBuilder( state )
	
	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "K0000",		0,	1000,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_MG2
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_MG2( state )
	
	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "Z0001", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "Z0003", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "Z0001", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "Z0003", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "Z0001", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "Z0003", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "Z0001", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "Z0003", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "Z0001", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "Z0003", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "Z0001", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "Z0003", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "Z0001", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "Z0003", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "Z0001", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "Z0003", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "Z0001", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "Z0003", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "Z0001", "Z0002", 0,	0, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "Z0003", "Z0002", 0,	0, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "Z0001", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "Z0003", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- UpperPart1
	customAnimBlender = state:GetCustomAnimBlender( 1 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "ZZ001", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "ZZ003", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "ZZ001", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "ZZ003", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "ZZ001", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "ZZ003", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "ZZ001", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "ZZ003", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "ZZ001", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "ZZ003", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "ZZ001", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "ZZ003", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "ZZ001", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "ZZ003", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "ZZ001", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "ZZ003", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "ZZ001", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "ZZ003", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "ZZ001", "ZZ002", 0,	0, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "ZZ003", "ZZ002", 0,	0, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "ZZ001", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "ZZ003", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "Z0013", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_ASSASSIN_CLAW
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_AssassinClaw( state )

	state:AddGhostTrail( "GhostTrail_two_hand_sword_01", 50, 350 );

	local index = 0;
	local ANIMPARAMLIST_FIRST		= index; index = index + 1;
	local ANIMPARAMLIST_SECOND		= index; index = index + 1;
	local ANIMPARAMLIST_THIRD		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FIRST						):SetAnim( "C0000",		0,	200,	300,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SECOND					):SetAnim( "C0000",		0,	200,	300,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_THIRD						):SetAnim( "C0000",		0,	200,	300,	LOOP_FALSE,	1.0, RESET_TRUE		);

	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "C0003", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "C0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "C0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "C0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "C0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "C0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "C0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "C0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "C0000", 0,	500, 300,	LOOP_TRUE, 1.0, RESET_TRUE );

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_SMG3
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_SMG3Gun( state )

	local index = 0;
	local ANIMPARAMLIST_FIRING			= index; index = index + 1;
	local ANIMPARAMLIST_MISFIRING		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_FIRING		):SetAnim( "DD001",		0,	500,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_MISFIRING		):SetAnim( "DD001",		0,	500,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	
	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "DD001",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "DD003",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT	):SetBlendingAnim( "DD001",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT	):SetBlendingAnim( "DD003",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "DD001",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "DD003",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT):SetBlendingAnim( "DD001",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT):SetBlendingAnim( "DD003",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "DD001",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "DD003",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "DD001",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "DD003",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK	):SetBlendingAnim( "DD001",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK	):SetBlendingAnim( "DD003",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK	):SetBlendingAnim( "DD001",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK	):SetBlendingAnim( "DD003",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "DD001",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "DD003",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "DD001", "DD002", 0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "DD003", "DD002", 0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "DD001", "DD002", 0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "DD003", "DD002", 0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "DD005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "DD006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "DD007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "DD008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "DD009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "DD010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "DD011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "DD012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "DD013", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON2_WEAK,	WEAPONTYPE_SMG3
-------------------------------------------------------------------------------------------------------------
function UseWeapon2WeakState_SMG3Sword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 2500 );
	
	state:AddGhostTrail( "GhostTrail_bat_sword_01", 50, 350 );

	local index = 0;
	local ANIMPARAMLIST_FIRST		= index; index = index + 1;
	local ANIMPARAMLIST_SECOND		= index; index = index + 1;
	local ANIMPARAMLIST_THIRD		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FIRST						):SetAnim( "DD022",		900,	200,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SECOND					):SetAnim( "DD022",		900,	200,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_THIRD						):SetAnim( "DD022",		900,	200,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);

	-- LowerPart
	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "DD005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "DD006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "DD007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "DD008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "DD009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "DD010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "DD011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "DD012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "A0024",  0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON2_STRONG,	WEAPONTYPE_SMG3
-------------------------------------------------------------------------------------------------------------
function UseWeapon2StrongState_SMG3Sword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 2500 );
	
	state:AddGhostTrail( "GhostTrail_bat_sword_01", 50, 350 );

	local index = 0;
	local ANIMPARAMLIST_FIRST		= index; index = index + 1;
	local ANIMPARAMLIST_SECOND		= index; index = index + 1;
	local ANIMPARAMLIST_THIRD		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FIRST						):SetAnim( "DD022",		900,	200,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SECOND					):SetAnim( "DD022",		900,	200,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_THIRD						):SetAnim( "DD022",		900,	200,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);

	-- LowerPart
	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "DD005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "DD006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "DD007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "DD008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "DD009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "DD010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "DD011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "DD012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "A0024",  0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_REVOLVER2	
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_Revolver2( state )	

	animSpeed = 0.5;

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "QQ001",		"QQ002",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "QQ003",		"QQ002",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "QQ001",		"QQ002",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "QQ003",		"QQ002",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "QQ001",		"QQ002",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "QQ003",		"QQ002",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "QQ001",		"QQ002",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "QQ003",		"QQ002",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "QQ001",		"QQ002",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "QQ003",		"QQ002",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "QQ001",		"QQ002",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "QQ003",		"QQ002",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "QQ001",		"QQ002",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "QQ003",		"QQ002",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "QQ001",		"QQ002",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "QQ003",		"QQ002",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "QQ001",		"QQ002",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "QQ003",		"QQ002",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "QQ001", "QQ002", 0,	500, 0,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "QQ003", "QQ002", 0,	500, 0,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "QQ001", "QQ002", 0,	500, 0,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "QQ003", "QQ002", 0,	500, 0,	LOOP_FALSE, animSpeed, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "Q0002", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_SMG4
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_SMG4( state )

	local index = 0;
	local ANIMPARAMLIST_FIRING			= index; index = index + 1;
	local ANIMPARAMLIST_MISFIRING		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_FIRING		):SetAnim( "SS001",		0,	500,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_MISFIRING		):SetAnim( "SS001",		0,	500,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	
	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim		( "SS001",		"SS002",	0,	500,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim		( "SS003",		"SS002",	0,	500,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim	( "SS001",		"SS002",	0,	500,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim	( "SS003",		"SS002",	0,	500,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim		( "SS001",		"SS002",	0,	500,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim		( "SS003",		"SS002",	0,	500,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim	( "SS001",		"SS002",	0,	500,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim	( "SS003",		"SS002",	0,	500,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim		( "SS001",		"SS002",	0,	500,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim		( "SS003",		"SS002",	0,	500,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim		( "SS001",		"SS002",	0,	500,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim		( "SS003",		"SS002",	0,	500,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim	( "SS001",		"SS002",	0,	500,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim	( "SS003",		"SS002",	0,	500,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim	( "SS001",		"SS002",	0,	500,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim	( "SS003",		"SS002",	0,	500,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim		( "SS001",		"SS002",	0,	500,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim		( "SS003",		"SS002",	0,	500,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "SS001", "SS002", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "SS003", "SS002", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "SS001", "SS002", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "SS003", "SS002", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "SS002", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON2,	WEAPONTYPE_RIFLE	레일건 우클릭
-------------------------------------------------------------------------------------------------------------
function UseWeapon2State_AimedShotAttack( state )

	-- UpperPart 조준시
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "E0001", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "E0003", "E0002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- UpperPart 사격시
	customAnimBlender = state:GetCustomAnimBlender( 1 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "E0004", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "E0006", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "E0004", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "E0006", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "E0004", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "E0006", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "E0004", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "E0006", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "E0004", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "E0006", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "E0004", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "E0006", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "E0004", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "E0006", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "E0004", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "E0006", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "E0004", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "E0006", "E0005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "E0004",	"E0005",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "E0006",	"E0005",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "E0004",	"E0005",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "E0006",	"E0005",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "E0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON2,	WEAPONTYPE_MIND_ENERGY	
-------------------------------------------------------------------------------------------------------------
function UseWeapon2State_MindEnergy2( state )

	local index = 0;
	local ANIMPARAMLIST_BEGIN		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_BEGIN						):SetAnim( "H0000",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "H0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON2,	WEAPONTYPE_MIND_STROM	
-------------------------------------------------------------------------------------------------------------
function UseWeapon2State_MindStorm( state )	

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "H0001",		"H0002",	0,	200, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "H0003",		"H0002",	0,	200, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "H0001",		"H0002",	0,	200, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "H0003",		"H0002",	0,	200, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "H0001",		"H0002",	0,	200, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "H0003",		"H0002",	0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "H0001",		"H0002",	0,	200, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "H0003",		"H0002",	0,	200, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "H0001",		"H0002",	0,	200, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "H0003",		"H0002",	0,	200, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "H0001",		"H0002",	0,	200, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "H0003",		"H0002",	0,	200, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "H0001",		"H0002",	0,	200, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "H0003",		"H0002",	0,	200, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "H0001",		"H0002",	0,	200, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "H0003",		"H0002",	0,	200, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "H0001",		"H0002",	0,	200, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "H0003",		"H0002",	0,	200, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "H0001", "H0002", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "H0003", "H0002", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "H0001", "H0002", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "H0003", "H0002", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "H0013", 0,	200, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_MIND_ORORA
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_MindOrora1( state )

	local index = 0;
	local ANIMPARAMLIST_BEGIN		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_BEGIN						):SetAnim( "HH000",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "HH000", "HH001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "HH002", "HH001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "HH000", "HH001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "HH002", "HH001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "HH000", "HH001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "HH002", "HH001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "HH000", "HH001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "HH002", "HH001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "HH000", "HH001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "HH002", "HH001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "HH000", "HH001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "HH002", "HH001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "HH000", "HH001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "HH002", "HH001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "HH000", "HH001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "HH002", "HH001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "HH000", "HH001", 1000,	500, 500,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "HH002", "HH001", 1000,	500, 500,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	(				):SetBlendingAnim( "HH000", "HH001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	(				):SetBlendingAnim( "HH002", "HH001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	(				):SetBlendingAnim( "HH000", "HH001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	(				):SetBlendingAnim( "HH002", "HH001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "HH001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_AIR_GUN
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_AIRGUN( state )

	-- UpperPart 조준시
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "AW001", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "AW003", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "AW001", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "AW003", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "AW001", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "AW003", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "AW001", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "AW003", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "AW001", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "AW003", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "AW001", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "AW003", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "AW001", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "AW003", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "AW001", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "AW003", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "AW001", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "AW003", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "AW001", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "AW003", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "AW001", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "AW003", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- UpperPart 사격시
	customAnimBlender = state:GetCustomAnimBlender( 1 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "AW004",	"AW005",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "AW006",	"AW005",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "AW004",	"AW005",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "AW006",	"AW005",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "E0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_AIR_GUN 에어건 유니크
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_AIRGUN_Unique( state )

	-- UpperPart 조준시
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "AW001", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "AW003", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "AW001", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "AW003", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "AW001", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "AW003", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "AW001", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "AW003", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "AW001", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "AW003", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "AW001", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "AW003", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "AW001", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "AW003", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "AW001", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "AW003", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "AW001", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "AW003", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "AW001", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "AW003", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "AW001", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "AW003", "AW002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- UpperPart 사격시
	customAnimBlender = state:GetCustomAnimBlender( 1 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "AW004",	"AW005",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "AW006",	"AW005",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "AW004",	"AW005",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "AW006",	"AW005",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "E0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end




-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_HOMING_RIFLE	
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_HOMING_RIFLE( state )

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "WK001", "WK002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "WK003", "WK002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "WK001", "WK002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "WK003", "WK002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "WK001", "WK002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "WK003", "WK002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "WK001", "WK002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "WK003", "WK002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "WK001", "WK002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "WK003", "WK002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "WK001", "WK002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "WK003", "WK002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "WK001", "WK002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "WK003", "WK002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "WK001", "WK002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "WK003", "WK002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "WK001", "WK002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "WK003", "WK002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "WK001", "WK002", 0,	0, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "WK003", "WK002", 0,	0, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "WK001", "WK002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "WK003", "WK002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

        -- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "W0013", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_EARTH_BOMBER	
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_EARTH_BOMBER( state )

	local index = 0;
	local ANIMPARAMLIST_BEGIN		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_BEGIN						):SetAnim( "GB001",		0,	500,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "GB015", "GB016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "GB017", "GB016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "GB015", "GB016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "GB017", "GB016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "GB015", "GB016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "GB017", "GB016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "GB015", "GB016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "GB017", "GB016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "GB015", "GB016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "GB017", "GB016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "GB015", "GB016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "GB017", "GB016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "GB015", "GB016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "GB017", "GB016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "GB015", "GB016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "GB017", "GB016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "GB000", "GB001", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "GB003", "GB001", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "GB015", "GB016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "GB017", "GB016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "GB015", "GB016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "GB017", "GB016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "DD005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "DD006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "DD007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "DD008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "DD009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "DD010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "DD011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "DD012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "GB000", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
																							 
end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_SPARK_RIFLE	
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_SPARK_RIFLE( state )

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "SP001", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "SP003", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "SP001", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "SP003", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "SP001", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "SP003", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "SP001", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "SP003", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "SP001", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "SP003", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "SP001", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "SP003", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "SP001", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "SP003", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "SP001", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "SP003", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "SP001", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "SP003", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "SP001", "SP002", 0,	0, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "SP003", "SP002", 0,	0, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "SP001", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "SP003", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

        -- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "W0013", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_SPARK_RIFLE	스파크 라이플 유니크
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_SPARK_RIFLE_Unique( state )

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "SP001", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "SP003", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "SP001", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "SP003", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "SP001", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "SP003", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "SP001", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "SP003", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "SP001", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "SP003", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "SP001", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "SP003", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "SP001", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "SP003", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "SP001", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "SP003", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "SP001", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "SP003", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "SP001", "SP002", 0,	0, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "SP003", "SP002", 0,	0, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "SP001", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "SP003", "SP002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

        -- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "W0013", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_CHAIN_LIGHT_GUN
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_SHOCK_WAVE_GUN( state )

	local index = 0;
	local ANIMPARAMLIST_FIRING			= index; index = index + 1;
	local ANIMPARAMLIST_MISFIRING		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_FIRING		):SetAnim( "CH002",		0,	1000,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_MISFIRING		):SetAnim( "CH002",		0,	1000,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	
	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim	( "CH001",		"CH002",	0,	500,	0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim	( "CH003",		"CH002",	0,	500,	0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim	( "CH001",		"CH002",	0,	500,	0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim	( "CH003",		"CH002",	0,	500,	0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim	( "CH001",		"CH002",	0,	500,	0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim	( "CH003",		"CH002",	0,	500,	0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim	( "CH001",		"CH002",	0,	500,	0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim	( "CH003",		"CH002",	0,	500,	0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim	( "CH001",		"CH002",	0,	500,	0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim	( "CH003",		"CH002",	0,	500,	0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim	( "CH001",		"CH002",	0,	500,	0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim	( "CH003",		"CH002",	0,	500,	0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim	( "CH001",		"CH002",	0,	500,	0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim	( "CH003",		"CH002",	0,	500,	0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim	( "CH001",		"CH002",	0,	500,	0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim	( "CH003",		"CH002",	0,	500,	0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim	( "CH001",		"CH002",	0,	500,	0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim	( "CH003",		"CH002",	0,	500,	0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "CH001", "CH002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "CH003", "CH002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "CH001", "CH002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "CH003", "CH002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "CH002", 0,	500, 500,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end



-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_TURRET
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_TURRET( state )
	
	local index = 0;
	local ANIMPARAMLIST_BEGIN		= index; index = index + 1;
	local ANIMPARAMLIST_FIRING		= index; index = index + 1;
	local ANIMPARAMLIST_MISFIRING	= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_BEGIN						):SetAnim( "TR001",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FIRING					):SetAnim( "TR003",		0,	200,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_MISFIRING					):SetAnim( "TR003",		0,	200,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	
	
	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "TR003", "TR004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "TR005", "TR004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "TR003", "TR004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "TR005", "TR004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "TR003", "TR004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "TR005", "TR004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "TR003", "TR004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "TR005", "TR004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "TR003", "TR004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "TR005", "TR004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "TR003", "TR004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "TR005", "TR004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "TR003", "TR004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "TR005", "TR004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "TR003", "TR004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "TR005", "TR004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "TR003", "TR004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "TR005", "TR004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "TR003", "TR004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "TR005", "TR004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "TR003", "TR004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "TR005", "TR004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "F0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "F0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "F0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "F0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "F0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "F0013", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "F0014", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "F0015", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "TR017", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end




-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_TURRET
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_TURRETINSTALL( state )
	
	local index = 0;
	local ANIMPARAMLIST_BEGIN		= index; index = index + 1;
	local ANIMPARAMLIST_FIRING		= index; index = index + 1;
	local ANIMPARAMLIST_MISFIRING	= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_BEGIN						):SetAnim( "TR027",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FIRING					):SetAnim( "TR028",		0,	200,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_MISFIRING					):SetAnim( "TR028",		0,	200,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	
	
	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "TR028", "TR029", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "TR030", "TR029", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "TR028", "TR029", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "TR030", "TR029", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "TR028", "TR029", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "TR030", "TR029", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "TR028", "TR029", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "TR030", "TR029", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "TR028", "TR029", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "TR030", "TR029", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "TR028", "TR029", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "TR030", "TR029", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "TR028", "TR029", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "TR030", "TR029", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "TR028", "TR029", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "TR030", "TR029", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "TR028", "TR029", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "TR030", "TR029", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "TR028", "TR029", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "TR030", "TR029", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "TR028", "TR029", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "TR030", "TR029", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "TR031", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_ASSULT_RIFLE	
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_ASSULT_RIFLE( state )

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "AS001", "AS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "AS003", "AS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "AS001", "AS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "AS003", "AS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "AS001", "AS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "AS003", "AS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "AS001", "AS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "AS003", "AS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "AS001", "AS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "AS003", "AS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "AS001", "AS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "AS003", "AS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "AS001", "AS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "AS003", "AS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "AS001", "AS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "AS003", "AS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "AS001", "AS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "AS003", "AS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "AS001", "AS002", 0,	0, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "AS003", "AS002", 0,	0, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "AS001", "AS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "AS003", "AS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

        -- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "AS002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_RESCUEGUN
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_RESCUE_GUN( state )

	local index = 0;
	local ANIMPARAMLIST_FIRING			= index; index = index + 1;
	local ANIMPARAMLIST_MISFIRING		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_FIRING		):SetAnim( "DD001",		0,	500,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_MISFIRING		):SetAnim( "DD001",		0,	500,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	
	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "DD001",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "DD003",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT	):SetBlendingAnim( "DD001",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT	):SetBlendingAnim( "DD003",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "DD001",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "DD003",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT):SetBlendingAnim( "DD001",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT):SetBlendingAnim( "DD003",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "DD001",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "DD003",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "DD001",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "DD003",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK	):SetBlendingAnim( "DD001",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK	):SetBlendingAnim( "DD003",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK	):SetBlendingAnim( "DD001",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK	):SetBlendingAnim( "DD003",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "DD001",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "DD003",		"DD002",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "DD001", "DD002", 0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "DD003", "DD002", 0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "DD001", "DD002", 0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "DD003", "DD002", 0,	500, 0,	LOOP_TRUE, 2.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "DD005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "DD006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "DD007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "DD008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "DD009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "DD010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "DD011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "DD012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "DD013", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_RESCUEGUN
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_RESCUE_GUN( state )


	local index = 0;
	local ANIMPARAMLIST_BEGIN		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_BEGIN						):SetAnim( "AW005",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	


	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 1 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "AW004", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "AW006", "AW005", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "AW004",	"AW005",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "AW006",	"AW005",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "AW004",	"AW005",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "AW006",	"AW005",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "E0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end



-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_STANDARD_RAILGUN
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_StandardAimedShotAttack( state )

	-- UpperPart 줌 인시 
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "NS001", "NS002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "NS003", "NS002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "NS001", "NS002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "NS003", "NS002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "NS001", "NS002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "NS003", "NS002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "NS001", "NS002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "NS003", "NS002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "NS001", "NS002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "NS003", "NS002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "NS001", "NS002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "NS003", "NS002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "NS001", "NS002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "NS003", "NS002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "NS001", "NS002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "NS003", "NS002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "NS001", "NS002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "NS003", "NS002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "NS001", "NS002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "NS003", "NS002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "NS001", "NS002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "NS003", "NS002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	
	-- UpperPart 사격 시 
	customAnimBlender = state:GetCustomAnimBlender( 1 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "NS005", "NS006", 0,	100, 100,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "NS007", "NS006", 0,	100, 100,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "NS005", "NS006", 0,	100, 100,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "NS007", "NS006", 0,	100, 100,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "NS005", "NS006", 0,	100, 100,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "NS007", "NS006", 0,	100, 100,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "NS005", "NS006", 0,	100, 100,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "NS007", "NS006", 0,	100, 100,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "NS005", "NS006", 0,	100, 100,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "NS007", "NS006", 0,	100, 100,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "NS005", "NS006", 0,	100, 100,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "NS007", "NS006", 0,	100, 100,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "NS005", "NS006", 0,	100, 100,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "NS007", "NS006", 0,	100, 100,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "NS005", "NS006", 0,	100, 100,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "NS007", "NS006", 0,	100, 100,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "NS005", "NS006", 0,	100, 100,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "NS007", "NS006", 0,	100, 100,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "NS005",	"NS006",	0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "NS007",	"NS006",	0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "NS005",	"NS006",	0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "NS007",	"NS006",	0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	
	-- LowerPart 줌인시
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "NS001", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_FALSE );
	
	-- LowerPart 사격시
	lowerPartStateSet = state:GetLowerPartStateSet( 1 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "NS006", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_STANDARD_RAILGUN
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_StandardAimedShotZoomIn( state )

	-- UpperPart 줌 인시 
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "NS001", "NS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "NS003", "NS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "NS001", "NS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "NS003", "NS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "NS001", "NS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "NS003", "NS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "NS001", "NS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "NS003", "NS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "NS001", "NS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "NS003", "NS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "NS001", "NS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "NS003", "NS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "NS001", "NS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "NS003", "NS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "NS001", "NS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "NS003", "NS002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "NS001", "NS002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "NS003", "NS002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "NS001", "NS002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "NS003", "NS002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "NS001", "NS002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "NS003", "NS002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
	-- UpperPart 사격 시 
	customAnimBlender = state:GetCustomAnimBlender( 1 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "NS005", "NS006", 1000,	100, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "NS007", "NS006", 1000,	100, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "NS005", "NS006", 1000,	100, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "NS007", "NS006", 1000,	100, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "NS005", "NS006", 1000,	100, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "NS007", "NS006", 1000,	100, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "NS005", "NS006", 1000,	100, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "NS007", "NS006", 1000,	100, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "NS005", "NS006", 1000,	100, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "NS007", "NS006", 1000,	100, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "NS005", "NS006", 1000,	100, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "NS007", "NS006", 1000,	100, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "NS005", "NS006", 1000,	100, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "NS007", "NS006", 1000,	100, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "NS005", "NS006", 1000,	100, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "NS007", "NS006", 1000,	100, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "NS005", "NS006", 1000,	100, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "NS007", "NS006", 1000,	100, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "NS005",	"NS006",	0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "NS007",	"NS006",	0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "NS005",	"NS006",	0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "NS007",	"NS006",	0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
	-- UpperPart 줌인 시작시
	customAnimBlender = state:GetCustomAnimBlender( 2 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "NS008",		"NS008",	0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "NS008",		"NS008",	0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT	):SetBlendingAnim( "NS008",		"NS008",	0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT	):SetBlendingAnim( "NS008",		"NS008",	0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "NS008",		"NS008",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "NS008",		"NS008",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT):SetBlendingAnim( "NS008",		"NS008",	0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT):SetBlendingAnim( "NS008",		"NS008",	0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "NS008",		"NS008",	0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "NS008",		"NS008",	0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "NS008",		"NS008",	0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "NS008",		"NS008",	0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK	):SetBlendingAnim( "NS008",		"NS008",	0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK	):SetBlendingAnim( "NS008",		"NS008",	0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK	):SetBlendingAnim( "NS008",		"NS008",	0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK	):SetBlendingAnim( "NS008",		"NS008",	0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "NS008",		"NS008",	0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "NS008",		"NS008",	0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "NS008",	"NS008",	0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "NS008",	"NS008",	0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "NS008",	"NS008",	0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "NS008",	"NS008",	0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "NS008", "NS008", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "NS008", "NS008", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "NS008", "NS008", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "NS008", "NS008", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- LowerPart 줌인시
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "00057", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "00058", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "00059", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "00060", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "00061", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "00062", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "00063", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "00064", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "NS002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
	-- LowerPart 사격시
	lowerPartStateSet = state:GetLowerPartStateSet( 1 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "00057", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "00058", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "00059", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "00060", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "00061", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "00062", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "00063", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "00064", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "NS006", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	
	-- LowerPart 줌인 시작시
	lowerPartStateSet = state:GetLowerPartStateSet( 2 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "00057", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "00058", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "00059", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "00060", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "00061", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "00062", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "00063", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "00064", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "NS008", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_GAUSS_RIFLE_MK2
-------------------------------------------------------------------------------------------------------------
function ANI_GaussRifleMK2_Standard( state ) 
	
	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "Z0001", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "Z0003", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "Z0001", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "Z0003", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "Z0001", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "Z0003", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "Z0001", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "Z0003", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "Z0001", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "Z0003", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "Z0001", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "Z0003", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "Z0001", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "Z0003", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "Z0001", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "Z0003", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "Z0001", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "Z0003", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "Z0001", "Z0002", 0,	0, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "Z0003", "Z0002", 0,	0, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "Z0001", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "Z0003", "Z0002", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- UpperPart1
	customAnimBlender = state:GetCustomAnimBlender( 1 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "ZZ001", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "ZZ003", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "ZZ001", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "ZZ003", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "ZZ001", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "ZZ003", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "ZZ001", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "ZZ003", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "ZZ001", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "ZZ003", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "ZZ001", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "ZZ003", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "ZZ001", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "ZZ003", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "ZZ001", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "ZZ003", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "ZZ001", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "ZZ003", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "ZZ001", "ZZ002", 0,	0, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "ZZ003", "ZZ002", 0,	0, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "ZZ001", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "ZZ003", "ZZ002", 0,	50, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "Z0013", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
--	local index = 0;
--	local ANIMPARAMLIST_NORMAL	= index; index = index + 1;
--	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "Z0000",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON2,	WEAPONTYPE_GAUSS_RIFLE_MK2
-------------------------------------------------------------------------------------------------------------
function ANI_GaussRifleMK2_MultiShot( state ) 

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "ZZ022", "ZZ023", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "ZZ024", "ZZ023", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "ZZ022", "ZZ023", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "ZZ024", "ZZ023", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "ZZ022", "ZZ023", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "ZZ024", "ZZ023", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "ZZ022", "ZZ023", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "ZZ024", "ZZ023", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "ZZ022", "ZZ023", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "ZZ024", "ZZ023", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "ZZ022", "ZZ023", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "ZZ024", "ZZ023", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "ZZ022", "ZZ023", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "ZZ024", "ZZ023", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "ZZ022", "ZZ023", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "ZZ024", "ZZ023", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "ZZ022", "ZZ023", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "ZZ024", "ZZ023", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "ZZ022", "ZZ023", 0,	0, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "ZZ024", "ZZ023", 0,	0, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "ZZ022", "ZZ023", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "ZZ024", "ZZ023", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "Z0013", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
--	local index = 0;
--	local ANIMPARAMLIST_NORMAL	= index; index = index + 1;
--	local ANIMPARAMLIST_DELAY	= index; index = index + 1;
	
--	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "Z0000",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_ROCKET_LAUNCHER	
-------------------------------------------------------------------------------------------------------------
function ANI_UseWeapon1State_RocketLauncher( state )

	-- UpperPart 조준시
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "RL000", "RL001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "RL003", "RL001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "RL000", "RL001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "RL003", "RL001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "RL000", "RL001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "RL003", "RL001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "RL000", "RL001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "RL003", "RL001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "RL000", "RL001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "RL003", "RL001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "RL000", "RL001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "RL003", "RL001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "RL000", "RL001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "RL003", "RL001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "RL000", "RL001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "RL003", "RL001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "RL000", "RL001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "RL003", "RL001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "RL000", "RL001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "RL003", "RL001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "RL000", "RL001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "RL003", "RL001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- UpperPart 사격시
	customAnimBlender = state:GetCustomAnimBlender( 1 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "RL020", "RL021", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "RL023", "RL021", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "RL020", "RL021", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "RL023", "RL021", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "RL020", "RL021", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "RL023", "RL021", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "RL020", "RL021", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "RL023", "RL021", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "RL020", "RL021", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "RL023", "RL021", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "RL020", "RL021", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "RL023", "RL021", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "RL020", "RL021", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "RL023", "RL021", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "RL020", "RL021", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "RL023", "RL021", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "RL020", "RL021", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "RL023", "RL021", 1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "RL020", "RL021", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "RL023", "RL021", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "RL020", "RL021", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "RL023", "RL021", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "RL001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON2,	WEAPONTYPE_ROCKET_LAUNCHER
-------------------------------------------------------------------------------------------------------------
function ANI_UseWeapon2State_RocketLauncher( state )

	-- UpperPart 조준시
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "RL030", "RL031", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "RL033", "RL031", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "RL030", "RL031", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "RL033", "RL031", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "RL030", "RL031", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "RL033", "RL031", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "RL030", "RL031", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "RL033", "RL031", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "RL030", "RL031", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "RL033", "RL031", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "RL030", "RL031", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "RL033", "RL031", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "RL030", "RL031", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "RL033", "RL031", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "RL030", "RL031", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "RL033", "RL031", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "RL030", "RL031", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "RL033", "RL031", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "RL030", "RL031", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "RL033", "RL031", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "RL030", "RL031", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "RL033", "RL031", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- UpperPart 사격시
	customAnimBlender = state:GetCustomAnimBlender( 1 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "RL040", "RL041", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "RL043", "RL041", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "RL040", "RL041", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "RL043", "RL041", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "RL040", "RL041", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "RL043", "RL041", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "RL040", "RL041", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "RL043", "RL041", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "RL040", "RL041", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "RL043", "RL041", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "RL040", "RL041", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "RL043", "RL041", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "RL043", "RL041", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "RL040", "RL041", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "RL043", "RL041", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "RL040", "RL041", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "RL043", "RL041", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "RL040", "RL041", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "RL043", "RL041", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "RL040", "RL041", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "RL043", "RL041", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- UpperPart 조준 전..
	customAnimBlender = state:GetCustomAnimBlender( 2 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "RL024", "RL024", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "RL024", "RL024", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "RL024", "RL024", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "RL024", "RL024", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "RL024", "RL024", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "RL024", "RL024", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "RL024", "RL024", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "RL024", "RL024", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "RL024", "RL024", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "RL024", "RL024", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "RL024", "RL024", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "RL024", "RL024", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "RL024", "RL024", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "RL024", "RL024", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "RL024", "RL024", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "RL024", "RL024", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "RL024", "RL024", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "RL024", "RL024", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "RL024", "RL024", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "RL024", "RL024", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "RL024", "RL024", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "RL024", "RL024", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "RL001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
	-- LowerPart 조준 전..
	lowerPartStateSet = state:GetLowerPartStateSet( 2 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "RL024", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_FALSE );	

end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_ENERGY_SUPPLY_BUILDER	
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_EnergySupplyBuilder( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "K0000",		1000,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE		);

end	

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_ASSULT_RIFLE_UNIQUE	
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_ASSULT_RIFLE_UNIQUE( state )

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "AS001_1", "AS002_1", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT			):SetBlendingAnim( "AS003_1", "AS002_1", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "AS001_1", "AS002_1", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "AS003_1", "AS002_1", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "AS001_1", "AS002_1", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT			):SetBlendingAnim( "AS003_1", "AS002_1", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "AS001_1", "AS002_1", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "AS003_1", "AS002_1", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "AS001_1", "AS002_1", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT			):SetBlendingAnim( "AS003_1", "AS002_1", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "AS001_1", "AS002_1", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK			):SetBlendingAnim( "AS003_1", "AS002_1", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "AS001_1", "AS002_1", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "AS003_1", "AS002_1", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "AS001_1", "AS002_1", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "AS003_1", "AS002_1", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "AS001_1", "AS002_1", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL			):SetBlendingAnim( "AS003_1", "AS002_1", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "AS001_1", "AS002_1", 0,	0, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "AS003_1", "AS002_1", 0,	0, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "AS001_1", "AS002_1", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "AS003_1", "AS002_1", 0,	100, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

        -- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "AS002", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_RIFLE , WEAPONYTPE_RAIL_MARTINSTICK
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_RAIL_MARTINSTICK( state )

	-- UpperPart 조준시
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "E0001_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "E0003_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "E0001_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "E0003_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "E0001_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "E0003_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "E0001_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "E0003_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "E0001_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "E0003_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "E0001_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "E0003_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "E0001_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "E0003_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "E0001_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "E0003_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "E0001_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "E0003_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "E0001_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "E0003_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "E0001_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "E0003_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- UpperPart 사격시
	customAnimBlender = state:GetCustomAnimBlender( 1 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "E0004_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "E0006_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "E0004_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "E0006_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "E0004_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "E0006_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "E0004_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "E0006_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "E0004_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "E0006_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "E0004_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "E0006_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "E0004_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "E0006_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "E0004_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "E0006_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "E0004_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "E0006_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "E0004_1", "E0005_1",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "E0006_1", "E0005_1",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "E0004_1", "E0005_1",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "E0006_1", "E0005_1",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "E0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON2,	WEAPONYTPE_RAIL_MARTINSTICK
-------------------------------------------------------------------------------------------------------------
function UseWeapon2State_RAIL_MARTINSTICK( state )

	-- UpperPart 조준시
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "E0001_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "E0003_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "E0001_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "E0003_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "E0001_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "E0003_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "E0001_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "E0003_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "E0001_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "E0003_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "E0001_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "E0003_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "E0001_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "E0003_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "E0001_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "E0003_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "E0001_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "E0003_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "E0001_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "E0003_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "E0001_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "E0003_1", "E0002_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- UpperPart 사격시
	customAnimBlender = state:GetCustomAnimBlender( 1 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "E0004_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "E0006_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "E0004_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "E0006_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "E0004_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "E0006_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "E0004_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "E0006_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "E0004_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "E0006_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "E0004_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "E0006_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "E0004_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "E0006_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "E0004_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "E0006_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "E0004_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "E0006_1", "E0005_1",	1000,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "E0004_1", "E0005_1",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "E0006_1", "E0005_1",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "E0004_1", "E0005_1",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "E0006_1", "E0005_1",	0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "E0001", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end
