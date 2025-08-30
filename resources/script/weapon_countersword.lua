require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------
--[[
	기본 CounterSwordJumpDash 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
function StandardCounterSwordJumpDash(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:SetDrop( 400, MAKEVECTOR3( 0, -4000, -6000 ) );
	STATE:SetStealthCancel( true );
	STATE:SetCoolTime( 1500 );
	STATE:SetMoveBoxMultiplier( 0 );
	STATE:SetHitStop( 550, 750 );
	STATE:EnableCameraShake( true, false, 600 );
	STATE:SetCameraShakeFactor1( 100, 50, 30 );
	STATE:SetCameraShakeFactor2( 60, 0, 2000, 3000 );

	STATE:InitLua( 600, 600, 40, false );

	local range = WEAPON:GetRange();

    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_COUNTER_SWORD, ATTACKATTRIB_COUNTER_SWORD_CRITICAL, 600, (Power*1.5)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,0), MAKEVECTOR3(0,0,-1), range - 100 ), 1, 1, false  );
    Attack1:SetAlwaysCritical( true );
    AddAttack( ATTACKS, Attack1 );

    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_COUNTER_SWORD, ATTACKATTRIB_COUNTER_SWORD_JUMPDASH, 600, (Power*1.5)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0,0,0), 300, range ), 1, 1, false  );
    Attack2:AddPushCondition( 100, 2000, -5000 );
    AddAttack( ATTACKS, Attack2 );

end





-------------------------------------------------------------------------------
--[[
	기본 CounterSwordAfterDash1 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
function StandardCounterSwordAfterDash1(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:SetMoveBoxMultiplier( 1.7 );
	STATE:SetMoveStopWhenDamage( true );
	STATE:SetStealthCancel( true );
	STATE:SetHitStop( 300, 500 );

	STATE:InitLua( 800, 250, 40, true );

	local range = WEAPON:GetRange();

    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_COUNTER_SWORD, ATTACKATTRIB_COUNTER_SWORD_CRITICAL, 350, Power+AdditionalPower, AddtionalPower );
	Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range - 100 ), 1, 1, false  );
    Attack1:SetAlwaysCritical( true );
    AddAttack( ATTACKS, Attack1 );

    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_COUNTER_SWORD, ATTACKATTRIB_COUNTER_SWORD_ATTACK1, 100, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range*0.6, range*0.7, range*0.7 ), 1, 1, false  );
    Attack2:AddPushCondition( 100, 2000, -5000 );
    AddAttack( ATTACKS, Attack2 );

    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_COUNTER_SWORD, ATTACKATTRIB_COUNTER_SWORD_ATTACK1, 350, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range*0.6, range*0.7, range*0.7 ), 1, 1, false  );
    Attack2:AddPushCondition( 100, 2000, -5000 );
    AddAttack( ATTACKS, Attack2 );

end




-------------------------------------------------------------------------------
--[[
	기본 CounterSwordAfterDash2 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
function StandardCounterSwordAfterDash2(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:SetMoveBoxMultiplier( 1.0 );
	STATE:SetStealthCancel( true );
	STATE:SetHitStop( 200, 350 );

	STATE:InitLua( 600, 400, 40, true );

	local range = WEAPON:GetRange();

    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_COUNTER_SWORD, ATTACKATTRIB_COUNTER_SWORD_CRITICAL, 250, Power+AdditionalPower, AddtionalPower );
	Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range - 100 ), 1, 1, false  );
    Attack1:SetAlwaysCritical( true );
    AddAttack( ATTACKS, Attack1 );

    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_COUNTER_SWORD, ATTACKATTRIB_COUNTER_SWORD_ATTACK2, 100, Power+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range*0.6, range*0.7, range*0.7 ), 1, 1, false  );
    Attack2:AddPushCondition( 100, 2000, -5000 );
    AddAttack( ATTACKS, Attack2 );

end




-------------------------------------------------------------------------------
--[[
	기본 CounterSwordAfterDash3 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
function StandardCounterSwordAfterDash3(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:SetMoveBoxMultiplier( 1.0 );
	STATE:SetStealthCancel( true );
	STATE:SetHitStop( 300, 450 );

	STATE:InitLua( 800, 300, 40, true );

	local range = WEAPON:GetRange();

    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_COUNTER_SWORD, ATTACKATTRIB_COUNTER_SWORD_CRITICAL, 300, Power+AdditionalPower, AddtionalPower );
	Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range - 100 ), 1, 1, false  );
    Attack1:SetAlwaysCritical( true );
    AddAttack( ATTACKS, Attack1 );

    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_COUNTER_SWORD, ATTACKATTRIB_COUNTER_SWORD_ATTACK3, 300, Power+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range*0.6, range*0.7, range*1.0 ), 1, 1, false  );
    Attack2:AddPushCondition( 100, 2000, -5000 );
    AddAttack( ATTACKS, Attack2 );

end




-------------------------------------------------------------------------------
--[[
	기본 CounterSwordAfterDash4 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
function StandardCounterSwordAfterDash4(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:SetMoveBoxMultiplier( 1.0 );
	STATE:SetStealthCancel( true );
	STATE:SetHitStop( 600, 800 );

	STATE:InitLua( 1150, 300, 40, true );

	local range = WEAPON:GetRange();

    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_COUNTER_SWORD, ATTACKATTRIB_COUNTER_SWORD_CRITICAL, 650, (Power*1.5)+AdditionalPower, AddtionalPower );
	Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range - 100 ), 1, 1, false  );
    Attack1:SetAlwaysCritical( true );
    AddAttack( ATTACKS, Attack1 );

    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_COUNTER_SWORD, ATTACKATTRIB_COUNTER_SWORD_ATTACK4, 50, (Power*0.75)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range*0.6, range*0.7, range*1.0 ), 1, 1, false  );
    AddAttack( ATTACKS, Attack2 );

    Attack3 = CreateCAttack();
    Attack3:InitAttack1( WEAPONTYPE_COUNTER_SWORD, ATTACKATTRIB_COUNTER_SWORD_ATTACK4, 650, (Power*0.75)+AdditionalPower, AddtionalPower );
    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range*0.6, range*0.7, range*1.0 ), 1, 1, false  );
    Attack3:AddBlowCondition( 3000, 2000 );
    Attack3:SetCameraShakeEnable( true, true, 0 );
    Attack3:SetCameraShakeSetFactor1( 50, 25, 20 );
    Attack3:SetCameraShakeSetFactor2( 0, 25, 2000, 3000 );
    Attack3:SetCameraShakeWhenSuccess( true );
    AddAttack( ATTACKS, Attack3 );

end




-------------------------------------------------------------------------------
--[[
	기본 CounterSwordCounterAttack 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
function StandardCounterSwordCounterAttack(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:SetStealthCancel( true );
	STATE:SetHitStop( 350, 550 );

	STATE:InitLua( 1000, 500, 40, false );

	local range = WEAPON:GetRange();

    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_COUNTER_SWORD, ATTACKATTRIB_COUNTER_SWORD_COUNTER_CRITICAL, 350, (Power*1.5)+AdditionalPower, AddtionalPower );
	Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range - 100 ), 1, 1, false  );
    Attack1:SetAlwaysCritical( true );
    AddAttack( ATTACKS, Attack1 );

    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_COUNTER_SWORD, ATTACKATTRIB_COUNTER_SWORD_COUNTER_ATTACK, 350, (Power*1.5)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range*0.6, range*1.2, range*1.2 ), 1, 1, false  );
    Attack2:AddBlowCondition( 3000, 3000 );
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 100, 50, 50 );
    Attack2:SetCameraShakeSetFactor2( 50, 0, 2000, 3000 );
    Attack2:SetCameraShakeWhenSuccess( true );
    AddAttack( ATTACKS, Attack2 );

end
