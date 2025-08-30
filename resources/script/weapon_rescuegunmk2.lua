require "Resources/Script/ActorStates_Constants.lua"

-- 레스큐 마크 2 발사 함수 ( 왼쪽, 오른쪽 클릭 )

-- 레스큐 탄 발사 함수.
-- 자식 함수 : StandardRescueGunMK2Init
function StandardRescueGunMK2Launch(  OneShotTime, Power, Accuracy, AdditionalPower )
		
	STATE:InitLua( 100, 
	"Resources/Effects/skill_gunner_electronic_bomb_1.seq",
	"Resources/Sound/rescuegun_shot.ogg", 
	500, 5000 ); -- (쏜 후 후딜500, 총알 날아가는 힘 4000을 조정 시 날아가는 속도가 달라짐)
	
	-- 투사체 초기화용 루아스크립트 함수이름
	STATE:SetWeaponInitLuaFuncName( "StandardRescueGunMK2Init" );

end

-- 레스큐 탄에 대한 초기화 함수.	
-- 자식 함수 : StandardRescueGunMK2Explosion
function StandardRescueGunMK2Init()
	-- (중력값,**,터지는데 걸리는 초,**)	
	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( -4500.0, 16.0, 2600.0, 100.0 , 1 );  -- 2000.0, 탄이 멈춘 후 터지는데 걸리는 시간	
--	GRENADE:InitLua( -4500.0, 16.0, 4000.0, 100.0 , 7 );  -- 2000.0, 탄이 멈춘 후 터지는데 걸리는 시간	
	
	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	-- 기본 속도 감소치, 지면에 마찰 시 속도 감소치, 벽에 바운드 시 속도 감소치 _(땅에 닿은후 총탄이 굴러가는 속도 조정)
--	GRENADE:SetDamping( 0.5, 5.0, 0.9 );   --( 0.5, 6.0, 0.9 ) , ( 0.5, 10, 0.6 ), ( 0.5, 20, 0.5 )
	GRENADE:SetDamping( 0.5, 16.0, 0.9 );   --( 0.5, 6.0, 0.9 ) , ( 0.5, 10, 0.6 ), ( 0.5, 20, 0.5 )
	
	-- int nDamageType ( 0:모두, 1:적, 2:적과 본인, 3: 아군 )
	GRENADE:SetDamageType( 3 );  -- 탄이 터질때 누구에게 데미지를 주는지에 대한 값
	
	-- 캐릭터에 충돌여부 ( 0:적캐릭에 부딫치지만 폭발안함. 1:적캐릭에 부딫치고 폭발, 2:캐릭터 통과 ), 적캐릭터만 충돌할 것인가(true/false )
	GRENADE:SetCollisionChar( 3, false ); -- 캐릭터와 충돌 시 터지느냐 안터지느냐에 값
	
	-- bool bCheck, float fCheckSpeed 포탄을 쏜 후 이동 체크를 하느냐 안하 느냐 true/false
	GRENADE:SetSpeedCheck( true, 200.0 );   -- 체크 끝난 후에 2번으로 넘어감
--	GRENADE:SetSpeedCheck( true, 700.0 );   -- 체크 끝난 후에 2번으로 넘어감
	
	-- 폭발시퀀스파일, 우리편 일반 탄체, 상대편 일반 탄체, 우리편 폭발 준비 탄체, 상대편 폭발 준비 탄체(폭발 준비 혹은 던질때 적군과 아군이 보는 시점에 따라 이미지가 달라지게 하는 함수)
	GRENADE:SetSequence( 
	"Resources/Effects/weapon_resque_fire02.seq", 
	"Resources/Effects/weapon_rescuemk2_hp_ball01.seq", 
	"Resources/Effects/weapon_rescuemk2_hp_ball01_enemy.seq", 
	"Resources/Effects/weapon_rescuemk2_hp_ball02.seq", 
	"Resources/Effects/weapon_rescuemk2_hp_ball02_enemy.seq" );
	
	-- 폭발사운드
	GRENADE:SetExplosionSound( "Resources/Sound/rescuegun_bomb.ogg" );
	
	-- 폭발 초기화용 루아스크립트 함수이름
	GRENADE:SetExplosionLuaName( "StandardRescueGunMK2Explosion" );
	
	-- // 활성화 이후 유저에 충돌해야 하는가?( true/false ) 기본은 false 임
	GRENADE:SetAfterActiveCheckChar( true );
	
end

--  레스큐건 폭발용 함수
function StandardRescueGunMK2Explosion( damage, range )

	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_RESCUEGUN, ATTACKATTRIB_RESCUEGUN , 0, damage, 0 );
	EXPLOSIONATTACK:InitAttack2( MAKESPHERE( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY(), POSITION:GetZ() ), range ), 1, 1 );
	
	-- 인자1 : sp full.
	-- 인자2 : 탄창 full.
	EXPLOSIONATTACK:InitAttack3( true, false ); 
		
	-- 0: 데미지 일괄적용, 1: 거리별데미지 적용.
	EXPLOSIONATTACK:SetDamageApplyType( 0 );
		
	--자신 및 아군 데미지 추가 적용식. 최종 데미지 합에서 아래 입력받은 수치를 곱해서 자신과 아군에게 데미지를 적용한다. 수치는 0에서 1까지의 정수로 입력한다.
	--(자신 데미지 비율, 자신 외 아군 데미지 비율);
	EXPLOSIONATTACK:SetFriendlyDamage(0, 1.0);

	-- 최종 데미지 계산함수 등록
	--EXPLOSIONATTACK:SetLastDamageLuaFunction( "StandardRescueGunCalcDamage" );  StandardRescueGunCalcDamage 이부분이 들어가게 되면 나중에 체크되어 가우스 함수를 사용하지 못하여 주석 처리함
		
	EXPLOSIONATTACK:SetUiCriticalExplosionAttack( false );  -- 크리티컬 유아이 출력 여부
	EXPLOSIONATTACK:SetExceptSentry( true );   -- 센트리류 공격에서 제외 할것인지
		
	-- EXPLOSIONATTACK:SetCritical( 2.0, 10 );   --랜덤 크리티컬 (크리티컬 배율, 크리티컬 확률)
	EXPLOSIONATTACK:SetCritical( 1.0, 0 );   --랜덤 크리티컬 (크리티컬 배율, 크리티컬 확률)
		
end

-- Ammo 레스큐 탄 발사 함수.
-- 자식 함수 : StandardRescueGunMK2Init_Ammo
function StandardRescueGunMK2Launch_Ammo(  OneShotTime, Power, Accuracy, AdditionalPower )
		
	STATE:InitLua( 100, 
	"Resources/Effects/skill_gunner_electronic_bomb_1.seq", 
	"Resources/Sound/rescuegun_shot.ogg", 
	500, 4000 ); -- (쏜 후 후딜500, 총알 날아가는 힘 4000을 조정 시 날아가는 속도가 달라짐)
	
	-- 투사체 초기화용 루아스크립트 함수이름
	STATE:SetWeaponInitLuaFuncName( "StandardRescueGunMK2Init_Ammo" );

end

-- Ammo 레스큐 탄에 대한 초기화 함수.	
-- 자식 함수 : StandardRescueGunMK2Explosion_Ammo
function StandardRescueGunMK2Init_Ammo()
	-- (중력값,**,터지는데 걸리는 초,**)	
	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( -4500.0, 16.0, 3200.0, 100.0 , 1 );  -- 2000.0, 탄이 멈춘 후 터지는데 걸리는 시간	
--	GRENADE:InitLua( -4500.0, 16.0, 4000.0, 100.0 , 7 );  -- 2000.0, 탄이 멈춘 후 터지는데 걸리는 시간	
	
	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	-- 기본 속도 감소치, 지면에 마찰 시 속도 감소치, 벽에 바운드 시 속도 감소치 _(땅에 닿은후 총탄이 굴러가는 속도 조정)
--	GRENADE:SetDamping( 0.5, 2.0, 0.9 );   --( 0.5, 6.0, 0.9 ) , ( 0.5, 10, 0.6 ), ( 0.5, 20, 0.5 )
	GRENADE:SetDamping( 0.5, 16.0, 0.9 );   --( 0.5, 6.0, 0.9 ) , ( 0.5, 10, 0.6 ), ( 0.5, 20, 0.5 )
	
	-- int nDamageType ( 0:모두, 1:적, 2:적과 본인 )
	GRENADE:SetDamageType( 3 );   -- 탄이 터질때 누구에게 데미지를 주는지에 대한 값
	
	-- 캐릭터에 충돌여부 ( 0:적캐릭에 부딫치지만 폭발안함. 1:적캐릭에 부딫치고 폭발, 2:캐릭터 통과 ), 적캐릭터만 충돌할 것인가(true/false )
	GRENADE:SetCollisionChar( 3, false ); -- 캐릭터와 충돌 시 터지느냐 안터지느냐에 값
	
	-- bool bCheck, float fCheckSpeed 포탄을 쏜 후 이동 체크를 하느냐 안하 느냐 true/false
	GRENADE:SetSpeedCheck( true, 200.0 );   -- 체크 끝난 후에 2번으로 넘어감
--	GRENADE:SetSpeedCheck( true, 700.0 );   -- 체크 끝난 후에 2번으로 넘어감
	
	-- 폭발시퀀스파일, 우리편 일반 탄체, 상대편 일반 탄체, 우리편 폭발 준비 탄체, 상대편 폭발 준비 탄체(폭발 준비 혹은 던질때 적군과 아군이 보는 시점에 따라 이미지가 달라지게 하는 함수)
	GRENADE:SetSequence( 
	"Resources/Effects/weapon_resque_fire03.seq", 
	"Resources/Effects/weapon_rescuemk2_ammo_ball01.seq", 
	"Resources/Effects/weapon_rescuemk2_ammo_ball01_enemy.seq", 
	"Resources/Effects/weapon_rescuemk2_ammo_ball02.seq", 
	"Resources/Effects/weapon_rescuemk2_ammo_ball02_enemy.seq" );
	
	-- 폭발사운드
	GRENADE:SetExplosionSound( "Resources/Sound/rescuegun_bomb.ogg" );
	
	-- 폭발 초기화용 루아스크립트 함수이름
	GRENADE:SetExplosionLuaName( "StandardRescueGunMK2Explosion_Ammo" );
	
	-- // 활성화 이후 유저에 충돌해야 하는가?( true/false ) 기본은 false 임
	GRENADE:SetAfterActiveCheckChar( true );
	
end

-- Ammo 레스큐건 폭발용 함수
function StandardRescueGunMK2Explosion_Ammo( damage, range )

	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_RESCUEGUN, ATTACKATTRIB_RESCUEGUN , 0, damage, 0 );
	EXPLOSIONATTACK:InitAttack2( MAKESPHERE( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY(), POSITION:GetZ() ), range ), 1, 1 );

	-- 인자1 : sp full.
	-- 인자2 : 탄창 full.
	EXPLOSIONATTACK:InitAttack3( false, true );
		
	-- 0: 데미지 일괄적용, 1: 거리별데미지 적용
	EXPLOSIONATTACK:SetDamageApplyType( 0 );
		
	--자신 및 아군 데미지 추가 적용식. 최종 데미지 합에서 아래 입력받은 수치를 곱해서 자신과 아군에게 데미지를 적용한다. 수치는 0에서 1까지의 정수로 입력한다.
	--(자신 데미지 비율, 자신 외 아군 데미지 비율);
	EXPLOSIONATTACK:SetFriendlyDamage(0, 0.0);

	-- 최종 데미지 계산함수 등록
	--EXPLOSIONATTACK:SetLastDamageLuaFunction( "StandardRescueGunCalcDamage" );  StandardRescueGunCalcDamage 이부분이 들어가게 되면 나중에 체크되어 가우스 함수를 사용하지 못하여 주석 처리함
		
	EXPLOSIONATTACK:SetUiCriticalExplosionAttack( false );  -- 크리티컬 유아이 출력 여부
	EXPLOSIONATTACK:SetExceptSentry( true );   -- 센트리류 공격에서 제외 할것인지
		
	-- EXPLOSIONATTACK:SetCritical( 2.0, 10 );   --랜덤 크리티컬 (크리티컬 배율, 크리티컬 확률)
	EXPLOSIONATTACK:SetCritical( 1.0, 0 );   --랜덤 크리티컬 (크리티컬 배율, 크리티컬 확률)
		
	-- EXPLOSIONATTACK:AddPushCondition( 300, 2000, -5000 );	-- 넉백	
    -- range 대비 2번째 범위 데미지 비율, 3번째 범위 데미지 비율, 4번째 범위 데미지 비율 (거리별 데미지 기준 모르면 현호씨에게 물어보세요)
	-- EXPLOSIONATTACK:SetDamageRates( 0.75, 0.5, 0.5 ); 
	
	-- range 대비 2번째 범위 비율, 3번째 범위 비율, 4번째 범위 비율
	-- EXPLOSIONATTACK:SetExplosionRanges( 0.25, 0.5, 0.75 ); (거리별 데미지 기준 모르면 현호씨에게 물어보세요)
	
	-- 중앙쪽 분포가 되는 랜덤
	-- EXPLOSIONATTACK:SetGaussRandomDamage( 랜덤 최소데미지, 랜덤 최대데미지, 랜덤확률, 중앙집중도( 0이면 고른분포, 높을수록 중앙에 집중 ) ) 라이트닝 봄버를 위해 만든 함수
	
	-- 고른 랜덤
	-- EXPLOSIONATTACK:SetRandomDamage( 랜덤 최소데미지, 랜덤 최대데미지, 랜덤확률 ) 라이트닝 봄버를 위해 만든 함수
	
end
