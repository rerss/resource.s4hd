require "Resources/Script/ActorStates_Constants.lua"
-- 버스트 샷건 / 쇼크 웨이브 건 / 라이트 머신건

-------------------------------------------------------------------------------
--[[
	기본 SMG4 셋팅
	InitLua인자
	float fHeightOffset		=
	float fSideOffset0		=
	float fSideOffset1		=
	float fFrontOffset		=
	u32 uiAnimPlayTime		=
	u32 uiCoolTime			=
]]--
-------------------------------------------------------------------------------
--버스트 샷건
function StandardSmg4(  OneShotTime, Power, Accuracy, AdditionalPower ) 

	STATE:SetFrontOffset( 275 );
	STATE:InitLua( 260.0, 40.0, -40.0, 250.0, 750, 750 );

	Attack1 = CreateCAttack();
	Attack1:InitAttack1( WEAPONTYPE_SMG4, ATTACKATTRIB_SMG4, 150, (Power*0.2)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,-0.05*Accuracy,-1), RayDistanceLimit ), 1, 1, true );
    Attack1:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(-0.25*Accuracy,0.25*Accuracy,-1), RayDistanceLimit ) );
    Attack1:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0.25*Accuracy,0.25*Accuracy,-1), RayDistanceLimit ) );
    Attack1:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(-0.5*Accuracy,0.1*Accuracy,-1), RayDistanceLimit ) );
    Attack1:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0.5*Accuracy,0.1*Accuracy,-1), RayDistanceLimit ) );
    Attack1:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(-0.25*Accuracy,-0.4*Accuracy,-1), RayDistanceLimit ) );
    Attack1:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0.25*Accuracy,-0.4*Accuracy,-1), RayDistanceLimit ) );
    Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:SetCritical( 2.5, 0 );
    Attack1:SetConsumeAmmo( 1 );
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true );
    
    Attack1:AddPushCondition( 100, 5000, -7000 ); --100,3000,-6000
    -- CPushCondition( uiEffectLimitTime, fSpeedStart, fAccel )
                                -- 넉백 시간, 넉백 속도,  넉백 가속도
    AddAttack( ATTACKS, Attack1 );

	Attack1:SetDamageApplyType( 3 );    
    -- 기준거리를 셋팅
	Attack1:SetDistanceDamageLength( 5000 );
    Attack1:SetCheckBodyPartsByThickray( false );

    --
    Attack2 = CreateCAttack();
	Attack2:InitAttack1( WEAPONTYPE_SMG4, ATTACKATTRIB_SMG4, 150, (Power*0.2)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,-0.05*Accuracy,-1), RayDistanceLimit ), 1, 1, true );
    Attack2:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(-0.25*Accuracy,0.25*Accuracy,-1), RayDistanceLimit ) );
    Attack2:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0.25*Accuracy,0.25*Accuracy,-1), RayDistanceLimit ) );
    Attack2:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(-0.5*Accuracy,0.1*Accuracy,-1), RayDistanceLimit ) );
    Attack2:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0.5*Accuracy,0.1*Accuracy,-1), RayDistanceLimit ) );
    Attack2:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(-0.25*Accuracy,-0.4*Accuracy,-1), RayDistanceLimit ) );
    Attack2:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0.25*Accuracy,-0.4*Accuracy,-1), RayDistanceLimit ) );
    Attack2:SetCollisionRangeAdjust( false, false );
	Attack2:SetCritical( 2.5, 0 );
    Attack2:AddPushCondition( 150, 1000, -1875 ); --250, 750, -1875 
    AddAttack( ATTACKS, Attack2 );

	Attack2:SetDamageApplyType( 3 );    
    -- 기준거리를 셋팅
	Attack2:SetDistanceDamageLength( 5000 );
    Attack2:SetCheckBodyPartsByThickray( false );

    --
    Attack3 = CreateCAttack();
	Attack3:InitAttack1( WEAPONTYPE_SMG4, ATTACKATTRIB_SMG4, 150, (Power*0.2)+AdditionalPower, AddtionalPower );
    Attack3:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,-0.05*Accuracy,-1), RayDistanceLimit ), 1, 1, true );
    Attack3:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(-0.25*Accuracy,0.25*Accuracy,-1), RayDistanceLimit ) );
    Attack3:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0.25*Accuracy,0.25*Accuracy,-1), RayDistanceLimit ) );
    Attack3:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(-0.5*Accuracy,0.1*Accuracy,-1), RayDistanceLimit ) );
    Attack3:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0.5*Accuracy,0.1*Accuracy,-1), RayDistanceLimit ) );
    Attack3:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(-0.25*Accuracy,-0.4*Accuracy,-1), RayDistanceLimit ) );
    Attack3:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0.25*Accuracy,-0.4*Accuracy,-1), RayDistanceLimit ) );
    Attack3:SetCollisionRangeAdjust( false, false );
	Attack3:SetCritical( 2.5, 0 );
    Attack3:AddPushCondition( 150, 1000, -1875 );
    AddAttack( ATTACKS, Attack3 );

	Attack3:SetDamageApplyType( 3 );    
    -- 기준거리를 셋팅
	Attack3:SetDistanceDamageLength( 5000 );
    Attack3:SetCheckBodyPartsByThickray( false );

    --
    Attack4 = CreateCAttack();
	Attack4:InitAttack1( WEAPONTYPE_SMG4, ATTACKATTRIB_SMG4, 150, (Power*0.2)+AdditionalPower, AddtionalPower );
    Attack4:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,-0.05*Accuracy,-1), RayDistanceLimit ), 1, 1, true );
    Attack4:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(-0.25*Accuracy,0.25*Accuracy,-1), RayDistanceLimit ) );
    Attack4:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0.25*Accuracy,0.25*Accuracy,-1), RayDistanceLimit ) );
    Attack4:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(-0.5*Accuracy,0.1*Accuracy,-1), RayDistanceLimit ) );
    Attack4:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0.5*Accuracy,0.1*Accuracy,-1), RayDistanceLimit ) );
    Attack4:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(-0.25*Accuracy,-0.4*Accuracy,-1), RayDistanceLimit ) );
    Attack4:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0.25*Accuracy,-0.4*Accuracy,-1), RayDistanceLimit ) );
    Attack4:SetCollisionRangeAdjust( false, false );
	Attack4:SetCritical( 2.5, 0 );
    Attack4:AddPushCondition( 150, 1000, -1875 );
    AddAttack( ATTACKS, Attack4 );

	Attack4:SetDamageApplyType( 3 );    
    -- 기준거리를 셋팅
	Attack4:SetDistanceDamageLength( 5000 );
    Attack4:SetCheckBodyPartsByThickray( false );

     --
    Attack5 = CreateCAttack();
	Attack5:InitAttack1( WEAPONTYPE_SMG4, ATTACKATTRIB_SMG4, 150, (Power*0.2)+AdditionalPower, AddtionalPower );
    Attack5:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,-0.05*Accuracy,-1), RayDistanceLimit ), 1, 1, true );
    Attack5:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(-0.25*Accuracy,0.25*Accuracy,-1), RayDistanceLimit ) );
    Attack5:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0.25*Accuracy,0.25*Accuracy,-1), RayDistanceLimit ) );
    Attack5:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(-0.5*Accuracy,0.1*Accuracy,-1), RayDistanceLimit ) );
    Attack5:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0.5*Accuracy,0.1*Accuracy,-1), RayDistanceLimit ) );
    Attack5:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(-0.25*Accuracy,-0.4*Accuracy,-1), RayDistanceLimit ) );
    Attack5:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0.25*Accuracy,-0.4*Accuracy,-1), RayDistanceLimit ) );
    Attack5:SetCollisionRangeAdjust( false, false );
	Attack5:SetCritical( 2.5, 0 );
    Attack5:AddPushCondition( 150, 1000, -1875 ); --200, 750, -1875
    AddAttack( ATTACKS, Attack5 );

	Attack5:SetDamageApplyType( 3 );    
    -- 기준거리를 셋팅
	Attack5:SetDistanceDamageLength( 5000 );
    Attack5:SetCheckBodyPartsByThickray( false );


end

-------------------------------------------------------------------------------
--[[
	기본 SMG4 셋팅
	InitLua인자
	float fHeightOffset		=
	float fSideOffset0		=
	float fSideOffset1		=
	float fFrontOffset		=
	u32 uiAnimPlayTime		=
	u32 uiCoolTime			=
]]--
-------------------------------------------------------------------------------
--라이트 머신건
function StandardShockWave( OneShotTime, Power, Accuracy, AdditionalPower ) 

	-- (선딜,후딜, )
	STATE:InitLua( 0, 0, 0 ); -- 예열 시간 (원래값 750) ( 1200, 750, 1000 )
	STATE:SetCameraShake( true, 50, 70, 2.0, 2.0, 2.0, 1000, 1000 );
	-- 인자 설명
	-- 1. 흔들꺼냐?
	-- 2. Shake Time
	-- 3. 되돌아 오는 시간
	-- 4. Extent
	-- 5. Vert Speed 수평 이동 속도
	-- 6. Hori Speed 수직 이동 속도
	-- 7. 최소 거리
	-- 8. 최대 거리

	-- 집탄변화타입( 0:집탄변화없음, 1:설정한 방향대로 변화됨(Inner만 사용), 2:랜덤하게 변화됨(Inner, Outer사용) )
    -- 1로 설정할 때는 SetInnerAccuracyVary 함수의 세번째 파라미터인 최소값을 1보다 크게 설정하여야 한다.
    ACTORSTATE:SetGunSpreadType( 2 );

    --  변화값, 회복값, 최소값, 최대값
    -- SetGunSpreadType 함수를 1로 설정할 때는 SetInnerAccuracyVary 함수의 세번째 파라미터인 최소값을 1보다 크게 설정하여야 한다.
    ACTORSTATE:SetInnerAccuracyVary( 40, 0, 0, 1 ); -- 3차 원래 값(10,2,0,4) 2차 원래 값 (50,2,0,4), 원래 값 ( 30, 2,  0, 2 ) 2015/07/21( 20, 0, 2, 4 )

    --  변화값, 회복값, 최소값, 최대값
    ACTORSTATE:SetOuterAccuracyVary( 50, 0, 0, 1 ); -- 3차 원래 값(40,3,0,6) 2차 원래 값 (50,1,0,6), 원래 값 ( 35, 2,  0, 4 ) 2015/07/21( 20, 0, 2, 3 )

    -- 공격시 마우스 회전 비율 조정
    ACTORSTATE:SetMouseSensitivityRotate( 1 ); --0.4

	local ArrayDir = {};

	-- 안쪽 지정
	local index = 1;

	-- 변경해도 되는 값
	local AngleX = 1;     -- 증가시 옆으로 퍼짐
	local AngleZ = 72.0;    -- 증가시 회전 각도 커짐

	for index = 1, 110, 1 do
		ArrayDir[ index ] = MAKECVECTOR3( 0, 0, -1 );

		local   vDirTemp = ArrayDir[ index ];

        if index <= 20 then
            vDirTemp:RotateX( (index - 1) * AngleX );
            vDirTemp:RotateZ( ((index - 1) * AngleZ) * -1 );
		else
            vDirTemp:RotateX( ((index % 5) + 1) * AngleX );
            vDirTemp:RotateZ( ((index % 5) + 1) * AngleZ );
		end
	end

	-- 공격 생성
	local arrIndices = { 8, 9, 8, 7, 6, 5, 4, 3, 2, 1, 5, 9, 8, 7, 6, 5, 4, 3, 2, 1,
	                     8, 9, 8, 7, 6, 5, 4, 3, 2, 1, 5, 9, 8, 7, 6, 5, 4, 3, 2, 1,
                         8, 9, 8, 7, 6, 5, 4, 3, 2, 1, 5, 9, 8, 7, 6, 5, 4, 3, 2, 1,
                         8, 9, 8, 7, 6, 5, 4, 3, 2, 1, 5, 9, 8, 7, 6, 5, 4, 3, 2, 1,
                         8, 9, 8, 7, 6, 5, 4, 3, 2, 1, 5, 9, 8, 7, 6, 5, 4, 3, 2, 1,
                         8, 9, 8, 7, 6, 5, 4, 3, 2, 1, 5, 9, 8, 7, 6, 5, 4, 3, 2, 1,
                         8, 9, 8, 7, 6, 5, 4, 3, 2, 1, 5, 9, 8, 7, 6, 5, 4, 3, 2, 1,
                         8, 9, 8, 7, 6, 5, 4, 3, 2, 1, 5, 9, 8, 7, 6, 5, 4, 3, 2, 1,
                         8, 9, 8, 7, 6, 5, 4, 3, 2, 1, 5, 9, 8, 7, 6, 5, 4, 3, 2, 1,
                         8, 9, 8, 7, 6, 5, 4, 3, 2, 1, 5, 9, 8, 7, 6, 5, 4, 3, 2, 1,
                         8, 9, 8, 7, 6, 5, 4, 3, 2, 1, 5, 9, 8, 7, 6, 5, 4, 3, 2, 1,
                         8, 9, 8, 7, 6, 5, 4, 3, 2, 1, 5, 9, 8, 7, 6, 5, 4, 3, 2, 1,
                         80, 79, 78, 77, 76,
                         81, 82, 83, 84, 85,
                         90, 89, 88, 87, 86,
                         91, 92, 93, 94, 95,
                         100, 99, 98, 97, 96,
                         101, 102, 103, 104, 105,
                         110, 109, 108, 107, 106 };


	for index = 1, 110, 1 do
		local vDir = ArrayDir[ arrIndices[ index ] ];
        vDir:Multiply( Accuracy, Accuracy, 1.0 );
        vDir:Normalize();

		local fireTime  = (( index )*OneShotTime );  -- 공격 시간 [원래값 ( index )*OneShotTime]

        Attack = CreateCAttack();
        Attack:InitAttack1( WEAPONTYPE_TURRET, ATTACKATTRIB_CHAIN_LIGHT_GUN, fireTime, Power*1+AdditionalPower, AddtionalPower );
        Attack:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false );
        Attack:SetCollisionRangeAdjust( false, false );
		Attack:SetCritical( 2.5, 0 );
		Attack:SetConsumeAmmo( 1 );
        AddAttack( ATTACKS, Attack );
	end
end
