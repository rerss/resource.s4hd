require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------
--[[
	기본 SpyDaggerAttack2 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--찌르기 돌진 공격(우클릭)
function StandardSpyDaggerAttack2(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 2.0 );
	STATE:SetStealthCancel( true );
	STATE:SetMoveStopWhenDamage( true );
	STATE:SetUseMoveBox( true );
	
	STATE:InitLua( 1000, 1500, 0, true );
	
	local range = WEAPON:GetRange();
	local crushDamage	= WEAPON:GetFloat( 1 );
	local baseDamage	= WEAPON:GetFloat( 2 );
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SPYDAGGER, ATTACKATTRIB_SPYDAGGER_ATTACK1, 180, Power*2, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.5, 250, range*2 ), 1, 1, false  ); -- 0 넓이 높이 (원래 높이 250)
    Attack1:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack1:SetPlaySound( false );
	AddAttack( ATTACKS, Attack1 );
		 
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SPYDAGGER, ATTACKATTRIB_SPYDAGGER_ATTACK1, 360, Power, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.5, 250, range*2 ), 1, 1, false  );
    Attack2:SetAttackSuccessCondition( CONDITION_ACTOR );
    AddAttack( ATTACKS, Attack2 );
    
    Attack3 = CreateCAttack();
    Attack3:InitAttack1( WEAPONTYPE_SPYDAGGER, ATTACKATTRIB_SPYDAGGER_ATTACK1, 580, Power*2.5, AddtionalPower );
    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.5, 250, range*2  ), 1, 1, false  );
    Attack3:SetCameraShakeEnable( true, true, 0 );
    Attack3:SetCameraShakeSetFactor1( 200, 50, 40 );
    Attack3:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 );
    Attack3:SetCameraShakeWhenSuccess( true );  
	Attack3:SetPlaySound( false );	
    AddAttack( ATTACKS, Attack3 );

end





-------------------------------------------------------------------------------
--[[
	기본 SpyDaggerAttack1 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--왼쪽 베기 (좌클릭)
function StandardSpyDaggerAttack1(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 2.0 );
	STATE:SetStealthCancel( true );
	STATE:SetMoveStopWhenDamage( false);
	STATE:SetMoveSpeedRate( 0.5 )
	
	STATE:InitLua( 550, 0, 0, false );
	
	local range = WEAPON:GetRange();	
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SPYDAGGER, ATTACKATTRIB_SPYDAGGER_ATTACK2, 260, Power, AddtionalPower );
    Attack1:InitAttack2( MAKEFAN( MAKEVECTOR3(0,140,-50), MAKEVECTOR2(0,-1), range*0.8, range*0.2, range*1.4, 120 ), 1, 1, false  );
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 5 );
    Attack1:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 );
    Attack1:SetCameraShakeWhenSuccess( true );   
    AddAttack( ATTACKS, Attack1 );    

end



-----------------------------------------------------------------------------------------------
-- 글리치 파괴 스파이 대거
-----------------------------------------------------------------------------------------------

--찌르기 돌진 공격(우클릭)
function GlitchDestroyedSpyDaggerAttack2(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 2.0 );
	STATE:SetStealthCancel( true );
	STATE:SetMoveStopWhenDamage( true );
	STATE:SetUseMoveBox( true );
	
	STATE:InitLua( 1000, 1500, 0, true );
	
	local range = WEAPON:GetRange();
	local crushDamage	= WEAPON:GetFloat( 1 );
	local baseDamage	= WEAPON:GetFloat( 2 );
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SPYDAGGER, ATTACKATTRIB_GLITCHDESTROYED_SPYDAGGER_ATTACK1, 180, Power*2, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.5, 250, range*2 ), 1, 1, false  ); -- 0 넓이 높이 (원래 높이 250)
    Attack1:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack1:SetPlaySound( false );
	AddAttack( ATTACKS, Attack1 );
		 
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SPYDAGGER, ATTACKATTRIB_GLITCHDESTROYED_SPYDAGGER_ATTACK1, 360, Power, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.5, 250, range*2 ), 1, 1, false  );
    Attack2:SetAttackSuccessCondition( CONDITION_ACTOR );
    AddAttack( ATTACKS, Attack2 );
    
    Attack3 = CreateCAttack();
    Attack3:InitAttack1( WEAPONTYPE_SPYDAGGER, ATTACKATTRIB_GLITCHDESTROYED_SPYDAGGER_ATTACK1, 580, Power*2.5, AddtionalPower );
    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.5, 250, range*2  ), 1, 1, false  );
    Attack3:SetCameraShakeEnable( true, true, 0 );
    Attack3:SetCameraShakeSetFactor1( 200, 50, 40 );
    Attack3:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 );
    Attack3:SetCameraShakeWhenSuccess( true );  
	Attack3:SetPlaySound( false );	
    AddAttack( ATTACKS, Attack3 );

end


-------------------------------------------------------------------------------
--왼쪽 베기 (좌클릭)
function GlitchDestroyedSpyDaggerAttack1(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 2.0 );
	STATE:SetStealthCancel( true );
	STATE:SetMoveStopWhenDamage( false);
	STATE:SetMoveSpeedRate( 0.5 )
	
	STATE:InitLua( 550, 0, 0, false );
	
	local range = WEAPON:GetRange();	
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SPYDAGGER, ATTACKATTRIB_GLITCHDESTROYED_SPYDAGGER_ATTACK2, 260, Power, AddtionalPower );
    Attack1:InitAttack2( MAKEFAN( MAKEVECTOR3(0,140,-50), MAKEVECTOR2(0,-1), range*0.8, range*0.2, range*1.4, 120 ), 1, 1, false  );
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 5 );
    Attack1:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 );
    Attack1:SetCameraShakeWhenSuccess( true );   
    AddAttack( ATTACKS, Attack1 );    

end

-----------------------------------------------------------------------------------------------
-- 아이스 스파이 대거
-----------------------------------------------------------------------------------------------

--찌르기 돌진 공격(우클릭)
function ice_SpyDaggerAttack2(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 2.0 );
	STATE:SetStealthCancel( true );
	STATE:SetMoveStopWhenDamage( true );
	STATE:SetUseMoveBox( true );
	
	STATE:InitLua( 1000, 1500, 0, true );
	
	local range = WEAPON:GetRange();
	local crushDamage	= WEAPON:GetFloat( 1 );
	local baseDamage	= WEAPON:GetFloat( 2 );
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SPYDAGGER, ATTACKATTRIB_GLITCHDESTROYED_SPYDAGGER_ATTACK1, 180, Power*2, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.5, 250, range*2 ), 1, 1, false  ); -- 0 넓이 높이 (원래 높이 250)
    Attack1:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack1:SetPlaySound( false );
	AddAttack( ATTACKS, Attack1 );
		 
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SPYDAGGER, ATTACKATTRIB_GLITCHDESTROYED_SPYDAGGER_ATTACK1, 360, Power, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.5, 250, range*2 ), 1, 1, false  );
    Attack2:SetAttackSuccessCondition( CONDITION_ACTOR );
    AddAttack( ATTACKS, Attack2 );
    
    Attack3 = CreateCAttack();
    Attack3:InitAttack1( WEAPONTYPE_SPYDAGGER, ATTACKATTRIB_GLITCHDESTROYED_SPYDAGGER_ATTACK1, 580, Power*2.5, AddtionalPower );
    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.5, 250, range*2  ), 1, 1, false  );
    Attack3:SetCameraShakeEnable( true, true, 0 );
    Attack3:SetCameraShakeSetFactor1( 200, 50, 40 );
    Attack3:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 );
    Attack3:SetCameraShakeWhenSuccess( true );  
	Attack3:SetPlaySound( false );	
    AddAttack( ATTACKS, Attack3 );

end


-------------------------------------------------------------------------------
--왼쪽 베기 (좌클릭)
function ice_SpyDaggerAttack1(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 2.0 );
	STATE:SetStealthCancel( true );
	STATE:SetMoveStopWhenDamage( false);
	STATE:SetMoveSpeedRate( 0.5 )
	
	STATE:InitLua( 550, 0, 0, false );
	
	local range = WEAPON:GetRange();	
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SPYDAGGER, ATTACKATTRIB_GLITCHDESTROYED_SPYDAGGER_ATTACK2, 260, Power, AddtionalPower );
    Attack1:InitAttack2( MAKEFAN( MAKEVECTOR3(0,140,-50), MAKEVECTOR2(0,-1), range*0.8, range*0.2, range*1.4, 120 ), 1, 1, false  );
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 5 );
    Attack1:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 );
    Attack1:SetCameraShakeWhenSuccess( true );   
    AddAttack( ATTACKS, Attack1 );    

end

