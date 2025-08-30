require "Resources/Script/ActorStates_Constants.lua"


-------------------------------------------------------------------------------------------------------------
-- ATTACKATTRIB_DUAL_GUN_ATTACK1,	WEAPONTYPE_DUAL_GUN	(�Ϲݰ���1Ÿ)
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_DualGunAttack( state )
				
	animSpeed = 0.73;

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "DU001",		"DU002",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "DU003",		"DU002",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "DU001",		"DU002",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "DU003",		"DU002",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "DU001",		"DU002",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "DU003",		"DU002",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "DU001",		"DU002",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "DU003",		"DU002",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "DU001",		"DU002",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "DU003",		"DU002",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "DU001",		"DU002",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "DU003",		"DU002",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "DU001",		"DU002",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "DU003",		"DU002",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "DU001",		"DU002",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "DU003",		"DU002",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "DU001",		"DU002",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "DU003",		"DU002",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "DU001", "DU002", 0,	500, 0,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "DU003", "DU002", 0,	500, 0,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "DU001", "DU002", 0,	500, 0,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "DU003", "DU002", 0,	500, 0,	LOOP_FALSE, animSpeed, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "DD007", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "DD009", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "DU002_1", 0,	250, 500,	LOOP_FALSE, animSpeed, RESET_TRUE );

end	


-------------------------------------------------------------------------------------------------------------
-- ATTACKATTRIB_DUAL_GUN_ATTACK2,	WEAPONTYPE_DUAL_GUN	(�Ϲݰ���2Ÿ)
-------------------------------------------------------------------------------------------------------------
function UseWeapon2State_DualGunAttack( state )
				
	animSpeed = 0.73;

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "DU004",		"DU005",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "DU006",		"DU005",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "DU004",		"DU005",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "DU006",		"DU005",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "DU004",		"DU005",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "DU006",		"DU005",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "DU004",		"DU005",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "DU006",		"DU005",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "DU004",		"DU005",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "DU006",		"DU005",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "DU004",		"DU005",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "DU006",		"DU005",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "DU004",		"DU005",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "DU006",		"DU005",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "DU004",		"DU005",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "DU006",		"DU005",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "DU004",		"DU005",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "DU006",		"DU005",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "DU004", "DU005", 0,	500, 0,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "DU006", "DU005", 0,	500, 0,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "DU004", "DU005", 0,	500, 0,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "DU006", "DU005", 0,	500, 0,	LOOP_FALSE, animSpeed, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "DD007", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "DD009", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "DU005_1", 0,	250, 500,	LOOP_FALSE, animSpeed, RESET_TRUE );



end	


-------------------------------------------------------------------------------------------------------------
-- ATTACKATTRIB_DUAL_GUN_ATTACK3,	WEAPONTYPE_DUAL_GUN	 (�Ϲݰ���3Ÿ)
-------------------------------------------------------------------------------------------------------------
function UseWeapon3State_DualGunAttack( state )

	animSpeed = 1.0;

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "DU007",		"DU008",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "DU009",		"DU008",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "DU007",		"DU008",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "DU009",		"DU008",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "DU007",		"DU008",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "DU009",		"DU008",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "DU007",		"DU008",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "DU009",		"DU008",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "DU007",		"DU008",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "DU009",		"DU008",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "DU007",		"DU008",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "DU009",		"DU008",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "DU007",		"DU008",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "DU009",		"DU008",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "DU007",		"DU008",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "DU009",		"DU008",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "DU007",		"DU008",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "DU009",		"DU008",	0,	0,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "DU004", "DU005", 0,	500, 0,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "DU006", "DU005", 0,	500, 0,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "DU004", "DU005", 0,	500, 0,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "DU006", "DU005", 0,	500, 0,	LOOP_FALSE, animSpeed, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "DD007", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "DD009", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "DU008_1", 0,	0, 500,	LOOP_FALSE, animSpeed, RESET_TRUE );


end	

-------------------------------------------------------------------------------------------------------------
-- WEAPONTYPE_DUAL_GUN (�Ϲ� ���� 1Ÿ)
-------------------------------------------------------------------------------------------------------------
function Attack_NORMAL_RenewalDualMagnum( state )

    animSpeed = 1.0;

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "DU001",		"DU002",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "DU003",		"DU002",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "DU001",		"DU002",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "DU003",		"DU002",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "DU001",		"DU002",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "DU003",		"DU002",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "DU001",		"DU002",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "DU003",		"DU002",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "DU001",		"DU002",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "DU003",		"DU002",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "DU001",		"DU002",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "DU003",		"DU002",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "DU001",		"DU002",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "DU003",		"DU002",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "DU001",		"DU002",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "DU003",		"DU002",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "DU001",		"DU002",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "DU003",		"DU002",	0,	250,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "DU001", "DU002", 0,	500, 0,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "DU003", "DU002", 0,	500, 0,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "DU001", "DU002", 0,	500, 0,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "DU003", "DU002", 0,	500, 0,	LOOP_FALSE, animSpeed, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "DD007", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "DD009", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, animSpeed, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		):SetAnim( "DU002_1", 0,	250, 500,	LOOP_FALSE, animSpeed, RESET_TRUE );

end

-------------------------------------------------------------------------------------------------------------
-- WEAPONTYPE_DUAL_GUN (�����ؼ� �����ϱ�)
-------------------------------------------------------------------------------------------------------------
function Attack_JUMP_RenewalDualMagnum( state )

    animSpeed = 1.0;

	-- UpperPart
	customAnimBlender = state:GetCustomAnimBlender( 0 );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "DU025",		"DU026",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_FRONT		):SetBlendingAnim( "DU027",		"DU026",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "DU025",		"DU026",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetBlendingAnim( "DU027",		"DU026",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "DU025",		"DU026",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT		):SetBlendingAnim( "DU027",		"DU026",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "DU025",		"DU026",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetBlendingAnim( "DU027",		"DU026",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "DU025",		"DU026",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT		):SetBlendingAnim( "DU027",		"DU026",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "DU025",		"DU026",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_BACK		):SetBlendingAnim( "DU027",		"DU026",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "DU025",		"DU026",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_LEFT_BACK		):SetBlendingAnim( "DU027",		"DU026",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "DU025",		"DU026",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetBlendingAnim( "DU027",		"DU026",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkUpperAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "DU025",		"DU026",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetWalkLowerAnimParam	( LOWER_ANIM_NORMAL		):SetBlendingAnim( "DU027",		"DU026",	0,	500,	500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetJumpUpperAnimParam	():SetBlendingAnim( "DU025", "DU026", 0,	500, 0,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetJumpLowerAnimParam	():SetBlendingAnim( "DU027", "DU026", 0,	500, 0,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetFlyUpperAnimParam	():SetBlendingAnim( "DU025", "DU026", 0,	500, 0,	LOOP_FALSE, animSpeed, RESET_TRUE );
	customAnimBlender:GetFlyLowerAnimParam	():SetBlendingAnim( "DU027", "DU026", 0,	500, 0,	LOOP_FALSE, animSpeed, RESET_TRUE );

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		    ):SetAnim( "DU027_1", 0, 500, 500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT	    ):SetAnim( "DU027_1", 0, 500, 500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		    ):SetAnim( "DU027_1", 0, 500, 500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT    ):SetAnim( "DU027_1", 0, 500, 500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		    ):SetAnim( "DU027_1", 0, 500, 500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		    ):SetAnim( "DU027_1", 0, 500, 500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "DU027_1", 0, 500, 500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "DU027_1", 0, 500, 500,	LOOP_FALSE, animSpeed, RESET_TRUE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL		    ):SetAnim( "DU027_1", 0, 500, 500,	LOOP_FALSE, animSpeed, RESET_TRUE );

end

-------------------------------------------------------------------------------------------------------------
-- WEAPONTYPE_DUAL_GUN (�����鼭 �����մϴ�.)
-------------------------------------------------------------------------------------------------------------
function Attack_ROLLING_RenewalDualMagnum( state )

    local index = 0;
	local ANIMPARAMLIST_LEFT	    = index; index = index + 1;
    local ANIMPARAMLIST_LEFT_DELAY  = index; index = index + 1;
	local ANIMPARAMLIST_RIGHT	    = index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_DELAY = index; index = index + 1;
	local ANIMPARAMLIST_BACK        = index; index = index + 1;
	local ANIMPARAMLIST_BACK_DELAY  = index; index = index + 1;
	
	-- �������� ȸ���ϸ鼭 �߻��ϴ� ���
	state:GetAnimParam( ANIMPARAMLIST_LEFT	     ):SetAnim( "DU021", 0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );
	state:GetAnimParam( ANIMPARAMLIST_LEFT_DELAY ):SetAnim( "DU022", 0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );
	-- ���������� ȸ���ϸ鼭 �߻��ϴ� ���
	state:GetAnimParam( ANIMPARAMLIST_RIGHT	      ):SetAnim( "DU023", 0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_DELAY ):SetAnim( "DU024", 0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );
	-- �ڷ� ȸ���ϸ鼭 �߻��ϴ� ���
	state:GetAnimParam( ANIMPARAMLIST_BACK       ):SetAnim( "DU019", 0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );
	state:GetAnimParam( ANIMPARAMLIST_BACK_DELAY ):SetAnim( "DU020", 0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );

end