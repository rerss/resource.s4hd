require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------
--[[
	기본 KatanaSwordAttack1 셋팅
	InitLua인자
	u32 uiMinimumSceneUpdateTime
	u32 uiLowerPartBeginTime
	bool bOnlyVStateNormal
	bool bEnableInputJump
]]--
-------------------------------------------------------------------------------
function StandardKatanaSwordAttack1(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveStopWhenDamage( true );
	STATE:SetMoveSpeedRate( 1.0 );
	STATE:SetStealthCancel( true );
	STATE:SetHitStop( 150, 300 );
	STATE:InitLua( 40, 0, false, false );
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_KATANA_SWORD, ATTACKATTRIB_KATANA_SWORD_CRITICAL, 200, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range-100 ), 1, 1, false  );
    Attack1:SetAlwaysCritical( true );
    AddAttack( ATTACKS, Attack1 );
    
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_KATANA_SWORD, ATTACKATTRIB_KATANA_SWORD_ATTACK1, 200, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range-100 ), 1, 1, false  );    
    AddAttack( ATTACKS, Attack2 );

end




-------------------------------------------------------------------------------
--[[
	기본 KatanaSwordJumpAttack 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
function StandardKatanaSwordJumpAttack(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetDrop( 200, MAKEVECTOR3( 0, -20000, 0 ) );		
	STATE:SetStealthCancel( true );
	STATE:EnableCameraShake( true, false, 600 );
	STATE:SetCameraShakeFactor1( 100, 50, 30 );
	STATE:SetCameraShakeFactor2( 60, 0, 2000, 3000 );
	
	STATE:InitLua( 300, 1100, 40, false );
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_KATANA_SWORD, ATTACKATTRIB_KATANA_SWORD_JUMP_CRITICAL, 500, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,50,-50), MAKEVECTOR3(0,0,-1), range-100 ), 1, 1, false  );
    Attack1:SetAlwaysCritical( true );
    AddAttack( ATTACKS, Attack1 );
    
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_KATANA_SWORD, ATTACKATTRIB_KATANA_SWORD_JUMP, 500, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,170,-50), MAKEVECTOR3(0,0,-1), range*0.6, range*1.2, range*1.5 ), 1, 1, false  );    
    AddAttack( ATTACKS, Attack2 );

end




-------------------------------------------------------------------------------
--[[
	기본 KatanaSwordAttack2 셋팅
	InitLua인자
	u32 uiMinimumSceneUpdateTime
	u32 uiLowerPartBeginTime
	u32 uiAttackDelay
	bool bOnlyVStateNormal
	bool bEnableInputJump
	u32 uiWaitInput
	
	InitluaNoInputSecond
	u32 uiWaitTime
	u32 uiNormalTime
	u32 uiDelayTime
	
	InitluaInputSecond
	u32 uiWaitTime
	u32 uiNormalTime
	u32 uiDelayTime
	string& strFirstBone
	const string& strSecondBone
]]--
-------------------------------------------------------------------------------
function StandardKatanaSwordAttack2(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveSpeedRate( 1.15 );	
	STATE:SetStealthCancel( true );		
	STATE:SetHitStop( 150, 300 );	
	STATE:SetMoveBoxMultiplier( 2.0 );

	--[[ 현재 상태로 들어갈수 있는 최소 sp 설정 ]]--
	STATE:SetStateMinSp( 0 );
	
	STATE:InitLua( 40, 0, 900, false, true, 0 );
	STATE:InitluaNoInputSecond( 2000, 750, 1500 );	
    
end





-------------------------------------------------------------------------------
--[[
	기본 KatanaSwordAttack3 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	u32 uiMaxChargeTime
	bool bOnlyVStateNormal  
]]--
-------------------------------------------------------------------------------
function StandardKatanaSwordAttack3(  OneShotTime, Power, Accuracy, AdditionalPower )
		
	STATE:SetMoveSpeedRate( 1.0 );
	STATE:SetStealthCancel( true );
	STATE:SetHitStop( 450, 650 );
	STATE:InitLua( 3110, 0, 0, 2000, false );
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_KATANA_SWORD, ATTACKATTRIB_KATANA_SWORD_CRITICAL, 240, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,100), MAKEVECTOR3(0,0,-1), range-100 ), 1, 1, false  );
    Attack1:SetAlwaysCritical( true );
    AddAttack( ATTACKS, Attack1 );
    
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_KATANA_SWORD, ATTACKATTRIB_KATANA_SWORD_ATTACK2, 240, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,100), MAKEVECTOR3(0,0,-1), 500, 100, range ), 1, 1, false  ); 
    Attack2:AddBlowCondition( 700, 3300 );
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 200, 50, 40 );
    Attack2:SetCameraShakeSetFactor2( 0, 20, 2000, 3000 );
    Attack2:SetCameraShakeWhenSuccess( true );   
    AddAttack( ATTACKS, Attack2 );

end





-------------------------------------------------------------------------------
--[[
	기본 KatanaSwordAttack4 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	u32 uiMaxChargeTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
function StandardKatanaSwordAttack4(  OneShotTime, Power, Accuracy, AdditionalPower )
		
	STATE:SetMoveSpeedRate( 1.0 );
	STATE:SetMoveBoxMultiplier( 1.0 );	
	STATE:SetHitStop( 450, 650 );
	STATE:SetStealthCancel( true );
	
	STATE:InitLua( 3300, 0, 0, 2000, false );
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_KATANA_SWORD, ATTACKATTRIB_KATANA_SWORD_CRITICAL, 20, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,100), MAKEVECTOR3(0,0,-1), range-100 ), 1, 1, false  );
    Attack1:SetAlwaysCritical( true );
    AddAttack( ATTACKS, Attack1 );
    
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_KATANA_SWORD, ATTACKATTRIB_KATANA_SWORD_ATTACK2, 20, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,100), MAKEVECTOR3(0,0,-1), range*0.6, 250, range*0.7 ), 1, 1, false  ); 
    Attack2:SetAttackSuccessCondition( CONDITION_ACTOR );
    Attack2:SetCollisionRangeAdjust( true, true );    
    Attack2:AddPushCondition( 400, 2000. -5000 );
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 200, 50, 40 );
    Attack2:SetCameraShakeSetFactor2( 0, 20, 2000, 3000 );
    Attack2:SetCameraShakeWhenSuccess( true );   
    AddAttack( ATTACKS, Attack2 );

end





-------------------------------------------------------------------------------
--[[
	기본 KatanaSwordAttack5 셋팅
	InitLua인자
	u32 uiMinimumSceneUpdateTime
	u32 uiLowerPartBeginTime
	u32 uiAttackDelay
	bool bOnlyVStateNormal
	bool bEnableInputJump
	u32 uiWaitInput
	
	InitluaNoInputSecond
	u32 uiWaitTime
	u32 uiNormalTime
	u32 uiDelayTime
	
	InitluaInputSecond
	u32 uiWaitTime
	u32 uiNormalTime
	u32 uiDelayTime
	string& strFirstBone
	const string& strSecondBone
]]--
-------------------------------------------------------------------------------
function StandardKatanaSwordAttack5(  OneShotTime, Power, Accuracy, AdditionalPower )
		
	STATE:SetMoveSpeedRate( 1.0 );
	STATE:SetMoveBoxMultiplier( 1.0 );	
	STATE:SetHitStop( 450, 650 );
	STATE:SetStealthCancel( true );
	
	STATE:InitLua( 40, 0, 900, false, false, 2 );
	STATE:InitluaNoInputSecond( 2000, 750, 1500 );

	--[[ 현재 상태로 들어갈수 있는 최소 sp 설정 ]]--
	STATE:SetStateMinSp( 0 );

end





-------------------------------------------------------------------------------
--[[
	기본 KatanaSwordAttack6 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	u32 uiMaxChargeTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
function StandardKatanaSwordAttack6(  OneShotTime, Power, Accuracy, AdditionalPower )
		
	STATE:SetMoveSpeedRate( 1.0 );
	STATE:SetMoveBoxMultiplier( 1.0 );	
	STATE:SetHitStop( 450, 650 );
	STATE:SetStealthCancel( true );
	
	STATE:InitLua( 1560, 40, 0, 2000, false );
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_KATANA_SWORD, ATTACKATTRIB_KATANA_SWORD_CRITICAL, 20, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,100), MAKEVECTOR3(0,0,-1), range-100 ), 1, 1, false  );
    Attack1:SetAlwaysCritical( true );
    AddAttack( ATTACKS, Attack1 );
    
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_KATANA_SWORD, ATTACKATTRIB_KATANA_SWORD_ATTACK3, 20, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,100), MAKEVECTOR3(0,0,-1), range*0.6, 250, range*0.7 ), 1, 1, false  ); 
    Attack2:SetAttackSuccessCondition( CONDITION_ACTOR );    
    Attack2:AddBlowCondition( 0, 0 );
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 100, 50, 50 );
    Attack2:SetCameraShakeSetFactor2( 0, 50, 2000, 3000 );
    Attack2:SetCameraShakeWhenSuccess( true );   
    AddAttack( ATTACKS, Attack2 );

end





-------------------------------------------------------------------------------
--[[
	기본 KatanaSwordAttack7 셋팅
	InitLua인자
	u32 uiMinimumSceneUpdateTime
	u32 uiLowerPartBeginTime
	bool bOnlyVStateNormal
	bool bEnableInputJump
]]--
-------------------------------------------------------------------------------
function StandardKatanaSwordAttack7(  OneShotTime, Power, Accuracy, AdditionalPower )
		
	STATE:SetMoveStopWhenDamage( true );
	STATE:SetMoveSpeedRate( 1.0 );	
	STATE:SetStealthCancel( true );
	STATE:SetHitStop( 150, 300 );
		
	STATE:InitLua( 40, 0, false, false );
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_KATANA_SWORD, ATTACKATTRIB_KATANA_SWORD_CRITICAL, 200, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,100), MAKEVECTOR3(0,0,-1), range-100 ), 1, 1, false  );
    Attack1:SetAlwaysCritical( true );
    AddAttack( ATTACKS, Attack1 );
    
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_KATANA_SWORD, ATTACKATTRIB_KATANA_SWORD_ATTACK3, 200, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,100), MAKEVECTOR3(0,0,-1), range*0.6, range*0.6, range*0.7 ), 1, 1, false  ); 
    AddAttack( ATTACKS, Attack2 );

end