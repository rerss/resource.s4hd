require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------
--[[
	기본 StandardKatana_A_SwordAfterDash1 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal 
	
	평타 공격 1
]]--
-------------------------------------------------------------------------------
function StandardKatana_A_SwordAfterDash1(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 0.0 );
	--무브 박스 이동력(1.0을 기준으로)
	STATE:SetMoveSpeedRate( 2.0 );
	--특수 추가 기능. 이동 중 방향에 따라 공격 모션 방향이 결정됨. 1.0을 기준으로 이동력 변경 가능
	STATE:SetMoveStopWhenDamage( true );
	STATE:SetStealthCancel( true );	
	--STATE:SetHitStop( 300, 500 );				
	--SetHitStop : 공격 타격 후 역경직 시간
	
	STATE:InitLua( 350, 500, 40, true );
	STATE:ResetMoveBoxAtSubStateChange( true );
	-- 상태가 바뀔 때 무브박스위치를 초기화한다.
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_SWORD_ATTACK1, 225, (Power*0.75)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,100), MAKEVECTOR3(0,0,-1), range*0.8, range*0.4, range*1.0 ), 1, 1, false  );        
    Attack1:AddPushCondition( 100, 2000, -5000 );
	--뒤로 밀리는 데 걸리는 총 시간, 밀리는 힘(마이너스를 줄 시 땡겨옴), 가속도의 감소치
	Attack1:SetCameraShakeEnable( true, true, 0 );
	Attack1:SetCameraShakeSetFactor1( 100, 50, 20 );
    Attack1:SetCameraShakeSetFactor2( 50.0, 0.0, 2000.0, 3000.0 );
    Attack1:SetCameraShakeWhenSuccess( true );  
	Attack1:SetCheckBodyPartsByThickray( false );
    AddAttack( ATTACKS, Attack1 );

end




-------------------------------------------------------------------------------
--[[
	기본 StandardKatana_A_SwordAfterDash2 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal 
	
	평타 공격 2
]]--
-------------------------------------------------------------------------------
function StandardKatana_A_SwordAfterDash2(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 1.0 );	
	STATE:SetStealthCancel( true );		
	STATE:InitLua( 800, 1000, 40, true );
	STATE:ResetMoveBoxAtSubStateChange( true ); 
	-- 상태가 바뀔 때 무브박스위치를 초기화한다.
	
	local range = WEAPON:GetRange();
    
	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_SWORD_ATTACK2, 300, (Power*0.625)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,100), MAKEVECTOR3(0,0,-1), range*1.3, range*0.4, range*1.0 ), 1, 1, false  );        
	Attack1:AddPushCondition( 100, 1500, -5000 );
    Attack1:SetCameraShakeEnable( true, true, 0 );
	Attack1:SetCameraShakeSetFactor1( 100, 50, 20 );
    Attack1:SetCameraShakeSetFactor2( 50.0, 0.0, 2000.0, 3000.0 );
	Attack1:SetCameraShakeWhenSuccess( true );  
	AddAttack( ATTACKS, Attack1 );
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_SWORD_ATTACK2, 700, (Power*0.625)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,100), MAKEVECTOR3(0,0,-1), range*1.3, range*0.4, range*1.0 ), 1, 1, false  );        
    Attack2:AddPushCondition( 100, 1500, -5000 );
    Attack2:SetCameraShakeEnable( true, true, 0 );
	Attack2:SetCameraShakeSetFactor1( 100, 50, 20 );
    Attack2:SetCameraShakeSetFactor2( 50.0, 0.0, 2000.0, 3000.0 );
    Attack2:SetCameraShakeWhenSuccess( true );  
	AddAttack( ATTACKS, Attack2 );
	
end




-------------------------------------------------------------------------------
--[[
	기본 StandardKatana_A_SwordAfterDash3 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal 
	
	평타 공격 3
]]--
-------------------------------------------------------------------------------
function StandardKatana_A_SwordAfterDash3(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 1.0 );	
	STATE:SetStealthCancel( true );	
	STATE:SetHitStop( 300, 450 );	
	
	STATE:InitLua( 500, 700, 40, true );
	STATE:ResetMoveBoxAtSubStateChange( true ); -- 상태가 바뀔 때 무브박스위치를 초기화한다.
	
	local range = WEAPON:GetRange();
    	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_SWORD_ATTACK3, 350, (Power*1.0)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,100), MAKEVECTOR3(0,0,-1), range*0.8, range*0.4, range*1.2 ), 1, 1, false  );        
    Attack1:AddBlowCondition( 3000, 2000 );
	Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack1:SetCameraShakeSetFactor2( 0.0, 75.0, 2000.0, 3000.0 );
	Attack1:SetCameraShakeWhenSuccess( true );  
	Attack1:SetCritical( 2, 10 );
	-- SetCritical (배율, 확률);
    AddAttack( ATTACKS, Attack1 );

end

-------------------------------------------------------------------------------
--[[
	기본 StandardKatana_A_SwordJumpDash JumpDash 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal 
	
	점프 공격
]]--
-------------------------------------------------------------------------------
function StandardKatana_A_SwordJumpDash(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetDrop( 1, MAKEVECTOR3( 0, -700, -1600 ) );
	--setdrop : 점프 공격 후 멈춰있는 체공시간
	--MAKEVECTOR3 : 점프하면서 떨어지는 거리(x,y,z)
	STATE:SetDelayDrop( 1, MAKEVECTOR3( 0, -5000, 0 ) );
	--딜레이시 드랍 시간
	
	STATE:SetStealthCancel( true );
	STATE:SetMoveBoxMultiplier( 0 );
	STATE:SetMaxAttackCount( 3 );
	--공격 최대 입력 횟수 (카타나 점프공격 한정 기능)
	
	
	STATE:InitLua( 400, 450, 40, false );
	local range = WEAPON:GetRange();
	
 	Attack1 = CreateCAttack();
	Attack1:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_SWORD_JUMPDASH, 200, (Power*0.6)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,150), MAKEVECTOR3(0,0,-1), range*0.7, range*1.2, range*1.0 ), 1, 1, false  );      
    Attack1:AddPushCondition( 50, 2000, -5000 );
	Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 100, 30, 50 );			
	--( 흔들기시간, 회복시간, 확장 );
    Attack1:SetCameraShakeSetFactor2( 30.0, 0.0, 2000.0, 3000.0 );	
	--( 세로스피드, 가로스피드, 최소거리, 최대거리 );
	Attack1:SetCameraShakeWhenSuccess( true );
    AddAttack( ATTACKS, Attack1 );
	
	Attack2 = CreateCAttack();
	Attack2:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_SWORD_JUMPDASH, 300, (Power*0.6)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,150), MAKEVECTOR3(0,0,-1), range*0.7, range*1.2, range*1.0 ), 1, 1, false  );      
    Attack2:AddPushCondition( 50, 2000, -5000 );
	Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 100, 30, 50 );				
	--( 흔들기시간, 회복시간, 확장 );
    Attack2:SetCameraShakeSetFactor2( 30.0, 0.0, 2000.0, 3000.0 );	
	--( 세로스피드, 가로스피드, 최소거리, 최대거리 );
	Attack2:SetCameraShakeWhenSuccess( true );
	Attack2:SetPlaySound( false );
    AddAttack( ATTACKS, Attack2 );
	
		
	Attack3 = CreateCAttack();
	Attack3:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_SWORD_JUMPDASH, 600, (Power*0.9)+AdditionalPower, AddtionalPower );
    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,150), MAKEVECTOR3(0,0,-1), range*0.7, range*1.2, range*1.3 ), 1, 1, false  );      
    Attack3:AddPushCondition( 500, 2500, -5000 );
	Attack3:SetCameraShakeEnable( true, true, 0 );
    Attack3:SetCameraShakeSetFactor1( 200, 50, 50 );				
	--( 흔들기시간, 회복시간, 확장 );
    Attack3:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );	
	--( 세로스피드, 가로스피드, 최소거리, 최대거리 );
	Attack3:SetCameraShakeWhenSuccess( true );
	Attack3:SetCritical( 1, 30 );
	-- SetCritical (배율, 확률);
	Attack3:SetPlaySound( false );
    AddAttack( ATTACKS, Attack3 );
	
end

-------------------------------------------------------------------------------
--[[
	기본 StandardKatana_A_SwordStrong 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal 
	
	강 공격
]]--
-------------------------------------------------------------------------------
function StandardKatana_A_SwordStrong(  OneShotTime, Power, Accuracy, AdditionalPower )
		
	STATE:SetMoveBoxMultiplier( 1.5 );			
	--무브 박스 이동력(1.0을 기준으로)
	STATE:SetStealthCancel( true );	
	--STATE:SetHitStop( 300, 450 );	
	
	STATE:InitLua( 500, 700, 40, true );
	STATE:ResetMoveBoxAtSubStateChange( true ); 
	-- 상태가 바뀔 때 무브박스위치를 초기화한다.
	
	local range = WEAPON:GetRange();
    
	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_SWORD_ATTACK4, 100, (Power*0.125)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,150), MAKEVECTOR3(0,0,-1), range*0.8, range*0.3, range*1.0 ), 1, 1, false  );        
	Attack1:AddPushCondition( 100, 2000, -5000 );
	Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 50 );				
	--( 흔들기시간, 회복시간, 확장 );
    Attack1:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );	
	--( 세로스피드, 가로스피드, 최소거리, 최대거리 );
	Attack1:SetCameraShakeWhenSuccess( true );
    AddAttack( ATTACKS, Attack1 );
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_SWORD_ATTACK4, 400, (Power*1.75)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,200,-100), MAKEVECTOR3(0,0,-1), range*0.8, range*1.0, range*1.4 ), 1, 1, false  );        
	Attack2:AddBlowCondition( 3000, 2000 );
	Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 200, 50, 50 );				
	--( 흔들기시간, 회복시간, 확장 );
    Attack2:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );	
	--( 세로스피드, 가로스피드, 최소거리, 최대거리 );
	Attack2:SetCameraShakeWhenSuccess( true );
	Attack2:SetCritical( 1.4, 30 );
	Attack2:SetPlaySound( false );
    AddAttack( ATTACKS, Attack2 );
    
end

-------------------------------------------------------------------------------
--[[
	기본 StandardKatana_A_SwordAttack2Charge 셋팅
	InitLua인자
	u32 uiMinimumSceneUpdateTime		::	현재 씬을 update하는 시간(frame) 주로 40을 유지하고 있음
	u32 uiLowerPartBeginTime			::	하체 애니메이션 시간( 상하체가 하나라면 설정해도 의미없음 )
	u32 uiAttackDelay					::	공격이 가능한 상태일시 공격전 딜레이를 주는 부분
	bool bOnlyVStateNormal				::	현재 상태가 점프시에도 사용가능한지의 여부를 설정함 ( true = 점프시에 공격이 가능하거나 가드가 가능 , false = 점프시 사용 불가 )
	bool bEnableInputJump				::	현재 상태에서 점프가 가능한지의 여부 설정( true = 점프 가능, false = 점프 불가능 )
	u32 uiWaitInput						::	상태 내부에서 사용하는 특정값( 주의 !! 설정되어진 값을 변경하면 않됩니다. )
	
	InitLuaNoInputSecond인자
	u32 uiWaitTime						::	현재 상태에서는 max charge time
	u32 uiNormalTime					::	현재 상태의 애미네이션 플레이 시간
	u32 uiDelayTime						::	NormalTime이 끝나고 난다음의 딜레이 유지 시간
	
	InitLuaInputSecond인자
	u32 uiWaitTime						::	현재 상태에서는 max charge time
	u32 uiNormalTime					::	현재 상태의 애미네이션 플레이 시간
	u32 uiDelayTime						::	NormalTime이 끝나고 난다음의 딜레이 유지 시간
	string& strFirstBone				::	이펙트의 위치(bone)
	string& strSecondBone				::	이펙트의 위치(bone)
	
	특수기 차치
]]--
-------------------------------------------------------------------------------
function StandardKatana_A_SwordAttack2Charge(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveSpeedRate( 0.0 );	
	STATE:SetStealthCancel( true );
	--STATE:SetHitStop( 150, 300 ) ;
	STATE:SetMoveBoxMultiplier( 2.0 );	
	STATE:SetPersistDecrementMaxSp( 25 );
	--sp가 달 수 있는 최대량
	STATE:SetSpendSp( 25 );
	--초당 소비되는 sp양
	
	--[[ 현재 상태로 들어갈수 있는 최소 sp 설정 ]]--
	STATE:SetChargeTimer( true );
	
	STATE:SetStandingWait( true ); --대기상태에서 움직일지 여부
	
	STATE:InitLua( 40, 0, 1000, false, false, 3 );
	STATE:InitLuaInputSecond( 1000, 8000, 0, "Bip01 L Hand", "" );
	
end


-------------------------------------------------------------------------------
--[[
	기본 StandardKatana_A_SwordAttack2Dash 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal 
	
	차지 어택
]]--
-------------------------------------------------------------------------------
function StandardKatana_A_SwordAttack2Dash(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:SetMoveBoxMultiplier( 0.85 );
	--원래 수치 1.3 플소 돌격보다 일부러 더 덜 이동하게 하기 위해 수정함
	--원래 수치 1.5였음(공격시간을 1350에서 1050으로 줄임에 따라 이동 거리 늘리기 위해 증가	
	STATE:SetStealthCancel( true );	
	STATE:SetMoveStopWhenDamage( false );
	STATE:SetCheckChargeAttack( true );
	STATE:SetSettingChargeTime( true );
	STATE:ResetMoveBoxAtSubStateChange( true );
	STATE:SetIncreaseDelayChargeTime( false );

	STATE:SetMaxIncreaseDelayTime( 0 );
	STATE:SetSpRecoveryChargeAttack( false );
	STATE:SetEnableMouseSensitivityRotate( true );
	--공격중과 후딜 중 마우스 회전 제어 여부
	STATE:SetNormalMouseSensitivityRotate( 0.25 );
	--공격 중 마우스 회전 속도
	--STATE:SetDelayMouseSensitivityRotate( 1.0 );
	--후딜 중 마우스 회전 속도 (미입력 시 디폴트 수치 1.0으로 적용)
		
	STATE:SetFpsCameraInfoNewCam( true, false );
	-- STATE:SetFpsCameraInfoNewCamHori( 0.25, 0.05, 2.0 );
	-- STATE:SetFpsCameraInfoNewCamVert( 0.95, 0.98, 0.5 );
	STATE:SetFpsCameraInfoNewCamHori( 0.4, 0.05, 2.0 );
	--STATE:SetFpsCameraInfoNewCamHori( 0.95, 0.98, 0.5 );
	STATE:SetFpsCameraInfoNewCamVert( 0.95, 0.98, 0.5 );
	
	-- SetFpsCameraInfoNewCam      ( bool	isNewCam, bool isNewCamLinkHeight );
	-- SetFpsCameraInfoNewCamHori  ( float SpringConstHori,float DampConstHori, float SpringLenHori );
	-- SetFpsCameraInfoNewCamVert  ( float SpringConstVert, float DampConstVert, float SpringLenVert );
	
	STATE:InitLua( "", "", 550, 1100, 40, false , 1000 );
	--마지막 수치는 차지 입력 시간 관련
	--원래 타입 ( "", "", 1350, 1000, 40, false , 2000 );
	--STATE:SetDrop( 100, MAKEVECTOR3( 0, -1000, 0 ) );
	--STATE:SetSpendSp( 30 );
	
	--공격이동중 다른 Actor와 충돌처리 하지않는다() 무시하고 통과한다 )
	STATE:SetIgnoreActorCollision( true );
	
	local range = WEAPON:GetRange();

	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_ATTACK2_CHARGE, 33, (Power*1.6)+AdditionalPower, AddtionalPower ); --33
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,100,-100), MAKEVECTOR3(0,0,-1), range*0.9, range*0.4, range*1.5 ), 1, 1, false  ); 
    Attack1:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack1:SetCameraShakeSetFactor2( 0.0, 75.0, 2000.0, 3000.0 );
	Attack1:SetCameraShakeWhenSuccess( true );  
	Attack1:SetCameraShakeReiteration( false ); 
	--카메라 쉐이킹 중복이 안되도록 하는 기능. 위 함수와 false를 입력 시 발동. 미입력시 적용되지 않음.
	Attack1:AddPushCondition( 150, 2500, -5000 );
	Attack1:AddBlowCondition( -1500, 3500 );
	--Attack1:AddBlowCondition( -1000, 3500 );
	Attack1:SetFullCharge( false );	
    AddAttack( ATTACKS, Attack1 );	
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_ATTACK2_CHARGE, 255, (Power*1.6)+AdditionalPower, AddtionalPower ); --230
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,100,-360), MAKEVECTOR3(0,0,-1), range*0.9, range*0.4, range*1.5 ), 1, 1, false  ); 
    Attack2:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack2:SetCameraShakeSetFactor2( 0.0, 75.0, 2000.0, 3000.0 );
	Attack2:SetCameraShakeWhenSuccess( true );  
	Attack2:SetCameraShakeReiteration( false );  
	Attack2:AddPushCondition( 150, 2500, -5000 );
	Attack2:AddBlowCondition( -1500, 3500 );-- -1500,2500
	--Attack2:AddBlowCondition( -1000, 3500 );	
	Attack2:SetFullCharge( false );	
	Attack2:SetPlaySound( false );
    AddAttack( ATTACKS, Attack2 );	
		
	--[[Attack3 = CreateCAttack();
    Attack3:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_ATTACK2_CHARGE, 45, (Power*0.0)+AdditionalPower, AddtionalPower );
    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,100,-100), MAKEVECTOR3(0,0,-1), range*0.15, range*0.4, range*1.5 ), 1, 1, false  ); 
    Attack3:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack3:SetCameraShakeEnable( true, true, 0 );
    Attack3:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack3:SetCameraShakeSetFactor2( 0.0, 75.0, 2000.0, 3000.0 );
	Attack3:SetCameraShakeWhenSuccess( true );  
	Attack3:SetCameraShakeReiteration( false );  
	Attack3:AddBlowCondition( -1000, 3500 );
	--기존값 Attack1:AddBlowCondition( -2500, 4000 );
	Attack3:SetFullCharge( false );	
	Attack3:SetPlaySound( false );
	Attack3:SetCritical( 1, 100 );
    AddAttack( ATTACKS, Attack3 );	
	
	Attack4 = CreateCAttack();
    Attack4:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_ATTACK2_CHARGE, 240, (Power*0.0)+AdditionalPower, AddtionalPower );
    Attack4:InitAttack2( MAKEBOX( MAKEVECTOR3(0,100,-360), MAKEVECTOR3(0,0,-1), range*0.15, range*0.4, range*1.5 ), 1, 1, false  ); 
    Attack4:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack4:SetCameraShakeEnable( true, true, 0 );
    Attack4:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack4:SetCameraShakeSetFactor2( 0.0, 75.0, 2000.0, 3000.0 );
	Attack4:SetCameraShakeWhenSuccess( true );  
	Attack4:SetCameraShakeReiteration( false );  
	Attack4:AddBlowCondition( -1000, 3500 );
	Attack4:SetFullCharge( false );	
	Attack4:SetPlaySound( false );
	Attack4:SetCritical( 1, 100 );
    AddAttack( ATTACKS, Attack4 );	
	
	Attack5 = CreateCAttack();
    Attack5:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_ATTACK2_CHARGE, 32, (Power*1.6)+AdditionalPower, AddtionalPower );
    Attack5:InitAttack2( MAKEBOX( MAKEVECTOR3(0,100,-100), MAKEVECTOR3(0,0,-1), range*0.9, range*0.4, range*1.5 ), 1, 1, false  );  
    Attack5:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack5:SetFullCharge( false );	
	--Attack5:SetCritical( 2, 10 );
	Attack5:SetPlaySound( false );
    AddAttack( ATTACKS, Attack5 );		

	Attack6 = CreateCAttack();
    Attack6:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_ATTACK2_CHARGE, 229, (Power*1.6)+AdditionalPower, AddtionalPower );
    Attack6:InitAttack2( MAKEBOX( MAKEVECTOR3(0,100,-360), MAKEVECTOR3(0,0,-1), range*0.9, range*0.4, range*1.5 ), 1, 1, false  ); 
    Attack6:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack6:SetFullCharge( false );	
	--Attack6:SetCritical( 2, 10 );
	Attack6:SetPlaySound( false );
    AddAttack( ATTACKS, Attack6 );	
	]]
	--attack1~6 : 노차지	
	--attack7~12 : 풀차지

	Attack7 = CreateCAttack();
    Attack7:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_ATTACK2_FULL_CHARGE, 33, (Power*2.75)+AdditionalPower, AddtionalPower );
    Attack7:InitAttack2( MAKEBOX( MAKEVECTOR3(0,100,-100), MAKEVECTOR3(0,0,-1), range*0.9, range*0.4, range*1.6 ), 1, 1, false  ); 
    Attack7:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack7:SetCameraShakeEnable( true, true, 0 );
    Attack7:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack7:SetCameraShakeSetFactor2( 0.0, 75.0, 2000.0, 3000.0 );
	Attack7:SetCameraShakeWhenSuccess( true ); 
	Attack7:SetCameraShakeReiteration( false );  
	Attack7:AddPushCondition( 150, 2500, -5000 );
	Attack7:AddBlowCondition( -1500, 3500 );
	-- Attack7:AddBlowCondition( -1000, 3500 );
	Attack7:SetFullCharge( true );
    AddAttack( ATTACKS, Attack7 );	
	
	Attack8 = CreateCAttack();
    Attack8:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_ATTACK2_FULL_CHARGE, 270, (Power*2.75)+AdditionalPower, AddtionalPower ); -- 230
    Attack8:InitAttack2( MAKEBOX( MAKEVECTOR3(0,100,-360), MAKEVECTOR3(0,0,-1), range*0.9, range*0.4, range*1.9 ), 1, 1, false  ); 
    Attack8:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack8:SetCameraShakeEnable( true, true, 0 );
    Attack8:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack8:SetCameraShakeSetFactor2( 0.0, 75.0, 2000.0, 3000.0 );
	Attack8:SetCameraShakeWhenSuccess( true ); 
	Attack8:SetCameraShakeReiteration( false );  
	Attack8:AddPushCondition( 150, 2500, -5000 );
	Attack8:AddBlowCondition( -1500, 3500 );
	-- Attack8:AddBlowCondition( -1000, 3500 );
	Attack8:SetFullCharge( true );
	Attack8:SetPlaySound( false );	
    AddAttack( ATTACKS, Attack8 );	
	
	--[[Attack9 = CreateCAttack();
    Attack9:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_ATTACK2_FULL_CHARGE, 45, (Power*0.0)+AdditionalPower, AddtionalPower );
    Attack9:InitAttack2( MAKEBOX( MAKEVECTOR3(0,100,-100), MAKEVECTOR3(0,0,-1), range*0.9, range*0.4, range*1.9 ), 1, 1, false  ); 
    Attack9:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack9:SetCameraShakeEnable( true, true, 0 );
    Attack9:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack9:SetCameraShakeSetFactor2( 0.0, 75.0, 2000.0, 3000.0 );
	Attack9:SetCameraShakeWhenSuccess( true ); 
	Attack9:SetCameraShakeReiteration( false );  
	Attack9:AddBlowCondition( -1000, 3500 );
	Attack9:SetFullCharge( true );	
	Attack9:SetPlaySound( false );
	Attack9:SetCritical( 1, 100 );
    AddAttack( ATTACKS, Attack9 );	
	
	Attack10 = CreateCAttack();
    Attack10:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_ATTACK2_FULL_CHARGE, 240, (Power*0.0)+AdditionalPower, AddtionalPower );
    Attack10:InitAttack2( MAKEBOX( MAKEVECTOR3(0,100,-360), MAKEVECTOR3(0,0,-1), range*0.9, range*0.4, range*1.9 ), 1, 1, false  ); 
    Attack10:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack10:SetCameraShakeEnable( true, true, 0 );
    Attack10:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack10:SetCameraShakeSetFactor2( 0.0, 75.0, 2000.0, 3000.0 );
	Attack10:SetCameraShakeWhenSuccess( true ); 
	Attack10:SetCameraShakeReiteration( false );  
	Attack10:AddBlowCondition( -1000, 3500 );
	Attack10:SetFullCharge( true );	
	Attack10:SetPlaySound( false );
	Attack10:SetCritical( 1, 100 );
    AddAttack( ATTACKS, Attack10 );		
	
	Attack11 = CreateCAttack();
    Attack11:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_ATTACK2_CHARGE, 32, (Power*1.8)+AdditionalPower, AddtionalPower );
    Attack11:InitAttack2( MAKEBOX( MAKEVECTOR3(0,100,-100), MAKEVECTOR3(0,0,-1), range*0.9, range*0.4, range*1.5 ), 1, 1, false  );  
    Attack11:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack11:SetFullCharge( true );	
	--Attack11:SetCritical( 2, 10 );
	Attack11:SetPlaySound( false );
    AddAttack( ATTACKS, Attack11 );		

	Attack12 = CreateCAttack();
    Attack12:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_ATTACK2_CHARGE, 229, (Power*1.8)+AdditionalPower, AddtionalPower );
    Attack12:InitAttack2( MAKEBOX( MAKEVECTOR3(0,100,-360), MAKEVECTOR3(0,0,-1), range*0.9, range*0.4, range*1.5 ), 1, 1, false  ); 
    Attack12:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack12:SetFullCharge( true );	
	--Attack12:SetCritical( 2, 10 );
	Attack12:SetPlaySound( false );
    AddAttack( ATTACKS, Attack12 );	
	]]
	
end

-------------------------------------------------------------------------------
--[[
	기본 StandardKatana_A_SwordAttack2BackDash 셋팅
	InitLua인자
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal 
	
	차지백대쉬
]]--
-------------------------------------------------------------------------------
function StandardKatana_A_SwordAttack2BackDash(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 1.2 );
	STATE:SetStealthCancel( true );	
	STATE:SetMoveStopWhenDamage( false );
	STATE:SetSpendSp( 25 );
	STATE:SetStateMinSp( 10 );
	STATE:InitLua( "", "", 400, 0, 0, true , 0 );
	
end

