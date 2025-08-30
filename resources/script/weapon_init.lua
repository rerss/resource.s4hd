require "Resources/Script/Weapon_submachine.lua" --서브 머신건
require "Resources/Script/Weapon_machinegun.lua" --헤비 머신건
require "Resources/Script/Weapon_railgun.lua" --레일건
require "Resources/Script/Weapon_revolver.lua" --리볼버
require "Resources/Script/Weapon_smg2.lua"--세미 라이플, 호밍 라이플, 스파크 라이플, 어썰트 라이플
require "Resources/Script/Weapon_cannonade.lua" --캐노네이드
require "Resources/Script/Weapon_mg2.lua" --가우스 라이플
require "Resources/Script/Weapon_assassinclaw.lua" --바이탈 쇼크
require "Resources/Script/Weapon_revolver2.lua" --핸드건
require "Resources/Script/Weapon_smg4.lua" --버스트 샷건, 쇼크 웨이브건
require "Resources/Script/Weapon_smg3gun.lua" --스매쉬 라이플(원거리)
require "Resources/Script/Weapon_smg3sword.lua" --스매쉬 라이플(근접)
require "Resources/Script/Weapon_bat.lua" --스톰 배트
require "Resources/Script/Weapon_countersword.lua" --카운터 스워드
require "Resources/Script/Weapon_doublesword.lua" --트윈 블레이드
require "Resources/Script/Weapon_katanasword.lua" --카타나(구버전)
require "Resources/Script/Weapon_plasmasword.lua" --플라즈마 스워드
require "Resources/Script/Weapon_spydagger.lua" --스파이 대거
require "Resources/Script/Weapon_Airgun.lua" --에어건
require "Resources/Script/Weapon_mine.lua" --그레네이드건, 어스 봄버, 라이트닝 봄버
require "Resources/Script/Weapon_breakersword.lua" --브레이커
require "Resources/Script/Weapon_turret.lua" --터렛
require "Resources/Script/Weapon_Sentry.lua" --센트리 봄버
require "Resources/Script/Weapon_katana_a_sword.lua" --카타나(신)
require "Resources/Script/Weapon_sigmablade.lua" --시그마블레이드
require "Resources/Script/Weapon_dualgun.lua" --튜얼매그넘
require "Resources/Script/Weapon_Death_Scythe.lua" --사신낫
require "Resources/Script/Weapon_IRONBOOTS.lua" --아이언 부츠
require "Resources/Script/Weapon_GaussRifleMK2.lua"--가우스 라이플 MK2
require "Resources/Script/Weapon_rocketlauncher.lua" --로켓 런처
require "Resources/Script/Weapon_VirtualSheild.lua" -- 버추얼 쉴드
require "Resources/Script/_Weapon_DemonicKnuckle_Atk.lua" -- 데모닉 너클.
require "Resources/Script/_Weapon_BustShotGunMK2_Atk.lua" -- 버스트 샷건 MK2.
require "Resources/Script/_Weapon_ChainLightGunMK2_Atk.lua" -- 체인 라이트닝 건 MK2.
require "Resources/Script/Weapon_MindWeapon.lua" -- 마인드 쇼크, 마인드 웨이브
require "Resources/Script/Weapon_VitalShock.lua" -- 바이탈 쇼크 리메이크 버전
---------------------------------------------------------------------------------------------------------------------------------------------
--[[
	-- 관리해주는 스크립트로 현재로는 특별한 기능을 하지는 않음.	
]]--


---------------------------------------------------------------------------------------------------------------------------------------------
--[[
	충돌 정보 셋팅
	
	-- z -1 쪽이 캐릭터가 바라보는 방향
	
	MAKEVECTOR3( x,y,z );	-- 함수의 파라미터로만 사용할 수 있음.
	MAKEVECTOR2( x,y );		-- 함수의 파라미터로만 사용할 수 있음.
	
	MAKECVECTOR3( x,y,z );	-- 루아에 변수로 줄 수 있음.( 추가로 일반 vector 넘기는것 작업하겠음 ), 함수의 파라미터로는 넘길 수 없음.
		GetX();				-- x값을 반환한다.
		GetY();				-- y값을 반환한다.
		GetZ();				-- z값을 반환한다.
		
		ex) vector3 = MAKECVECTOR3( 1,1,1 );
			STATE:InitLua( MAKEVECTOR3( vector3:GetX(), vector3:GetY(), vector3:GetZ() ) );
			x : +값이면 좌측으로, -값이면 우측으로 이동
			y : +갑이면 위로, -값이면 아래로 이동
			z : +값이면 플레이어 쪽(카메라 안쪽)으로, -값이면 플레이어 앞쪽(카메라 바깥쪽)으로 이동
	
	* 플레이어의 타격박스 크기는 원기둥으로 가정하였을 때, 지름은 약 100(타이트하게 쓰면 95까지) 높이는 약 300~320임.
	-- Ray	
	MAKERAY( MAKEVECTOR3() = center, MAKEVECTOR3() = direction, length );
	
	-- Sphere
	MAKESPHERE( MAKEVECTOR3() = center, 반지름 );
	
	-- Box
	MAKEBOX( MAKEVECTOR3() = center, MAKEVECTOR3() = direction, width, height, lenght );
	center 
	-- Cylinder
	MAKECYLINDER( MAKEVECTOR3(center값), 반지름, 높이 );
	center값 미 지정 시 벡터 값 0,0,0으로 인식. 지정 시에는 MAKEVECTOR3(x,y,z)로 지정하여야 함.
	폭발형 어택(Attack = CreateCExplosionAttack();) 에 사용 시, 센터값은 자동으로 히트한 곳 기준으로 설정됨.(캐노네이드처럼)
	
	-- Fan
	MAKEFAN( MAKEVECTOR3() = center, MAKEVECTOR2() = direction, width, height, length, 각도 );
	
	-- Pole
	MAKEPOLE( MAKEVECTOR3() = center, MAKEVECTOR3() = direction, width, height, length );
	
	-- Thickray : 레이를 이용한 호밍을 위해서만 사용해야 함.
	MAKETHICKRAY( MAKEVECTOR3() = center, MAKEVECTOR3() = direction, thickness = 호밍 범위, length );
	
	-- cone
	MAKECONE( MAKEVECTOR3(x, y, z), MAKEVECTOR3( 0.0, 0.0, -1.0 ), 꼭지각, 윗면 지름, 바닥면 지름 )
	
]]--

---------------------------------------------------------------------------------------------------------------------------------------------
--[[	일반공격 스크립트 메뉴얼	

	--setdrop : 공격 중 멈춰있는 체공시간
	--MAKEVECTOR3 : 점프하면서 떨어지는 거리
	STATE:SetDrop( 공격 중 멈춰있는 체공 시간, MAKEVECTOR3( x, y, z ) );
	
	--setdrop : 공격 후 딜레이 중 멈춰있는 체공시간
	--MAKEVECTOR3 : 공격 후 딜레이 중 떨어지는 거리
	STATE:SetDelayDrop( 공격 후 후딜레이 중 멈춰있는 체공 시간, MAKEVECTOR3( x, y, z ) );
		
	-- 애니메이션 상 입력된 무브 박스를 아래 배율만큼 증감시켜 게임 내 적용
	STATE:SetMoveBoxMultiplier( 이동속도 배율 );
	
	-- 특수 이동 기능. 이동 중 방향에 따라 공격 모션 방향이 결정됨. 1.0이 기본 이속
	STATE:SetMoveSpeedRate( 이동속도 배율 );

	-- (차지 공격 한정) 차지 시간에 따른 후딜레이 증가 설정
	STATE:SetIncreaseDelayChargeTime( true/false );

	-- 위 SetIncreaseDelayChargeTime에서 true 입력 시 증가하는 딜레이 시간 입력 1000 = 1초. 차지 시간에 비례하여 해당 입력된 숫자만큼 추가적으로 증가
	STATE:SetMaxIncreaseDelayTime( 최대 딜레이 증가량 입력 (1000 = 1초기준) );
	
	--공격중과 후딜 중 마우스 회전 속도 제어 여부
	STATE:SetEnableMouseSensitivityRotate( true/false );
	
	--위 SetEnableMouseSensitivityRotate 입력 시 마우스 회전 속도 제어 수치 설정 (1.0이 일반 속도 기준)
	STATE:SetNormalMouseSensitivityRotate( 마우스 회전 속도 값 );	
	
	
	-- 공격을 1개 생성( 아래2중에 하나만 선택해야 함. )
	Attack = CreateCAttack();				-- 일반형 공격	
	
	-- 공격 초기화1 
    Attack:InitAttack1( 무기타입, 공격속성ID, 발사시간, 데미지, 아이템에의한 추가데미지 );
    
    -- 공격 초기화2
    Attack:InitAttack2( 충돌정보, 1, 1, 랜덤시드사용  );
    
    -- 공격시 충돌영역( 방향 및 위치 수정 : 대부분은 false로 하고 있음 )
    Attack:SetCollisionRangeAdjust( 공격자의 방향을보고 방향수정, 공격자의 위치를 보고 위치이동 );
    
    -- 공격을 할 때 사용되는 탄알 수
    Attack:SetConsumeAmmo( 사용 탄알 수 );    
    
    -- 네트웍상의 유저의 공격을 로컬로 체크함.( 대부분 false 지정이 동기화상 맞음. 현재는 차지류:레일건,캐논에이드 만 true로 설정되어 있음 )
    -- 기본은 false 이며 true일때만 직접작성 요망.
    -- 기존에 것들은 어쩔 수 없지만 될 수 있으면 true로 지정하지 말아야 함.
    Attack:SetGhostCalcCollisionRange( true/false );
    
    -- blow 속성을 추가한다. 높이 5000당 체공 시간 약 1000ms
    Attack:AddBlowCondition( blow거리, blow높이 );
    
    -- push 속성을 추가한다.( 액셀스피드를 음수값으로 설정해야 멈춤 )
    Attack:AddPushCondition( 적용시간, 시작속도, 액셀스피드 );  
    
    -- stun 속성을 추가한다.
    Attack:AddStunCondition( 최소시간, 최대시간, 최소거리, 최대거리 );
    
    -- 항상 크리티컬 공격인가?
    Attack:SetAlwaysCritical( true/false );
	
	--랜덤 크리티컬 설정
	Attack1:SetCritical( 크리 시 증가 배율, 확률(퍼센트를 숫자로 입력) );
	예: 50% 확률로 3배의 데미지를 입힐 경우 (3, 50)
    
    -- 카메라 쉐이킹
    Attack:SetCameraShakeEnable( 포커스유저만, 흔들것인가, 준비시간 );
    Attack:SetCameraShakeSetFactor1( 흔들기시간, 회복시간, 확장 );
    Attack:SetCameraShakeSetFactor2( 세로스피드, 가로스피드, 최소거리, 최대거리 );
    Attack:SetCameraShakeRandomDir( 랜덤으로 흔들것인가 );    
    Attack:SetCameraShakeWhenSuccess( 성공했을때 흔들것인가 );

    -- 공격시에 사운드를 출력할 것인가?
    Attack:SetPlaySound( true / false );
    
    -- 공격리스트에 공격을 추가한다.
    AddAttack( ATTACKS, 생성한 공격 );		


]]--


---------------------------------------------------------------------------------------------------------------------------------------------
--[[	폭발형 공격 스크립트 메뉴얼

	-- 공격을 1개 생성( 아래2중에 하나만 선택해야 함. )
	Attack = CreateCExplosionAttack();		-- 폭발형 공격
	
	-- 공격 초기화1 
    Attack:InitAttack1( 무기타입, 공격속성ID, 발사시간, 데미지, 아이템에의한 추가데미지 );
    
    -- 공격 초기화2
    Attack:InitAttack2( 충돌정보, 1, 1  );
    
    -- 공격시 충돌영역( 방향 및 위치 수정 : 대부분은 false로 하고 있음 )
    Attack:SetCollisionRangeAdjust( 공격자의 방향을보고 방향수정, 공격자의 위치를 보고 위치이동 );
    
    -- 공격을 할 때 사용되는 탄알 수
    Attack:SetConsumeAmmo( 사용 탄알 수 );    
    
    -- 네트웍상의 유저의 공격을 로컬로 체크함.( 대부분 false 지정이 동기화상 맞음. 현재는 차지류:레일건,캐논에이드 만 true로 설정되어 있음 )
    -- 기본은 false 이며 true일때만 직접작성 요망.
    -- 기존에 것들은 어쩔 수 없지만 될 수 있으면 true로 지정하지 말아야 함.
    Attack:SetGhostCalcCollisionRange( true/false );
    
    -- blow 속성을 추가한다.
    Attack:AddBlowCondition( blow거리, blow높이 );
    
    -- push 속성을 추가한다.( 액셀스피드를 음수값으로 설정해야 멈춤 )
    Attack:AddPushCondition( 적용시간, 시작속도, 액셀스피드 );  
    
    -- stun 속성을 추가한다.
    Attack:AddStunCondition( 최소시간, 최대시간, 최소거리, 최대거리 );
    
    -- 항상 크리티컬 공격인가?
    Attack:SetAlwaysCritical( true/false );
    
    -- 카메라 쉐이킹
    Attack:SetCameraShakeEnable( 포커스유저만, 흔들것인가, 준비시간 );
    Attack:SetCameraShakeSetFactor1( 흔들기시간, 회복시간, 확장 );
    Attack:SetCameraShakeSetFactor2( 세로스피드, 가로스피드, 최소거리, 최대거리 );
    Attack:SetCameraShakeRandomDir( 랜덤으로 흔들것인가 );    
    Attack:SetCameraShakeWhenSuccess( 성공했을때 흔들것인가 );
    
    -- 공격리스트에 공격을 추가한다.
    AddAttack( ATTACKS, 생성한 공격 );
	
]]--

---------------------------------------------------------------------------------------------------------------------------------------------
--[[	WEAPON 클래스 함수
	
	-- 해당 공격에 대한 랜덤 데미지 적용
	-- Attack = CreateCAttack(); <- 공격 생성된거	
	WEAPON:ApplyRandomDamage( Attack );
		
	-- 무기의 영역
	WEAPON:GetRange();
	
]]--


---------------------------------------------------------------------------------------------------------------------------------------------
--[[	각 무기 공격 상태별 함수 설명	
		-- 아래 함수 추가만으로는 작동이 정상적으로 되지 않고, 클라이언트에 작업 요청 시 기능 구현 할 수 있는 리스트
	
	<카타나 전용 입력 값>
	
	-- 지정된 숫자만큼 연속 공격 횟수를 제한하는 기능 (카타나 점프 공격 내 설정)
	STATE:SetMaxAttackCount( 공격 횟수 );
	
		
		
]]--


---------------------------------------------------------------------------------------------------------------------------------------------
--[[	공통적으로 사용하는 변수 명에 대한 설명
	
	u32 uiNormalTime						::	현재 상태의 애미네이션 플레이 시간
	u32 uiDelayTime						::	NormalTime이 끝나고 난다음의 딜레이 유지 시간
	u32 uiMinimumSceneUpdateTime		::	현재 씬을 update하는 시간(frame) 주로 40을 유지하고 있음
	bool bOnlyVStateNormal				::	현재 상태가 점프시에도 사용가능한지의 여부를 설정함 ( true = 점프시에 공격이 가능하거나 가드가 가능 , false = 점프시 사용 불가 )
	bool bEnableInputJump				::	현재 상태에서 점프가 가능한지의 여부 설정( true = 점프 가능, false = 점프 불가능 )
	
	STATE:SetStateMinSp( 해당 상태에 들어가기 위해서 필요한 최소 sp ) :: 현재 차지무기에서 사용중
	STATE:SetSpendSp( 해당 상태에서 사용할 sp ) :: 현재 차지무기에서 사용중
]]--