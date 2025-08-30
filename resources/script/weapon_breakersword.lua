require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------
--[[
	기본 BreakerSwordJumpDash 셋팅
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
function StandardBreakerJumpDash(  OneShotTime, Power, Accuracy, AdditionalPower )
	

	STATE:SetDrop( 200, MAKEVECTOR3( 0, -20000, 0 ) );	
	--STATE:SetDrop( 공격 중 멈춰있는 체공 시간, MAKEVECTOR3( 영향 받는 중력 값 ) );
	STATE:SetStealthCancel( true );	
	STATE:EnableCameraShake( true, false, 500 );	
	-- 어택 성공 시 카메라 쉐이크 여부 , 수치는 쉐이크 양
	STATE:SetCameraShakeFactor1( 200, 30, 20 );
	--( 흔들기시간, 회복시간, 확장 );
	STATE:SetCameraShakeFactor2( 60, 0, 2000, 3000 );
	--( 세로스피드, 가로스피드, 최소거리, 최대거리 );
	STATE:InitLua( 300, 550, 40, false );
	--공격 시간, 전체 시간
	
	local range = WEAPON:GetRange();
	
	Attack = CreateCAttack();
	--타격 박스 생성을 시작함
    Attack:InitAttack1( WEAPONTYPE_BREAKER, ATTACKATTRIB_BREAKER_SWORD_JUMPDASH, 250, (Power*1.0)+AdditionalPower, AdditionalPower ); --선딜 250
	--Attack:InitAttack1( 무기타입, 공격속성ID, 공격 시간(1000=1초), 데미지(보통 Powder+AdditionalPower 입력, 아이템에의한 추가데미지 );
	Attack:InitProximityWeapon( MAKEBOX( MAKEVECTOR3(0,250,-150), MAKEVECTOR3(0,0,-1), range*1.0, range*1.2, range*1.2 ), 1, 1,"HM017", false , 500, 1300 ); --타격감 개선 (20170526)     
	--Attack:InitAttack2( 충돌정보, 1, 1, 랜덤시드사용  );
	--근접 무기의 경우 MAKEBOX, 사격 무기의 경우 MAKERAY 사용
	--MAKEBOX : MAKEBOX( MAKEVECTOR3() = center, MAKEVECTOR3() = direction, width, height, lenght );
	--MAKERAY : MAKERAY( MAKEVECTOR3() = center, MAKEVECTOR3() = direction, length );
	--Attack:AddStunCondition( 500, 500, 0, 1000 ); --스턴효과 0.5초 추가 (20170531) 스턴 효과 삭제 (20170704)
    Attack:AddPushCondition( 100, 5000.0, -2000.0 );    --넉백
	--공격 피격 시 총 3가지의 상태 이상 중 1개를 넣을 수가 있다 . (블로우, 푸쉬, 스턴)
	-- Attack:AddBlowCondition( blow거리, blow높이 ); blow 속성을 추가한다. 높이 5000당 체공 시간 약 1000ms
    -- Attack:AddPushCondition( 적용시간, 시작속도, 액셀스피드 ); push 속성을 추가한다.( 액셀스피드를 음수값으로 설정해야 멈춤 )
	-- Attack:AddStunCondition( 최소시간, 최대시간, 최소거리, 최대거리 ); stun 속성을 추가한다.
    AddAttack( ATTACKS, Attack );
	--공격 선언을 하는 함수. 어택 정보 마지막에 꼭 넣어야 한다.
	
end





-------------------------------------------------------------------------------
--[[
	기본 BreakerSwordAfterDash1 셋팅
	InitLua인자
	u32 uiNormalTime						::	현재 상태의 애미네이션 플레이 시간
	u32 uiDelayTime						::	NormalTime이 끝나고 난다음의 딜레이 유지 시간
	u32 uiMinimumSceneUpdateTime		::	현재 씬을 update하는 시간(frame) 주로 40을 유지하고 있음
	bool bOnlyVStateNormal				::	현재 상태가 점프시에도 사용가능한지의 여부를 설정함 ( true = 점프시에 공격이 가능하거나 가드가 가능 , false = 점프시 사용 불가 )
]]--
-------------------------------------------------------------------------------
--첫 평타 공격
function StandardBreakerAfterDash1(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 1.0 ); 
	STATE:SetStealthCancel( true );	
	STATE:SetHitStop( 220, 320 );	
	--근접 무기 전용 함수, 입력 시 상대를 공격 성공 시 해당 시간만큼 프레임을 순간 끊어 출력한다. (타격감 주기 위한 용도)
	STATE:EnableCameraShake( true, false, 220 );
	STATE:SetCameraShakeFactor1( 200, 30, 20 );
	STATE:SetCameraShakeFactor2( 60, 0, 2000, 3000 );
	
	STATE:InitLua( 600, 500, 40, true );
	
	local range = WEAPON:GetRange();
	 	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_BREAKER, ATTACKATTRIB_BREAKER_SWORD_ATTACK1, 200, (Power*1.27)+AdditionalPower, AdditionalPower ); --공격력 수정 1.0 -> 1.5 (20170526) 
    --Attack1:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0,200,-100), range*1.0, range*0.8  ), 1, 1, false  );
	Attack1:InitProximityWeapon( MAKEBOX( MAKEVECTOR3(0,200,0), MAKEVECTOR3(0,0,-1), range*1.5, range*0.7, range*1.0 ), 1, 1, "HM001", false, 1000, 1500);     --타격감 개선 (20170526) 
    Attack1:AddBlowCondition( 2000, 1500 );     
    AddAttack( ATTACKS, Attack1 );

end


-------------------------------------------------------------------------------
--[[
	기본 StandardBreakerStandAttack_Strong 셋팅
	InitLua인자
	u32 uiNormalTime						::	현재 상태의 애미네이션 플레이 시간
	u32 uiDelayTime						::	NormalTime이 끝나고 난다음의 딜레이 유지 시간
	u32 uiMinimumSceneUpdateTime		::	현재 씬을 update하는 시간(frame) 주로 40을 유지하고 있음
	bool bOnlyVStateNormal				::	현재 상태가 점프시에도 사용가능한지의 여부를 설정함 ( true = 점프시에 공격이 가능하거나 가드가 가능 , false = 점프시 사용 불가 )	
]]--
-------------------------------------------------------------------------------
--첫 평타 공격
function StandardBreakerStandAttack_Strong(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 1.0 ); 
	STATE:SetStealthCancel( true );	
	STATE:SetHitStop( 220, 320 );	
	STATE:EnableCameraShake( true, false, 220 );
	STATE:SetCameraShakeFactor1( 200, 30, 20 );
	STATE:SetCameraShakeFactor2( 60, 0, 2000, 3000 );
	
	STATE:InitLua( 600, 500, 40, true );
	
	local range = WEAPON:GetRange();
	 	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_BREAKER, ATTACKATTRIB_BREAKER_SWORD_ATTACK1, 200, (Power*1.27)+AdditionalPower, AdditionalPower ); --공격력 수정 1.0 -> 1.5 (20170526)
    --Attack1:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0,200,-100), range*1.0, range*0.8  ), 1, 1, false  );
	Attack1:InitProximityWeapon( MAKEBOX( MAKEVECTOR3(0,200,0), MAKEVECTOR3(0,0,-1), range*1.5, range*0.7, range*1.0 ), 1, 1, "HM001", false, 1000, 1500);     --타격감 개선 (20170526) 
    Attack1:AddBlowCondition( 2000, 1500 );     
    AddAttack( ATTACKS, Attack1 );

end

-------------------------------------------------------------------------------
--[[
	기본 BreakerSwordGatherGuage 셋팅
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
function StandardBreakerGatherGuage(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveSpeedRate( 0.7 );	
	STATE:SetStealthCancel( true );
	STATE:SetHitStop( 150, 300 ) ;
	STATE:SetMoveBoxMultiplier( 2.0 );	
	

	--[[ 현재 상태로 들어갈수 있는 최소 sp 설정 ]]--
	STATE:SetStateMinSp( 0 );
	--차지 무기 등에서 사용하는 특정 구간 도임 시 SP가 소모되게 처리
	STATE:SetChargeTimer( false );
	--차지 관련 타이머, True일 시 차지가 완료되자마자 즉시 차지 공격이 발동된다.
	
	STATE:InitLua( 40, 0, 900, false, true, 0 );
	STATE:InitLuaInputSecond( 0, 0, 0, "HM_DMGeffect_Dummy", "" );

end







-------------------------------------------------------------------------------
--[[
	기본 BreakerSwordAfterDash4 셋팅
	InitLua인자
	u32 uiNormalTime						::	현재 상태의 애미네이션 플레이 시간
	u32 uiDelayTime						::	NormalTime이 끝나고 난다음의 딜레이 유지 시간
	u32 uiMinimumSceneUpdateTime		::	현재 씬을 update하는 시간(frame) 주로 40을 유지하고 있음
	bool bOnlyVStateNormal				::	현재 상태가 점프시에도 사용가능한지의 여부를 설정함 ( true = 점프시에 공격이 가능하거나 가드가 가능 , false = 점프시 사용 불가 )
]]--
-------------------------------------------------------------------------------
--광역 공격
function StandardBreakerAfterDash4(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetDrop( 400, MAKEVECTOR3( 0, -10000, 0 ) );
	STATE:SetMoveBoxMultiplier( 1.0 );	
	STATE:SetStealthCancel( true );
	STATE:SetHitStop( 600, 700 ) ;
	STATE:SetCheckChargeAttack( true ) ;
	STATE:SetSettingChargeTime( true ) ;
	STATE:EnableCameraShake( true, false, 560 );
	STATE:SetCameraShakeFactor1( 300, 50, 60 );
	STATE:SetCameraShakeFactor2( 60, 0, 2000, 3000 );	
		
	
	STATE:InitLua( "", "", 800, 1000, 40, false , 2000 );
		
	--[[ 현재 쌍검에서 사용할 소모 sp 설정 ]]--
	STATE:SetSpendSp( 50 );
	
	local range = WEAPON:GetRange();
	
    Attack1 = CreateCAttack();
	Attack1:InitAttack1( WEAPONTYPE_BREAKER, ATTACKATTRIB_BREAKER_SWORD_ATTACK4, 600, (Power*0.8)+AdditionalPower, AdditionalPower ); --power 값 적용 안됨
	Attack1:InitProximityWeapon( MAKEBOX( MAKEVECTOR3(0,200,-100), MAKEVECTOR3(0,0,-1), range*1.5, range*1.2, range*1.7 ), 1, 1, "HM004", false, 5400, 5800  );
    --Attack1:AddPushCondition( 100, 2000, -5000 ); 
	--Attack1:AddPushCondition( 1500, 900, -10 );
	Attack1:AddStunCondition( 500, 500, 0, 1000 );
	Attack1:SetFullCharge( false );	
    AddAttack( ATTACKS, Attack1 );  
	
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_BREAKER, ATTACKATTRIB_BREAKER_SWORD_ATTACK4, 600, (Power*0.8)+AdditionalPower, AdditionalPower ); --power 값 적용 안됨
	Attack2:InitProximityWeapon( MAKEBOX( MAKEVECTOR3(0,200,-100), MAKEVECTOR3(0,0,-1), range*2.0, range*0.6, range*2.0), 1, 1, "HM004" ,false, 5400, 5800  );
	--Attack2:AddPushCondition( 200, 5000.0, -2000.0 );
	Attack2:AddStunCondition( 1500, 1500, 0, 1000 );
	Attack2:SetFullCharge( true );	
    AddAttack( ATTACKS, Attack2 );  
	
	

end


-------------------------------------------------------------------------------
--[[
	기본 BreakerSwordAfterDash5 셋팅
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
function StandardBreakerAfterDash5(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveSpeedRate( 0.85 );	
	STATE:SetStealthCancel( true );
	STATE:SetHitStop( 150, 300 ) ;
	STATE:SetMoveBoxMultiplier( 2.0 );	
	
	--[[ 현재 상태로 들어갈수 있는 최소 sp 설정 ]]--
	STATE:SetStateMinSp( 50 );
	STATE:SetChargeTimer( true );
	
	STATE:InitLua( 40, 0, 2000, false, true, 3 );
	STATE:InitLuaInputSecond( 2000, 0, 0, "HM_DMGeffect_Dummy", "" );
	
end

