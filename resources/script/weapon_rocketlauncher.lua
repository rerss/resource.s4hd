require "Resources/Script/ActorStates_Constants.lua"

-- 로켓 런처의 싱글샷 용 폭발 함수.
function RocketLauncher_Explosion( damage, range )

	fDamageRate = 0.5; 
	damage = damage * fDamageRate;

	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_ROCKET_LAUNCHER, ATTACKATTRIB_ROCKET_LAUNCHER_LEFT_ATTACK , 0, damage, 0 );
	EXPLOSIONATTACK:InitAttack2( MAKESPHERE( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY(), POSITION:GetZ() ), range ), 1, 1 );
	EXPLOSIONATTACK:AddPushCondition( 300, 2000, -5000 );   
	
	-- 0: 데미지 일괄적용, 1: 거리별데미지 적용
	EXPLOSIONATTACK:SetDamageApplyType( 1 );
	
	-- range 대비 2번째 범위 데미지 비율, 3번째 범위 데미지 비율, 4번째 범위 데미지 비율
	EXPLOSIONATTACK:SetDamageRates( 0.75, 0.5, 0.5 );
	
	-- range 대비 2번째 범위 비율, 3번째 범위 비율, 4번째 범위 비율
	EXPLOSIONATTACK:SetExplosionRanges( 0.25, 0.5, 0.5 );
	
	-- 중앙쪽 분포가 되는 랜덤
	EXPLOSIONATTACK:SetGaussRandomDamage( 15 , 20, 50, 100 );
	
	-- 고른 랜덤
	-- EXPLOSIONATTACK:SetRandomDamage( 랜덤 최소데미지, 랜덤 최대데미지, 랜덤확률 )

end

-- 로켓 런처의 멀티샷 용 폭발 함수.
function RocketLauncher_MultiShotExplosion( damage, range )

	fDamageRate = 1; 
	damage = damage * fDamageRate;
	
	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_ROCKET_LAUNCHER, ATTACKATTRIB_ROCKET_LAUNCHER_RIGHT_ATTACK , 0, damage, 0 );
	EXPLOSIONATTACK:InitAttack2( MAKESPHERE( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY(), POSITION:GetZ() ), range ), 1, 1 );
	EXPLOSIONATTACK:AddPushCondition( 300, 2000, -5000 );   
	
	-- 0: 데미지 일괄적용, 1: 거리별데미지 적용
	EXPLOSIONATTACK:SetDamageApplyType( 1 );
	
	-- range 대비 2번째 범위 데미지 비율, 3번째 범위 데미지 비율, 4번째 범위 데미지 비율
	EXPLOSIONATTACK:SetDamageRates( 0.75, 0.5, 0.5 );
	
	-- range 대비 2번째 범위 비율, 3번째 범위 비율, 4번째 범위 비율
	EXPLOSIONATTACK:SetExplosionRanges( 0.25, 0.5, 0.75 );
	
	-- 중앙쪽 분포가 되는 랜덤
	EXPLOSIONATTACK:SetGaussRandomDamage( 0 , 20, 30, 1 );
	
	-- 고른 랜덤
	-- EXPLOSIONATTACK:SetRandomDamage( 랜덤 최소데미지, 랜덤 최대데미지, 랜덤확률 )

end

-- 로켓 런처의 싱글 로켓 초기화 함수.
function RocketLauncher_RocketInit()

	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( 0.0, 16.0, 5000.0, 100.0 , 1 ); --7
	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	GRENADE:SetDamping( 0, 3.0, 0.9 );
	-- int nDamageType ( 0:모두, 1:적, 2:적과 본인 )
	GRENADE:SetDamageType( 2 );
	-- 캐릭터에 충돌여부 ( 0:적캐릭에 부딫치지만 폭발안함. 1:적캐릭에 부딫치고 폭발, 2:캐릭터 통과 ), 적캐릭터만 충돌할 것인가(true/false )
	GRENADE:SetCollisionChar( 1, true );
	-- 수류탄 타입 설정. ( 0: 기본, 1: 로켓 )
	GRENADE:SetType( 1 );
	-- bool bCheck, float fCheckSpeed
	GRENADE:SetSpeedCheck( false, 0.0 );
	-- 폭발시퀀스파일, 우리편 일반 탄체, 상대편 일반 탄체, 우리편 폭발 준비 탄체, 상대편 폭발 준비 탄체
	GRENADE:SetSequence( "Resources/Effects/weapon_rl_ex.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "", "" );
	-- 폭발사운드
	GRENADE:SetExplosionSound( "Resources/Sound/rocket_bomb.ogg" );
	-- 발사 사운드
	--GRENADE:SetLaunchSound( "Resources/Sound/rocket_launch.ogg" );
	-- 날아가는 사운드
	--GRENADE:SetFlyingSound( "Resources/Sound/rocket_flying.ogg" );

	-- 폭발 초기화용 루아스크립트 함수이름
	GRENADE:SetExplosionLuaName( "RocketLauncher_Explosion" );	
end

-- 로켓 런처 기본 공격 함수.
function StandardRocketLauncher( OneShotTime, Power, Accuracy, AdditionalPower )

	-- InitStandardRocket 함수
	-- 로켓 런처의 싱글 로켓 초기화 함수
	-- 발사 속도
	STATE:InitStandardRocket( "RocketLauncher_RocketInit", 7500 );
	STATE:SetLaunchSound( "Resources/Sound/rocket_launch.ogg" );

	-- 알파1(조준전 타격점 구체 알파)
	-- 알파2(발사후 타격점 구체 알파)
	STATE:SetTargetPoint( 100, 100 );

	STATE:SetFrontOffset( 275 );
	
	-- 조준 전까지 딜레이 시간,
	-- 발사후 노말 애니까지 시간,
	-- 차지 타임,
	STATE:InitLua( 0, 1000, 1500, MAKEVECTOR3( 50, 280, 0 ), 250, false, 1000 );
	--STATE:InitLua( 0, 1000, 3000, MAKEVECTOR3( 50, 280, 0 ), 250, false, 1000 );
 
end

-- 로켓 런처의 멀티 로켓 초기화 함수.
function RocketLauncher_MultiRocketInit()

	GRENADE_T = {};
	GRENADE_T[1] = GRENADE1;
	GRENADE_T[2] = GRENADE2;
	GRENADE_T[3] = GRENADE3;

	for i=1,3 do
	
	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	-- 로켓 런처 폭발 시간은 10초로 정한다. 허공으로 쏘아 충돌되지 않는 곳으로 갈 경우에 대한 자폭 용.
	GRENADE_T[i]:InitLua( 0.0, 16.0, 10000.0, 100.0 , 1 ); --7
	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	GRENADE_T[i]:SetDamping( 0, 3.0, 0.9 );
	-- int nDamageType ( 0:모두, 1:적, 2:적과 본인 )
	GRENADE_T[i]:SetDamageType( 2 );
	-- 캐릭터에 충돌여부 ( 0:적캐릭에 부딫치지만 폭발안함. 1:적캐릭에 부딫치고 폭발, 2:캐릭터 통과 ), 적캐릭터만 충돌할 것인가(true/false )
	GRENADE_T[i]:SetCollisionChar( 1, true );
	-- 수류탄 타입 설정. ( 0: 기본, 1: 로켓 )
	GRENADE_T[i]:SetType( 1 );
	-- bool bCheck, float fCheckSpeed
	GRENADE_T[i]:SetSpeedCheck( false, 0.0 );
	-- 폭발시퀀스파일, 우리편 일반 탄체, 상대편 일반 탄체, 우리편 폭발 준비 탄체, 상대편 폭발 준비 탄체
	GRENADE_T[i]:SetSequence( "Resources/Effects/weapon_rl_ex.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "", "" );
	-- 폭발사운드
	GRENADE_T[i]:SetExplosionSound( "Resources/Sound/rocket_bomb.ogg" );
	-- 폭발 초기화용 루아스크립트 함수이름
	GRENADE_T[i]:SetExplosionLuaName( "RocketLauncher_MultiShotExplosion" );

	-- 발사 사운드
	--GRENADE_T[i]:SetLaunchSound( "Resources/Sound/rocket_launch.ogg" );
	-- 날아가는 사운드
	--GRENADE_T[i]:SetFlyingSound( "Resources/Sound/rocket_flying.ogg" );	
	end
	
end

-- 로켓 런처 멀티샷 공격 함수.
function MultiShotRocketLauncher( OneShotTime, Power, Accuracy, AdditionalPower )

	-- InitMultishotRocket 함수.
	-- 로켓 런처의 멀티 로켓 초기화 함수, 
	-- 로켓 속도, 
	-- 샷 개수, 
	-- 회오리 속도, 
	-- 회오리 반경,
	-- 멀티샷 사전 동작 사운드,
	-- 중심점에서 회오리 반경까지 벌어지는 시간.
	-- 주의!) 샷 개수가 수정될 경우 로켓 초기화 함수와 프로그램 수정이 필요함.
	STATE:InitMultishotRocket( "RocketLauncher_MultiRocketInit", 4500, 3, 4, 300, 
		"Resources/Sound/rocket_reload.ogg", 500);
	STATE:SetLaunchSound( "Resources/Sound/rocket_launch.ogg" );

	-- 알파1(조준전 타격점 구체 알파)
	-- 알파2(발사후 타격점 구체 알파)
	STATE:SetTargetPoint( 100, 100 );
	
	STATE:SetFrontOffset( 275 );
	
	-- 조준 전까지 장전시간,
	-- 발사후 노말 애니까지 시간,
	-- 차지 타임,
	STATE:InitLua( 3000, 1000, 1500, MAKEVECTOR3( 50, 280, 0 ), 250, false, 2000 );
	
	-- 정진수 : 멀티샷 수정 최대 차지 유지시간 추가
	STATE:SetMaxChargeDelayTime(2000);
end

--------------------------------------------------------------------------------------------------------------
-- 노말 로켓 런처.
--------------------------------------------------------------------------------------------------------------

-- 로켓 런처의 싱글 로켓 초기화 함수.
function RocketLauncher_RocketInit_Normal()

	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( 0.0, 16.0, 5000.0, 100.0 , 1 ); --7
	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	GRENADE:SetDamping( 0, 3.0, 0.9 );
	-- int nDamageType ( 0:모두, 1:적, 2:적과 본인 )
	GRENADE:SetDamageType( 2 );
	-- 캐릭터에 충돌여부 ( 0:적캐릭에 부딫치지만 폭발안함. 1:적캐릭에 부딫치고 폭발, 2:캐릭터 통과 ), 적캐릭터만 충돌할 것인가(true/false )
	GRENADE:SetCollisionChar( 1, true );
	-- 수류탄 타입 설정. ( 0: 기본, 1: 로켓 )
	GRENADE:SetType( 1 );
	-- bool bCheck, float fCheckSpeed
	GRENADE:SetSpeedCheck( false, 0.0 );
	-- 폭발시퀀스파일, 우리편 일반 탄체, 상대편 일반 탄체, 우리편 폭발 준비 탄체, 상대편 폭발 준비 탄체
	GRENADE:SetSequence( "Resources/Effects/weapon_rl_ex.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "", "" );
	-- 폭발사운드
	GRENADE:SetExplosionSound( "Resources/Sound/rocket_bomb.ogg" );
	-- 발사 사운드
	--GRENADE:SetLaunchSound( "Resources/Sound/rocket_launch.ogg" );
	-- 날아가는 사운드
	--GRENADE:SetFlyingSound( "Resources/Sound/rocket_flying.ogg" );
	
	-- 폭발 초기화용 루아스크립트 함수이름
	GRENADE:SetExplosionLuaName( "RocketLauncher_Explosion" );

end

-- 노말 로켓 런처 기본 공격 함수.
function StandardRocketLauncherNormal( OneShotTime, Power, Accuracy, AdditionalPower )
	
	-- InitStandardRocket 함수
	-- 로켓 런처의 싱글 로켓 초기화 함수, 
	-- 발사 속도
	STATE:InitStandardRocket( "RocketLauncher_RocketInit_Normal", 7500 );
	STATE:SetLaunchSound( "Resources/Sound/rocket_launch.ogg" );
	
	STATE:SetFrontOffset( 275 );
	STATE:InitLua( 0, 1000, 2000, MAKEVECTOR3( 50, 280, 0 ), 250, false, 1000 );
 
end

-- 로켓 런처의 멀티 로켓 초기화 함수.
function RocketLauncher_MultiRocketInit_Normal()

	GRENADE_T = {};
	GRENADE_T[1] = GRENADE1;
	GRENADE_T[2] = GRENADE2;
	GRENADE_T[3] = GRENADE3;

	for i=1,3 do
	
	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	-- 로켓 런처 폭발 시간은 10초로 정한다. 허공으로 쏘아 충돌되지 않는 곳으로 갈 경우에 대한 자폭 용.
	GRENADE_T[i]:InitLua( 0.0, 16.0, 5000.0, 100.0 , 1 ); --7
	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	GRENADE_T[i]:SetDamping( 0, 3.0, 0.9 );
	-- int nDamageType ( 0:모두, 1:적, 2:적과 본인 )
	GRENADE_T[i]:SetDamageType( 2 );
	-- 캐릭터에 충돌여부 ( 0:적캐릭에 부딫치지만 폭발안함. 1:적캐릭에 부딫치고 폭발, 2:캐릭터 통과 ), 적캐릭터만 충돌할 것인가(true/false )
	GRENADE_T[i]:SetCollisionChar( 1, true );
	-- 수류탄 타입 설정. ( 0: 기본, 1: 로켓 )
	GRENADE_T[i]:SetType( 1 );
	-- bool bCheck, float fCheckSpeed
	GRENADE_T[i]:SetSpeedCheck( false, 0.0 );
	-- 폭발시퀀스파일, 우리편 일반 탄체, 상대편 일반 탄체, 우리편 폭발 준비 탄체, 상대편 폭발 준비 탄체
	GRENADE_T[i]:SetSequence( "Resources/Effects/weapon_rl_ex.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "", "" );
	-- 폭발사운드
	GRENADE_T[i]:SetExplosionSound( "Resources/Sound/rocket_bomb.ogg" );
	-- 폭발 초기화용 루아스크립트 함수이름
	GRENADE_T[i]:SetExplosionLuaName( "RocketLauncher_MultiShotExplosion" );
	
	-- 발사 사운드
	--GRENADE_T[i]:SetLaunchSound( "Resources/Sound/rocket_launch.ogg" );
	-- 날아가는 사운드
	--GRENADE_T[i]:SetFlyingSound( "Resources/Sound/rocket_flying.ogg" );
	end
	
end

-- 노말 로켓 런처 멀티샷 공격 함수.
function MultiShotRocketLauncherNormal( OneShotTime, Power, Accuracy, AdditionalPower )

	-- InitMultishotRocket 함수.
	-- 로켓 런처의 멀티 로켓 초기화 함수, 
	-- 로켓 속도, 
	-- 샷 개수, 
	-- 회오리 속도, 
	-- 회오리 반경,
	-- 멀티샷 사전 동작 사운드,
	-- 중심점에서 회오리 반경까지 벌어지는 시간.
	-- 주의!) 샷 개수가 수정될 경우 로켓 초기화 함수와 프로그램 수정이 필요함.
	STATE:InitMultishotRocket( "RocketLauncher_MultiRocketInit_Normal", 4500, 3, 4, 300,
		"Resources/Sound/rocket_reload_normal.ogg", 500);
	STATE:SetLaunchSound( "Resources/Sound/rocket_launch.ogg" );

	STATE:SetFrontOffset( 275 );
	STATE:InitLua( 2500, 1000, 3000, MAKEVECTOR3( 50, 280, 0 ), 250, false, 1000 );
	
	-- 정진수 : 멀티샷 수정 최대 차지 유지시간 추가
	STATE:SetMaxChargeDelayTime(2000)
	
end

-- 고스트 전용 유니크 멀티 로켓 한 발 초기화.
-- 고스트 즉 상대가 발사하는 로켓을 의미한다.
function RocketLauncher_MultiRocketInit_Ghost()

	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	-- 로켓 런처 폭발 시간은 10초로 정한다. 허공으로 쏘아 충돌되지 않는 곳으로 갈 경우에 대한 자폭 용.
	GRENADE:InitLua( 0.0, 16.0, 5000.0, 100.0 , 1 ); --7
	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	GRENADE:SetDamping( 0, 3.0, 0.9 );
	-- int nDamageType ( 0:모두, 1:적, 2:적과 본인 )
	GRENADE:SetDamageType( 2 );
	-- 캐릭터에 충돌여부 ( 0:적캐릭에 부딫치지만 폭발안함. 1:적캐릭에 부딫치고 폭발, 2:캐릭터 통과 ), 적캐릭터만 충돌할 것인가(true/false )
	GRENADE:SetCollisionChar( 1, true );
	-- 수류탄 타입 설정. ( 0: 기본, 1: 로켓 )
	GRENADE:SetType( 1 );
	-- bool bCheck, float fCheckSpeed
	GRENADE:SetSpeedCheck( false, 0.0 );
	-- 폭발시퀀스파일, 우리편 일반 탄체, 상대편 일반 탄체, 우리편 폭발 준비 탄체, 상대편 폭발 준비 탄체
	GRENADE:SetSequence( "Resources/Effects/weapon_rl_ex.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "", "" );
	-- 폭발사운드
	GRENADE:SetExplosionSound( "Resources/Sound/rocket_bomb.ogg" );
	-- 폭발 초기화용 루아스크립트 함수이름
	GRENADE:SetExplosionLuaName( "RocketLauncher_MultiShotExplosion" );
	
	-- 발사 사운드
	--GRENADE:SetLaunchSound( "Resources/Sound/rocket_launch.ogg" );
	-- 날아가는 사운드
	--GRENADE:SetFlyingSound( "Resources/Sound/rocket_flying.ogg" );	

end

-- 고스트 전용 노멀 멀티 로켓 한 발 초기화.  
-- 고스트 즉 상대가 발사하는 로켓을 의미한다.
function RocketLauncher_MultiRocketInit_Normal_Ghost()

	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	-- 로켓 런처 폭발 시간은 10초로 정한다. 허공으로 쏘아 충돌되지 않는 곳으로 갈 경우에 대한 자폭 용.
	GRENADE:InitLua( 0.0, 16.0, 5000.0, 100.0 , 1 ); --7
	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	GRENADE:SetDamping( 0, 3.0, 0.9 );
	-- int nDamageType ( 0:모두, 1:적, 2:적과 본인 )
	GRENADE:SetDamageType( 2 );
	-- 캐릭터에 충돌여부 ( 0:적캐릭에 부딫치지만 폭발안함. 1:적캐릭에 부딫치고 폭발, 2:캐릭터 통과 ), 적캐릭터만 충돌할 것인가(true/false )
	GRENADE:SetCollisionChar( 1, true );
	-- 수류탄 타입 설정. ( 0: 기본, 1: 로켓 )
	GRENADE:SetType( 1 );
	-- bool bCheck, float fCheckSpeed
	GRENADE:SetSpeedCheck( false, 0.0 );
	-- 폭발시퀀스파일, 우리편 일반 탄체, 상대편 일반 탄체, 우리편 폭발 준비 탄체, 상대편 폭발 준비 탄체
	GRENADE:SetSequence( "Resources/Effects/weapon_rl_ex.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "", "" );
	-- 폭발사운드
	GRENADE:SetExplosionSound( "Resources/Sound/rocket_bomb.ogg" );
	-- 폭발 초기화용 루아스크립트 함수이름
	GRENADE:SetExplosionLuaName( "RocketLauncher_MultiShotExplosion" );

	-- 발사 사운드
	--GRENADE:SetLaunchSound( "Resources/Sound/rocket_launch.ogg" );
	-- 날아가는 사운드
	--GRENADE:SetFlyingSound( "Resources/Sound/rocket_flying.ogg" );	

end

