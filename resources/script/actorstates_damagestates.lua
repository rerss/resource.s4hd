require "Resources/Script/ActorStates_Constants.lua"


-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_UNUSED
-------------------------------------------------------------------------------------------------------------
function DamageState_WeaponUnused( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "H0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "H0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "H0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "H0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "H0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "H0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "H0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "H0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_PLASMA_SWORD
-------------------------------------------------------------------------------------------------------------
function DamageState_PlasmaSword( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "A0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "A0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "A0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "A0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "A0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "A0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "A0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "A0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_RIFLE
-------------------------------------------------------------------------------------------------------------
function DamageState_Rifle( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "E0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "E0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "E0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "E0013", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_SUBMACHINE_GUN
-------------------------------------------------------------------------------------------------------------
function DamageState_SubMachineGun( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "D0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "D0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "D0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "D0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "D0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "D0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "D0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "D0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_MACHINE_GUN
-------------------------------------------------------------------------------------------------------------
function DamageState_MachineGun( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
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
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_MIND_ENERGY
-------------------------------------------------------------------------------------------------------------
function DamageState_MindEnergy( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "H0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "H0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "H0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "H0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "H0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "H0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "H0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "H0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_MIND_ORORA
-------------------------------------------------------------------------------------------------------------
function DamageState_MindOrora( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "H0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "H0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "H0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "H0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "H0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "H0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "H0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "H0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_MINE_LAUNCHER
-------------------------------------------------------------------------------------------------------------
function DamageState_MineLauncher( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "G0018", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "G0019", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "G0020", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "G0021", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "G0022", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "G0023", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "G0024", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "G0025", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_SENTRYGUN_BUILDER
-------------------------------------------------------------------------------------------------------------
function DamageState_SentryGunBuilder( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	0, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_COUNTER_SWORD
-------------------------------------------------------------------------------------------------------------
function DamageState_CounterSword( state )
	
	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "A0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "A0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "A0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "A0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "A0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "A0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "A0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "A0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_VIRTUAL_SHIELD
-------------------------------------------------------------------------------------------------------------
function DamageState_VirtualShield( state )
	
	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "A0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "A0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "A0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "A0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "A0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "A0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "A0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "A0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_CANNONADE
-------------------------------------------------------------------------------------------------------------
function DamageState_Cannonade( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "E0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "E0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "E0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "E0013", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_REVOLVER
-------------------------------------------------------------------------------------------------------------
function DamageState_Revolver( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "D0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "D0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "D0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "D0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "D0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "D0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "D0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "D0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_SMG2
-------------------------------------------------------------------------------------------------------------
function DamageState_SMG2( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "D0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "D0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "D0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "D0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "D0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "D0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "D0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "D0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_MIND_STROM
-------------------------------------------------------------------------------------------------------------
function DamageState_MinStorm( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "H0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "H0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "H0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "H0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "H0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "H0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "H0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "H0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_SENTIWALL_BUILDER
-------------------------------------------------------------------------------------------------------------
function DamageState_SentiwallBuilder( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	0, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_BAT_SWORD
-------------------------------------------------------------------------------------------------------------
function DamageState_BatSword( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "A0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "A0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "A0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "A0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "A0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "A0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "A0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "A0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_KATANA_SWORD
-------------------------------------------------------------------------------------------------------------
function DamageState_KatanaSword( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "A0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "A0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "A0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "A0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "A0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "A0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "A0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "A0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_CARD
-------------------------------------------------------------------------------------------------------------
function DamageState_Card( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "D0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "D0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "D0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "D0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "D0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "D0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "D0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "D0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_MG2
-------------------------------------------------------------------------------------------------------------
function DamageState_MG2( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
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
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_SENTINEL_BUILDER
-------------------------------------------------------------------------------------------------------------
function DamageState_SentinelBuilder( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	0, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_ASSASSIN_CLAW
-------------------------------------------------------------------------------------------------------------
function DamageState_AssassinClaw( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "A0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "A0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "A0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "A0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "A0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "A0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "A0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "A0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_SMG3
-------------------------------------------------------------------------------------------------------------
function DamageState_SMG3( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "D0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "D0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "D0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "D0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "D0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "D0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "D0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "D0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_REVOLVER2
-------------------------------------------------------------------------------------------------------------
function DamageState_Revolver2( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "D0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "D0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "D0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "D0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "D0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "D0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "D0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "D0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_SMG4
-------------------------------------------------------------------------------------------------------------
function DamageState_SMG4( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "D0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "D0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "D0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "D0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "D0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "D0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "D0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "D0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_SPYDAGGER
-------------------------------------------------------------------------------------------------------------
function DamageState_SpyDagger( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "A0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "A0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "A0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "A0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "A0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "A0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "A0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "A0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_DOUBLE_SWORD
-------------------------------------------------------------------------------------------------------------
function DamageState_DoubleSword( state )
	
	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "A0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "A0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "A0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "A0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "A0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "A0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "A0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "A0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_AIR_GUN
-------------------------------------------------------------------------------------------------------------
function DamageState_AIRGUN( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "D0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "D0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "D0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "D0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "D0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "D0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "D0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "D0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_HOMING_RIFLE	
-------------------------------------------------------------------------------------------------------------
function DamageState_HOMING_RIFLE( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "D0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "D0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "D0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "D0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "D0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "D0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "D0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "D0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_EARTH_BOMBER
-------------------------------------------------------------------------------------------------------------
function DamageState_EARTH_BOMBER( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "G0018", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "G0019", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "G0020", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "G0021", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "G0022", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "G0023", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "G0024", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "G0025", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_SPARK_RIFLE	
-------------------------------------------------------------------------------------------------------------
function DamageState_SPARK_RIFLE( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "D0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "D0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "D0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "D0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "D0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "D0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "D0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "D0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_CHAIN_LIGHT_GUN
-------------------------------------------------------------------------------------------------------------
function DamageState_SHOCK_WAVE_GUN( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "D0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "D0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "D0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "D0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "D0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "D0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "D0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "D0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end


-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_BREAKER
-------------------------------------------------------------------------------------------------------------
function DamageState_Breaker( state )
	
	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "A0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "A0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "A0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "A0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "A0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "A0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "A0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "A0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_TURRET
-------------------------------------------------------------------------------------------------------------
function DamageState_TURRET( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "D0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "D0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "D0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "D0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "D0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "D0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "D0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "D0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end


-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_ASSULT_RIFLE
-------------------------------------------------------------------------------------------------------------
function DamageState_ASSULT_RIFLE( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "D0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "D0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "D0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "D0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "D0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "D0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "D0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "D0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_RESCUEGUN
-------------------------------------------------------------------------------------------------------------
function DamageState_RESCUE_GUN( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
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
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_SIGMA_BLADE
-------------------------------------------------------------------------------------------------------------
function DamageState_SigmaBlade( state )
	
	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "A0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "A0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "A0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "A0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "A0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "A0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "A0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "A0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_KATANA_A_SWORD
-------------------------------------------------------------------------------------------------------------
function DamageState_Katana_A_Sword( state )
	
	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "A0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "A0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "A0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "A0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "A0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "A0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "A0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "A0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_STANDARD_RAILGUN
-------------------------------------------------------------------------------------------------------------
function DamageState_StandardRailGun( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "E0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "E0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "E0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "E0013", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end


-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_STANDARD_DEATH_SCYTHE ( 사신낫 )
-------------------------------------------------------------------------------------------------------------
function DamageState_DEATH_SCYTHE( state )

    local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK			):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT			):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK    ):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK		):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK		):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK	):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE	);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "E0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "E0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "E0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "E0013", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_IRON_BOOTS ( 아이언 부츠 )
-------------------------------------------------------------------------------------------------------------
function DamageState_IRONBOOTS( state )

    local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK			):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT			):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK    ):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK		):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK		):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK	):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE	);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "E0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "E0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "E0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "E0013", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_DUAL_GUN	
-------------------------------------------------------------------------------------------------------------
function DamageState_DualGun( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "D0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "D0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "D0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "D0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "D0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "D0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "D0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "D0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_ROCKET_LAUNCHER ( 로켓 런처 )		
-------------------------------------------------------------------------------------------------------------
function DamageState_RocketLauncher( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
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
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_DEMONIC_KNUCKLE
-------------------------------------------------------------------------------------------------------------
function DamageState_DemonicKnuckle( state )
	
	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "A0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "A0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "A0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "A0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "A0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "A0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "A0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "A0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end
-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_MIND_STROM
-------------------------------------------------------------------------------------------------------------
function DamageState_MinStorm_Unique( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "H0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "H0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "H0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "H0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "H0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "H0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "H0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "H0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_SIGMA_BLADE
-------------------------------------------------------------------------------------------------------------
function DamageState_GlitchJoy_SigmaBlade( state )
	
	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "A0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "A0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "A0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "A0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "A0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "A0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "A0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "A0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE,	WEAPONTYPE_VITAL_SHOCK
-------------------------------------------------------------------------------------------------------------
function DamageState_VitalShock( state )

	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "A0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "A0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "A0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "A0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "A0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "A0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "A0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "A0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end