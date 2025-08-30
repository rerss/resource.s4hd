require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------
--[[
	기본 DoubleSwordJumpDash 셋팅
	InitLua인자
	std::string& EffectFile					::	상태가 사용될때 나올 이펙트 이름( 현재 사용하지 않음 )
	std::string& SoundFile					::	상태가 사용될때 나올 사운드 이름( 현재 사용하지 않음 )
	u32 uiNormalTime						::	현재 상태의 애미네이션 플레이 시간
	u32 uiDelayTime						::	NormalTime이 끝나고 난다음의 딜레이 유지 시간
	u32 uiMinimumSceneUpdateTime		::	현재 씬을 update하는 시간(frame) 주로 40을 유지하고 있음
	bool bOnlyVStateNormal				::	현재 상태가 점프시에도 사용가능한지의 여부를 설정함 ( true = 점프시에 공격이 가능하거나 가드가 가능 , false = 점프시 사용 불가 )
]]--
-------------------------------------------------------------------------------
--점프 공격
function StandardDoubleSwordJumpDash(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetDrop( 500, MAKEVECTOR3( 0, -10000, 0 ) );
	STATE:SetStealthCancel( true );
	STATE:SetMoveBoxMultiplier( 1.0 );
	STATE:SetHitStop( 210, 310 ) ;
	STATE:SetCheckChargeAttack( false ) ;
	STATE:InitLua( "", "", 600, 600, 40, false, 0 );
	
	local range = WEAPON:GetRange();
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_JUMPDASH, 210, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,0,-100), MAKEVECTOR3(0,0,-1), range*1.5, range*1.5, range*1.5 ), 1, 1, false  ); --MAKEVECTOR3(0,-45,-100)       
    Attack1:AddBlowCondition( 1500, 2000 );
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 150, 50, 60 );
    Attack1:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
    Attack1:SetCameraShakeWhenSuccess( true );    
    AddAttack( ATTACKS, Attack1 );

end





-------------------------------------------------------------------------------
--[[
	기본 DoubleSwordAfterDash1 셋팅
	InitLua인자
	u32 uiNormalTime						::	현재 상태의 애미네이션 플레이 시간
	u32 uiDelayTime						::	NormalTime이 끝나고 난다음의 딜레이 유지 시간
	u32 uiMinimumSceneUpdateTime		::	현재 씬을 update하는 시간(frame) 주로 40을 유지하고 있음
	bool bOnlyVStateNormal				::	현재 상태가 점프시에도 사용가능한지의 여부를 설정함 ( true = 점프시에 공격이 가능하거나 가드가 가능 , false = 점프시 사용 불가 )
]]--
-------------------------------------------------------------------------------
--첫 평타 연속 2타 공격
function StandardDoubleSwordAfterDash1(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 1.7 );
	STATE:SetMoveStopWhenDamage( true );
	STATE:SetStealthCancel( true );
	STATE:SetHitStop( 300, 500 );	
	--	STATE:SetHitStop( 580, 680 ) ;
	STATE:InitLua( 800, 150, 40, true );
	
	local range = WEAPON:GetRange();
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_ATTACK1, 100, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range*0.8, range*0.5, range*0.7 ), 1, 1, false  );     
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 100, 50, 20 );
    Attack1:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
    Attack1:SetCameraShakeWhenSuccess( true );    
    AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_ATTACK1, 350, Power+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range*0.8, range*0.5, range*1.4 ), 1, 1, false  );       
    Attack2:AddPushCondition( 150, 2000, -5000 );
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 100, 50, 20 );
    Attack2:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
    Attack2:SetCameraShakeWhenSuccess( true );    
    AddAttack( ATTACKS, Attack2 );


end





-------------------------------------------------------------------------------
--[[
	기본 DoubleSwordAfterDash3 셋팅
	InitLua인자
	u32 uiNormalTime						::	현재 상태의 애미네이션 플레이 시간
	u32 uiDelayTime						::	NormalTime이 끝나고 난다음의 딜레이 유지 시간
	u32 uiMinimumSceneUpdateTime		::	현재 씬을 update하는 시간(frame) 주로 40을 유지하고 있음
	bool bOnlyVStateNormal				::	현재 상태가 점프시에도 사용가능한지의 여부를 설정함 ( true = 점프시에 공격이 가능하거나 가드가 가능 , false = 점프시 사용 불가 )
]]--
-------------------------------------------------------------------------------
--3 평타
function StandardDoubleSwordAfterDash3(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 1.0 );	
	STATE:SetStealthCancel( true );
	STATE:SetHitStop( 510, 610 ) ;
	--STATE:EnableCameraShake( true, false, 610 );
	STATE:EnableCameraShake( true, false, 260 );
	STATE:SetCameraShakeFactor1( 250, 50, 50 );
	STATE:SetCameraShakeFactor2( 60, 0, 2000, 3000 );
	
	STATE:InitLua( 800, 300, 40, true );
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_ATTACK3, 50, (Power*0.4), AddtionalPower );
	--Attack1:InitAttack1( WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_ATTACK3, 270, Power, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range*0.8, range*0.5, range*1.0 ), 1, 1, false  ); 
	Attack1:SetCritical( 2, 20 );
	Attack1:AddPushCondition( 150, 2000, -5000 );
	--Attack2:AddBlowCondition( 3000, 2000 );
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 100, 50, 20 );
    Attack1:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
    Attack1:SetCameraShakeWhenSuccess( true );    
    AddAttack( ATTACKS, Attack1 );  
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_ATTACK3, 400, (Power*0.4), AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,200), MAKEVECTOR3(0,0,-1), range*0.8, range*0.5, range*1.0 ), 1, 1, false  );       
    Attack2:AddPushCondition( 150, 2000, -5000 );
	Attack2:SetCritical( 2, 20 );
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 100, 50, 20 );
    Attack2:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
    Attack2:SetCameraShakeWhenSuccess( true );    
    AddAttack( ATTACKS, Attack2 );

end





-------------------------------------------------------------------------------
--[[
	기본 DoubleSwordGatherGuage 셋팅
	InitLua인자
	u32 uiMinimumSceneUpdateTime		::	현재 씬을 update하는 시간(frame) 주로 40을 유지하고 있음
	u32 uiLowerPartBeginTime				::	하체 애니메이션 시간( 상하체가 하나라면 설정해도 의미없음 )
	u32 uiAttackDelay						::	공격이 가능한 상태일시 공격전 딜레이를 주는 부분
	bool bOnlyVStateNormal				::	현재 상태가 점프시에도 사용가능한지의 여부를 설정함 ( true = 점프시에 공격이 가능하거나 가드가 가능 , false = 점프시 사용 불가 )
	bool bEnableInputJump				::	현재 상태에서 점프가 가능한지의 여부 설정( true = 점프 가능, false = 점프 불가능 )
	u32 uiWaitInput
	
	InitLuaNoInputSecond인자
	u32 uiWaitTime						::	현재 상태에서는 max charge time
	u32 uiNormalTime						::	현재 상태의 애미네이션 플레이 시간
	u32 uiDelayTime						::	NormalTime이 끝나고 난다음의 딜레이 유지 시간
	
	InitLuaInputSecond인자
	u32 uiWaitTime						::	현재 상태에서는 max charge time
	u32 uiNormalTime						::	현재 상태의 애미네이션 플레이 시간
	u32 uiDelayTime						::	NormalTime이 끝나고 난다음의 딜레이 유지 시간
	string& strFirstBone					::	쌍검에 붙일 이펙트의 위치(bone) => 쌍검은 현재 두개의 이펙트가 붙어있음
	string& strSecondBone				::	쌍검에 붙일 이펙트의 위치(bone) => 쌍검은 현재 두개의 이펙트가 붙어있음
]]--
-------------------------------------------------------------------------------
--광역 공격 들어갈때
function StandardDoubleSwordGatherGuage(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveSpeedRate( 0.7 );	
	STATE:SetStealthCancel( true );
	STATE:SetHitStop( 150, 300 ) ;
	STATE:SetMoveBoxMultiplier( 2.0 );	

	--[[ 현재 상태로 들어갈수 있는 최소 sp 설정 ]]--
	STATE:SetStateMinSp( 0 );
	
	STATE:SetChargeTimer( false );
	
	-- 마지막 인자값 3 & initlua 3번째 인자값과 InitLuaInputSecond 세번째 인자값 맞춰주기. - 바로나감.
	STATE:InitLua( 40, 0, 0, false, true, 3 );
	STATE:InitLuaInputSecond( 0, 0, 0, "R_Hand_Dummy", "L_Hand_Dummy" );

end







-------------------------------------------------------------------------------
--[[
	기본 DoubleSwordAfterDash4 셋팅
	InitLua인자
	u32 uiNormalTime						::	현재 상태의 애미네이션 플레이 시간
	u32 uiDelayTime						::	NormalTime이 끝나고 난다음의 딜레이 유지 시간
	u32 uiMinimumSceneUpdateTime		::	현재 씬을 update하는 시간(frame) 주로 40을 유지하고 있음
	bool bOnlyVStateNormal				::	현재 상태가 점프시에도 사용가능한지의 여부를 설정함 ( true = 점프시에 공격이 가능하거나 가드가 가능 , false = 점프시 사용 불가 )
]]--
-------------------------------------------------------------------------------
--광역 공격
function StandardDoubleSwordAfterDash4(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetDrop( 400, MAKEVECTOR3( 0, -10000, 0 ) );
	STATE:SetMoveBoxMultiplier( 1.0 );	
	STATE:SetStealthCancel( true );
	STATE:SetHitStop( 600, 700 ) ;
	STATE:SetCheckChargeAttack( true ) ;
	STATE:SetSettingChargeTime( true ) ;
	STATE:EnableCameraShake( true, false, 560 );
	STATE:SetCameraShakeFactor1( 300, 50, 60 );
	STATE:SetCameraShakeFactor2( 60, 0, 2000, 3000 );
		
	--[[ 현재 쌍검에서 사용할 소모 sp 설정 ]]--
	STATE:SetSpendSp( 30 );							
	
	STATE:InitLua( "", "", 800, 1000, 40, false , 2000 );
	
	local range = WEAPON:GetRange();
	
    Attack1 = CreateCAttack();
	
    Attack1:InitAttack1( WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_ATTACK4, 600, Power+AdditionalPower, AddtionalPower ); --power 값 적용 안됨
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range*1.2, range*1.1, range*1.6 ), 1, 1, false  );        
    --Attack1:AddPushCondition( 100, 2000, -5000 ); 
	Attack1:AddBlowCondition( 1500, 900 );
	Attack1:SetFullCharge( false );
    AddAttack( ATTACKS, Attack1 );  
	
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_ATTACK4, 600, Power+AdditionalPower, AddtionalPower ); --power 값 적용 안됨
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,300,-100), MAKEVECTOR3(0,0,-1), range*1.6, range*1.4, range*1.8 ), 1, 1, false  );         
	Attack2:AddBlowCondition( 3000, 1800 );
	Attack2:SetFullCharge( true );
    AddAttack( ATTACKS, Attack2 );  
	
	-- STATE:SetMaxChargeDelayTime(20000); //해당 함수는 구현되지 않았기 때문에 릴리즈 빌드 적용 시 에러 발생 이에 주석 처리 변경 (2017/02/18)
	end


-------------------------------------------------------------------------------
--[[
	기본 DoubleSwordAfterDash5 셋팅
	InitLua인자
	u32 uiMinimumSceneUpdateTime		::	현재 씬을 update하는 시간(frame) 주로 40을 유지하고 있음
	u32 uiLowerPartBeginTime				::	하체 애니메이션 시간( 상하체가 하나라면 설정해도 의미없음 )
	u32 uiAttackDelay						::	공격이 가능한 상태일시 공격전 딜레이를 주는 부분
	bool bOnlyVStateNormal				::	현재 상태가 점프시에도 사용가능한지의 여부를 설정함 ( true = 점프시에 공격이 가능하거나 가드가 가능 , false = 점프시 사용 불가 )
	bool bEnableInputJump				::	현재 상태에서 점프가 가능한지의 여부 설정( true = 점프 가능, false = 점프 불가능 )
	u32 uiWaitInput						::	상태 내부에서 사용하는 특정값( 주의 !! 설정되어진 값을 변경하면 않됩니다. )
	
	InitLuaNoInputSecond인자
	u32 uiWaitTime						::	현재 상태에서는 max charge time
	u32 uiNormalTime						::	현재 상태의 애미네이션 플레이 시간
	u32 uiDelayTime						::	NormalTime이 끝나고 난다음의 딜레이 유지 시간
	
	InitLuaInputSecond인자
	u32 uiWaitTime						::	현재 상태에서는 max charge time
	u32 uiNormalTime						::	현재 상태의 애미네이션 플레이 시간
	u32 uiDelayTime						::	NormalTime이 끝나고 난다음의 딜레이 유지 시간
	string& strFirstBone					::	쌍검에 붙일 이펙트의 위치(bone) => 쌍검은 현재 두개의 이펙트가 붙어있음
	string& strSecondBone				::	쌍검에 붙일 이펙트의 위치(bone) => 쌍검은 현재 두개의 이펙트가 붙어있음
]]--
-------------------------------------------------------------------------------
--광역 "차지" 공격 들어갈때
function StandardDoubleSwordAfterDash5(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveSpeedRate( 0.7 );	
	STATE:SetStealthCancel( true );
	STATE:SetHitStop( 150, 300 ) ;
	STATE:SetMoveBoxMultiplier( 2.0 );	
	
	--[[ 현재 상태로 들어갈수 있는 최소 sp 설정 ]]--
	STATE:SetStateMinSp( 30 );
	STATE:SetChargeTimer( true );
	--차지 무한으로 변경 (2017 5월 패치)
	STATE:InitLua( 40, 0, 2000, false, true, 0	);
	STATE:InitLuaInputSecond( 2000, 0, 0, "R_Hand_Dummy", "L_Hand_Dummy" );
	
	-- 풀차지 후 유지시간 설정 (적용: 20170208 / 기존 2초에서 20초로 상향 밸런스 조정)
	--차지 무한으로 변경 (2017 5월 패치)
	-- STATE:SetFullChargeWaitDelay( 20000 );
end






















-------------------------------------------------------------------------------
--[[
	기본 DoubleSwordAfterDash2 셋팅
	InitLua인자
	u32 uiNormalTime						::	현재 상태의 애미네이션 플레이 시간
	u32 uiDelayTime						::	NormalTime이 끝나고 난다음의 딜레이 유지 시간
	u32 uiMinimumSceneUpdateTime		::	현재 씬을 update하는 시간(frame) 주로 40을 유지하고 있음
	bool bOnlyVStateNormal				::	현재 상태가 점프시에도 사용가능한지의 여부를 설정함 ( true = 점프시에 공격이 가능하거나 가드가 가능 , false = 점프시 사용 불가 )
]]--
-------------------------------------------------------------------------------
--2 평타
function StandardDoubleSwordAfterDash2(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	-- STATE:SetMoveBoxMultiplier( 1.0 );	
	-- STATE:SetStealthCancel( true );
	-- STATE:SetHitStop( 410, 510 ) ;
	-- STATE:InitLua( 1000, 400, 40, true );
	
	-- local range = WEAPON:GetRange();
	
	-- Attack1 = CreateCAttack();
    -- Attack1:InitAttack1( WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_CRITICAL, 410, Power+AdditionalPower, AddtionalPower );
    -- Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range - 100 ), 1, 1, false  );
    -- Attack1:SetAlwaysCritical( true );
    -- AddAttack( ATTACKS, Attack1 );
    
    -- Attack2 = CreateCAttack();
    -- Attack2:InitAttack1( WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_ATTACK2, 410, Power+AdditionalPower, AddtionalPower );
    -- Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range*0.8, range*0.5, range*1.2 ), 1, 1, false  );        
	-- --Attack2:InitAttack2( MAKEFAN( MAKEVECTOR3(0,140,-50), MAKEVECTOR2(0,-1), range*0.7, range*0.25, range*0.8, 120 ), 1, 1, false  );
    -- Attack2:AddPushCondition( 100, 2000, -3000 );
    -- Attack2:SetCameraShakeEnable( true, true, 0 );
    -- Attack2:SetCameraShakeSetFactor1( 100, 50, 20 );
    -- Attack2:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
    -- Attack2:SetCameraShakeWhenSuccess( true );    
    -- AddAttack( ATTACKS, Attack2 );  

end


