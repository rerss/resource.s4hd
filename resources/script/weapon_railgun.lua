require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------
--[[
	기본 레일건 셋팅
	InitLua인자
	u32 uBeginTime				=
	u32 uShootTime				=
	u32 uMaxChargeTime			=
	SVector3 vShotOrigin		=
	float fShotOriginFront		=
	bool bSettingAimedPoint		=	조준점을 Attack의 center로 지정한다. 캐노네이드에서 사용됨
	u32 uiCoolTime				= 
]]--
-------------------------------------------------------------------------------
function StandardRailgun(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetFrontOffset( 275 );
	STATE:InitLua( 0, 650, 1000, MAKEVECTOR3( 50, 280, 0 ), 250, false, 650 );
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_RIFLE, ATTACKATTRIB_AIMED_SHOT, 100, 1, 1 );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );
    Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:SetCritical( 2.5, 0 );
	Attack1:AddBlowCondition( 2000.0, 2000.0 );
    Attack1:SetGhostCalcCollisionRange( true );
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 30 );
    Attack1:SetCameraShakeSetFactor2( 0.0, 30.0, 2000.0, 3000.0 );
    AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_RIFLE, ATTACKATTRIB_AIMED_SHOT_2, 100, 1, 1 );
    Attack2:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );
    Attack2:SetCollisionRangeAdjust( false, false );
    Attack2:SetGhostCalcCollisionRange( true );
	Attack2:SetCritical( 2.5, 0 );
    Attack2:AddBlowCondition( 2000.0, 2000.0 );
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 100, 50, 50 );
    Attack2:SetCameraShakeSetFactor2( 0.0, 50.0, 2000.0, 3000.0 );
	 -- 정진수 레일건 수정 이동속도 저하
	 -- 라이트닝 봄버 MK2 콘디션 추가.
	 -- Param1 : 콘디션 지속 시간 ( 1000 = 1초 )
	 -- Param2 : 이동 속도 비율 ( 1 = 100% )
	-- 레일건 관통시 데미지감소(예: 관통당 30% 감소)
	Attack2:SetPiercingReduceRate(30.0);
	
    AddAttack( ATTACKS, Attack2 );   

end

-- 레일건 개선 우클릭후 왼쪽클릭 어택
function StandardRailgunCharge(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetFrontOffset( 275 );
	STATE:InitLua( 0, 650, 1000, MAKEVECTOR3( 50, 280, 0 ), 250, false, 650 );
 	 
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_RIFLE, ATTACKATTRIB_AIMED_SHOT, 100, 1, 1 );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );
    Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:SetCritical( 2.5, 15 );
    Attack1:SetGhostCalcCollisionRange( true );
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 30 );
    Attack1:SetCameraShakeSetFactor2( 0.0, 30.0, 2000.0, 3000.0 );
    AddAttack( ATTACKS, Attack1 );
  	  
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_RIFLE, ATTACKATTRIB_AIMED_SHOT_2, 100, 1, 1 );
    Attack2:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );
    Attack2:SetCollisionRangeAdjust( false, false );
    Attack2:SetGhostCalcCollisionRange( true );
	Attack2:SetCritical( 2.5, 15 );
    --Attack2:AddBlowCondition( 3000.0, 2000.0 );
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 100, 50, 50 );
    Attack2:SetCameraShakeSetFactor2( 0.0, 50.0, 2000.0, 3000.0 );
	 -- 정진수 레일건 수정 이동속도 저하
	 -- 라이트닝 봄버 MK2 콘디션 추가.
	 -- Param1 : 콘디션 지속 시간 ( 1000 = 1초 )
	 -- Param2 : 이동 속도 비율 ( 1 = 100% )
  	Attack2:AddMoveSpeedCondition(2500, 0.5); -- 슬로우 효과 추가 (20170704)
	-- 레일건 관통시 데미지감소(예: 관통당 30% 감소)
	Attack2:SetPiercingReduceRate(30.0);
	
    AddAttack( ATTACKS, Attack2 );   

end

function StandardRailgun2(  OneShotTime, Power, Accuracy, AdditionalPower )
	-- 신규 저격 무기 
	
	STATE:SetFrontOffset( 275 );
	STATE:InitLua( 0, 1000, 150, MAKEVECTOR3( 50, 280, 0 ), 250, 1000 );
	--선딜(사용무), 총 쏘는 시간(공격 시간), 공격 선딜(공격 상태 들어가는 시간), MAKEVECTOR3, 발사위치(특별히 조정 x), 공격 쿨타임) 
	 
	ACTORSTATE:SetGunSpreadType( 2 );
    
    --  변화값, 회복값, 최소값, 최대값
    -- SetGunSpreadType 함수를 1로 설정할 때는 SetInnerAccuracyVary 함수의 세번째 파라미터인 최소값을 1보다 크게 설정하여야 한다.
    ACTORSTATE:SetInnerAccuracyVary( 30, 2,  0, 2 );
    
    --  변화값, 회복값, 최소값, 최대값
    ACTORSTATE:SetOuterAccuracyVary( 35, 2,  0, 4 );
	 
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_STANDARD_RAILGUN, ATTACKATTRIB_STANDARD_AIMED_SHOT, 0, (Power*0.5)+AdditionalPower, AddtionalPower );
    --Attack1:InitAttack2(  MAKETHICKRAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,Accuracy,-1), 50, RayDistanceLimit ), 1, 1, false   );
	Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,Accuracy,-1), RayDistanceLimit ), 1, 1, false  );
	Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:SetGhostCalcCollisionRange( true );
	Attack1:SetCritical( 2.5, 0 );
	Attack1:AddPushCondition( 200, 2000.0, -5000.0 );
    Attack1:SetCameraShakeEnable( true, true, 0 );
	Attack1:SetCameraShakeSetFactor1( 50, 25, 30 );
    Attack1:SetCameraShakeSetFactor2( 0.0, 50.0, 2000.0, 3000.0 );
    AddAttack( ATTACKS, Attack1 );
    
end

function StandardZoomIn( OneShotTime, Power, Accuracy, AdditionalPower ) --샤프슈터 반자동

	STATE:InitLua( 0, 700, MAKEVECTOR3( 50, 280, 0 ), false, 1500 );
	--줌인 상태 들어가는 선 딜(총 돌리기), 공격 시간, MAKEVECTOR3(발사위치) , FALSE(사용x), 공격 쿨타임(사용 x)
	
	STATE:SetDistZoom( true, -200 );
	--330
	
	STATE:SetSnipeAimControl( true, 300, 1000 );
	--true, 400, 1000
	
	STATE:SetCamHeight( true, -110 );
	ACTORSTATE:SetMouseSensitivityRotate( 0.8 );
	
	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_STANDARD_RAILGUN, ATTACKATTRIB_STANDARD_AIMED_SHOT_2, 0, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,Accuracy,-1), RayDistanceLimit ), 1, 1, false  );
	Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:SetGhostCalcCollisionRange( true );
	Attack1:SetCritical( 2.5, 0 );
    --Attack1:AddBlowCondition( 3000.0, 2000.0 );
	Attack1:AddPushCondition( 200, 2000.0, -5000.0 );
    Attack1:SetCameraShakeEnable( true, true, 0 );
	Attack1:SetCameraShakeSetFactor1( 100, 50, 100 );
    Attack1:SetCameraShakeSetFactor2( 100.0, 0.0, 2000.0, 3000.0 );
	--Attack1:SetCameraShakeSetFactor2( 50.0, 0.0, 2000.0, 3000.0 );
	--Attack1:SetCheckBodyPartsByThickray( false ); --2015/07/24 크리티컬 오류로 주석처리 -권동환
	--Attack1:SetCritical( 0.57, 100 );--2015/07/24 크리티컬 오류로 주석처리 -권동환
	
    AddAttack( ATTACKS, Attack1 ); 
	
end

function StandardZoomIn2( OneShotTime, Power, Accuracy, AdditionalPower ) --샤프슈터 볼트 액션

	STATE:InitLua( 500, 400, MAKEVECTOR3( 50, 280, 0 ), false, 1500 );
	
	STATE:SetDistZoom( true, -200 );
	--330
	
	STATE:SetSnipeAimControl( true, 300, 1800 );
	----줌인 시 카메라가 이동되는 최대 크기, 속도
	
	STATE:SetCamHeight( true, -110 );
	ACTORSTATE:SetMouseSensitivityRotate( 0.8 );
	
	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_STANDARD_RAILGUN, ATTACKATTRIB_STANDARD_AIMED_SHOT_2, 0, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,Accuracy,-1), RayDistanceLimit ), 1, 1, false  );
	Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:SetCritical( 2.5, 0 );
	Attack1:SetGhostCalcCollisionRange( true );
    Attack1:AddBlowCondition( 3000.0, 2000.0 );
    Attack1:SetCameraShakeEnable( true, true, 0 );
	Attack1:SetCameraShakeSetFactor1( 100, 50, 100 );
    Attack1:SetCameraShakeSetFactor2( 100.0, 0.0, 2000.0, 3000.0 );
	--Attack1:SetCameraShakeSetFactor2( 50.0, 0.0, 2000.0, 3000.0 );
	--Attack1:SetCheckBodyPartsByThickray( false );--2015/07/24 크리티컬 오류로 주석처리 -권동환
	--Attack1:SetCritical( 0.57, 100 );--2015/07/24 크리티컬 오류로 주석처리 -권동환
    AddAttack( ATTACKS, Attack1 ); 
	
end


-------------------------------------------------------------------------------
-- 신규무기 레일건 유니크 마틴스틱
-------------------------------------------------------------------------------

function StandardRailUniqueMarkTinStick(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetFrontOffset( 275 );
	STATE:InitLua( 0, 650, 1000, MAKEVECTOR3( 50, 280, 0 ), 250, false, 650 );
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONYTPE_RAIL_MARTINSTICK, ATTACKATTRIB_RAIL_MARTINSTICK, 100, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );
    Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:SetCritical( 2.5, 0 );
	Attack1:AddBlowCondition( 2000.0, 2000.0 );
    Attack1:SetGhostCalcCollisionRange( true );
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 30 );
    Attack1:SetCameraShakeSetFactor2( 0.0, 30.0, 2000.0, 3000.0 );
    AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONYTPE_RAIL_MARTINSTICK, ATTACKATTRIB_RAIL_MARTINSTICK_2, 100, Power+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );
    Attack2:SetCollisionRangeAdjust( false, false );
	Attack2:SetCritical( 2.5, 0 );
	Attack2:AddBlowCondition( 2000.0, 2000.0 );
    Attack2:SetGhostCalcCollisionRange( true );
    --Attack2:AddBlowCondition( 3000.0, 2000.0 );
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 100, 50, 50 );
    Attack2:SetCameraShakeSetFactor2( 0.0, 50.0, 2000.0, 3000.0 );
	 -- 정진수 레일건 수정 이동속도 저하
	 -- 라이트닝 봄버 MK2 콘디션 추가.
	 -- Param1 : 콘디션 지속 시간 ( 1000 = 1초 )
	 -- Param2 : 이동 속도 비율 ( 1 = 100% )
	-- 레일건 관통시 데미지감소(예: 관통당 30% 감소)
	Attack2:SetPiercingReduceRate(30.0);
	
    AddAttack( ATTACKS, Attack2 );   

end

-------------------------------------------------------------------------------
-- 신규무기 레일건 유니크 마틴스틱 차징 공격
-------------------------------------------------------------------------------

function StandardRailUniqueMarkTinStickCharge(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetFrontOffset( 275 );
	STATE:InitLua( 0, 650, 1000, MAKEVECTOR3( 50, 280, 0 ), 250, false, 650 );
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONYTPE_RAIL_MARTINSTICK, ATTACKATTRIB_RAIL_MARTINSTICK, 100, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );
    Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:SetCritical( 2.5, 15 );
    Attack1:SetGhostCalcCollisionRange( true );
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 30 );
    Attack1:SetCameraShakeSetFactor2( 0.0, 30.0, 2000.0, 3000.0 );
    AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONYTPE_RAIL_MARTINSTICK, ATTACKATTRIB_RAIL_MARTINSTICK_2, 100, Power+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );
    Attack2:SetCollisionRangeAdjust( false, false );
	Attack2:SetCritical( 2.5, 15 );
    Attack2:SetGhostCalcCollisionRange( true );
    --Attack2:AddBlowCondition( 3000.0, 2000.0 );
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 100, 50, 50 );
    Attack2:SetCameraShakeSetFactor2( 0.0, 50.0, 2000.0, 3000.0 );
	 -- 정진수 레일건 수정 이동속도 저하ww
	 -- 라이트닝 봄버 MK2 콘디션 추가.
	 -- Param1 : 콘디션 지속 시간 ( 1000 = 1초 )
	 -- Param2 : 이동 속도 비율 ( 1 = 100% )
 	Attack2:AddMoveSpeedCondition(2500, 0.5); -- 슬로우 효과 추가 (20170704)
	-- 레일건 관통시 데미지감소(예: 관통당 30% 감소)
	Attack2:SetPiercingReduceRate(30.0);
	
    AddAttack( ATTACKS, Attack2 );   

end
