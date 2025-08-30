require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------
--[[
	기본 PlasmaSwordStandAttack_Weak 셋팅
	InitLua인자
	u32 uiMinimumSceneUpdateTime
	u32 uiLowerPartBeginTime
	bool bOnlyVStateNormal
	bool bEnableInputJump
]]--
-------------------------------------------------------------------------------
function StandardPlasmaSwordStandAttack_Weak(  OneShotTime, Power, Accuracy, AdditionalPower )
		
	STATE:SetMoveSpeedRate( 0.8 );	
	STATE:SetHitStop( 250, 350 );
	STATE:SetStealthCancel( true );	
		
	STATE:InitLua( 40, 0, false, false );
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_PLASMA_SWORD, ATTACKATTRIB_PLASMA_SWORD_CRITICAL, 200, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,-50), MAKEVECTOR3(0,0,-1), range-200 ), 1, 1, false  );
    Attack1:SetAlwaysCritical( true );
    AddAttack( ATTACKS, Attack1 );
    
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_PLASMA_SWORD, ATTACKATTRIB_PLASMA_SWORD_STAND_WEAK, 200, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEFAN( MAKEVECTOR3(0,140,-50), MAKEVECTOR2(0,-1), range*0.7, range*0.25, range*0.85, 120 ), 1, 1, false  ); 
    AddAttack( ATTACKS, Attack2 );

end






-------------------------------------------------------------------------------
--[[
	기본 PlasmaSwordStandAttack_Strong 셋팅
	InitLua인자
	u32 uiMinimumSceneUpdateTime
	u32 uiLowerPartBeginTime
	bool bOnlyVStateNormal
	bool bEnableInputJump
]]--
-------------------------------------------------------------------------------
function StandardPlasmaSwordStandAttack_Strong(  OneShotTime, Power, Accuracy, AdditionalPower )
		
	STATE:SetMoveSpeedRate( 0.8 );	
	STATE:SetHitStop( 450, 650 );
	STATE:SetStealthCancel( true );	
		
	STATE:InitLua( 40, 500, false, false );
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_PLASMA_SWORD, ATTACKATTRIB_PLASMA_SWORD_CRITICAL, 400, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,0), MAKEVECTOR3(0,0,-1), range-100 ), 1, 1, false  );
    Attack1:SetAlwaysCritical( true );
    AddAttack( ATTACKS, Attack1 );
    
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_PLASMA_SWORD, ATTACKATTRIB_PLASMA_SWORD_STAND_STRONG, 400, Power+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,0), MAKEVECTOR3(0,0,-1), range*0.4, range*0.4, range ), 1, 1, false  ); 
    Attack2:AddBlowCondition( 3000, 2000 );
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 100, 50, 20 );
    Attack2:SetCameraShakeSetFactor2( 0, 20, 2000, 3000 );
    Attack2:SetCameraShakeWhenSuccess( true );   
    AddAttack( ATTACKS, Attack2 );

end





-------------------------------------------------------------------------------
--[[
	기본 PlasmaSwordStandAttack_Strong1 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal 
]]--
-------------------------------------------------------------------------------
function StandardPlasmaSwordStandAttack_Strong1(  OneShotTime, Power, Accuracy, AdditionalPower )
		
	STATE:SetMoveBoxMultiplier( 0.0 );	
	STATE:SetStealthCancel( true );	
	STATE:SetHitStop( 450, 650 );	
		
	STATE:InitLua( 1000, 40, 0, false );
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_PLASMA_SWORD, ATTACKATTRIB_PLASMA_SWORD_CRITICAL, 400, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,0), MAKEVECTOR3(0,0,-1), range-100 ), 1, 1, false  );
    Attack1:SetAlwaysCritical( true );
    AddAttack( ATTACKS, Attack1 );
    
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_PLASMA_SWORD, ATTACKATTRIB_PLASMA_SWORD_STAND_STRONG, 400, Power+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,0), MAKEVECTOR3(0,0,-1), range*0.4, range*0.4, range ), 1, 1, false  ); 
    Attack2:AddBlowCondition( 3000, 2000 );
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 100, 50, 20 );
    Attack2:SetCameraShakeSetFactor2( 0, 20, 2000, 3000 );
    Attack2:SetCameraShakeWhenSuccess( true );   
    AddAttack( ATTACKS, Attack2 );

end




-------------------------------------------------------------------------------
--[[
	기본 PlasmaSwordAttack2 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal 
]]--
-------------------------------------------------------------------------------
function StandardPlasmaSwordAttack2(  OneShotTime, Power, Accuracy, AdditionalPower )
		
	STATE:SetMoveBoxMultiplier( 2.0 );	
	STATE:SetStealthCancel( true );	
	STATE:SetMoveStopWhenDamage( true );	
		
	STATE:InitLua( 750, 1250, 40, true );
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_PLASMA_SWORD, ATTACKATTRIB_PLASMA_SWORD_CRITICAL, 400, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,200,100), MAKEVECTOR3(0,0,-1), range-100 ), 1, 1, false  );
    Attack1:SetAlwaysCritical( true );
    AddAttack( ATTACKS, Attack1 );
    
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_PLASMA_SWORD, ATTACKATTRIB_PLASMA_SWORD_ATTACK2_WEAK, 200, (Power*0.4)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,200,100), MAKEVECTOR3(0,0,-1), range*0.6, 250, range*0.7 ), 1, 1, false  ); 
    Attack2:SetAttackSuccessCondition( CONDITION_ACTOR );
    AddAttack( ATTACKS, Attack2 );
    
    Attack3 = CreateCAttack();
    Attack3:InitAttack1( WEAPONTYPE_PLASMA_SWORD, ATTACKATTRIB_PLASMA_SWORD_ATTACK2_WEAK, 400, (Power*0.4)+AdditionalPower, AddtionalPower );
    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,200,100), MAKEVECTOR3(0,0,-1), range*0.6, 250, range*0.7 ), 1, 1, false  ); 
    Attack3:SetAttackSuccessCondition( CONDITION_ACTOR );
    AddAttack( ATTACKS, Attack3 );
    
    
    Attack4 = CreateCAttack();
    Attack4:InitAttack1( WEAPONTYPE_PLASMA_SWORD, ATTACKATTRIB_PLASMA_SWORD_ATTACK2, 500, (Power*0.4)+AdditionalPower, AddtionalPower );
    Attack4:InitAttack2( MAKEBOX( MAKEVECTOR3(0,200,100), MAKEVECTOR3(0,0,-1), range*0.6, 250, range*0.7 ), 1, 1, false  ); 
    Attack4:SetAttackSuccessCondition( CONDITION_ACTOR );
    Attack4:SetCameraShakeEnable( true, true, 0 );
    Attack4:SetCameraShakeSetFactor1( 100, 50, 50 );
    Attack4:SetCameraShakeSetFactor2( 0, 50, 2000, 3000 );
    Attack4:SetCameraShakeWhenSuccess( true );   
    AddAttack( ATTACKS, Attack4 );

end






-------------------------------------------------------------------------------
--[[
	기본 PlasmaSwordJumpAttack 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal 
]]--
-------------------------------------------------------------------------------
function StandardPlasmaSwordJumpAttack(  OneShotTime, Power, Accuracy, AdditionalPower )
		
	STATE:SetDrop( 400, MAKEVECTOR3( 0, -50000, 0 ) );
	STATE:SetStealthCancel( true );	
	STATE:EnableCameraShake( true, false, 600 );
	STATE:SetCameraShakeFactor1( 100, 50, 30 );
	STATE:SetCameraShakeFactor2( 60, 0, 2000, 3000 );
	STATE:AddSequence( 0, "Resources/Effects/skill_swordman_strike.seq", "Resources/Sound/sword_power.ogg", 500, 5000 );
		
	STATE:InitLua( 400, 1000, 40, false );
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_PLASMA_SWORD, ATTACKATTRIB_PLASMA_SWORD_JUMP_CRITICAL, 500, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,50,-50), MAKEVECTOR3(0,0,-1), range-100 ), 1, 1, false  );
    Attack1:SetAlwaysCritical( true );
    AddAttack( ATTACKS, Attack1 );
    
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_PLASMA_SWORD, ATTACKATTRIB_PLASMA_SWORD_JUMP, 500, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,0,-50), MAKEVECTOR3(0,0,-1), range*0.6, range*1.5, range * 1.5 ), 1, 1, false  ); 
    Attack2:AddStunCondition( 1000, 3500, 0, 1000 );
    AddAttack( ATTACKS, Attack2 );

end

function StandardPlasmaSwordJumpAttack_unique(  OneShotTime, Power, Accuracy, AdditionalPower )
		
	STATE:SetDrop( 400, MAKEVECTOR3( 0, -50000, 0 ) );
	STATE:SetStealthCancel( true );	
	STATE:EnableCameraShake( true, false, 600 );
	STATE:SetCameraShakeFactor1( 100, 50, 30 );
	STATE:SetCameraShakeFactor2( 60, 0, 2000, 3000 );
		
	STATE:InitLua( 400, 1000, 40, false );
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_PLASMA_SWORD, ATTACKATTRIB_PLASMA_SWORD_JUMP_CRITICAL, 500, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,50,-50), MAKEVECTOR3(0,0,-1), range-100 ), 1, 1, false  );
    Attack1:SetAlwaysCritical( true );
    AddAttack( ATTACKS, Attack1 );
    
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_PLASMA_SWORD, ATTACKATTRIB_PLASMA_SWORD_JUMP, 500, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,0,-50), MAKEVECTOR3(0,0,-1), range*0.6, range*1.5, range * 1.5 ), 1, 1, false  ); 
    Attack2:AddStunCondition( 1000, 3500, 0, 1000 );
    AddAttack( ATTACKS, Attack2 );

end

