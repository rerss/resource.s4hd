require "Resources/Script/ActorStates_Constants.lua"


-------------------------------------------------------------------------------
--[[
	-- left평타
	기본 StandardVitalShock1 셋팅
	InitLua인자
	u32 uiMinimumSceneUpdateTime	=
	u32 uiLowerPartBeginTime		=
	bool bOnlyVStateNormal			=
	bool bEnableInputJump			=
]]--
-------------------------------------------------------------------------------
function StandardVitalShock_Attack(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveSpeedRate( 1.1 );	
	STATE:SetHitStop(300 );
	STATE:SetStealthCancel( true );	
		
	STATE:InitLua( 40, 0, false, false );
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_VITAL_SHOCK, ATTACKATTRIB_VITAL_SHOCK_CRITICAL ,250, (Power*1.0)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,-50), MAKEVECTOR3(0,0,-1), range*0.7 ), 1, 1, false  );
    Attack1:SetAlwaysCritical( true );
    AddAttack( ATTACKS, Attack1 );
    
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_VITAL_SHOCK, ATTACKATTRIB_VITAL_SHOCK_LEFT_WEAK_ATTACK, 250, (Power*1.0)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,0), MAKEVECTOR3(0,0,-1), range*0.8, range*0.55, range*0.9 ), 1, 1, false  ); 
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack2:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack2:SetCameraShakeRandomDir( false );
    --Attack2:AddBlowCondition(-1200,1750);
    --Attack2:AddPushCondition( 100, 3000, -6000 );
	
    AddAttack( ATTACKS, Attack2 );

end

-------------------------------------------------------------------------------
--[[
	-- 점프 어택
	기본 StandardAssassinclaw1 셋팅
	InitLua인자
	u32 uiMinimumSceneUpdateTime	=
	u32 uiLowerPartBeginTime		=
	bool bOnlyVStateNormal			=
	bool bEnableInputJump			=
]]--
-------------------------------------------------------------------------------
function StandardVitalShock_JumpAttack(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	--STATE:SetMoveSpeedRate( 1.1 );	
	STATE:SetHitStop( 270);
	STATE:SetStealthCancel( true );	
	STATE:SetStateMinSp( 10 );		-- SP가 5가 없으면 강공격이 나가지 않는다
	STATE:SetSpendSp( 10 );			-- sp 소모량		
	STATE:InitLua( 40, 0, false, false );
	
	local range = WEAPON:GetRange();
    
   -- Attack1 = CreateCAttack();
   -- Attack1:InitAttack1( WEAPONTYPE_VITAL_SHOCK, ATTACKATTRIB_VITAL_SHOCK_CRITICAL ,250, (Power*1.5)+AdditionalPower, AddtionalPower );
   -- Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,-50), MAKEVECTOR3(0,0,-1), range*0.7 ), 1, 1, false  );
   -- Attack1:SetAlwaysCritical( true );
   -- AddAttack( ATTACKS, Attack1 );
    
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_VITAL_SHOCK, ATTACKATTRIB_VITAL_SHOCK_LEFT_WEAK_ATTACK, 200, (Power*1.0)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,130,0), MAKEVECTOR3(0,0,-1), range*0.8, range*1.0, range*0.9 ), 1, 1, false  ); 
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 230, 40, 30 );
    Attack1:SetCameraShakeSetFactor2( 10.0, 60.0, 2000.0, 3000.0 );
    Attack1:SetCameraShakeWhenSuccess( true );
    Attack1:AddBlowCondition( 0, -1500 );

    --Attack2:AddBlowCondition(-1200,1750);
    --Attack2:AddPushCondition( 100, 3000, -6000 );
	
    AddAttack( ATTACKS, Attack1 );
end

-------------------------------------------------------------------------------
--[[
	-- right 돌진기
	기본 PlasmaSwordAttack2 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal 
]]--
-------------------------------------------------------------------------------
function StandardVitalShock_Dash(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier(2.5);	
	STATE:SetStealthCancel( true );	
	STATE:SetMoveStopWhenDamage( true );	
		
	STATE:InitLua( 650, 1000, 40, true );
	STATE:SetActorFrontLock( false );
	STATE:SetCamLimit( false, 10, 10); 
	local range = WEAPON:GetRange();
    
    --Attack1 = CreateCAttack();
    --Attack1:InitAttack1( WEAPONTYPE_VITAL_SHOCK, ATTACKATTRIB_VITAL_SHOCK_CRITICAL, 400, (Power*0.5)+AdditionalPower, AddtionalPower );	--
    --Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,200,100), MAKEVECTOR3(0,0,-1), range-100 ), 1, 1, false  );
    --Attack1:SetAlwaysCritical( true );
    --AddAttack( ATTACKS, Attack1 );
    
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_VITAL_SHOCK, ATTACKATTRIB_VITAL_SHOCK_DASH, 200, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,200,100), MAKEVECTOR3(0,0,-1), range*0.6, 250, range*0.7 ), 1, 1, false  ); 
    Attack1:SetAttackSuccessCondition( CONDITION_ACTOR );
    AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_VITAL_SHOCK, ATTACKATTRIB_VITAL_SHOCK_DASH, 300, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,200,100), MAKEVECTOR3(0,0,-1), range*0.6, 250, range*0.7 ), 1, 1, false  ); 
    Attack2:SetAttackSuccessCondition( CONDITION_ACTOR );
    AddAttack( ATTACKS, Attack2 );

    Attack3 = CreateCAttack();
    Attack3:InitAttack1( WEAPONTYPE_VITAL_SHOCK, ATTACKATTRIB_VITAL_SHOCK_DASH, 400, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,200,100), MAKEVECTOR3(0,0,-1), range*0.6, 250, range*0.7 ), 1, 1, false  ); 
    Attack3:SetAttackSuccessCondition( CONDITION_ACTOR );
    AddAttack( ATTACKS, Attack3 );
    
    
    Attack4 = CreateCAttack();
    Attack4:InitAttack1( WEAPONTYPE_VITAL_SHOCK, ATTACKATTRIB_VITAL_SHOCK_DASH, 500, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack4:InitAttack2( MAKEBOX( MAKEVECTOR3(0,200,100), MAKEVECTOR3(0,0,-1), range*0.6, 250, range*0.7 ), 1, 1, false  ); 
    Attack4:SetAttackSuccessCondition( CONDITION_ACTOR );
    Attack4:SetCameraShakeEnable( true, true, 0 );
    Attack4:SetCameraShakeSetFactor1( 100, 50, 50 );
    Attack4:SetCameraShakeSetFactor2( 0, 50, 2000, 3000 );
    Attack4:SetCameraShakeWhenSuccess( true );   
    AddAttack( ATTACKS, Attack4);

end

-------------------------------------------------------------------------------
--[[
	--돌진후 강타1
	기본 PlasmaSwordStandAttack_Strong1 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal 
]]--
-------------------------------------------------------------------------------
function StandardVitalShock_Strong1(  OneShotTime, Power, Accuracy, AdditionalPower )
		
	--STATE:SetMoveBoxMultiplier( 5.0 );	
	STATE:SetStealthCancel( true );	
	STATE:SetHitStop( 1300 );	
    	 ACTORSTATE:SetMouseSensitivityRotate( 0.3 );
	
	STATE:InitLua( 1300,300,40, false );
	
	local range = WEAPON:GetRange();

    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_VITAL_SHOCK, ATTACKATTRIB_VITAL_SHOCK_STRONG1, 250, (Power*1.0)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,0), MAKEVECTOR3(0,0,-1), range*0.3, range*0.3, range*0.7 ), 1, 1, false  ); 
    Attack1:SetAlwaysCritical( false );
    AddAttack( ATTACKS, Attack1 );
    
	local index = 1;
	for index = 1, 14, 0.5 do --2,5,0.5
	
		Attack1 = CreateCAttack();
	    Attack1:InitAttack1( WEAPONTYPE_VITAL_SHOCK, ATTACKATTRIB_VITAL_SHOCK, 300+( (index-1)*70 ), (Power*0.12)+AdditionalPower, AddtionalPower );
	    Attack1:InitAttack2( MAKEFAN( MAKEVECTOR3(0,250,0), MAKEVECTOR2(0,-1), range*0.3, range*0.4, range*0.7, 40 ), 1, 1, false  );    
	    Attack1:SetCameraShakeEnable( true, true, 0 );
	    Attack1:SetCameraShakeSetFactor1( 100, 25, 5 );
	    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
	    Attack1:SetCameraShakeRandomDir( true );
	    Attack1:AddBlowCondition(0,500)
	    Attack1:AddPullCondition( 200, 0,  275, 500.0, 100 ); 
                 Attack1:SetCameraShakeWhenSuccess( true );   

	    AddAttack( ATTACKS, Attack1);
    	end

    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_VITAL_SHOCK, ATTACKATTRIB_VITAL_SHOCK_STRONG1, 1240, (Power*2.0)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEFAN( MAKEVECTOR3(0,250,0), MAKEVECTOR2(0,-1), range*0.3, range*0.6, range*1.0, 60 ), 1, 1, false  );
    Attack2:AddBlowCondition( 3500, 1500 );
   -- Attack2:AddPushCondition( 300, 6000, -12000 );

    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 220, 40, 40 );
    Attack2:SetCameraShakeSetFactor2( 10, 40, 2000, 3000 );
    Attack2:SetCameraShakeWhenSuccess( true );   
    AddAttack( ATTACKS, Attack2 );


end

-------------------------------------------------------------------------------
--[[
	--왼클릭 강공격
	기본 PlasmaSwordStandAttack_Strong1 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal 
]]--
-------------------------------------------------------------------------------
function StandardVitalShock_Strong(  OneShotTime, Power, Accuracy, AdditionalPower )
		
	--STATE:SetMoveBoxMultiplier( 1.5 );			
	--무브 박스 이동력(1.0을 기준으로)
	STATE:SetStealthCancel( true );	
	STATE:SetHitStop( 550 );	
	
	STATE:SetStateMinSp( 15 );		-- SP가 5가 없으면 강공격이 나가지 않는다
	STATE:SetSpendSp( 15 );			-- sp 소모량
    	 ACTORSTATE:SetMouseSensitivityRotate( 0.2 );

	STATE:InitLua( 550, 150, 40, true );
	STATE:ResetMoveBoxAtSubStateChange( true ); 
	-- 상태가 바뀔 때 무브박스위치를 초기화한다.
	
	local range = WEAPON:GetRange();
    
	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_VITAL_SHOCK, ATTACKATTRIB_VITAL_SHOCK_STRONG, 350, (Power*0.8)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKEFAN( MAKEVECTOR3(0,250,0), MAKEVECTOR2(0,-1), range*0.1, range*0.25, range*1.75, 60 ), 1, 1, false  ); 	--Attack1:AddPushCondition( 100, 2000, -5000 );
    --Attack1:SetCameraShakeEnable( true, true, 0 );
    --Attack1:SetCameraShakeSetFactor1( 200, 50, 50 );				
	--( 흔들기시간, 회복시간, 확장 );
    --Attack1:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );	
	--( 세로스피드, 가로스피드, 최소거리, 최대거리 );
	--Attack1:SetCameraShakeWhenSuccess( true );
    AddAttack( ATTACKS, Attack1 );
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_VITAL_SHOCK, ATTACKATTRIB_VITAL_SHOCK_CRITICAL, 550, (Power*1.2)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEFAN( MAKEVECTOR3(0,250,0), MAKEVECTOR2(0,-1), range*0.1, range*0.25, range*1.75, 60), 1, 1, false  ); 
    	--Attack2:AddBlowCondition( -2500, 2500 );
	Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 200, 50, 50 );				
	--( 흔들기시간, 회복시간, 확장 );
    Attack2:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );	
	--( 세로스피드, 가로스피드, 최소거리, 최대거리 );
	Attack2:SetCameraShakeWhenSuccess( true );
	--Attack2:SetCritical( 1.4, 30 );
	Attack2:SetPlaySound( false );
    
-- 당기기 효과 
	-- float fGoalDist	= 목표거리 공격자 전방 float X 만큼의 거리
	-- float fAttractiveDistMin = 당겨오는 최소 거리
	-- float fAttractiveDistMax = 당겨오는 최대 거리
	-- float fAttractiveForce = 당겨오는 힘
	-- u32 uiEffectLimitTime = 당겨오는 시간
    Attack2:AddPullCondition( 200, 0,  825, 5000.0, 100 ); 
    AddAttack( ATTACKS, Attack2 );

end