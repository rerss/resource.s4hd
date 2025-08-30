require "Resources/Script/ActorStates_Constants.lua"


-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_UNUSED
-------------------------------------------------------------------------------------------------------------
function NormalState_WeaponUnused( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "00074", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_PLASMA_SWORD	
-------------------------------------------------------------------------------------------------------------
function NormalState_PlasmaSword( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "A0013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	--state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "BASE", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_SUBMACHINE_GUN	
-------------------------------------------------------------------------------------------------------------
function NormalState_SubMachineGun( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "D0026", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_MACHINE_GUN	
-------------------------------------------------------------------------------------------------------------
function NormalState_MachineGun( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "F0002", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_RIFLE	
-------------------------------------------------------------------------------------------------------------
function NormalState_Rifle( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "E0018", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_SENTRYGUN_BUILDER	
-------------------------------------------------------------------------------------------------------------
function NormalState_SentryGunBuilder( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "00029", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_MINE_LAUNCHER	
-------------------------------------------------------------------------------------------------------------
function NormalState_MineLauncher( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "G0014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_MIND_ENERGY	
-------------------------------------------------------------------------------------------------------------
function NormalState_MindEnergy( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "00029", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_COUNTER_SWORD	
-------------------------------------------------------------------------------------------------------------
function NormalState_CounterSword( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "R0004", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_VIRTUAL_SHIELD
-------------------------------------------------------------------------------------------------------------
function NormalState_VirtualShield( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "R0004", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_REVOLVER	
-------------------------------------------------------------------------------------------------------------
function NormalState_Revolver( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "Q0000", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_SMG2
-------------------------------------------------------------------------------------------------------------
function NormalState_SMG2( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "W0000", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_CANNONADE	
-------------------------------------------------------------------------------------------------------------
function NormalState_Cannonade( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "E0018", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_SENTIWALL_BUILDER	
-------------------------------------------------------------------------------------------------------------
function NormalState_SentiwallBuilder( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "00029", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_MIND_STROM	
-------------------------------------------------------------------------------------------------------------
function NormalState_MinStorm( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "00029", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_BAT_SWORD	
-------------------------------------------------------------------------------------------------------------
function NormalState_BatSword( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "A0013", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_KATANA_SWORD	
-------------------------------------------------------------------------------------------------------------
function NormalState_KatanaSword( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "X0012", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_CARD
-------------------------------------------------------------------------------------------------------------
function NormalState_Card( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "Y0000", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_MG2
-------------------------------------------------------------------------------------------------------------
function NormalState_MG2( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "Z0000", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_SENTINEL_BUILDER	
-------------------------------------------------------------------------------------------------------------
function NormalState_SentinelBuilder( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "00029", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_ASSASSIN_CLAW
-------------------------------------------------------------------------------------------------------------
function NormalState_AssassinClaw( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "C0011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	--state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "BASE", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_SMG3	
-------------------------------------------------------------------------------------------------------------
function NormalState_SMG3( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "DD000", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_REVOLVER2	
-------------------------------------------------------------------------------------------------------------
function NormalState_Revolver2( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "QQ000", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_SMG4	
-------------------------------------------------------------------------------------------------------------
function NormalState_SMG4( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "SS000", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_SPYDAGGER
-------------------------------------------------------------------------------------------------------------
function NormalState_SpyDagger( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "SN002", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_MIND_ORORA
-------------------------------------------------------------------------------------------------------------
function NormalState_MindOrora( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "H0029", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_DOUBLE_SWORD	
-------------------------------------------------------------------------------------------------------------
function NormalState_DoubleSword( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "SG003", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_DOUBLE_SWORD 글리치	
-------------------------------------------------------------------------------------------------------------
function NormalState_DoubleSword_Glitch( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "SG003", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_AIR_GUN	
-------------------------------------------------------------------------------------------------------------
function NormalState_AIRGUN( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "AW000", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_HOMING_RIFLE
-------------------------------------------------------------------------------------------------------------
function NormalState_HOMING_RIFLE( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "W0000", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_EARTH_BOMBER	
-------------------------------------------------------------------------------------------------------------
function NormalState_EARTH_BOMBER( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "GB014", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_SPARK_RIFLE
-------------------------------------------------------------------------------------------------------------
function NormalState_SPARK_RIFLE( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "SP000", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_CHAIN_LIGHT_GUN
-------------------------------------------------------------------------------------------------------------
function NormalState_SHOCK_WAVE_GUN( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "CH000", 0,	1500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_BREAKER
-------------------------------------------------------------------------------------------------------------
function NormalState_Breaker( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "HM000", 0,	300, 0,	LOOP_TRUE, 1.0, RESET_FALSE );	
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_TURRET	
-------------------------------------------------------------------------------------------------------------
function NormalState_TURRET( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "TR002", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_TURRET	
-------------------------------------------------------------------------------------------------------------
function NormalState_TURRETINSTALL( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "TR026", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_ASSULT_RIFLE
-------------------------------------------------------------------------------------------------------------
function NormalState_ASSULT_RIFLE( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "AS000", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_RESCUEGUN	
-------------------------------------------------------------------------------------------------------------
function NormalState_RESCUE_GUN( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "RC000", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_SIGMA_BLADE	
-------------------------------------------------------------------------------------------------------------
function NormalState_SigmaBlade( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL				= index; index = index + 1;
	local ANIMPARAMLIST_CHANGE_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "DC000", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_CHANGE_NORMAL					):SetAnim( "DC019", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_KATANA_A_SWORD	
-------------------------------------------------------------------------------------------------------------
function NormalState_Katana_A_Sword( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "KT004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_STANDARD_RAILGUN	
-------------------------------------------------------------------------------------------------------------
function NormalState_StandardRailGun( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "NS000", 0,	500, 0,	LOOP_TRUE	, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_DUAL_GUN	
-------------------------------------------------------------------------------------------------------------
function NormalState_DualGun( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "DU000", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_DEATH_SCYTHE ( 사신낫 )	
-------------------------------------------------------------------------------------------------------------
function NormalState_DeathScythe( state )

    local index = 0;
    local ANIMPARAMLIST_NORMAL = index; index = index + 1;
    
    -- 디폴트 설정이라고 생각하고 사용
    state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "GR000", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
    
    -- 성별에 따른 애니메이션 조절이 필요하다고 생각되면 사용할 것
    state:GetAnimParam( ANIMPARAMLIST_NORMAL ):SetAniNameForHuman( "GR000", "GR000_1", true );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_IRON_BOOTS ( 아이언 부츠 )	
-------------------------------------------------------------------------------------------------------------
function NormalState_IRONBOOTS( state )
    
    local index = 0;
    local ANIMPARAMLIST_NORMAL = index; index = index + 1;
    
    state:GetAnimParam( ANIMPARAMLIST_NORMAL ):SetAnim( "IB000", 0, 500, 0, LOOP_TRUE, 1.0, RESET_FALSE );
    
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_ROCKET_LAUNCHER ( 로켓 런처 )	
-------------------------------------------------------------------------------------------------------------
function NormalState_RocketLauncher( state )
    
    local index = 0;
    local ANIMPARAMLIST_NORMAL = index; index = index + 1;
    
    state:GetAnimParam( ANIMPARAMLIST_NORMAL ):SetAnim( "RL014", 0, 500, 0, LOOP_TRUE, 1.0, RESET_FALSE );
    
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_ASSULT_RIFLE_UNIQUE
-------------------------------------------------------------------------------------------------------------
function NormalState_ASSULT_RIFLE_UNIQUE( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "AS000_1", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONYTPE_RAIL_MARTINSTICK
-------------------------------------------------------------------------------------------------------------
function NormalState_MartinStick( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "E0018_1", 0,	500, 0,	LOOP_TRUE	, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_MIND_STROM_UNIQUE
-------------------------------------------------------------------------------------------------------------
function NormalState_MinStorm_Unique( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "00029", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_GLITCHJOY_SIGMA_BLADE	
-------------------------------------------------------------------------------------------------------------
function NormalState_GlitchJoy_SigmaBlade( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL				= index; index = index + 1;
	local ANIMPARAMLIST_CHANGE_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "DC000", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_CHANGE_NORMAL					):SetAnim( "DC019", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL,	WEAPONTYPE_VITAL_SHOCK
-------------------------------------------------------------------------------------------------------------
function NormalState_VitalShock( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "C0011", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	--state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "BASE", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end