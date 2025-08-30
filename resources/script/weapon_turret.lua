

require "Resources/Script/ActorStates_Constants.lua"

-- InitLua( u32 uiBeginTime, u32 uiEndTime, u32 uiMisFiringChangeStateTime )

function Standardturret( OneShotTime, Power, Accuracy, AdditionalPower )

	-- (선딜,후딜, )
	STATE:InitLua( 800, 750, 1000 ); -- 예열 시간 (원래값 750) ( 1200, 750, 1000 )
	
	
	local AngleInside		= 15.0;
	local AngleMiddle		= 30.0;
	local AngleOutside		= 45.0;

	local ArrayDir		= {};	
	
	-- 안쪽 지정
	local vInnerPoint		= MAKECVECTOR3( 0,0,-1 );
	vInnerPoint:RotateY( AngleInside );
	
	ArrayDir[1]		= vInnerPoint;
	local index		= 1;
	
	for index = 1, 3, 1 do
		vInnerPoint:RotateZ( 90 );
		ArrayDir[ index + 1 ] = MAKECVECTOR3( vInnerPoint:GetX(), vInnerPoint:GetY(), vInnerPoint:GetZ() );
	end
	
	-- 중간 지정
	local vMiddlePoint	= MAKECVECTOR3( 0,0,-1 );
	vMiddlePoint:RotateY( AngleMiddle );
	
	ArrayDir[5]		= vMiddlePoint;
	
	for index = 1, 7, 1 do
		vMiddlePoint:RotateZ( 45 );
		ArrayDir[ index + 5 ] = MAKECVECTOR3( vMiddlePoint:GetX(), vMiddlePoint:GetY(), vMiddlePoint:GetZ() );
	end
	
	
	-- 외곽 지정
	local vOutsidePoint	= MAKECVECTOR3( 0,0,-1 );
	vOutsidePoint:RotateY( AngleOutside );
	
	ArrayDir[13]		= vOutsidePoint;
	
	for index = 1, 7, 1 do
		vOutsidePoint:RotateZ( 45 );
		ArrayDir[ index + 13 ] =  MAKECVECTOR3( vOutsidePoint:GetX(), vOutsidePoint:GetY(), vOutsidePoint:GetZ() );
	end
	
	
	-- 공격 생성
	
	local arrIndices	= { 2, 6, 3, 14, 10, 4, 20, 7, 17, 5, 8, 15, 9, 11, 12, 1, 13, 16, 18, 19 };
	
	math.randomseed( os.time() );
	
	for index = 1, 20, 1 do
		local vDir = ArrayDir[ arrIndices[ index ] ];
		vDir:Multiply( Accuracy, Accuracy, 1.0 );
		vDir:Normalize();		
		
		local value = math.random( 1, 1000 );
		local fireTime = ( ( index )*OneShotTime );  -- 공격 시간 [원래값 ( index )*OneShotTime]
		
		if value < 334  then
			Attack = CreateCAttack();
		    Attack:InitAttack1( WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_NORMAL, fireTime, Power*0.5+AdditionalPower, AddtionalPower ); 
		    Attack:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack:SetCollisionRangeAdjust( false, false );
			Attack:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack );
		elseif value < 667 then
			Attack1 = CreateCAttack();
		    Attack1:InitAttack1( WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_NORMAL, fireTime, Power*0.5+AdditionalPower, AddtionalPower );
		    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack1:SetCollisionRangeAdjust( false, false );
			Attack1:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack1 );
		else
			Attack2 = CreateCAttack();
		    Attack2:InitAttack1( WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_NORMAL, fireTime, Power*0.5+AdditionalPower, AddtionalPower );
		    Attack2:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack2:SetCollisionRangeAdjust( false, false );
			Attack2:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack2 );
		end
		
	end

end

-- InitLua( u32 uiBeginTime, u32 uiEndTime, u32 uiMisFiringChangeStateTime )

function Standardturret_MK2( OneShotTime, Power, Accuracy, AdditionalPower )

	-- (선딜,후딜, )
	STATE:InitLua( 1200, 750, 1000 ); -- 예열 시간 (원래값 750) ( 1200, 750, 1000 )
	
	
	local AngleInside		= 15.0;
	local AngleMiddle		= 30.0;
	local AngleOutside		= 45.0;

	local ArrayDir		= {};	
	
	-- 안쪽 지정
	local vInnerPoint		= MAKECVECTOR3( 0,0,-1 );
	vInnerPoint:RotateY( AngleInside );
	
	ArrayDir[1]		= vInnerPoint;
	local index		= 1;
	
	for index = 1, 3, 1 do
		vInnerPoint:RotateZ( 90 );
		ArrayDir[ index + 1 ] = MAKECVECTOR3( vInnerPoint:GetX(), vInnerPoint:GetY(), vInnerPoint:GetZ() );
	end
	
	-- 중간 지정
	local vMiddlePoint	= MAKECVECTOR3( 0,0,-1 );
	vMiddlePoint:RotateY( AngleMiddle );
	
	ArrayDir[5]		= vMiddlePoint;
	
	for index = 1, 7, 1 do
		vMiddlePoint:RotateZ( 45 );
		ArrayDir[ index + 5 ] = MAKECVECTOR3( vMiddlePoint:GetX(), vMiddlePoint:GetY(), vMiddlePoint:GetZ() );
	end
	
	
	-- 외곽 지정
	local vOutsidePoint	= MAKECVECTOR3( 0,0,-1 );
	vOutsidePoint:RotateY( AngleOutside );
	
	ArrayDir[13]		= vOutsidePoint;
	
	for index = 1, 7, 1 do
		vOutsidePoint:RotateZ( 45 );
		ArrayDir[ index + 13 ] =  MAKECVECTOR3( vOutsidePoint:GetX(), vOutsidePoint:GetY(), vOutsidePoint:GetZ() );
	end
	
	
	-- 공격 생성
	
	local arrIndices	= { 2, 6, 3, 14, 10, 4, 20, 7, 17, 5, 8, 15, 9, 11, 12, 1, 13, 16, 18, 19 };
	
	math.randomseed( os.time() );
	
	for index = 1, 20, 1 do
		local vDir = ArrayDir[ arrIndices[ index ] ];
		vDir:Multiply( Accuracy, Accuracy, 1.0 );
		vDir:Normalize();		
		
		local value = math.random( 1, 1000 );
		local fireTime = ( ( index )*OneShotTime );  -- 공격 시간 [원래값 ( index )*OneShotTime]
		
		if value < 334  then
			Attack = CreateCAttack();
		    Attack:InitAttack1( WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_NORMAL, fireTime, Power*0.5+AdditionalPower, AddtionalPower ); 
		    Attack:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack:SetCollisionRangeAdjust( false, false );
			Attack:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack );
		elseif value < 667 then
			Attack1 = CreateCAttack();
		    Attack1:InitAttack1( WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_NORMAL, fireTime, Power*0.5+AdditionalPower, AddtionalPower );
		    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack1:SetCollisionRangeAdjust( false, false );
			Attack1:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack1 );
		else
			Attack2 = CreateCAttack();
		    Attack2:InitAttack1( WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_NORMAL, fireTime, Power*0.5+AdditionalPower, AddtionalPower );
		    Attack2:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack2:SetCollisionRangeAdjust( false, false );
			Attack2:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack2 );
		end
		
	end

end



------------------------------------
-- InitLua( u32 uiBeginTime, u32 uiEndTime, u32 uiMisFiringChangeStateTime )

function StandardturretInstall( OneShotTime, Power, Accuracy, AdditionalPower )

	
	STATE:InitLua( 200, 300, 200);			-- oneShotTime = 선딜 (처음 값 750) ( 200, 750, 1500)
	
	
	-- 카메라 쉐이킹
	--  bUse(true/false),  uiShakeTime(50),  uiRestoreTime(100)_회복, fExtent(2.5)_크기,   fVertSpeed(2.5)_수직,  fHoriSpeed(3.5)_수평, fMinDist(500)앞,  fMaxDist(1000)뒤 
	STATE:SetCameraShake( true, 50, 100, 7, 2.5, 3.5, 500, 1000 );  -- ( true, 50, 100, 2.5, 2.5, 3.5, 500, 1000 )
	
	
	-- 집탄변화타입( 0:집탄변화없음, 1:설정한 방향대로 변화됨(Inner만 사용), 2:랜덤하게 변화됨(Inner, Outer사용) )
    -- 1로 설정할 때는 SetInnerAccuracyVary 함수의 세번째 파라미터인 최소값을 1보다 크게 설정하여야 한다.
    ACTORSTATE:SetGunSpreadType( 2 );
    
    --  변화값, 회복값, 최소값, 최대값
    -- SetGunSpreadType 함수를 1로 설정할 때는 SetInnerAccuracyVary 함수의 세번째 파라미터인 최소값을 1보다 크게 설정하여야 한다.
    ACTORSTATE:SetInnerAccuracyVary( 20, 1.5,  0, 1 );  -- 3차 값(20,2,0,1) 2차 원래 값(20,3,0,1), 원래 값 ( 30, 2,  0, 2 )
    
    --  변화값, 회복값, 최소값, 최대값
    ACTORSTATE:SetOuterAccuracyVary( 35, 5,  0, 2 ); -- 3차 값(35,5,0,2) 2차 원래 값(30,4,0,2) , 원래 값 ( 35, 2,  0, 4 )
	
	-- 공격시 마우스 회전 비율 조정(숫자가 낮을 수록 느림)  기본 (0.05 -> 0.1)
     ACTORSTATE:SetMouseSensitivityRotate( 0.3 );
	
	
	local AngleInside		= 15.0;
	local AngleMiddle		= 30.0;
	local AngleOutside		= 45.0;

	local ArrayDir		= {};	
	
	-- 안쪽 지정
	local vInnerPoint		= MAKECVECTOR3( 0,0,-1 );
	vInnerPoint:RotateY( AngleInside );
	
	ArrayDir[1]		= vInnerPoint;
	local index		= 1;
	
	for index = 1, 3, 1 do
		vInnerPoint:RotateZ( 90 );
		ArrayDir[ index + 1 ] = MAKECVECTOR3( vInnerPoint:GetX(), vInnerPoint:GetY(), vInnerPoint:GetZ() );
	end
	
	-- 중간 지정
	local vMiddlePoint	= MAKECVECTOR3( 0,0,-1 );
	vMiddlePoint:RotateY( AngleMiddle );
	
	ArrayDir[5]		= vMiddlePoint;
	
	for index = 1, 7, 1 do
		vMiddlePoint:RotateZ( 45 );
		ArrayDir[ index + 5 ] = MAKECVECTOR3( vMiddlePoint:GetX(), vMiddlePoint:GetY(), vMiddlePoint:GetZ() );
	end
	
	
	-- 외곽 지정
	local vOutsidePoint	= MAKECVECTOR3( 0,0,-1 );
	vOutsidePoint:RotateY( AngleOutside );
	
	ArrayDir[13]		= vOutsidePoint;
	
	for index = 1, 7, 1 do
		vOutsidePoint:RotateZ( 45 );
		ArrayDir[ index + 13 ] =  MAKECVECTOR3( vOutsidePoint:GetX(), vOutsidePoint:GetY(), vOutsidePoint:GetZ() );
	end
	
	
	-- 공격 생성
	
	local arrIndices	= { 2, 6, 3, 14, 10, 4, 20, 7, 17, 5, 8, 15, 9, 11, 12, 1, 13, 16, 18, 19 };
	
	math.randomseed( os.time() );
	
	for index = 1, 20, 1 do
		local vDir = ArrayDir[ arrIndices[ index ] ];
		vDir:Multiply( Accuracy, Accuracy, 1.0 );
		vDir:Normalize();		
		
		local value = math.random( 1, 1000 );
		local fireTime = ( ( index )*OneShotTime );
		
		if value < 334  then
			Attack = CreateCAttack();
		    Attack:InitAttack1( WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_INSTALL, fireTime, Power+AdditionalPower, AddtionalPower );
		    Attack:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack:SetCollisionRangeAdjust( false, false );
			Attack:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack );
		elseif value < 667 then
			Attack1 = CreateCAttack();
		    Attack1:InitAttack1( WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_INSTALL, fireTime, Power+AdditionalPower, AddtionalPower );
		    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack1:SetCollisionRangeAdjust( false, false );
			Attack1:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack1 );
		else
			Attack2 = CreateCAttack();
		    Attack2:InitAttack1( WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_INSTALL, fireTime, Power+AdditionalPower, AddtionalPower );
		    Attack2:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack2:SetCollisionRangeAdjust( false, false );
			Attack2:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack2 );
		end
		
	end

end


-- InitLua( u32 uiBeginTime, u32 uiEndTime, u32 uiMisFiringChangeStateTime )

function StandardturretInstall_MK2( OneShotTime, Power, Accuracy, AdditionalPower )

	
	STATE:InitLua( 200, 300, 200);			-- oneShotTime = 선딜 (처음 값 750) ( 200, 750, 1500)
	
	
	-- 카메라 쉐이킹
	--  bUse(true/false),  uiShakeTime(50),  uiRestoreTime(100)_회복, fExtent(2.5)_크기,   fVertSpeed(2.5)_수직,  fHoriSpeed(3.5)_수평, fMinDist(500)앞,  fMaxDist(1000)뒤 
	STATE:SetCameraShake( true, 50, 100, 7, 2.5, 3.5, 500, 1000 );  -- ( true, 50, 100, 2.5, 2.5, 3.5, 500, 1000 )
	
	
	-- 집탄변화타입( 0:집탄변화없음, 1:설정한 방향대로 변화됨(Inner만 사용), 2:랜덤하게 변화됨(Inner, Outer사용) )
    -- 1로 설정할 때는 SetInnerAccuracyVary 함수의 세번째 파라미터인 최소값을 1보다 크게 설정하여야 한다.
    ACTORSTATE:SetGunSpreadType( 2 );
    
    --  변화값, 회복값, 최소값, 최대값
    -- SetGunSpreadType 함수를 1로 설정할 때는 SetInnerAccuracyVary 함수의 세번째 파라미터인 최소값을 1보다 크게 설정하여야 한다.
    ACTORSTATE:SetInnerAccuracyVary( 20, 1.5,  0, 1 );  -- 3차 값(20,2,0,1) 2차 원래 값(20,3,0,1), 원래 값 ( 30, 2,  0, 2 )
    
    --  변화값, 회복값, 최소값, 최대값
    ACTORSTATE:SetOuterAccuracyVary( 35, 5,  0, 2 ); -- 3차 값(35,5,0,2) 2차 원래 값(30,4,0,2) , 원래 값 ( 35, 2,  0, 4 )
	
	-- 공격시 마우스 회전 비율 조정(숫자가 낮을 수록 느림)  기본 (0.05 -> 0.1)
     ACTORSTATE:SetMouseSensitivityRotate( 0.3 );
	
	
	local AngleInside		= 15.0;
	local AngleMiddle		= 30.0;
	local AngleOutside		= 45.0;

	local ArrayDir		= {};	
	
	-- 안쪽 지정
	local vInnerPoint		= MAKECVECTOR3( 0,0,-1 );
	vInnerPoint:RotateY( AngleInside );
	
	ArrayDir[1]		= vInnerPoint;
	local index		= 1;
	
	for index = 1, 3, 1 do
		vInnerPoint:RotateZ( 90 );
		ArrayDir[ index + 1 ] = MAKECVECTOR3( vInnerPoint:GetX(), vInnerPoint:GetY(), vInnerPoint:GetZ() );
	end
	
	-- 중간 지정
	local vMiddlePoint	= MAKECVECTOR3( 0,0,-1 );
	vMiddlePoint:RotateY( AngleMiddle );
	
	ArrayDir[5]		= vMiddlePoint;
	
	for index = 1, 7, 1 do
		vMiddlePoint:RotateZ( 45 );
		ArrayDir[ index + 5 ] = MAKECVECTOR3( vMiddlePoint:GetX(), vMiddlePoint:GetY(), vMiddlePoint:GetZ() );
	end
	
	
	-- 외곽 지정
	local vOutsidePoint	= MAKECVECTOR3( 0,0,-1 );
	vOutsidePoint:RotateY( AngleOutside );
	
	ArrayDir[13]		= vOutsidePoint;
	
	for index = 1, 7, 1 do
		vOutsidePoint:RotateZ( 45 );
		ArrayDir[ index + 13 ] =  MAKECVECTOR3( vOutsidePoint:GetX(), vOutsidePoint:GetY(), vOutsidePoint:GetZ() );
	end
	
	
	-- 공격 생성
	
	local arrIndices	= { 2, 6, 3, 14, 10, 4, 20, 7, 17, 5, 8, 15, 9, 11, 12, 1, 13, 16, 18, 19 };
	
	math.randomseed( os.time() );
	
	for index = 1, 20, 1 do
		local vDir = ArrayDir[ arrIndices[ index ] ];
		vDir:Multiply( Accuracy, Accuracy, 1.0 );
		vDir:Normalize();		
		
		local value = math.random( 1, 1000 );
		local fireTime = ( ( index )*OneShotTime );
		
		if value < 334  then
			Attack = CreateCAttack();
		    Attack:InitAttack1( WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_INSTALL, fireTime, Power+AdditionalPower, AddtionalPower );
		    Attack:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack:SetCollisionRangeAdjust( false, false );
			Attack:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack );
		elseif value < 667 then
			Attack1 = CreateCAttack();
		    Attack1:InitAttack1( WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_INSTALL, fireTime, Power+AdditionalPower, AddtionalPower );
		    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack1:SetCollisionRangeAdjust( false, false );
			Attack1:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack1 );
		else
			Attack2 = CreateCAttack();
		    Attack2:InitAttack1( WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_INSTALL, fireTime, Power+AdditionalPower, AddtionalPower );
		    Attack2:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack2:SetCollisionRangeAdjust( false, false );
			Attack2:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack2 );
		end
		
	end

end


-------------------------------------------------------------------------------
--[[
	기본 터렛 노멀 -> 거치 셋팅
	InitLua인자
	-- nNextStageTime,				// 다음 상태로 가기위한 시간
]]--
-------------------------------------------------------------------------------

function StandardTurretToInstall(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:InitLua( 1600 );				 --설치 해제 시간  (2000)
	STATE:SetCamLimit( true, 55, 70);    --기존 (true, 40.5, 70) 		각도 (카메라제한,상하각도,좌우각도) (true, 45, 70)
	
	STATE:SetDistZoom( true, -330);		--카메라 느슨하게 땡길 때 기준  (true, 200) 	-- 거리 줌 사용여부( true/false ),  최소거리( 첫번째 인자가 true 일때만 사용됨 ) ( true, -150 )_157
	STATE:SetCamFixType( 1, -80 );			-- ( -1(disable), 0(left), 1(center), 2(right) )
	-- 카메라 y축 조정 치트키: heightoffset (380/350기본각도) (debug consolewindows s4_client에 입력 하면 됨) 잘모르겠으면 현호씨에게 물어보세요 (400 제일 좋았음)
	
	
	-- SetPlusDefensePowerRate( 파츠 부위(0:전체, 1:헤드), 무기 방어력 비율(0~1))
	-- 무기 방어력 비율을 1로 하면 무적이 된다.;;;조심!!!
	-- 거치를 풀 때 초기화를 반드시 해야 함.
	STATE:SetPlusDefensePowerRate(0, 0.2); -- 거치 도중, 거치중 추가 방어력 설정.
	STATE:SetPlusDefensePowerRate(1, 0.2); -- 거치 도중, 거치중 헤드 샷 추가 방어력 설정.
end


-------------------------------------------------------------------------------
--[[
	기본 터렛 거치 -> 노멀 셋팅
	InitLua인자
	-- nNextStageTime,				// 다음 상태로 가기위한 시간
]]--
-------------------------------------------------------------------------------

function StandardTurretToNormal(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:InitLua( 1600 );
	STATE:SetCamLimit( false, 0, 0 );
	
	STATE:SetDistZoom( false, 0 );		--거리 줌 사용여부( true/false ),  최소거리( 첫번째 인자가 true 일때만 사용됨 )
	STATE:SetCamFixType( -1, 0 );			-- ( -1(disable), 0(left), 1(center), 2(right) )
	
	-- SetPlusDefensePowerRate( 파츠 부위(0:전체, 1:헤드), 무기 방어력 비율(0~1))
	-- 거치를 풀 때 초기화를 해준다.
	STATE:SetPlusDefensePowerRate(0, 0); -- 거치 도중, 거치중 추가 방어력 설정.
	STATE:SetPlusDefensePowerRate(1, 0); -- 거치 도중, 거치중 헤드 샷 추가 방어력 설정
end


-------------------------------------------------------------------------------
--[[
	기본 터렛 노멀 -> 거치 셋팅
	InitLua인자
	-- nNextStageTime,				// 다음 상태로 가기위한 시간
]]--
-------------------------------------------------------------------------------

function StandardTurretToInstall_MK2(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:InitLua( 2000 );				 --설치 해제 시간  (2000)
	STATE:SetCamLimit( true, 40.5, 70);    --기존 (true, 40.5, 70) 		각도 (카메라제한,상하각도,좌우각도) (true, 45, 70)
	
	STATE:SetDistZoom( true, -330);		--카메라 느슨하게 땡길 때 기준  (true, 200) 	-- 거리 줌 사용여부( true/false ),  최소거리( 첫번째 인자가 true 일때만 사용됨 ) ( true, -150 )_157
	STATE:SetCamFixType( 1, -80 );			-- ( -1(disable), 0(left), 1(center), 2(right) )
	-- 카메라 y축 조정 치트키: heightoffset (380/350기본각도) (debug consolewindows s4_client에 입력 하면 됨) 잘모르겠으면 현호씨에게 물어보세요 (400 제일 좋았음)

	-- SetPlusDefensePowerRate( 파츠 부위(0:전체, 1:헤드), 무기 방어력 비율(0~1))
	-- 무기 방어력 비율을 1로 하면 무적이 된다.;;;조심!!!
	-- 거치를 풀 때 초기화를 반드시 해야 함.
	STATE:SetPlusDefensePowerRate(0, 0.4); -- 거치 도중, 거치중 추가 방어력 설정.
	STATE:SetPlusDefensePowerRate(1, 0.6); -- 거치 도중, 거치중 헤드 샷 추가 방어력 설정.

	-- SetKnockBack_BlowDefensePowerRate( 넉백, 블로우 저항력 비율(0~1) )
	-- 넉백 저항력 비율을 1로 하면 넉백 적용이 안됨.
	-- 거치 도중에만 적용 되므로 항시 적용이 필요하면 추가 작업이 필요함.
	STATE:SetKnockBack_BlowDefensePowerRate(0.5); -- 넉백, 블로우 저항력 상승.
end


-------------------------------------------------------------------------------
--[[
	기본 터렛 거치 -> 노멀 셋팅
	InitLua인자
	-- nNextStageTime,				// 다음 상태로 가기위한 시간
]]--
-------------------------------------------------------------------------------

function StandardTurretToNormal_MK2(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:InitLua( 2000 );
	STATE:SetCamLimit( false, 0, 0 );
	
	STATE:SetDistZoom( false, 0 );		--거리 줌 사용여부( true/false ),  최소거리( 첫번째 인자가 true 일때만 사용됨 )
	STATE:SetCamFixType( -1, 0 );			-- ( -1(disable), 0(left), 1(center), 2(right) )
	
	-- SetPlusDefensePowerRate( 파츠 부위(0:전체, 1:헤드), 무기 방어력 비율(0~1))
	-- 거치를 풀 때 초기화를 해준다.
	STATE:SetPlusDefensePowerRate(0, 0); -- 거치 도중, 거치중 추가 방어력 설정.
	STATE:SetPlusDefensePowerRate(1, 0); -- 거치 도중, 거치중 헤드 샷 추가 방어력 설정.
end