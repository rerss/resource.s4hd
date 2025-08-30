require "Resources/Script/ActorStates_Constants.lua"


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_CARD
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash2State_Card( state )	

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "Y0002",		"Y0002",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "Y0002",		"Y0002",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "Y0002",		"Y0002",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "Y0002",		"Y0002",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "Y0002",		"Y0002",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "Y0002",		"Y0002",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "Y0002",		"Y0002",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "Y0002",		"Y0002",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "Y0002",		"Y0002",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "Y0002",		"Y0002",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "Y0002",		"Y0002",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "Y0002",		"Y0002",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "Y0002",		"Y0002",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "Y0002",		"Y0002",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "Y0002",		"Y0002",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "Y0002",		"Y0002",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "Y0002",		"Y0002",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "Y0002",		"Y0002",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "Y0002", "Y0002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "Y0002", "Y0002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "Y0002", "Y0002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "Y0002", "Y0002", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "Y0012", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "Y0013", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "Y0014", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "Y0015", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "Y0016", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "Y0017", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "Y0018", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "Y0019", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "Y0002", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_CARD
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash3State_Card( state )	

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "Y0003",		"Y0003",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "Y0003",		"Y0003",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "Y0003",		"Y0003",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "Y0003",		"Y0003",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "Y0003",		"Y0003",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "Y0003",		"Y0001",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "Y0003",		"Y0003",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "Y0003",		"Y0003",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "Y0003",		"Y0003",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "Y0003",		"Y0003",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "Y0003",		"Y0003",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "Y0003",		"Y0003",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "Y0003",		"Y0003",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "Y0003",		"Y0003",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "Y0003",		"Y0003",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "Y0003",		"Y0003",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "Y0003",		"Y0003",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "Y0003",		"Y0003",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "Y0003", "Y0003", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "Y0003", "Y0003", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "Y0003", "Y0003", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "Y0003", "Y0003", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "Y0012", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "Y0013", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "Y0014", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "Y0015", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "Y0016", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "Y0017", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "Y0018", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "Y0019", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "Y0003", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_CARD
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash4State_Card( state )	

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "Y0004",		"Y0004",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "Y0004",		"Y0004",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "Y0004",		"Y0004",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "Y0004",		"Y0004",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "Y0004",		"Y0004",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "Y0004",		"Y0004",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "Y0004",		"Y0004",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "Y0004",		"Y0004",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "Y0004",		"Y0004",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "Y0004",		"Y0004",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "Y0004",		"Y0004",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "Y0004",		"Y0004",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "Y0004",		"Y0004",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "Y0004",		"Y0004",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "Y0004",		"Y0004",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "Y0004",		"Y0004",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "Y0004",		"Y0004",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "Y0004",		"Y0004",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "Y0004", "Y0004", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "Y0004", "Y0004", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "Y0004", "Y0004", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "Y0004", "Y0004", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "Y0012", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "Y0013", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "Y0014", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "Y0015", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "Y0016", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "Y0017", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "Y0018", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "Y0019", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "Y0004", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_CARD
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash5State_Card( state )	

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "Y0005",		"Y0005",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "Y0005",		"Y0005",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "Y0005",		"Y0005",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "Y0005",		"Y0005",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "Y0005",		"Y0005",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "Y0005",		"Y0005",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "Y0005",		"Y0005",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "Y0005",		"Y0005",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "Y0005",		"Y0005",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "Y0005",		"Y0005",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "Y0005",		"Y0005",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "Y0005",		"Y0005",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "Y0005",		"Y0005",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "Y0005",		"Y0005",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "Y0005",		"Y0005",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "Y0005",		"Y0005",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "Y0005",		"Y0005",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "Y0005",		"Y0005",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "Y0005", "Y0005", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "Y0005", "Y0005", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "Y0005", "Y0005", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "Y0005", "Y0005", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "Y0012", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "Y0013", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "Y0014", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "Y0015", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "Y0016", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "Y0017", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "Y0018", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "Y0019", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "Y0005", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_CARD
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_Card( state )	

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "Y0001",		"Y0001",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "Y0001",		"Y0001",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "Y0001",		"Y0001",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "Y0001",		"Y0001",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "Y0001",		"Y0001",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "Y0001",		"Y0001",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "Y0001",		"Y0001",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "Y0001",		"Y0001",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "Y0001",		"Y0001",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "Y0001",		"Y0001",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "Y0001",		"Y0001",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "Y0001",		"Y0001",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "Y0001",		"Y0001",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "Y0001",		"Y0001",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "Y0001",		"Y0001",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "Y0001",		"Y0001",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "Y0001",		"Y0001",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "Y0001",		"Y0001",	0,	100,	0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "Y0001", "Y0001", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "Y0001", "Y0001", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "Y0001", "Y0001", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "Y0001", "Y0001", 0,	100, 0,	LOOP_FALSE, 1.0, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "Y0012", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "Y0013", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "Y0014", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "Y0015", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "Y0016", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "Y0017", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "Y0018", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "Y0019", 800,	200, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "Y0001", 0,	500, 500,	LOOP_FALSE, 1.0, RESET_TRUE );

end