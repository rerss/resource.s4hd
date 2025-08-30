require "Resources/Script/ActorStates_Constants.lua"
--[[
< 에너지 서플라이 애니메이션 설정 >

1. 노말, 런, 데미지 상태 애니메이션 설정
2. 공격 애니메이션 설정.

* 무기 타입 : WEAPONTYPE_ENERGY_SUPPLY_BUILDER
* 초기 제작 : minhoCAttackSentryGunCreationState

]]--

-------------------------------------------------------------------------------------------------------------
-- 에너지 서플라이를 들고 있을 때의 "노말" 상태 애니 설정.
-------------------------------------------------------------------------------------------------------------
function NormalState_EnergySupplyBuilder( state )
	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "00029_2", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
end

-------------------------------------------------------------------------------------------------------------
-- 에너지 서플라이를 들고 있을 때의 "런" 상태 애니 설정.
-------------------------------------------------------------------------------------------------------------
function RunState_EnergySupplyBuilder( state )
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
-- 에너지 서플라이를 들고 있을 때의 "데미지" 받은 상태 애니 설정.
-------------------------------------------------------------------------------------------------------------
function DamageState_EnergySupplyBuilder( state )

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
-- 메탈릭 너클을 들고 "약공격 1, 2"를 한 상태의 애니메이션 처리.
-------------------------------------------------------------------------------------------------------------
function ANI_LeftAttack_EnergySupplyBuilder( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "K0000",		1000,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE		);

end
