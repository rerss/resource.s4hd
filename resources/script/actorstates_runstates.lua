require "Resources/Script/ActorStates_Constants.lua"


-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_UNUSED
-------------------------------------------------------------------------------------------------------------
function RunState_WeaponUnused( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "00008", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "00009", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "00010", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "00011", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "00012", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "00013", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "00014", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "00015", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_PLASMA_SWORD
-------------------------------------------------------------------------------------------------------------
function RunState_PlasmaSword( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "A0005", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "A0006", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "A0007", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "A0008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "A0009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "A0010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "A0011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "A0012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_SUBMACHINE_GUN
-------------------------------------------------------------------------------------------------------------
function RunState_SubMachineGun( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "D0027", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "D0028", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "D0029", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "D0030", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "D0031", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "D0032", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "D0033", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "D0034", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_MACHINE_GUN
-------------------------------------------------------------------------------------------------------------
function RunState_MachineGun( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "F0018", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "F0018", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "F0018", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "F0018", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "F0018", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "F0018", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "F0018", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "F0018", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "E0019", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "E0020", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "E0021", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "E0022", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "E0023", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "E0024", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "E0025", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "E0026", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_RIFLE
-------------------------------------------------------------------------------------------------------------
function RunState_Rifle( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "E0019", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "E0019", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "E0019", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "E0019", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "E0019", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "E0019", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "E0019", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "E0019", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "E0019", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "E0020", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "E0021", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "E0022", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "E0023", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "E0024", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "E0025", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "E0026", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_SENTRYGUN_BUILDER
-------------------------------------------------------------------------------------------------------------
function RunState_SentryGunBuilder( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "00008", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "00009", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "00010", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "00011", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "00012", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "00013", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "00014", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "00015", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_MINE_LAUNCHER
-------------------------------------------------------------------------------------------------------------
function RunState_MineLauncher( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "G0004", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "G0005", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "G0006", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "G0007", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "G0008", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "G0009", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "G0010", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "G0011", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_MIND_ENERGY
-------------------------------------------------------------------------------------------------------------
function RunState_MindEnergy( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "00008", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "00009", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "00010", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "00011", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "00012", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "00013", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "00014", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "00015", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end



-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_COUNTER_SWORD
-------------------------------------------------------------------------------------------------------------
function RunState_CounterSword( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "R0016", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "R0017", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "R0018", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "R0019", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "R0020", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "R0021", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "R0022", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "R0023", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_VIRTUAL_SHIELD
-------------------------------------------------------------------------------------------------------------
function RunState_VirtualShield( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "R0016", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "R0017", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "R0018", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "R0019", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "R0020", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "R0021", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "R0022", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "R0023", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end


-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_REVOLVER
-------------------------------------------------------------------------------------------------------------
function RunState_Revolver( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "Q0014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "Q0015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "Q0016", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "Q0017", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "Q0018", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "Q0019", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "Q0020", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "Q0021", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_SMG2
-------------------------------------------------------------------------------------------------------------
function RunState_SMG2( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "W0014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "W0015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "W0016", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "W0017", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "W0018", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "W0019", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "W0020", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "W0021", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_CANNONADE
-------------------------------------------------------------------------------------------------------------
function RunState_Cannonade( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "E0019", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "E0019", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "E0019", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "E0019", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "E0019", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "E0019", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "E0019", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "E0019", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "E0019", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "E0020", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "E0021", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "E0022", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "E0023", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "E0024", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "E0025", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "E0026", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_SENTIWALL_BUILDER
-------------------------------------------------------------------------------------------------------------
function RunState_SentiwallBuilder( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "00008", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "00009", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "00010", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "00011", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "00012", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "00013", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "00014", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "00015", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_MIND_STROM
-------------------------------------------------------------------------------------------------------------
function RunState_MinStorm( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "00008", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "00009", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "00010", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "00011", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "00012", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "00013", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "00014", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "00015", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_BAT_SWORD
-------------------------------------------------------------------------------------------------------------
function RunState_BatSword( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "A0005", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "A0006", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "A0007", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "A0008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "A0009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "A0010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "A0011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "A0012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_KATANA_SWORD
-------------------------------------------------------------------------------------------------------------
function RunState_KatanaSword( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "X0004", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "X0005", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "X0006", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "X0007", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "X0008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "X0009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "X0010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "X0011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_CARD
-------------------------------------------------------------------------------------------------------------
function RunState_Card( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "Y0020", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "Y0021", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "Y0022", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "Y0023", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "Y0024", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "Y0025", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "Y0026", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "Y0027", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_MG2
-------------------------------------------------------------------------------------------------------------
function RunState_MG2( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "Z0014", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "Z0015", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "Z0016", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "Z0017", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "Z0018", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "Z0019", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "Z0020", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "Z0021", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "E0019", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "E0020", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "E0021", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "E0022", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "E0023", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "E0024", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "E0025", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "E0026", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_SENTINEL_BUILDER
-------------------------------------------------------------------------------------------------------------
function RunState_SentinelBuilder( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "00008", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "00009", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "00010", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "00011", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "00012", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "00013", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "00014", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "00015", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end


-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_ASSASSIN_CLAW
-------------------------------------------------------------------------------------------------------------
function RunState_AssassinClaw( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "C0012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "C0013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "C0014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "C0015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "C0016", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "C0017", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "C0018", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "C0019", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_SMG3
-------------------------------------------------------------------------------------------------------------
function RunState_SMG3( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "DD014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "DD015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "DD016", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "DD017", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "DD018", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "DD019", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "DD020", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "DD021", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_REVOLVER2
-------------------------------------------------------------------------------------------------------------
function RunState_Revolver2( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "Q0014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "Q0015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "Q0016", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "Q0017", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "Q0018", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "Q0019", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "Q0020", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "Q0021", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_SMG4
-------------------------------------------------------------------------------------------------------------
function RunState_SMG4( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "SS014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "SS015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "SS016", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "SS017", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "SS018", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "SS019", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "SS020", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "SS021", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_SPYDAGGER
-------------------------------------------------------------------------------------------------------------
function RunState_SpyDagger( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;
				

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "SN004", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "SN005", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "SN006", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "SN007", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "SN008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "SN009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "SN010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "SN011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "E0019", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "E0020", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "E0021", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "E0022", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "E0023", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "E0024", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "E0025", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "E0026", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_MIND_ORORA
-------------------------------------------------------------------------------------------------------------
function RunState_MindOrora( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "00008", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "00009", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "00010", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "00011", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "00012", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "00013", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "00014", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "00015", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end


-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_DOUBLE_SWORD
-------------------------------------------------------------------------------------------------------------
function RunState_DoubleSword( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "SG004", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "SG005", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "SG006", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "SG007", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "SG008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "SG009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "SG010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "SG011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end



-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_AIR_GUN
-------------------------------------------------------------------------------------------------------------
function RunState_AIRGUN( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "AW019", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "AW020", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "AW021", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "AW022", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "AW023", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "AW024", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "AW025", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "AW026", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_HOMING_RIFLE	
-------------------------------------------------------------------------------------------------------------
function RunState_HOMING_RIFLE( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "WK014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "WK015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "WK016", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "WK017", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "WK018", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "WK019", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "WK020", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "WK021", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_EARTH_BOMBER
-------------------------------------------------------------------------------------------------------------
function RunState_EARTH_BOMBER( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "GB004", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "GB005", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "GB006", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "GB007", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "GB008", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "GB009", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "GB010", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "GB011", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_SPARK_RIFLE	
-------------------------------------------------------------------------------------------------------------
function RunState_SPARK_RIFLE( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "WK014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "WK015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "WK016", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "WK017", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "WK018", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "WK019", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "WK020", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "WK021", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_CHAIN_LIGHT_GUN
-------------------------------------------------------------------------------------------------------------
function RunState_SHOCK_WAVE_GUN( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "AW019", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "AW020", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "AW021", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "AW022", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "AW023", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "AW024", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "AW025", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "AW026", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_Umbrella Unique
-------------------------------------------------------------------------------------------------------------
function RunState_UMBRELLA_GUN( state )

    local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "A0005", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "A0006", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "A0007", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "A0008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "A0009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "A0010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "A0011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "A0012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_BREAKER
-------------------------------------------------------------------------------------------------------------
function RunState_Breaker( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "HM008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "HM009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "HM010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "HM011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "HM012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "HM013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "HM014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "HM015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end


-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_TURRET
-------------------------------------------------------------------------------------------------------------
function RunState_TURRET( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "TR018", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "TR018", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "TR018", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "TR018", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "TR018", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "TR018", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "TR018", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "TR018", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "E0019", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "E0020", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "E0021", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "E0022", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "E0023", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "E0024", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "E0025", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "E0026", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_ASSULT_RIFLE
-------------------------------------------------------------------------------------------------------------
function RunState_ASSULT_RIFLE( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "WK014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "WK015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "WK016", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "WK017", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "WK018", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "WK019", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "WK020", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "WK021", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end



-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_RESCUEGUN
-------------------------------------------------------------------------------------------------------------
function RunState_RESCUE_GUN( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "AW019", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "AW020", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "AW021", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "AW022", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "AW023", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "AW024", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "AW025", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "AW026", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_SIGMA_BLADE
-------------------------------------------------------------------------------------------------------------
function RunState_SigmaBlade( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;
	
	local ANIMPARAMLIST_UPPER_FRONT_TRNAS			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT_TRNAS	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_TRNAS			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK_TRNAS		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT_TRNAS	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_TRNAS			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK_TRNAS	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK_TRNAS			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT_TRNAS			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT_TRNAS	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_TRNAS			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK_TRNAS		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT_TRNAS	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_TRNAS			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK_TRNAS	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK_TRNAS			= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "DC029", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "DC030", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "DC031", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "DC032", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "DC033", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "DC034", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "DC035", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "DC036", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT_TRNAS		):SetAnim( "DC020", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT_TRNAS	):SetAnim( "DC021", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_TRNAS		):SetAnim( "DC022", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT_TRNAS	):SetAnim( "DC023", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_TRNAS	):SetAnim( "DC024", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK_TRNAS		):SetAnim( "DC025", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK_TRNAS	):SetAnim( "DC026", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK_TRNAS	):SetAnim( "DC027", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT_TRNAS		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT_TRNAS	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_TRNAS		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT_TRNAS	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_TRNAS		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK_TRNAS		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK_TRNAS	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK_TRNAS	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end


-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_KATANA_A_SWORD
-------------------------------------------------------------------------------------------------------------
function RunState_Katana_A_Sword( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "KT016", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "KT017", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "KT018", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "KT019", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "KT020", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "KT021", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "KT022", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "KT023", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_STANDARD_RAILGUN
-------------------------------------------------------------------------------------------------------------
function RunState_StandardRailGun( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "NS014", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "NS015", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "NS016", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "NS017", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "NS018", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "NS019", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "NS020", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "NS021", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end


-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_DUAL_GUN
-------------------------------------------------------------------------------------------------------------
function RunState_DualGun( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "DU011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "DU012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "DU013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "DU014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "DU015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "DU016", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "DU017", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "DU018", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end


-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,       WEAPONTYPE_DEATH_SCYTHE ( 사신낫 )
-------------------------------------------------------------------------------------------------------------
function RunState_DEATH_SCYTHE( state )

    local index = 0;
    local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "GR013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "GR014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "GR015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "GR016", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "GR017", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "GR018", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "GR019", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "GR020", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,       WEAPONTYPE_IRON_BOOTS ( 아이언 부츠 )
-------------------------------------------------------------------------------------------------------------
function RunState_IRONBOOTS( state )

    local index = 0;
    local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "IB008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "IB009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "IB010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "IB011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "IB012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "IB013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "IB014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "IB015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "IB008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "IB009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "IB010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "IB011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "IB012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "IB013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "IB014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "IB015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end


-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,	WEAPONTYPE_ROCKET_LAUNCHER ( 로켓 런처 )	
-------------------------------------------------------------------------------------------------------------
function RunState_RocketLauncher( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "RL004", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "RL005", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "RL006", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "RL007", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "RL008", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "RL009", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "RL010", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "RL011", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_ASSULT_RIFLE_UNIQUE
-------------------------------------------------------------------------------------------------------------
function RunState_ASSULT_RIFLE_UNIQUE( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "AS014_1", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "AS015_1", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "AS016_1", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "AS017_1", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "AS018_1", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "AS019_1", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "AS020_1", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "AS021_1", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONYTPE_RAIL_MARTINSTICK
-------------------------------------------------------------------------------------------------------------
function RunState_RAIL_MARTINSTICK( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;


	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "SN004", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "SN005", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "SN006", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "SN007", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "SN008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "SN009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "SN010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "SN011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "E0019", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "E0020", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "E0021", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "E0022", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "E0023", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "E0024", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "E0025", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "E0026", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_MIND_STROM_UNIQUE
-------------------------------------------------------------------------------------------------------------
function RunState_MinStorm_Unique( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "00008", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "00009", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "00010", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "00011", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "00012", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "00013", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "00014", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "00015", 0,	2000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_GLITCHJOY_SIGMA_BLADE
-------------------------------------------------------------------------------------------------------------
function RunState_GlitchJoy_SigmaBlade( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;
	
	local ANIMPARAMLIST_UPPER_FRONT_TRNAS			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT_TRNAS	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_TRNAS			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK_TRNAS		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT_TRNAS	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_TRNAS			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK_TRNAS	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK_TRNAS			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT_TRNAS			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT_TRNAS	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_TRNAS			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK_TRNAS		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT_TRNAS	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_TRNAS			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK_TRNAS	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK_TRNAS			= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "DC029", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "DC030", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "DC031", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "DC032", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "DC033", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "DC034", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "DC035", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "DC036", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT_TRNAS		):SetAnim( "DC020", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT_TRNAS	):SetAnim( "DC021", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_TRNAS		):SetAnim( "DC022", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT_TRNAS	):SetAnim( "DC023", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_TRNAS	):SetAnim( "DC024", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK_TRNAS		):SetAnim( "DC025", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK_TRNAS	):SetAnim( "DC026", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK_TRNAS	):SetAnim( "DC027", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT_TRNAS		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT_TRNAS	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_TRNAS		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT_TRNAS	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_TRNAS		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK_TRNAS		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK_TRNAS	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK_TRNAS	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN,		WEAPONTYPE_VITAL_SHOCK
-------------------------------------------------------------------------------------------------------------
function RunState_VitalShock( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "C0012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "C0013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "C0014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "C0015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "C0016", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "C0017", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "C0018", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "C0019", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "00008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "00009", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "00010", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "00011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "00012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "00013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "00014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "00015", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end