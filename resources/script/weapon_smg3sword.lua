require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------
--[[
	기본 SMG3SWORD 셋팅
	InitLua인자
	u32 uiMinimumSceneUpdateTime	=
	u32 uiLowerPartBeginTime		=
	bool bOnlyVStateNormal			=
	bool bEnableInputJump			=
]]--
-------------------------------------------------------------------------------
function StandardSmg3sword(  OneShotTime, Power, Accuracy, AdditionalPower )
		
	STATE:SetMoveSpeedRate( 0.8 );
	STATE:SetHitStop( 450, 650 );
	STATE:SetStealthCancel( true );	
	STATE:InitLua( 40, 200, false, false );
	STATE:SetCheckAmmo( false );
	
	local range = WEAPON:GetRange();
	
	Attack = CreateCAttack();
    Attack:InitAttack1( WEAPONTYPE_SMG3, ATTACKATTRIB_SMG3_SWORD, 400, Power+AdditionalPower, AddtionalPower );
    Attack:InitAttack2( MAKERAY( MAKEVECTOR3(0.0, 250.0, 100.0), MAKEVECTOR3( 0.0, 0.0, -1.0), range-100 ), 1, 1, false  );    
    Attack:SetAlwaysCritical( true );
    AddAttack( ATTACKS, Attack );
	
	Attack = CreateCAttack();
    Attack:InitAttack1( WEAPONTYPE_SMG3, ATTACKATTRIB_SMG3_SWORD, 400, Power+AdditionalPower, AddtionalPower );
    Attack:InitAttack2( MAKEBOX( MAKEVECTOR3(0.0, 250.0, 100.0), MAKEVECTOR3( 0.0, 0.0, -1.0), 500.0, 100.0, range ), 1, 1, false  );    
    Attack:AddBlowCondition( 4000, 2600 );
    Attack:SetCameraShakeEnable( true, true, 0 );
    Attack:SetCameraShakeSetFactor1( 100, 50, 20 );
    Attack:SetCameraShakeSetFactor2( 0.0, 20.0, 2000.0, 3000.0 );
    Attack:SetCameraShakeWhenSuccess( true );
    AddAttack( ATTACKS, Attack );

end