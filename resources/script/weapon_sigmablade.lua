require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------
--[[
	기본 SigmaBladeJumpDash 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--점프 공격 range = 500
function StandardSigmaBladeJumpDash(  OneShotTime, Power, Accuracy, AdditionalPower )   
	
	STATE:SetMoveBoxMultiplier( 2.0 );
	STATE:SetStealthCancel( true );
	STATE:SetMoveSpeedRate( 0.5 )
	STATE:SetHPAbsorptionPer( 0 );	-- HP 흡수량

	STATE:InitLua( 550, 0, 0, false );    --키입력 시간임 두개 합쳐서 651~700으로해야 잘나옴
	
	local range = WEAPON:GetRange();	
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_JUMPDASH, 200, Power*0.6, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,0,-100), MAKEVECTOR3(0,0,-1), range*1.2, range*0.7, range*0.7 ), 1, 1, false  );  
    Attack1:SetCameraShakeEnable( true, true, 0 );  --카메라 쉐이킹( 포커스유저만, 흔들것인가, 준비시간 );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 5 ); --카메라쉐이킹 ( 흔들기시간, 회복시간, 확장 );
    Attack1:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 ); --( 세로스피드, 가로스피드, 최소거리, 최대거리 );
    Attack1:SetCameraShakeWhenSuccess( true );   
    AddAttack( ATTACKS, Attack1 );    

end



	
-------------------------------------------------------------------------------
--[[
	기본 SigmaBladeAfterDash1 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--첫평타공격(변신전/변신후) 
function StandardSigmaBladeAfterDash1(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 0.5 );	-- 변신전 1타 무브박스 초  1.0
	STATE:SetMoveBoxMultiplierInTrans( 1.3 );	-- 변신후 1타 무브박스 초
	
	
	STATE:SetStealthCancel( true );	
	STATE:SetHPAbsorptionPer( 0 );	
	
		
	STATE:InitLua( 420, 300, 40, true ); -- 변신전 300
	STATE:InitLuaInTrans( 750, 300, 40, true );  --변신후 
	
	STATE:ResetMoveBoxAtSubStateChange( true ); -- 상태가 바뀔 때 무브박스위치를 초기화한다.
	
	local range = WEAPON:GetRange();
    

    --변신전 1타 공격(상태: 푸쉬, 경직) Power = 25, range = 500
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK1, 180, Power*0.2, AddtionalPower );  -- 0.4  0.2씩올림
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.7, range*0.3, range*0.65 ), 1, 1, false  );    -- range*0.7, range*0.6, range*0.65 
	AddAttack( ATTACKS, Attack1 );
    
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK1, 250, Power*0.4, AddtionalPower ); --0.5, 310
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.7, range*0.3, range*0.65 ), 1, 1, false  );      -- MAKEVECTOR3(0,310,-50)  0.5
    Attack2:AddPushCondition( 100, 800, -5000 );  -- 시간, 거리 , 감소치
	AddAttack( ATTACKS, Attack2 );
	
	
	--변신 후 1타 공격(상태: 블로우) Power = 25, range = 500
	
	Attack3 = CreateCAttack();    
	Attack3:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_CRITICAL, 100, Power*0.8, AddtionalPower );  --180
    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,0), MAKEVECTOR3(0,0,-1), range*0.6, range*0.5, range*0.6 ), 1, 1, false  );  --range*0.8, range*0.7, range*0.7
	Attack3:SetOnlyUseInWeaponChage( true );			
	Attack3:AddBlowCondition( 1300, 0 );  --(땅으로날아가는거리,하늘로날아가는거리)
	AddAttack( ATTACKS, Attack3 ); 
	
	
	
	Attack4 = CreateCAttack();   	
	Attack4:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_CRITICAL, 440, Power*1.5, AddtionalPower );  --450 --공격1.4
    Attack4:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,-100), MAKEVECTOR3(0,0,-1), range*1.1, range*0.5, range*1.0 ), 1, 1, false  );    --range*1.1, range*0.8, range*1.2
	Attack4:SetOnlyUseInWeaponChage( true );	
	Attack4:AddPushCondition( 100, 2000, -5000 );  -- 시간, 거리 , 감소치
	Attack4:SetCameraShakeEnable( true, true, 0 );
    Attack4:SetCameraShakeSetFactor1( 200, 50, 5 );
    Attack4:SetCameraShakeSetFactor2( 200, 100, 2000.0, 3000.0 );
   	Attack4:AddBlowCondition( 800, 1500 );  --(땅으로날아가는거리,하늘로날아가는거리1300, 2500 ) ,1000,1500
	AddAttack( ATTACKS, Attack4 ); 	
	
	
		
end



	

-------------------------------------------------------------------------------
--[[
	기본 SigmaBladeAfterDash2 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--두번째 평타공격(변신전/변신후)
function StandardSigmaBladeAfterDash2(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 0.2 );	-- 변신전 2타 무브박스 초
	STATE:SetMoveBoxMultiplierInTrans( 1.0 ); --변신후 2타 무브박스 초

	STATE:SetStealthCancel( true );	
	STATE:SetHPAbsorptionPer( 0 );	
	
		
	STATE:InitLua( 300, 300, 40, true );
	STATE:InitLuaInTrans( 800, 300, 40, true ); --800

	STATE:ResetMoveBoxAtSubStateChange( true ); -- 상태가 바뀔 때 무브박스위치를 초기화한다.
	
	local range = WEAPON:GetRange();
   

   	--변신전 2타 공격 (상태: 블로우 , 랜덤 크리티컬) Power = 25, range = 500
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK2, 210, Power, AddtionalPower  );  --0.7
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.95, range*0.3, range*0.7 ), 1, 1, false  );
	Attack1:AddBlowCondition( 3000, 2500 );  
	Attack1:SetCameraShakeEnable( true, true, 0 ); 
    Attack1:SetCameraShakeSetFactor1( 200, 50, 20 ); 
    Attack1:SetCameraShakeSetFactor2( 200, 25, 2000, 3000 );  
	Attack1:SetCritical( 1.5, 10 ); --랜덤크리티컬(배율, 확률);
    Attack1:SetCameraShakeWhenSuccess( true );
    AddAttack( ATTACKS, Attack1 );   


	
	
	--변신후 2타 공격 (상태: 블로우  ) Power = 25, range = 500
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_CRITICAL, 470, Power*1.3, AddtionalPower );  -- 410
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,-90), MAKEVECTOR3(0,0,-1), range*0.5, range*0.5, range*1.2 ), 1, 1, false  );  --0.8 ,0.7,1.2        
    Attack2:SetOnlyUseInWeaponChage( true );
	Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 200, 50, 5 );
    Attack2:SetCameraShakeSetFactor2( 200, 100, 2000.0, 3000.0 );
	Attack2:SetCameraShakeWhenSuccess( true )
	Attack2:AddBlowCondition( 500, 2000 );  
	AddAttack( ATTACKS, Attack2 );

end




-------------------------------------------------------------------------------
--[[
	기본 SigmaBladeAfterDash3 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--세번째 평타공격(변신후)
function StandardSigmaBladeAfterDash3(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 0.6 );	
	STATE:SetMoveBoxMultiplierInTrans( 0.5 );

	STATE:SetStealthCancel( true );	
	STATE:SetHPAbsorptionPer( 0 );


	
	STATE:InitLua( 650, 0, 40, true );  
	STATE:InitLuaInTrans( 1000, 300, 40, true );  

	STATE:ResetMoveBoxAtSubStateChange( true ); 
	
	local range = WEAPON:GetRange();
    
	
	-- 변신전 3타 기본 공격을 2타로 변경 하면서 이 값은 쓰지 않음
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK3, 300, Power, AddtionalPower );  -- 0.7
    Attack1:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0.0, 250.0, 0.0), 100, range*0.6, range*0.6 , range*1.0 ), 1, 1, false  );   --가로,세로,대각선 range*1.4, range*0.5, range*1.7, 120
	Attack1:AddPushCondition( 100, 2000, -5000 );  -- 시간, 거리 , 감소치
	Attack1:AddBlowCondition( 1400, 2800 );  --(땅으로날아가는거리,하늘로날아가는거리)
	AddAttack( ATTACKS, Attack1 );   
	
	
	
	
	-- 변신후 3타 (상태: 블로우, 랜덤크리티컬) Power = 25, range = 500
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_CRITICAL , 500 , Power*1.7, AddtionalPower ); --1.35,1.1 ,1.2, 공격 ,1.5
    Attack2:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0.0, 100, 0.0), 200, range*0.7 ), 1, 1, false  ); 
    Attack2:SetOnlyUseInWeaponChage( true );		
	Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 200, 50, 5 );
    Attack2:SetCameraShakeSetFactor2( 200, 100, 2000.0, 3000.0 );
    Attack2:SetCameraShakeWhenSuccess( true );
	Attack2:AddPushCondition( 100, 2000, -5000 );
	Attack2:AddBlowCondition( 2600, 2000 );
	-- Attack2:SetCritical( 1.5, 10 ); --랜덤 크리티컬(배율, 확률);	
	AddAttack( ATTACKS, Attack2 ); 
	
	
	



end




-------------------------------------------------------------------------------
--[[
	기본 SigmaBladeAfterDash4 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--강공격 후 연타 (상태: 블로우) Power = 25, range = 500
function StandardSigmaBladeAfterDash4(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 2.0 );	
	STATE:SetMoveBoxMultiplierInTrans( 0.8 ); 

	STATE:SetStealthCancel( true );	
	STATE:SetHPAbsorptionPer( 0 );	
	STATE:SetOnlyUseInWeaponChange( true );		
	
	

	STATE:InitLua( 800, 100, 40, true );
	STATE:InitLuaInTrans( 1000, 250, 40, true ); 
	
	local range = WEAPON:GetRange();
    

	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_CRITICAL, 200, Power*0.2, AddtionalPower );  --1.0
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,70), MAKEVECTOR3(0,0,-1), range*0.5, range*0.8, range*1.0 ), 1, 1, false  );            
    Attack1:SetOnlyUseInWeaponChage( true );
	Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack1:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
	AddAttack( ATTACKS, Attack1 )
	
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_CRITICAL, 430, Power*1.2, AddtionalPower );  --1.7
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,70), MAKEVECTOR3(0,0,-1), range*0.5, range*0.8, range*1.0 ), 1, 1, false  );            
    Attack2:SetOnlyUseInWeaponChage( true );
	Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack2:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
	Attack2:AddBlowCondition( 2000, 3500 );  
	AddAttack( ATTACKS, Attack2 )
	
	
	
	
	
end




-------------------------------------------------------------------------------
--[[
	기본 SigmaBladeCounterAttack 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
-- 변신후 강공격(상태: 랜덤크리티컬,마지막 타격 박스 블로우) Power = 25  range = 500
function StandardSigmaBladeCounterAttack(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 0.5 );	-- 변신전 1타 무브박스 초  1.0
	STATE:SetMoveBoxMultiplierInTrans( 1.85 ); 
	

	STATE:SetStateMinSp( 5 );		-- SP가 5가 없으면 강공격이 나가지 않는다
	STATE:SetSpendSp( 0 );			-- sp 소모량

	STATE:ResetMoveBoxAtSubStateChange( true ); -- 상태가 바뀔 때 무브박스위치를 초기화한다.

	STATE:SetStealthCancel( true );

	STATE:InitLua( 420, 300, 40, true ); -- 변신전 300
	STATE:InitLuaInTrans( 700, 800, 40, true );  
	
	STATE:SetHPAbsorptionPer( 0);
	--STATE:SetOnlyUseInWeaponChange( true );		
	
	local range = WEAPON:GetRange();
	
	
	
	--Power = 25, range = 500	
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_ATTACK, 200, Power*1.2 , AddtionalPower );   
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.4, range*0.7, range*1.7 ), 1, 1, false  );
	Attack1:SetOnlyUseInWeaponChage( true );
	Attack1:SetPlaySound( false )
	Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 10 );  
    Attack1:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 ); 
	Attack1:SetCritical( 1.5, 10 ); --랜덤크리티컬(배율, 확률);
	AddAttack( ATTACKS, Attack1 );
	
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_ATTACK, 400, Power*0.8 , AddtionalPower );   
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.4, range*0.7, range*1.5 ), 1, 1, false  );
	Attack2:SetOnlyUseInWeaponChage( true );
	Attack2:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack2:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 );
    Attack2:SetPlaySound( false )
	Attack2:SetCritical( 1.5, 10 ); --랜덤크리티컬(배율, 확률);
	AddAttack( ATTACKS, Attack2 );
	

	Attack3 = CreateCAttack();
    Attack3:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_ATTACK, 620, Power*1.2, AddtionalPower );  
    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.4, range*0.7, range*1.5 ), 1, 1, false  ); 
	Attack3:SetOnlyUseInWeaponChage( true );
	Attack3:SetCameraShakeEnable( true, true, 0 );
    Attack3:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack3:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
	Attack3:AddBlowCondition( 500, 2000 );  
	Attack3:SetCritical( 1.5, 10 ); --랜덤크리티컬(배율, 확률);
	AddAttack( ATTACKS, Attack3 );
	
	

    Attack4 = CreateCAttack();
    Attack4:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK1, 180, Power*0.2, AddtionalPower );  -- 0.4  0.2씩올림
    Attack4:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.7, range*0.3, range*0.65 ), 1, 1, false  );    -- range*0.7, range*0.6, range*0.65 
	AddAttack( ATTACKS, Attack4 );
    
	
	Attack5 = CreateCAttack();
    Attack5:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK1, 250, Power*0.4, AddtionalPower ); --0.5, 310
    Attack5:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.7, range*0.3, range*0.65 ), 1, 1, false  );      -- MAKEVECTOR3(0,310,-50)  0.5
    Attack5:AddPushCondition( 100, 800, -5000 );  -- 시간, 거리 , 감소치
	AddAttack( ATTACKS, Attack5 );	
	
end

-------------------------------------------------------------------------------
--[[
	기본 StandardSigmaBladeWeaponChange 셋팅
	InitLua인자
	bool bOnlyVStateNormal		/// 땅에서만 사용이 가능한지 여부
]]--
-------------------------------------------------------------------------------
--검변화(상태: 블로우) Power = 25, range = 500
function StandardSigmaBladeWeaponChange(  OneShotTime, Power, Accuracy, AdditionalPower )
	

	
	STATE:SetHPAbsorptionPer( 0 );	
	STATE:SetHPAbsorptionAfterStunMin( 0 );		-- 변신 후 SP를 다 사용 할 시 자신이 걸리는 스턴 최초 (사용하지 않음)
	STATE:SetHPAbsorptionAfterStunMax( 0 );		-- 변신 후 SP를 다 사용 할 시 자신이 걸리는 스턴 마지막(사용하지 않음)

	STATE:SetStateMinSp( 20 );		-- 상태로 들어가기 위한 최소한의 필요 sp
	STATE:SetSpendSp( 0 );			-- sp 소모량
	
	STATE:InitLua( 500, 0, false );		-- 착지시/점프시 변신 가능함
	STATE:InitLuaInTrans( 500, 0, false );  -- 착지시/점프시 변신 가능함
	
	STATE:SetCoolTime( 1500 );				-- 사용후 다시 상태 돌입시 까지 걸리는 시간 ( 쿨타임 ) 
	
	local range = WEAPON:GetRange();
	
	
	
	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK4,90, Power*0.5, AddtionalPower );
    Attack1:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0.0, 200.0, 0.0), 340, range*1.2 ), 1, 1, false  ); -- 150,400, 1.2     
	Attack1:AddBlowCondition( 1450, 2800 ); 
	AddAttack( ATTACKS, Attack1 );
   
	-- STATE:SetDrop( 500, MAKEVECTOR3( 0, -10000, 0 ) );
	--setdrop : 점프 공격 후 멈춰있는 체공시간
	--MAKEVECTOR3 : 점프하면서 떨어지는 거리(x,y,z)	
		
end





--[[  사용하지 않았지만 유용한 스크립트
	_STATE:SetHitStopInTrans( 400, 670 ); 400~670까지 약간 딜레이가 생긴 후 애니메이션이 출력 된다
	_Attack1:SetCameraShakeEnable( true, true, 0 ); --카메라쉐이킹( 포커스유저만, 흔들것인가, 준비시간 );
    _Attack1:SetCameraShakeSetFactor1( 200, 50, 20 ); --카메라쉐이킹 ( 흔들기시간, 회복시간, 확장 );
    _Attack1:SetCameraShakeSetFactor2( 200, 25, 2000, 3000 );  -- ( 세로스피드, 가로스피드, 최소거리, 최대거리 );  
	_Attack1:SetCritical( 1.5, 10 ); 랜덤 크리티컬 --(배율, 확률);
	]]--
	
--------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------
-- cogwheel_sigma
-- 효과를 따로 쓰기 위해
--------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------
	
-------------------------------------------------------------------------------
--[[
	기본 CogWheelSigmaBladeJumpDash 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--점프 공격 range = 500
function StandardCogWheelSigmaBladeJumpDash(  OneShotTime, Power, Accuracy, AdditionalPower )   
	
	STATE:SetMoveBoxMultiplier( 2.0 );
	STATE:SetStealthCancel( true );
	STATE:SetMoveSpeedRate( 0.5 )
	STATE:SetHPAbsorptionPer( 0 );	-- HP 흡수량

	STATE:InitLua( 550, 0, 0, false );    --키입력 시간임 두개 합쳐서 651~700으로해야 잘나옴
	
	local range = WEAPON:GetRange();	
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_JUMPDASH, 200, Power*0.6, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,0,-100), MAKEVECTOR3(0,0,-1), range*1.2, range*0.7, range*0.7 ), 1, 1, false  );  
    Attack1:SetCameraShakeEnable( true, true, 0 );  --카메라 쉐이킹( 포커스유저만, 흔들것인가, 준비시간 );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 5 ); --카메라쉐이킹 ( 흔들기시간, 회복시간, 확장 );
    Attack1:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 ); --( 세로스피드, 가로스피드, 최소거리, 최대거리 );
    Attack1:SetCameraShakeWhenSuccess( true );   
    AddAttack( ATTACKS, Attack1 );    

end



	
-------------------------------------------------------------------------------
--[[
	기본 CogWheelSigmaBladeAfterDash1 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--첫평타공격(변신전/변신후) 
function StandardCogWheelSigmaBladeAfterDash1(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 0.5 );	-- 변신전 1타 무브박스 초  1.0
	STATE:SetMoveBoxMultiplierInTrans( 1.3 );	-- 변신후 1타 무브박스 초
	
	
	STATE:SetStealthCancel( true );	
	STATE:SetHPAbsorptionPer( 0 );	
	
		
	STATE:InitLua( 420, 300, 40, true ); -- 변신전 300
	STATE:InitLuaInTrans( 750, 300, 40, true );  --변신후 
	
	STATE:ResetMoveBoxAtSubStateChange( true ); -- 상태가 바뀔 때 무브박스위치를 초기화한다.
	
	local range = WEAPON:GetRange();
    

    --변신전 1타 공격(상태: 푸쉬, 경직) Power = 25, range = 500
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK1, 180, Power*0.2, AddtionalPower );  -- 0.4  0.2씩올림
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.7, range*0.3, range*0.65 ), 1, 1, false  );    -- range*0.7, range*0.6, range*0.65 
	AddAttack( ATTACKS, Attack1 );
    
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK1, 250, Power*0.4, AddtionalPower ); --0.5, 310
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.7, range*0.3, range*0.65 ), 1, 1, false  );      -- MAKEVECTOR3(0,310,-50)  0.5
    Attack2:AddPushCondition( 100, 800, -5000 );  -- 시간, 거리 , 감소치
	AddAttack( ATTACKS, Attack2 );
	
	
	--변신 후 1타 공격(상태: 블로우) Power = 25, range = 500
	
	Attack3 = CreateCAttack();    
	Attack3:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_CRITICAL, 100, Power*0.8, AddtionalPower );  --180
    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,0), MAKEVECTOR3(0,0,-1), range*0.6, range*0.5, range*0.6 ), 1, 1, false  );  --range*0.8, range*0.7, range*0.7
	Attack3:SetOnlyUseInWeaponChage( true );			
	Attack3:AddBlowCondition( 1300, 0 );  --(땅으로날아가는거리,하늘로날아가는거리)
	AddAttack( ATTACKS, Attack3 ); 
	
	
	
	Attack4 = CreateCAttack();   	
	Attack4:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_CRITICAL, 440, Power*1.5, AddtionalPower );  --450 --공격1.4
    Attack4:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,-100), MAKEVECTOR3(0,0,-1), range*1.1, range*0.5, range*1.0 ), 1, 1, false  );    --range*1.1, range*0.8, range*1.2
	Attack4:SetOnlyUseInWeaponChage( true );	
	Attack4:AddPushCondition( 100, 2000, -5000 );  -- 시간, 거리 , 감소치
	Attack4:SetCameraShakeEnable( true, true, 0 );
    Attack4:SetCameraShakeSetFactor1( 200, 50, 5 );
    Attack4:SetCameraShakeSetFactor2( 200, 100, 2000.0, 3000.0 );
   	Attack4:AddBlowCondition( 800, 1500 );  --(땅으로날아가는거리,하늘로날아가는거리1300, 2500 ) ,1000,1500
	AddAttack( ATTACKS, Attack4 ); 	
	
	
		
end



	

-------------------------------------------------------------------------------
--[[
	기본 CogWheelSigmaBladeAfterDash2 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--두번째 평타공격(변신전/변신후)
function StandardCogWheelSigmaBladeAfterDash2(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 0.2 );	-- 변신전 2타 무브박스 초
	STATE:SetMoveBoxMultiplierInTrans( 1.0 ); --변신후 2타 무브박스 초

	STATE:SetStealthCancel( true );	
	STATE:SetHPAbsorptionPer( 0 );	
	
		
	STATE:InitLua( 300, 300, 40, true );
	STATE:InitLuaInTrans( 800, 300, 40, true ); --800

	STATE:ResetMoveBoxAtSubStateChange( true ); -- 상태가 바뀔 때 무브박스위치를 초기화한다.
	
	local range = WEAPON:GetRange();
   

   	--변신전 2타 공격 (상태: 블로우 , 랜덤 크리티컬) Power = 25, range = 500
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK2, 210, Power, AddtionalPower  );  --0.7
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.95, range*0.3, range*0.7 ), 1, 1, false  );
	Attack1:AddBlowCondition( 3000, 2500 );  
	Attack1:SetCameraShakeEnable( true, true, 0 ); 
    Attack1:SetCameraShakeSetFactor1( 200, 50, 20 ); 
    Attack1:SetCameraShakeSetFactor2( 200, 25, 2000, 3000 );  
	Attack1:SetCritical( 1.5, 10 ); --랜덤크리티컬(배율, 확률);
    Attack1:SetCameraShakeWhenSuccess( true );
    AddAttack( ATTACKS, Attack1 );   


	
	
	--변신후 2타 공격 (상태: 블로우  ) Power = 25, range = 500
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_CRITICAL, 470, Power*1.3, AddtionalPower );  -- 410
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,-90), MAKEVECTOR3(0,0,-1), range*0.5, range*0.5, range*1.2 ), 1, 1, false  );  --0.8 ,0.7,1.2        
    Attack2:SetOnlyUseInWeaponChage( true );
	Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 200, 50, 5 );
    Attack2:SetCameraShakeSetFactor2( 200, 100, 2000.0, 3000.0 );
	Attack2:SetCameraShakeWhenSuccess( true )
	Attack2:AddBlowCondition( 500, 2000 );  
	AddAttack( ATTACKS, Attack2 );

end




-------------------------------------------------------------------------------
--[[
	기본 CogWheelSigmaBladeAfterDash3 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--세번째 평타공격(변신후)
function StandardCogWheelSigmaBladeAfterDash3(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 0.6 );	
	STATE:SetMoveBoxMultiplierInTrans( 0.5 );

	STATE:SetStealthCancel( true );	
	STATE:SetHPAbsorptionPer( 0 );


	
	STATE:InitLua( 650, 0, 40, true );  
	STATE:InitLuaInTrans( 1000, 300, 40, true );  

	STATE:ResetMoveBoxAtSubStateChange( true ); 
	
	local range = WEAPON:GetRange();
    
	
	-- 변신전 3타 기본 공격을 2타로 변경 하면서 이 값은 쓰지 않음
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK3, 300, Power, AddtionalPower );  -- 0.7
    Attack1:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0.0, 250.0, 0.0), 100, range*0.6, range*0.6 , range*1.0 ), 1, 1, false  );   --가로,세로,대각선 range*1.4, range*0.5, range*1.7, 120
	Attack1:AddPushCondition( 100, 2000, -5000 );  -- 시간, 거리 , 감소치
	Attack1:AddBlowCondition( 1400, 2800 );  --(땅으로날아가는거리,하늘로날아가는거리)
	AddAttack( ATTACKS, Attack1 );   
	
	
	
	
	-- 변신후 3타 (상태: 블로우, 랜덤크리티컬) Power = 25, range = 500
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_CRITICAL , 500 , Power*1.7, AddtionalPower ); --1.35,1.1 ,1.2, 공격 ,1.5
    Attack2:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0.0, 100, 0.0), 200, range*0.7 ), 1, 1, false  ); 
    Attack2:SetOnlyUseInWeaponChage( true );		
	Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 200, 50, 5 );
    Attack2:SetCameraShakeSetFactor2( 200, 100, 2000.0, 3000.0 );
    Attack2:SetCameraShakeWhenSuccess( true );
	Attack2:AddPushCondition( 100, 2000, -5000 );
	Attack2:AddBlowCondition( 2600, 2000 );
	-- Attack2:SetCritical( 1.5, 10 ); --랜덤 크리티컬(배율, 확률);	
	AddAttack( ATTACKS, Attack2 ); 
	
	
	



end




-------------------------------------------------------------------------------
--[[
	기본 CogWheelSigmaBladeAfterDash4 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--강공격 후 연타 (상태: 블로우) Power = 25, range = 500
function StandardCogWheelSigmaBladeAfterDash4(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 2.0 );	
	STATE:SetMoveBoxMultiplierInTrans( 0.8 ); 

	STATE:SetStealthCancel( true );	
	STATE:SetHPAbsorptionPer( 0 );	
	STATE:SetOnlyUseInWeaponChange( true );		
	
	

	STATE:InitLua( 800, 100, 40, true );
	STATE:InitLuaInTrans( 1000, 250, 40, true ); 
	
	local range = WEAPON:GetRange();
    

	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_CRITICAL, 200, Power*0.2, AddtionalPower );  --1.0
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,70), MAKEVECTOR3(0,0,-1), range*0.5, range*0.8, range*1.0 ), 1, 1, false  );            
    Attack1:SetOnlyUseInWeaponChage( true );
	Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack1:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
	AddAttack( ATTACKS, Attack1 )
	
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_CRITICAL, 430, Power*1.2, AddtionalPower );  --1.7
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,70), MAKEVECTOR3(0,0,-1), range*0.5, range*0.8, range*1.0 ), 1, 1, false  );            
    Attack2:SetOnlyUseInWeaponChage( true );
	Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack2:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
	Attack2:AddBlowCondition( 2000, 3500 );  
	AddAttack( ATTACKS, Attack2 )
	
	
	
	
	
end




-------------------------------------------------------------------------------
--[[
	기본 CogWheelSigmaBladeCounterAttack 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
-- 변신후 강공격(상태: 랜덤크리티컬,마지막 타격 박스 블로우) Power = 25  range = 500
function StandardCogWheelSigmaBladeCounterAttack(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 0.5 );	-- 변신전 1타 무브박스 초  1.0
	STATE:SetMoveBoxMultiplierInTrans( 1.85 ); 
	

	STATE:SetStateMinSp( 5 );		-- SP가 5가 없으면 강공격이 나가지 않는다
	STATE:SetSpendSp( 0 );			-- sp 소모량

	STATE:ResetMoveBoxAtSubStateChange( true ); -- 상태가 바뀔 때 무브박스위치를 초기화한다.

	STATE:SetStealthCancel( true );

	STATE:InitLua( 420, 300, 40, true ); -- 변신전 300
	STATE:InitLuaInTrans( 700, 800, 40, true );  
	
	STATE:SetHPAbsorptionPer( 0);
	--STATE:SetOnlyUseInWeaponChange( true );		
	
	local range = WEAPON:GetRange();
	
	
	
	--Power = 25, range = 500	
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_ATTACK, 200, Power*1.2 , AddtionalPower );   
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.4, range*0.7, range*1.7 ), 1, 1, false  );
	Attack1:SetOnlyUseInWeaponChage( true );
	Attack1:SetPlaySound( false )
	Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 10 );  
    Attack1:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 ); 
	Attack1:SetCritical( 1.5, 10 ); --랜덤크리티컬(배율, 확률);
	AddAttack( ATTACKS, Attack1 );
	
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_ATTACK, 400, Power*0.8 , AddtionalPower );   
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.4, range*0.7, range*1.5 ), 1, 1, false  );
	Attack2:SetOnlyUseInWeaponChage( true );
	Attack2:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack2:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 );
    Attack2:SetPlaySound( false )
	Attack2:SetCritical( 1.5, 10 ); --랜덤크리티컬(배율, 확률);
	AddAttack( ATTACKS, Attack2 );
	

	Attack3 = CreateCAttack();
    Attack3:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_ATTACK, 620, Power*1.2, AddtionalPower );  
    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.4, range*0.7, range*1.5 ), 1, 1, false  ); 
	Attack3:SetOnlyUseInWeaponChage( true );
	Attack3:SetCameraShakeEnable( true, true, 0 );
    Attack3:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack3:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
	Attack3:AddBlowCondition( 500, 2000 );  
	Attack3:SetCritical( 1.5, 10 ); --랜덤크리티컬(배율, 확률);
	AddAttack( ATTACKS, Attack3 );
	
	
    Attack4 = CreateCAttack();
    Attack4:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK1, 180, Power*0.2, AddtionalPower );  -- 0.4  0.2씩올림
    Attack4:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.7, range*0.3, range*0.65 ), 1, 1, false  );    -- range*0.7, range*0.6, range*0.65 
	AddAttack( ATTACKS, Attack4 );
    
	
	Attack5 = CreateCAttack();
    Attack5:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK1, 250, Power*0.4, AddtionalPower ); --0.5, 310
    Attack5:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.7, range*0.3, range*0.65 ), 1, 1, false  );      -- MAKEVECTOR3(0,310,-50)  0.5
    Attack5:AddPushCondition( 100, 800, -5000 );  -- 시간, 거리 , 감소치
	AddAttack( ATTACKS, Attack5 );	
	
	
end

-------------------------------------------------------------------------------
--[[
	기본 StandardCogWheelSigmaBladeWeaponChange 셋팅
	InitLua인자
	bool bOnlyVStateNormal		/// 땅에서만 사용이 가능한지 여부
]]--
-------------------------------------------------------------------------------
--검변화(상태: 블로우) Power = 25, range = 500
function StandardCogWheelSigmaBladeWeaponChange(  OneShotTime, Power, Accuracy, AdditionalPower )
	

	
	STATE:SetHPAbsorptionPer( 0 );	
	STATE:SetHPAbsorptionAfterStunMin( 0 );		-- 변신 후 SP를 다 사용 할 시 자신이 걸리는 스턴 최초 (사용하지 않음)
	STATE:SetHPAbsorptionAfterStunMax( 0 );		-- 변신 후 SP를 다 사용 할 시 자신이 걸리는 스턴 마지막(사용하지 않음)

	STATE:SetStateMinSp( 20 );		-- 상태로 들어가기 위한 최소한의 필요 sp
	STATE:SetSpendSp( 0 );			-- sp 소모량
	
	STATE:InitLua( 500, 0, false );		-- 착지시/점프시 변신 가능함
	STATE:InitLuaInTrans( 500, 0, false );  -- 착지시/점프시 변신 가능함
	
	STATE:SetCoolTime( 1500 );				-- 사용후 다시 상태 돌입시 까지 걸리는 시간 ( 쿨타임 ) 
	
	local range = WEAPON:GetRange();
	
	
	
	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK4,90, Power*0.5, AddtionalPower );
    Attack1:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0.0, 200.0, 0.0), 340, range*1.2 ), 1, 1, false  ); -- 150,400, 1.2     
	Attack1:AddBlowCondition( 1450, 2800 ); 
	AddAttack( ATTACKS, Attack1 );
   
	-- STATE:SetDrop( 500, MAKEVECTOR3( 0, -10000, 0 ) );
	--setdrop : 점프 공격 후 멈춰있는 체공시간
	--MAKEVECTOR3 : 점프하면서 떨어지는 거리(x,y,z)	
		
end


-------------------------------------------------------------------------------
--[[
-- 글리치 조이 시그마 블레이드
]]--
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
--[[
	글리치 조이 GlitchJoySigmaBladeJumpDash 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--점프 공격 range = 500
function GlitchJoySigmaBladeJumpDash(  OneShotTime, Power, Accuracy, AdditionalPower )   
	
	STATE:SetMoveBoxMultiplier( 2.0 );
	STATE:SetStealthCancel( true );
	STATE:SetMoveSpeedRate( 0.5 )
	STATE:SetHPAbsorptionPer( 0 );	-- HP 흡수량

	STATE:InitLua( 550, 0, 0, false );    --키입력 시간임 두개 합쳐서 651~700으로해야 잘나옴
	
	local range = WEAPON:GetRange();	
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_JUMPDASH, 200, Power*0.6, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,0,-100), MAKEVECTOR3(0,0,-1), range*1.2, range*0.7, range*0.7 ), 1, 1, false  );  
    Attack1:SetCameraShakeEnable( true, true, 0 );  --카메라 쉐이킹( 포커스유저만, 흔들것인가, 준비시간 );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 5 ); --카메라쉐이킹 ( 흔들기시간, 회복시간, 확장 );
    Attack1:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 ); --( 세로스피드, 가로스피드, 최소거리, 최대거리 );
    Attack1:SetCameraShakeWhenSuccess( true );   
    AddAttack( ATTACKS, Attack1 );    

end



	
-------------------------------------------------------------------------------
--[[
	글리치 조이 GlitchJoySigmaBladeAfterDash1 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--첫평타공격(변신전/변신후) 
function GlitchJoySigmaBladeAfterDash1(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 0.5 );	-- 변신전 1타 무브박스 초  1.0
	STATE:SetMoveBoxMultiplierInTrans( 1.3 );	-- 변신후 1타 무브박스 초
	
	
	STATE:SetStealthCancel( true );	
	STATE:SetHPAbsorptionPer( 0 );	
	
		
	STATE:InitLua( 420, 300, 40, true ); -- 변신전 300
	STATE:InitLuaInTrans( 750, 300, 40, true );  --변신후 
	
	STATE:ResetMoveBoxAtSubStateChange( true ); -- 상태가 바뀔 때 무브박스위치를 초기화한다.
	
	local range = WEAPON:GetRange();
    

    --변신전 1타 공격(상태: 푸쉬, 경직) Power = 25, range = 500
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK1, 180, Power*0.2, AddtionalPower );  -- 0.4  0.2씩올림
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.7, range*0.3, range*0.65 ), 1, 1, false  );    -- range*0.7, range*0.6, range*0.65 
	AddAttack( ATTACKS, Attack1 );
    
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK1, 250, Power*0.4, AddtionalPower ); --0.5, 310
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.7, range*0.3, range*0.65 ), 1, 1, false  );      -- MAKEVECTOR3(0,310,-50)  0.5
    Attack2:AddPushCondition( 100, 800, -5000 );  -- 시간, 거리 , 감소치
	AddAttack( ATTACKS, Attack2 );
	
	
	--변신 후 1타 공격(상태: 블로우) Power = 25, range = 500
	
	Attack3 = CreateCAttack();    
	Attack3:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_CRITICAL, 100, Power*0.8, AddtionalPower );  --180
    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,0), MAKEVECTOR3(0,0,-1), range*0.6, range*0.5, range*0.6 ), 1, 1, false  );  --range*0.8, range*0.7, range*0.7
	Attack3:SetOnlyUseInWeaponChage( true );			
	Attack3:AddBlowCondition( 1300, 0 );  --(땅으로날아가는거리,하늘로날아가는거리)
	AddAttack( ATTACKS, Attack3 ); 
	
	
	
	Attack4 = CreateCAttack();   	
	Attack4:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_CRITICAL, 440, Power*1.5, AddtionalPower );  --450 --공격1.4
    Attack4:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,-100), MAKEVECTOR3(0,0,-1), range*1.1, range*0.5, range*1.0 ), 1, 1, false  );    --range*1.1, range*0.8, range*1.2
	Attack4:SetOnlyUseInWeaponChage( true );	
	Attack4:AddPushCondition( 100, 2000, -5000 );  -- 시간, 거리 , 감소치
	Attack4:SetCameraShakeEnable( true, true, 0 );
    Attack4:SetCameraShakeSetFactor1( 200, 50, 5 );
    Attack4:SetCameraShakeSetFactor2( 200, 100, 2000.0, 3000.0 );
   	Attack4:AddBlowCondition( 800, 1500 );  --(땅으로날아가는거리,하늘로날아가는거리1300, 2500 ) ,1000,1500
	AddAttack( ATTACKS, Attack4 ); 	
	
	
		
end



	

-------------------------------------------------------------------------------
--[[
	글리치 조이 GlitchJoySigmaBladeAfterDash2 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--두번째 평타공격(변신전/변신후)
function GlitchJoySigmaBladeAfterDash2(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 0.2 );	-- 변신전 2타 무브박스 초
	STATE:SetMoveBoxMultiplierInTrans( 1.0 ); --변신후 2타 무브박스 초

	STATE:SetStealthCancel( true );	
	STATE:SetHPAbsorptionPer( 0 );	
	
		
	STATE:InitLua( 300, 300, 40, true );
	STATE:InitLuaInTrans( 800, 300, 40, true ); --800

	STATE:ResetMoveBoxAtSubStateChange( true ); -- 상태가 바뀔 때 무브박스위치를 초기화한다.
	
	local range = WEAPON:GetRange();
   

   	--변신전 2타 공격 (상태: 블로우 , 랜덤 크리티컬) Power = 25, range = 500
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK2, 210, Power, AddtionalPower  );  --0.7
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.95, range*0.3, range*0.7 ), 1, 1, false  );
	Attack1:AddBlowCondition( 3000, 2500 );  
	Attack1:SetCameraShakeEnable( true, true, 0 ); 
    Attack1:SetCameraShakeSetFactor1( 200, 50, 20 ); 
    Attack1:SetCameraShakeSetFactor2( 200, 25, 2000, 3000 );  
	Attack1:SetCritical( 1.5, 10 ); --랜덤크리티컬(배율, 확률);
    Attack1:SetCameraShakeWhenSuccess( true );
    AddAttack( ATTACKS, Attack1 );   


	
	
	--변신후 2타 공격 (상태: 블로우  ) Power = 25, range = 500
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK2, 470, Power*1.3, AddtionalPower );  -- 410
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,-90), MAKEVECTOR3(0,0,-1), range*0.5, range*0.5, range*1.2 ), 1, 1, false  );  --0.8 ,0.7,1.2        
    Attack2:SetOnlyUseInWeaponChage( true );
	Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 200, 50, 5 );
    Attack2:SetCameraShakeSetFactor2( 200, 100, 2000.0, 3000.0 );
	Attack2:SetCameraShakeWhenSuccess( true )
	Attack2:AddBlowCondition( 500, 2000 );  
	AddAttack( ATTACKS, Attack2 );

end




-------------------------------------------------------------------------------
--[[
	기본 SigmaBladeAfterDash3 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--세번째 평타공격(변신후)
function GlitchJoySigmaBladeAfterDash3(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 0.6 );	
	STATE:SetMoveBoxMultiplierInTrans( 0.5 );

	STATE:SetStealthCancel( true );	
	STATE:SetHPAbsorptionPer( 0 );


	
	STATE:InitLua( 650, 0, 40, true );  
	STATE:InitLuaInTrans( 1000, 300, 40, true );  

	STATE:ResetMoveBoxAtSubStateChange( true ); 
	
	local range = WEAPON:GetRange();
    
	
	-- 변신전 3타 기본 공격을 2타로 변경 하면서 이 값은 쓰지 않음
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK3, 300, Power, AddtionalPower );  -- 0.7
    Attack1:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0.0, 250.0, 0.0), 100, range*0.6, range*0.6 , range*1.0 ), 1, 1, false  );   --가로,세로,대각선 range*1.4, range*0.5, range*1.7, 120
	Attack1:AddPushCondition( 100, 2000, -5000 );  -- 시간, 거리 , 감소치
	Attack1:AddBlowCondition( 1400, 2800 );  --(땅으로날아가는거리,하늘로날아가는거리)
	AddAttack( ATTACKS, Attack1 );   
	
	
	
	
	-- 변신후 3타 (상태: 블로우, 랜덤크리티컬) Power = 25, range = 500
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_CRITICAL , 500 , Power*1.7, AddtionalPower ); --1.35,1.1 ,1.2, 공격 ,1.5
    Attack2:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0.0, 100, 0.0), 200, range*0.7 ), 1, 1, false  ); 
    Attack2:SetOnlyUseInWeaponChage( true );		
	Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 200, 50, 5 );
    Attack2:SetCameraShakeSetFactor2( 200, 100, 2000.0, 3000.0 );
    Attack2:SetCameraShakeWhenSuccess( true );
	Attack2:AddPushCondition( 100, 2000, -5000 );
	Attack2:AddBlowCondition( 2600, 2000 );
	-- Attack2:SetCritical( 1.5, 10 ); --랜덤 크리티컬(배율, 확률);	
	AddAttack( ATTACKS, Attack2 ); 
	
	
	



end




-------------------------------------------------------------------------------
--[[
	기본 SigmaBladeAfterDash4 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--강공격 후 연타 (상태: 블로우) Power = 25, range = 500
function GlitchJoySigmaBladeAfterDash4(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 2.0 );	
	STATE:SetMoveBoxMultiplierInTrans( 0.8 ); 

	STATE:SetStealthCancel( true );	
	STATE:SetHPAbsorptionPer( 0 );	
	STATE:SetOnlyUseInWeaponChange( true );		
	
	

	STATE:InitLua( 800, 100, 40, true );
	STATE:InitLuaInTrans( 1000, 250, 40, true ); 
	
	local range = WEAPON:GetRange();
    

	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_CRITICAL, 200, Power*0.2, AddtionalPower );  --1.0
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,70), MAKEVECTOR3(0,0,-1), range*0.5, range*0.8, range*1.0 ), 1, 1, false  );            
    Attack1:SetOnlyUseInWeaponChage( true );
	Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack1:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
	AddAttack( ATTACKS, Attack1 )
	
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_CRITICAL, 430, Power*1.2, AddtionalPower );  --1.7
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,70), MAKEVECTOR3(0,0,-1), range*0.5, range*0.8, range*1.0 ), 1, 1, false  );            
    Attack2:SetOnlyUseInWeaponChage( true );
	Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack2:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
	Attack2:AddBlowCondition( 2000, 3500 );  
	AddAttack( ATTACKS, Attack2 )
	
	
	
	
	
end




-------------------------------------------------------------------------------
--[[
	기본 SigmaBladeCounterAttack 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
-- 변신후 강공격(상태: 랜덤크리티컬,마지막 타격 박스 블로우) Power = 25  range = 500
function GlitchJoySigmaBladeCounterAttack(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 0.5 );	-- 변신전 1타 무브박스 초  1.0
	STATE:SetMoveBoxMultiplierInTrans( 1.85 ); 
	

	STATE:SetStateMinSp( 5 );		-- SP가 5가 없으면 강공격이 나가지 않는다
	STATE:SetSpendSp( 0 );			-- sp 소모량

	STATE:ResetMoveBoxAtSubStateChange( true ); -- 상태가 바뀔 때 무브박스위치를 초기화한다.

	STATE:SetStealthCancel( true );

	STATE:InitLua( 420, 300, 40, true ); -- 변신전 300
	STATE:InitLuaInTrans( 700, 800, 40, true );  
	
	STATE:SetHPAbsorptionPer( 0);
	--STATE:SetOnlyUseInWeaponChange( true );		
	
	local range = WEAPON:GetRange();
	
	
	
	--Power = 25, range = 500	
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_ATTACK, 200, Power*1.2 , AddtionalPower );   
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.4, range*0.7, range*1.7 ), 1, 1, false  );
	Attack1:SetOnlyUseInWeaponChage( true );
	Attack1:SetPlaySound( false )
	Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 10 );  
    Attack1:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 ); 
	Attack1:SetCritical( 1.5, 10 ); --랜덤크리티컬(배율, 확률);
	AddAttack( ATTACKS, Attack1 );
	
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_ATTACK, 400, Power*0.8 , AddtionalPower );   
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.4, range*0.7, range*1.5 ), 1, 1, false  );
	Attack2:SetOnlyUseInWeaponChage( true );
	Attack2:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack2:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 );
    Attack2:SetPlaySound( false )
	Attack2:SetCritical( 1.5, 10 ); --랜덤크리티컬(배율, 확률);
	AddAttack( ATTACKS, Attack2 );
	

	Attack3 = CreateCAttack();
    Attack3:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_ATTACK, 620, Power*1.2, AddtionalPower );  
    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.4, range*0.7, range*1.5 ), 1, 1, false  ); 
	Attack3:SetOnlyUseInWeaponChage( true );
	Attack3:SetCameraShakeEnable( true, true, 0 );
    Attack3:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack3:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
	Attack3:AddBlowCondition( 500, 2000 );  
	Attack3:SetCritical( 1.5, 10 ); --랜덤크리티컬(배율, 확률);
	AddAttack( ATTACKS, Attack3 );
	
	

    Attack4 = CreateCAttack();
    Attack4:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK1, 180, Power*0.2, AddtionalPower );  -- 0.4  0.2씩올림
    Attack4:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.7, range*0.3, range*0.65 ), 1, 1, false  );    -- range*0.7, range*0.6, range*0.65 
	AddAttack( ATTACKS, Attack4 );
    
	
	Attack5 = CreateCAttack();
    Attack5:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK1, 250, Power*0.4, AddtionalPower ); --0.5, 310
    Attack5:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.7, range*0.3, range*0.65 ), 1, 1, false  );      -- MAKEVECTOR3(0,310,-50)  0.5
    Attack5:AddPushCondition( 100, 800, -5000 );  -- 시간, 거리 , 감소치
	AddAttack( ATTACKS, Attack5 );	
	
end

-------------------------------------------------------------------------------
--[[
	기본 StandardSigmaBladeWeaponChange 셋팅
	InitLua인자
	bool bOnlyVStateNormal		/// 땅에서만 사용이 가능한지 여부
]]--
-------------------------------------------------------------------------------
--검변화(상태: 블로우) Power = 25, range = 500
function GlitchJoySigmaBladeWeaponChange(  OneShotTime, Power, Accuracy, AdditionalPower )
	

	
	STATE:SetHPAbsorptionPer( 0 );	
	STATE:SetHPAbsorptionAfterStunMin( 0 );		-- 변신 후 SP를 다 사용 할 시 자신이 걸리는 스턴 최초 (사용하지 않음)
	STATE:SetHPAbsorptionAfterStunMax( 0 );		-- 변신 후 SP를 다 사용 할 시 자신이 걸리는 스턴 마지막(사용하지 않음)

	STATE:SetStateMinSp( 20 );		-- 상태로 들어가기 위한 최소한의 필요 sp
	STATE:SetSpendSp( 0 );			-- sp 소모량
	
	STATE:InitLua( 500, 0, false );		-- 착지시/점프시 변신 가능함
	STATE:InitLuaInTrans( 500, 0, false );  -- 착지시/점프시 변신 가능함
	
	STATE:SetCoolTime( 1500 );				-- 사용후 다시 상태 돌입시 까지 걸리는 시간 ( 쿨타임 ) 
	
	local range = WEAPON:GetRange();
	
	
	
	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK4,90, Power*0.5, AddtionalPower );
    Attack1:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0.0, 200.0, 0.0), 340, range*1.2 ), 1, 1, false  ); -- 150,400, 1.2     
	Attack1:AddBlowCondition( 1450, 2800 ); 
	AddAttack( ATTACKS, Attack1 );
   
	-- STATE:SetDrop( 500, MAKEVECTOR3( 0, -10000, 0 ) );
	--setdrop : 점프 공격 후 멈춰있는 체공시간
	--MAKEVECTOR3 : 점프하면서 떨어지는 거리(x,y,z)	
		
end





--[[  사용하지 않았지만 유용한 스크립트
	_STATE:SetHitStopInTrans( 400, 670 ); 400~670까지 약간 딜레이가 생긴 후 애니메이션이 출력 된다
	_Attack1:SetCameraShakeEnable( true, true, 0 ); --카메라쉐이킹( 포커스유저만, 흔들것인가, 준비시간 );
    _Attack1:SetCameraShakeSetFactor1( 200, 50, 20 ); --카메라쉐이킹 ( 흔들기시간, 회복시간, 확장 );
    _Attack1:SetCameraShakeSetFactor2( 200, 25, 2000, 3000 );  -- ( 세로스피드, 가로스피드, 최소거리, 최대거리 );  
	_Attack1:SetCritical( 1.5, 10 ); 랜덤 크리티컬 --(배율, 확률);
	]]--
	