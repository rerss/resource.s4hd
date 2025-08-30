require "Resources/Script/ActorStates_Constants.lua"
require "Resources/Script/Weapon_rocketlauncher.lua"
require "Resources/Script/Weapon_lightningbomberMK2.lua"
require "Resources/Script/Weapon_rescuegunMK2.lua"

-------------------------------------------------------------------------------
-- 1 : Weapon_lua.x7 에서 사용할 함수
-------------------------------------------------------------------------------
--[[  그레네이드를 들고 있는 상태에서 발사를 할때 적용할 함수.
	기본 MineLaunch 셋팅
	InitLua인자
	u32 uThrowTime				= 공격버튼을 누른 후에 해당시간후에 발사를 한다.
	cchar * szThrowSequence,
	cchar * szThrowSound,
	u32 uStateEndTime			= 공격상태시간
	float fLaunchForce			= 발사하는 힘
]]--
-------------------------------------------------------------------------------
function StandardMineLaunch(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitLua( 100, "Resources/Effects/skill_gunner_electronic_bomb_1.seq", "Resources/Sound/grenade_fire.ogg", 500, 4000 );

	-- 투사체 초기화용 루아스크립트 함수이름
	STATE:SetWeaponInitLuaFuncName( "StandardMineInit" );

end



-------------------------------------------------------------------------------
-- 2 : 1에서 사용할 함수
-------------------------------------------------------------------------------
--[[  그레네이드 탄에 대한 초기화 함수.
]]--
-------------------------------------------------------------------------------
function StandardMineInit()

	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( -4000.0, 16.0, 3000.0, 100.0 , 1 );
--	GRENADE:InitLua( -4000.0, 16.0, 3000.0, 100.0 , 7 );

	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
--	GRENADE:SetDamping( 0.5, 3.0, 0.9 );
	GRENADE:SetDamping( 0.5, 16.0, 0.9 );

	-- int nDamageType ( 0:모두, 1:적, 2:적과 본인 )
	GRENADE:SetDamageType( 2 );

	-- 캐릭터에 충돌여부 ( 0:적캐릭에 부딪치지만 폭발안함. 1:적캐릭에 부딪치고 폭발, 2:캐릭터 통과 ), 적캐릭터만 충돌할 것인가(true/false )
	GRENADE:SetCollisionChar( 1, true );

	-- bool bCheck, float fCheckSpeed
	GRENADE:SetSpeedCheck( false, 0.0 );

	-- 폭발시퀀스파일, 우리편 일반 탄체, 상대편 일반 탄체, 우리편 폭발 준비 탄체, 상대편 폭발 준비 탄체
	GRENADE:SetSequence( "Resources/Effects/skill_gunner_electronic_bomb_3.seq", "Resources/Effects/skill_gunner_electronic_bomb_2_ally.seq", "Resources/Effects/skill_gunner_electronic_bomb_2_enemy.seq", "", "" );

	-- 폭발사운드
	GRENADE:SetExplosionSound( "Resources/Sound/grenade_explosion.ogg" );

	-- 폭발 초기화용 루아스크립트 함수이름
	GRENADE:SetExplosionLuaName( "StandardMineExplosion" );

end



-------------------------------------------------------------------------------
-- 3 : 2에서 사용할 함수.
-------------------------------------------------------------------------------
--[[  그레네이드 폭발용 함수
]]--
-------------------------------------------------------------------------------
function StandardMineExplosion( damage, range )

	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_MINE_LAUNCHER, ATTACKATTRIB_MINE_LAUNCHER , 0, damage, 0 );
	EXPLOSIONATTACK:InitAttack2( MAKESPHERE( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY(), POSITION:GetZ() ), range ), 1, 1 );
	EXPLOSIONATTACK:AddPushCondition( 300, 2000, -5000 );

	-- 0: 데미지 일괄적용, 1: 거리별데미지 적용
	EXPLOSIONATTACK:SetDamageApplyType( 1 );

	-- range 대비 2번째 범위 데미지 비율, 3번째 범위 데미지 비율, 4번째 범위 데미지 비율
	EXPLOSIONATTACK:SetDamageRates( 0.75, 0.5, 0.5 );

	-- range 대비 2번째 범위 비율, 3번째 범위 비율, 4번째 범위 비율
	EXPLOSIONATTACK:SetExplosionRanges( 0.25, 0.5, 0.75 );

	-- 중앙쪽 분포가 되는 랜덤
	-- EXPLOSIONATTACK:SetGaussRandomDamage( 랜덤 최소데미지, 랜덤 최대데미지, 랜덤확률, 중앙집중도( 0이면 고른분포, 높을수록 중앙에 집중 ) )

	-- 고른 랜덤
	-- EXPLOSIONATTACK:SetRandomDamage( 랜덤 최소데미지, 랜덤 최대데미지, 랜덤확률 )

end


-------------------------------------------------------------------------------
-- 1 : Weapon_lua.x7 에서 사용할 함수
-------------------------------------------------------------------------------
--[[  썸머나이트 그레네이드를 들고 있는 상태에서 발사를 할때 적용할 함수.
	기본 MineLaunch 셋팅
	InitLua인자
	u32 uThrowTime				= 공격버튼을 누른 후에 해당시간후에 발사를 한다.
	cchar * szThrowSequence,
	cchar * szThrowSound,
	u32 uStateEndTime			= 공격상태시간
	float fLaunchForce			= 발사하는 힘
]]--
-------------------------------------------------------------------------------
function GrenadeUniqueLaunch(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitLua( 100, "Resources/Effects/grenade_summer_night_blast.seq", "Resources/Sound/grenade_fire.ogg", 500, 4000 );

	-- 투사체 초기화용 루아스크립트 함수이름
	STATE:SetWeaponInitLuaFuncName( "GrenadeUniqueInit" );

end

-------------------------------------------------------------------------------
-- 2 : 1에서 사용할 함수
-------------------------------------------------------------------------------
--[[  그레네이드 탄에 대한 초기화 함수.
]]--
-------------------------------------------------------------------------------
function GrenadeUniqueInit()

	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( -4000.0, 16.0, 3000.0, 100.0 , 1 );
--	GRENADE:InitLua( -4000.0, 16.0, 3000.0, 100.0 , 7 );

	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
--	GRENADE:SetDamping( 0.5, 3.0, 0.9 );
	GRENADE:SetDamping( 0.5, 16.0, 0.9 );

	-- int nDamageType ( 0:모두, 1:적, 2:적과 본인 )
	GRENADE:SetDamageType( 2 );

	-- 캐릭터에 충돌여부 ( 0:적캐릭에 부딪치지만 폭발안함. 1:적캐릭에 부딪치고 폭발, 2:캐릭터 통과 ), 적캐릭터만 충돌할 것인가(true/false )
	GRENADE:SetCollisionChar( 1, true );

	-- bool bCheck, float fCheckSpeed
	GRENADE:SetSpeedCheck( false, 0.0 );

	-- 폭발시퀀스파일, 우리편 일반 탄체, 상대편 일반 탄체, 우리편 폭발 준비 탄체, 상대편 폭발 준비 탄체
	GRENADE:SetSequence( "Resources/Effects/grenade_summer_night_explosion.seq", "Resources/Effects/grenade_summer_night_bullet.seq", "Resources/Effects/grenade_summer_night_bullet_enemy.seq", "", "" );

	-- 폭발사운드
	GRENADE:SetExplosionSound( "Resources/Sound/grenade_explosion.ogg" );

	-- 폭발 초기화용 루아스크립트 함수이름
	GRENADE:SetExplosionLuaName( "GrenadeUniqueExplosion" );

end

-------------------------------------------------------------------------------
-- 3 : 2에서 사용할 함수.
-------------------------------------------------------------------------------
--[[  그레네이드 폭발용 함수
]]--
-------------------------------------------------------------------------------
function GrenadeUniqueExplosion( damage, range )

	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_MINE_LAUNCHER, ATTACKATTRIB_MINE_LAUNCHER , 0, damage, 0 );
	EXPLOSIONATTACK:InitAttack2( MAKESPHERE( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY(), POSITION:GetZ() ), range ), 1, 1 );
	EXPLOSIONATTACK:AddPushCondition( 300, 2000, -5000 );

	-- 0: 데미지 일괄적용, 1: 거리별데미지 적용
	EXPLOSIONATTACK:SetDamageApplyType( 1 );

	-- range 대비 2번째 범위 데미지 비율, 3번째 범위 데미지 비율, 4번째 범위 데미지 비율
	EXPLOSIONATTACK:SetDamageRates( 0.75, 0.5, 0.5 ); --0.75, 0.5, 0.5

	-- range 대비 2번째 범위 비율, 3번째 범위 비율, 4번째 범위 비율
	EXPLOSIONATTACK:SetExplosionRanges( 0.25, 0.5, 0.75 );

	-- 중앙쪽 분포가 되는 랜덤
	-- EXPLOSIONATTACK:SetGaussRandomDamage( 랜덤 최소데미지, 랜덤 최대데미지, 랜덤확률, 중앙집중도( 0이면 고른분포, 높을수록 중앙에 집중 ) )

	-- 고른 랜덤
	-- EXPLOSIONATTACK:SetRandomDamage( 랜덤 최소데미지, 랜덤 최대데미지, 랜덤확률 )

end



--[[ 어스 봄버 -- ,
	u32 uStateEndTime			= 공격상태시간
	float fLaunchForce			= 발사하는 힘
]]--
-------------------------------------------------------------------------------
function StandardEarthBomber(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitLua( 100, "Resources/Effects/skill_gunner_electronic_bomb_1.seq", "Resources/Sound/earthbomber_shot.ogg", 500, 4750 );

	-- 투사체 초기화용 루아스크립트 함수이름
	STATE:SetWeaponInitLuaFuncName( "StandardEarthInit" );

end



-------------------------------------------------------------------------------
-- 2 : 1에서 사용할 함수
-------------------------------------------------------------------------------
--[[  어스봄버에 대한 초기화 함수.
]]--
-------------------------------------------------------------------------------
function StandardEarthInit()

	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( -4000.0, 16.0, 1000.0, 100.0, 7 ); -- 1 // 20150507 : u32 uExplosionTime 1500 > 1000으로 변경 + 속도 감소치 하여 약 1.5초 내에 터질 수 있도록.
--	GRENADE:InitLua( -4000.0, 16.0, 1500.0, 100.0, 1 );

	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	--기본 속도 감소치, 지면에 마찰 시 속도 감소치, 벽에 바운드 시 속도 감소치
--	GRENADE:SetDamping( 0.5, 6.0, 0.9 );
	GRENADE:SetDamping( 0.5, 16.0, 0.9 );

	-- int nDamageType ( 0:모두, 1:적, 2:적과 본인 )
	GRENADE:SetDamageType( 0 );

	-- 캐릭터에 충돌여부 ( 0:적캐릭에 부딪치지만 폭발안함. 1:적캐릭에 부딪치고 폭발, 2:캐릭터 통과 ), 적캐릭터만 충돌할 것인가(true/false )
	GRENADE:SetCollisionChar( 0, true );

	-- bool bCheck, float fCheckSpeed
	GRENADE:SetSpeedCheck( true, 200.0 );
--	GRENADE:SetSpeedCheck( true, 700.0 );

	-- 폭발시퀀스파일, 우리편 일반 탄체, 상대편 일반 탄체, 우리편 폭발 준비 탄체, 상대편 폭발 준비 탄체
	GRENADE:SetSequence( "Resources/Effects/weapon_earth_bomber_ex.seq", "Resources/Effects/weapon_earth_bomber_throw.seq", "Resources/Effects/weapon_earth_bomber_throw.seq", "Resources/Effects/weapon_earth_bomber_fire.seq", "Resources/Effects/weapon_earth_bomber_fire.seq" );

	-- 폭발사운드
	GRENADE:SetExplosionSound( "Resources/Sound/earthbomber_bomb.ogg" );

		-- 폭발준비 사운드
	GRENADE:SetExplosionReadySound( "Resources/Sound/Earthbomber_limit.ogg" );

	-- 폭발 초기화용 루아스크립트 함수이름
	GRENADE:SetExplosionLuaName( "StandardEarthExplosion" );

	-- 폭발범위 설정.( XML에서 셋팅된 range는 사용안됨 )
	--GRENADE:SetCollisionRange( MAKESPHERE( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,0), 400, 400, 400 ) );

end



-------------------------------------------------------------------------------
-- 3 : 2에서 사용할 함수.
-------------------------------------------------------------------------------
--[[ 어스봄버 폭발용 함수
]]--
-------------------------------------------------------------------------------
function StandardEarthExplosion( damage, range )

	-- ( XML에서 셋팅된 range는 Sphere 타입에서만 사용된다. ), 기본적으로는 2번에서 셋팅한 폭발범위를 사용한다.
	-- 아래의 두개의 함수는 같이 써야함
	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_EARTH_BOMB, ATTACKATTRIB_EARTH_BOMBER , 0, damage, 0 );
	EXPLOSIONATTACK:InitAttack2( MAKESPHERE( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY(), POSITION:GetZ() ), range ), 1, 1 );

	EXPLOSIONATTACK:AddPushCondition( 300, 2000, -5000 );


	--자신 및 아군 데미지 추가 적용식. 최종 데미지 합에서 아래 입력받은 수치를 곱해서 자신과 아군에게 데미지를 적용한다.
	--수치는 0에서 1까지의 정수로 입력한다.
	--EXPLOSIONATTACK:SetFriendlyDamage(자신 데미지 비율, 자신 외 아군 데미지 비율);

	EXPLOSIONATTACK:SetFriendlyDamage(0.5, 0.2);

	-- 0: 데미지 일괄적용, 1: 거리별데미지 적용, 2: 거리별데미지(폭발점과의 거리를 가지고 체크. )
	EXPLOSIONATTACK:SetDamageApplyType( 2 );

	-- range 대비 2번째 범위 데미지 비율, 3번째 범위 데미지 비율, 4번째 범위 데미지 비율
	EXPLOSIONATTACK:SetDamageRates( 0.75, 0.3, 0.04 ); --0.75, 0.5, 0.25

	-- range 대비 2번째 범위 비율, 3번째 범위 비율, 4번째 범위 비율
	--2번째 범위 비율 이전값인 첫번째 범위 비율에는 SetDamageRates에서 세팅을 하지 않아도 1의 데미지 비율을 계산한다. (크리티컬 데미지)

	EXPLOSIONATTACK:SetExplosionRanges( 0.3, 0.5, 0.7 );	--0.4, 0.6, 0.8

	-- 중앙쪽 분포가 되는 랜덤
	-- EXPLOSIONATTACK:SetGaussRandomDamage( 랜덤 최소데미지, 랜덤 최대데미지, 랜덤확률, 중앙집중도( 0이면 고른분포, 높을수록 중앙에 집중 ) )
	-- EXPLOSIONATTACK:SetGaussRandomDamage( 10, 90, 10);

	-- 중앙쪽 분포가 되는 랜덤
	-- EXPLOSIONATTACK:SetGaussRandomDamage( 랜덤 최소데미지, 랜덤 최대데미지, 랜덤확률, 중앙집중도( 0이면 고른분포, 높을수록 중앙에 집중 ) )

	-- 고른 랜덤
	-- EXPLOSIONATTACK:SetRandomDamage( 랜덤 최소데미지, 랜덤 최대데미지, 랜덤확률 )
	-- 데미지 =  damage  + 랜덤 데미지

	-- 권동환 블로우 테스트
	-- EXPLOSIONATTACK:AddBlowCondition( 2000, 2000 );

end



-- 라이트닝 봄버 --


-------------------------------------------------------------------------------
-- 1 : Weapon_lua.x7 에서 사용할 함수
-------------------------------------------------------------------------------
--[[  라이트닝 봄버를 들고 있는 상태에서 발사를 할때 적용할 함수.
	기본 MineLaunch 셋팅
	InitLua인자
	u32 uThrowTime				= 공격버튼을 누른 후에 해당시간후에 발사를 한다.
	cchar * szThrowSequence,
	cchar * szThrowSound,
	u32 uStateEndTime			= 공격상태시간
	float fLaunchForce			= 발사하는 힘
]]--
-------------------------------------------------------------------------------
function StandardLightningBomber(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitLua( 100, "Resources/Effects/skill_gunner_electronic_bomb_1.seq", "Resources/Sound/earthbomber_shot.ogg", 500, 4750 );

	-- 투사체 초기화용 루아스크립트 함수이름
	STATE:SetWeaponInitLuaFuncName( "StandardLightningInit" );

end



-------------------------------------------------------------------------------
-- 2 : 1에서 사용할 함수
-------------------------------------------------------------------------------
--[[  라이트닝 봄버에 대한 초기화 함수.
]]--
-------------------------------------------------------------------------------
function StandardLightningInit()

	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( -4000.0, 16.0, 1000.0, 100.0 , 1 ); --터지는 속도 제어 (1.5초내에 폭발)
--	GRENADE:InitLua( -4000.0, 16.0, 1500.0, 100.0 , 7 );

	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	--기본 속도 감소치, 지면에 마찰 시 속도 감소치, 벽에 바운드 시 속도 감소치
--	GRENADE:SetDamping( 0.5, 6.0, 0.9 );
	GRENADE:SetDamping( 0.5, 16.0, 0.9 );

	-- int nDamageType ( 0:모두, 1:적, 2:적과 본인 )
	GRENADE:SetDamageType( 0 );

	-- 캐릭터에 충돌여부 ( 0:적캐릭에 부딪치지만 폭발안함. 1:적캐릭에 부딪치고 폭발, 2:캐릭터 통과 ), 적캐릭터만 충돌할 것인가(true/false )
	GRENADE:SetCollisionChar( 0, true );

	-- bool bCheck, float fCheckSpeed
	GRENADE:SetSpeedCheck( true, 200.0 );
--	GRENADE:SetSpeedCheck( true, 700.0 );

	-- 폭발시퀀스파일, 우리편 일반 탄체, 상대편 일반 탄체, 우리편 폭발 준비 탄체, 상대편 폭발 준비 탄체
	GRENADE:SetSequence( "Resources/Effects/weapon_Lightning_bomber_ex.seq", "Resources/Effects/weapon_Lightning_bomber_throw.seq", "Resources/Effects/weapon_Lightning_bomber_throw.seq", "Resources/Effects/weapon_Lightning_bomber_fire.seq", "Resources/Effects/weapon_Lightning_bomber_fire.seq" );

	-- 폭발사운드
	GRENADE:SetExplosionSound( "Resources/Sound/lightningbomber_bomb.ogg" );

	-- 폭발준비 사운드
	GRENADE:SetExplosionReadySound( "Resources/Sound/Earthbomber_limit.ogg" );

	-- 폭발 초기화용 루아스크립트 함수이름
	GRENADE:SetExplosionLuaName( "StandardLightningExplosion" );

	-- 폭발범위 설정.( XML에서 셋팅된 range는 사용안됨 )
	-- GRENADE:SetCollisionRange( MAKEBOX( MAKEVECTOR3(0,200,200), MAKEVECTOR3(0,0,-1), 400, 400, 400 ) );

	--SetCollisionRange은 데브 환경에서 볼 수 있는 타격 박스를 생성한다.
	--setcollsionRange와 아래 EXPLOSIONATTACK:InitAttack2의 좌표값을 동기화를 해야 정상적으로 적용한다.
	GRENADE:SetCollisionRange( MAKECYLINDER( MAKEVECTOR3( 0, 200, 0 ), 700, 900 ) );

end

-------------------------------------------------------------------------------
-- 3 : 2에서 사용할 함수.
-------------------------------------------------------------------------------
--[[  라이트닝 봄버 폭발용 함수
]]--
-------------------------------------------------------------------------------
function StandardLightningExplosion( damage, range )

	-- ( XML에서 셋팅된 range는 Sphere 타입에서만 사용된다. ), 기본적으로는 2번에서 셋팅한 폭발범위를 사용한다.
	-- 아래의 두개의 함수는 같이 써야함
	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_LIGHT_BOMB, ATTACKATTRIB_LIGHT_BOMBER , 0, damage, 0 );

	--EXPLOSIONATTACK:InitAttack2는 실제 타격 박스를 생성한다.
	EXPLOSIONATTACK:InitAttack2( MAKECYLINDER( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY()+250, POSITION:GetZ() ), 700, 900 ), 1, 1 );
	-- EXPLOSIONATTACK:InitAttack2( MAKEFAN( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY()+300, POSITION:GetZ()), MAKEVECTOR2(0,-1), 300, 300, 300, 120 ), 1, 1);

	EXPLOSIONATTACK:AddPushCondition( 300, 2000, -5000 );
	EXPLOSIONATTACK:AddMoveSpeedCondition(2500, 0.5); --슬로우 추가 160218


	--자신 및 아군 데미지 추가 적용식. 최종 데미지 합에서 아래 입력받은 수치를 곱해서 자신과 아군에게 데미지를 적용한다.
	--수치는 0에서 1까지의 정수로 입력한다.
	--EXPLOSIONATTACK:SetFriendlyDamage(자신 데미지 비율, 자신 외 아군 데미지 비율);

	EXPLOSIONATTACK:SetFriendlyDamage(0.5, 0.2);

	-- 0: 데미지 일괄적용, 1: 거리별데미지 적용, 2: 거리별데미지(폭발점과의 거리를 가지고 체크. )
	--EXPLOSIONATTACK:SetDamageApplyType( 1 );

	-- range 대비 2번째 범위 데미지 비율, 3번째 범위 데미지 비율, 4번째 범위 데미지 비율
	--EXPLOSIONATTACK:SetDamageRates( 0.75, 0.5, 0.25 );

	-- range 대비 2번째 범위 비율, 3번째 범위 비율, 4번째 범위 비율
	--EXPLOSIONATTACK:SetExplosionRanges( 0.25, 0.5, 0.75 );

	-- 중앙쪽 분포가 되는 랜덤
	-- EXPLOSIONATTACK:SetGaussRandomDamage( 랜덤 최소데미지, 랜덤 최대데미지, 랜덤확률, 중앙집중도( 0이면 고른분포, 높을수록 중앙에 집중 ) )
	 EXPLOSIONATTACK:SetGaussRandomDamage( 0, 167, 100, 1); -- 20150507 : 랜덤 데미지 기존 35~ 110 > 변경 28 ~ 110 (weapon damage 25)
	-- EXPLOSIONATTACK:SetGaussRandomDamage( 10, 130, 100, 3);

	 --기본 데미지+랜덤데미지 합한 값이 SetGaussRandomCritical 수치를 넘을 시에 크리티컬 메시지를 출력한다.
	 --아군 및 자신이 피격할 경우, FrendlyDamage 체크 전에 아래 크리티컬을 체크하고 FrendlyDamage에 따른 데미지를 게임 내 반영한다.
	 --즉 RandomCritical 수치가 100일 경우에 자신이 피격 시 50이상 데미지가 뜰 때 크리티컬 메시지가 호출된다.
	 EXPLOSIONATTACK:SetGaussRandomCritical( 120 );


	-- 고른 랜덤
	-- EXPLOSIONATTACK:SetRandomDamage( 랜덤 최소데미지, 랜덤 최대데미지, 랜덤확률 )
	-- 데미지 =  damage  + 랜덤 데미지




end





-- 레스큐건 --

------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- 1 : Weapon_lua.x7 에서 사용할 함수
-------------------------------------------------------------------------------
--[[  그레네이드를 들고 있는 상태에서 발사를 할때 적용할 함수.
	기본 MineLaunch 셋팅
	InitLua인자
	u32 uThrowTime				= 공격버튼을 누른 후에 해당시간후에 발사를 한다.
	cchar * szThrowSequence,
	cchar * szThrowSound,
	u32 uStateEndTime			= 공격상태시간
	float fLaunchForce			= 발사하는 힘
]]--
-------------------------------------------------------------------------------
function StandardRescueGunLaunch(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitLua( 100, "Resources/Effects/skill_gunner_electronic_bomb_1.seq", "Resources/Sound/rescuegun_shot.ogg", 500, 5000 ); -- (쏜 후 후딜500,총알 날아가는 힘 4000을 조정 시 날아가는 속도가 달라짐)

	-- 투사체 초기화용 루아스크립트 함수이름
	STATE:SetWeaponInitLuaFuncName( "StandardRescueGunInit" );

end



-------------------------------------------------------------------------------
-- 2 : 1에서 사용할 함수
-------------------------------------------------------------------------------
--[[  레스큐 탄에 대한 초기화 함수.
]]--
-------------------------------------------------------------------------------
function StandardRescueGunInit()
	-- (중력값,**,터지는데 걸리는 초,**)
	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( -4500.0, 16.0, 4000.0, 100.0 , 1 );  -- 2000.0, 탄이 멈춘 후 터지는데 걸리는 시간
--	GRENADE:InitLua( -4500.0, 16.0, 4000.0, 100.0 , 7 );  -- 2000.0, 탄이 멈춘 후 터지는데 걸리는 시간

	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	-- 기본 속도 감소치, 지면에 마찰 시 속도 감소치, 벽에 바운드 시 속도 감소치 _(땅에 닿은후 총탄이 굴러가는 속도 조정)
--	GRENADE:SetDamping( 0.5, 0, 0.3 );   --( 0.5, 6.0, 0.9 ) , ( 0.5, 10, 0.6 ), ( 0.5, 20, 0.5 )
	GRENADE:SetDamping( 0.5, 16, 0.3 );   --( 0.5, 6.0, 0.9 ) , ( 0.5, 10, 0.6 ), ( 0.5, 20, 0.5 )

	-- int nDamageType ( 0:모두, 1:적, 2:적과 본인 )
	GRENADE:SetDamageType( 0 );   -- 탄이 터질때 누구에게 데미지를 주는지에 대한 값 (일반 레스큐건은 적에게도 힐이 적용되며 Mk2는 적용되지 않음)

	-- 캐릭터에 충돌여부 ( 0:적캐릭에 부딪치지만 폭발안함. 1:적캐릭에 부딪치고 폭발, 2:캐릭터 통과 ), 적캐릭터만 충돌할 것인가(true/false )
	GRENADE:SetCollisionChar( 3, false ); -- 캐릭터와 충돌 시 터지느냐 안터지느냐에 값

	-- bool bCheck, float fCheckSpeed 포탄을 쏜 후 이동 체크를 하느냐 안하 느냐 true/false
	GRENADE:SetSpeedCheck( true, 200.0 );   -- 체크 끝난 후에 2번으로 넘어감
--	GRENADE:SetSpeedCheck( true, 700.0 );   -- 체크 끝난 후에 2번으로 넘어감



	-- 폭발시퀀스파일, 우리편 일반 탄체, 상대편 일반 탄체, 우리편 폭발 준비 탄체, 상대편 폭발 준비 탄체(폭발 준비 혹은 던질때 적군과 아군이 보는 시점에 따라 이미지가 달라지게 하는 함수)
	GRENADE:SetSequence( "Resources/Effects/weapon_resque_fire01.seq", "Resources/Effects/weapon_resque_ball01.seq", "Resources/Effects/weapon_resque_ball01.seq", "Resources/Effects/weapon_resque_ball02.seq", "Resources/Effects/weapon_resque_ball02.seq" );

	-- 폭발사운드
	GRENADE:SetExplosionSound( "Resources/Sound/rescuegun_bomb.ogg" );

	-- 폭발 초기화용 루아스크립트 함수이름
	GRENADE:SetExplosionLuaName( "StandardRescueGunExplosion" );

	-- // 활성화 이후 유저에 충돌해야 하는가?( true/false ) 기본은 false 임
	GRENADE:SetAfterActiveCheckChar( true );

	-- 정진수 레스큐건 수정
	GRENADE:SetRescueCriticalMaxProb( 100.0 );
	GRENADE:SetRescueCriticalMinProb( 0.0 );

end



-------------------------------------------------------------------------------
-- 3 : 2에서 사용할 함수.
-------------------------------------------------------------------------------
--[[  레스큐건 폭발용 함수
]]--
-------------------------------------------------------------------------------
function StandardRescueGunExplosion( damage, range )

	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_RESCUEGUN, ATTACKATTRIB_RESCUEGUN , 0, damage, 0 );
	EXPLOSIONATTACK:InitAttack2( MAKESPHERE( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY(), POSITION:GetZ() ), range ), 1, 1 );


	-- 0: 데미지 일괄적용, 1: 거리별데미지 적용
	EXPLOSIONATTACK:SetDamageApplyType( 0 );

	--자신 및 아군 데미지 추가 적용식. 최종 데미지 합에서 아래 입력받은 수치를 곱해서 자신과 아군에게 데미지를 적용한다. 수치는 0에서 1까지의 정수로 입력한다.
	--(자신 데미지 비율, 자신 외 아군 데미지 비율);
	EXPLOSIONATTACK:SetFriendlyDamage(0, 5.0);	-- 적군에게도 100% 회복되는 문제가 있음. 기존과 같이 5배로 변경하고 weapon에서 수치 변경

	-- 최종 데미지 계산함수 등록
	--EXPLOSIONATTACK:SetLastDamageLuaFunction( "StandardRescueGunCalcDamage" );  StandardRescueGunCalcDamage 이부분이 들어가게 되면 나중에 체크되어 가우스 함수를 사용하지 못하여 주석 처리함


	EXPLOSIONATTACK:SetUiCriticalExplosionAttack( false );  -- 크리티컬 유아이 출력 여부
	EXPLOSIONATTACK:SetExceptSentry( true );   -- 센트리류 공격에서 제외 할것인지


	EXPLOSIONATTACK:SetCritical( 1.96, 10 );   --랜덤 크리티컬 (크리티컬 배율, 크리티컬 확률)


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

-------------------------------------------------------------------------------
-- 4 : 3에서 사용할 함수.
-------------------------------------------------------------------------------
--[[  레스큐건 최종 데미지를 계산하는 함수
	아래의 것들은 무조건 지켜야 한다.
	lastDamage 에 최종 계산 값을 넣어줘야 한다.
	ReturnArg:SetLFloat( "lastDamage", lastDamage );
]]--
-------------------------------------------------------------------------------
--[[ function StandardRescueGunCalcDamage( damage, userCount )

	lDamage = 0.0;

	if 0 < userCount then
		lDamage = -25.0;

	if 2 < userCount then
		lDamage = -30.0;
	else
		lDamage = 0.0;
	end



	ReturnArg:PushLFloat( "lastDamage", lDamage );

end

]]-- 인원 체크를 안하게 되어 사용 안하는 함수



-- 유니크 봄버 ----------------------------------------------------------------

--[[ 봄버 유니크 -- ,
	u32 uStateEndTime			= 공격상태시간
	float fLaunchForce			= 발사하는 힘
]]--
-------------------------------------------------------------------------------
function StandardUniqueBomber(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitLua( 100, "Resources/Effects/skill_gunner_electronic_bomb_1.seq", "Resources/Sound/earthbomber_shot.ogg", 500, 4750 );

	-- 투사체 초기화용 루아스크립트 함수이름
	STATE:SetWeaponInitLuaFuncName( "StandardUniqueInit" );

end

-------------------------------------------------------------------------------
-- 2 : 1에서 사용할 함수
-------------------------------------------------------------------------------
--[[ 유니크 봄버에 대한 초기화 함수.
]]--
-------------------------------------------------------------------------------
function StandardUniqueInit()

	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( -4000.0, 16.0, 1000.0, 100.0 , 7 );	--터지는 속도 변경
--	GRENADE:InitLua( -4000.0, 16.0, 1500.0, 100.0 , 1 );

	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	--기본 속도 감소치, 지면에 마찰 시 속도 감소치, 벽에 바운드 시 속도 감소치
--	GRENADE:SetDamping( 0.5, 6.0, 0.9 );
	GRENADE:SetDamping( 0.5, 16.0, 0.9 );

	-- int nDamageType ( 0:모두, 1:적, 2:적과 본인 )
	GRENADE:SetDamageType( 0 );

	-- 캐릭터에 충돌여부 ( 0:적캐릭에 부딪치지만 폭발안함. 1:적캐릭에 부딪치고 폭발, 2:캐릭터 통과 ), 적캐릭터만 충돌할 것인가(true/false )
	GRENADE:SetCollisionChar( 0, true );

	-- bool bCheck, float fCheckSpeed
	GRENADE:SetSpeedCheck( true, 200.0 );
--	GRENADE:SetSpeedCheck( true, 700.0 );

	-- 폭발시퀀스파일, 우리편 일반 탄체, 상대편 일반 탄체, 우리편 폭발 준비 탄체, 상대편 폭발 준비 탄체
	GRENADE:SetSequence( "Resources/Effects/weapon_earth_bomber_ex.seq",
                         "Resources/Effects/weapon_earthbomber_r_throw.seq",
                         "Resources/Effects/weapon_earthbomber_r_throw.seq",
                         "Resources/Effects/weapon_earthbomber_r_fire.seq",
                         "Resources/Effects/weapon_earthbomber_r_fire.seq" );

	-- 폭발사운드
	GRENADE:SetExplosionSound( "Resources/Sound/earthbomber_bomb.ogg" );

		-- 폭발준비 사운드
	GRENADE:SetExplosionReadySound( "Resources/Sound/Earthbomber_limit.ogg" );

	-- 폭발 초기화용 루아스크립트 함수이름
	GRENADE:SetExplosionLuaName( "StandardUniqueExplosion" );

	-- 폭발범위 설정.( XML에서 셋팅된 range는 사용안됨 )
	--GRENADE:SetCollisionRange( MAKESPHERE( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,0), 400, 400, 400 ) );

end

-------------------------------------------------------------------------------
-- 3 : 2에서 사용할 함수.
-------------------------------------------------------------------------------
--[[ 유니크 봄버 폭발용 함수
]]--
-------------------------------------------------------------------------------
function StandardUniqueExplosion( damage, range )

	-- ( XML에서 셋팅된 range는 Sphere 타입에서만 사용된다. ), 기본적으로는 2번에서 셋팅한 폭발범위를 사용한다.
	-- 아래의 두개의 함수는 같이 써야함
	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_EARTH_BOMB, ATTACKATTRIB_EARTH_BOMBER , 0, damage, 0 );
	EXPLOSIONATTACK:InitAttack2( MAKESPHERE( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY(), POSITION:GetZ() ), range ), 1, 1 );

	EXPLOSIONATTACK:AddPushCondition( 300, 2000, -5000 );

	--자신 및 아군 데미지 추가 적용식. 최종 데미지 합에서 아래 입력받은 수치를 곱해서 자신과 아군에게 데미지를 적용한다.
	--수치는 0에서 1까지의 정수로 입력한다.
	--EXPLOSIONATTACK:SetFriendlyDamage(자신 데미지 비율, 자신 외 아군 데미지 비율);

	EXPLOSIONATTACK:SetFriendlyDamage(0.5, 0.2);

	-- 0: 데미지 일괄적용, 1: 거리별데미지 적용, 2: 거리별데미지(폭발점과의 거리를 가지고 체크. )
	EXPLOSIONATTACK:SetDamageApplyType( 2 );

	-- range 대비 2번째 범위 데미지 비율, 3번째 범위 데미지 비율, 4번째 범위 데미지 비율
	EXPLOSIONATTACK:SetDamageRates( 0.75, 0.3, 0.04 );

	-- range 대비 2번째 범위 비율, 3번째 범위 비율, 4번째 범위 비율
	--2번째 범위 비율 이전값인 첫번째 범위 비율에는 SetDamageRates에서 세팅을 하지 않아도 1의 데미지 비율을 계산한다. (크리티컬 데미지)

	EXPLOSIONATTACK:SetExplosionRanges( 0.3, 0.5, 0.7 );

	-- 중앙쪽 분포가 되는 랜덤
	-- EXPLOSIONATTACK:SetGaussRandomDamage( 랜덤 최소데미지, 랜덤 최대데미지, 랜덤확률, 중앙집중도( 0이면 고른분포, 높을수록 중앙에 집중 ) )
	-- EXPLOSIONATTACK:SetGaussRandomDamage( 10, 90, 10);

	-- 중앙쪽 분포가 되는 랜덤
	-- EXPLOSIONATTACK:SetGaussRandomDamage( 랜덤 최소데미지, 랜덤 최대데미지, 랜덤확률, 중앙집중도( 0이면 고른분포, 높을수록 중앙에 집중 ) )

	-- 고른 랜덤
	-- EXPLOSIONATTACK:SetRandomDamage( 랜덤 최소데미지, 랜덤 최대데미지, 랜덤확률 )
	-- 데미지 =  damage  + 랜덤 데미지

end


-- 글리치 조이 어스 봄버 ----------------------------------------------------------------

--[[ 글리치 조이 어스 봄버 -- ,
	u32 uStateEndTime			= 공격상태시간
	float fLaunchForce			= 발사하는 힘
]]--
-------------------------------------------------------------------------------
function GlitchJoyEarthBomber(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitLua( 100, "Resources/Effects/skill_gunner_electronic_bomb_1.seq", "Resources/Sound/earthbomber_shot.ogg", 500, 4750 );

	-- 투사체 초기화용 루아스크립트 함수이름
	STATE:SetWeaponInitLuaFuncName( "GlitchJoyEarthBomberInit" );

end

-------------------------------------------------------------------------------
-- 2 : 1에서 사용할 함수
-------------------------------------------------------------------------------
--[[ 글리치 조이 어스 봄버에 대한 초기화 함수.
]]--
-------------------------------------------------------------------------------
function GlitchJoyEarthBomberInit()

	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( -4000.0, 16.0, 1000.0, 100.0 , 7 );	--터지는 속도 변경
--	GRENADE:InitLua( -4000.0, 16.0, 1500.0, 100.0 , 1 );

	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	--기본 속도 감소치, 지면에 마찰 시 속도 감소치, 벽에 바운드 시 속도 감소치
--	GRENADE:SetDamping( 0.5, 6.0, 0.9 );
	GRENADE:SetDamping( 0.5, 16.0, 0.9 );

	-- int nDamageType ( 0:모두, 1:적, 2:적과 본인 )
	GRENADE:SetDamageType( 0 );

	-- 캐릭터에 충돌여부 ( 0:적캐릭에 부딪치지만 폭발안함. 1:적캐릭에 부딪치고 폭발, 2:캐릭터 통과 ), 적캐릭터만 충돌할 것인가(true/false )
	GRENADE:SetCollisionChar( 0, true );

	-- bool bCheck, float fCheckSpeed
	GRENADE:SetSpeedCheck( true, 200.0 );
--	GRENADE:SetSpeedCheck( true, 700.0 );

	-- 폭발시퀀스파일, 우리편 일반 탄체, 상대편 일반 탄체, 우리편 폭발 준비 탄체, 상대편 폭발 준비 탄체
	GRENADE:SetSequence( "Resources/Effects/weapon_earth_bomber_joy_ex.seq",
                         "Resources/Effects/weapon_earth_bomber_joy_throw.seq",
                         "Resources/Effects/weapon_earth_bomber_joy_throw.seq",
                         "Resources/Effects/weapon_earth_bomber_joy_fire.seq",
                         "Resources/Effects/weapon_earth_bomber_joy_fire.seq" );

	-- 폭발사운드
	GRENADE:SetExplosionSound( "Resources/Sound/earthbomber_bomb.ogg" );

		-- 폭발준비 사운드
	GRENADE:SetExplosionReadySound( "Resources/Sound/Earthbomber_limit.ogg" );

	-- 폭발 초기화용 루아스크립트 함수이름
	GRENADE:SetExplosionLuaName( "GlitchJoyEarthBomberExplosion" );

	-- 폭발범위 설정.( XML에서 셋팅된 range는 사용안됨 )
	--GRENADE:SetCollisionRange( MAKESPHERE( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,0), 400, 400, 400 ) );

end

-------------------------------------------------------------------------------
-- 3 : 2에서 사용할 함수.
-------------------------------------------------------------------------------
--[[ 글리치 조이 어스 봄버 폭발용 함수
]]--
-------------------------------------------------------------------------------
function GlitchJoyEarthBomberExplosion( damage, range )

	-- ( XML에서 셋팅된 range는 Sphere 타입에서만 사용된다. ), 기본적으로는 2번에서 셋팅한 폭발범위를 사용한다.
	-- 아래의 두개의 함수는 같이 써야함
	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_EARTH_BOMB, ATTACKATTRIB_EARTH_BOMBER , 0, damage, 0 );
	EXPLOSIONATTACK:InitAttack2( MAKESPHERE( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY(), POSITION:GetZ() ), range ), 1, 1 );

	EXPLOSIONATTACK:AddPushCondition( 300, 2000, -5000 );

	--자신 및 아군 데미지 추가 적용식. 최종 데미지 합에서 아래 입력받은 수치를 곱해서 자신과 아군에게 데미지를 적용한다.
	--수치는 0에서 1까지의 정수로 입력한다.
	--EXPLOSIONATTACK:SetFriendlyDamage(자신 데미지 비율, 자신 외 아군 데미지 비율);

	EXPLOSIONATTACK:SetFriendlyDamage(0.5, 0.2);

	-- 0: 데미지 일괄적용, 1: 거리별데미지 적용, 2: 거리별데미지(폭발점과의 거리를 가지고 체크. )
	EXPLOSIONATTACK:SetDamageApplyType( 2 );

	-- range 대비 2번째 범위 데미지 비율, 3번째 범위 데미지 비율, 4번째 범위 데미지 비율
	EXPLOSIONATTACK:SetDamageRates( 0.75, 0.3, 0.04 );

	-- range 대비 2번째 범위 비율, 3번째 범위 비율, 4번째 범위 비율
	--2번째 범위 비율 이전값인 첫번째 범위 비율에는 SetDamageRates에서 세팅을 하지 않아도 1의 데미지 비율을 계산한다. (크리티컬 데미지)

	EXPLOSIONATTACK:SetExplosionRanges( 0.3, 0.5, 0.7 );

	-- 중앙쪽 분포가 되는 랜덤
	-- EXPLOSIONATTACK:SetGaussRandomDamage( 랜덤 최소데미지, 랜덤 최대데미지, 랜덤확률, 중앙집중도( 0이면 고른분포, 높을수록 중앙에 집중 ) )
	-- EXPLOSIONATTACK:SetGaussRandomDamage( 10, 90, 10);

	-- 중앙쪽 분포가 되는 랜덤
	-- EXPLOSIONATTACK:SetGaussRandomDamage( 랜덤 최소데미지, 랜덤 최대데미지, 랜덤확률, 중앙집중도( 0이면 고른분포, 높을수록 중앙에 집중 ) )

	-- 고른 랜덤
	-- EXPLOSIONATTACK:SetRandomDamage( 랜덤 최소데미지, 랜덤 최대데미지, 랜덤확률 )
	-- 데미지 =  damage  + 랜덤 데미지

end


-------------------------------------------------------------------------------
--[[  글리치 파괴 라이트닝 봄버 ]]--
-------------------------------------------------------------------------------
function GlitchDestroyedLightningBomber(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitLua( 100, "Resources/Effects/skill_gunner_electronic_bomb_1.seq", "Resources/Sound/earthbomber_shot.ogg", 500, 4750 );

	-- 투사체 초기화용 루아스크립트 함수이름
	STATE:SetWeaponInitLuaFuncName( "GlitchDestroyedLightningInit" );

end


function GlitchDestroyedLightningInit()

	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( -4000.0, 16.0, 1000.0, 100.0 , 1 ); --터지는 속도 제어 (1.5초내에 폭발)
--	GRENADE:InitLua( -4000.0, 16.0, 1500.0, 100.0 , 7 );

	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	--기본 속도 감소치, 지면에 마찰 시 속도 감소치, 벽에 바운드 시 속도 감소치
--	GRENADE:SetDamping( 0.5, 6.0, 0.9 );
	GRENADE:SetDamping( 0.5, 16.0, 0.9 );

	-- int nDamageType ( 0:모두, 1:적, 2:적과 본인 )
	GRENADE:SetDamageType( 0 );

	-- 캐릭터에 충돌여부 ( 0:적캐릭에 부딪치지만 폭발안함. 1:적캐릭에 부딪치고 폭발, 2:캐릭터 통과 ), 적캐릭터만 충돌할 것인가(true/false )
	GRENADE:SetCollisionChar( 0, true );

	-- bool bCheck, float fCheckSpeed
	GRENADE:SetSpeedCheck( true, 200.0 );
--	GRENADE:SetSpeedCheck( true, 700.0 );

	-- 폭발시퀀스파일, 우리편 일반 탄체, 상대편 일반 탄체, 우리편 폭발 준비 탄체, 상대편 폭발 준비 탄체
	GRENADE:SetSequence( "Resources/Effects/weapon_lightning_bomber_glitch_ex.seq", "Resources/Effects/weapon_lightning_bomber_glitch_throw.seq", "Resources/Effects/weapon_lightning_bomber_glitch_throw.seq", "Resources/Effects/weapon_lightning_bomber_glitch_fire.seq", "Resources/Effects/weapon_lightning_bomber_glitch_fire.seq" );

	-- 폭발사운드
	GRENADE:SetExplosionSound( "Resources/Sound/lightningbomber_bomb.ogg" );

	-- 폭발준비 사운드
	GRENADE:SetExplosionReadySound( "Resources/Sound/Earthbomber_limit.ogg" );

	-- 폭발 초기화용 루아스크립트 함수이름
	GRENADE:SetExplosionLuaName( "GlitchDestroyedLightningExplosion" );

	-- 폭발범위 설정.( XML에서 셋팅된 range는 사용안됨 )
	-- GRENADE:SetCollisionRange( MAKEBOX( MAKEVECTOR3(0,200,200), MAKEVECTOR3(0,0,-1), 400, 400, 400 ) );

	--SetCollisionRange은 데브 환경에서 볼 수 있는 타격 박스를 생성한다.
	--setcollsionRange와 아래 EXPLOSIONATTACK:InitAttack2의 좌표값을 동기화를 해야 정상적으로 적용한다.
	GRENADE:SetCollisionRange( MAKECYLINDER( MAKEVECTOR3( 0, 200, 0 ), 700, 900 ) );

end

-------------------------------------------------------------------------------
-- 3 : 2에서 사용할 함수.
-------------------------------------------------------------------------------
--[[  라이트닝 봄버 폭발용 함수
]]--
-------------------------------------------------------------------------------
function GlitchDestroyedLightningExplosion( damage, range )

	-- ( XML에서 셋팅된 range는 Sphere 타입에서만 사용된다. ), 기본적으로는 2번에서 셋팅한 폭발범위를 사용한다.
	-- 아래의 두개의 함수는 같이 써야함
	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_LIGHT_BOMB, ATTACKATTRIB_LIGHT_BOMBER , 0, damage, 0 );

	--EXPLOSIONATTACK:InitAttack2는 실제 타격 박스를 생성한다.
	EXPLOSIONATTACK:InitAttack2( MAKECYLINDER( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY()+250, POSITION:GetZ() ), 700, 900 ), 1, 1 );
	-- EXPLOSIONATTACK:InitAttack2( MAKEFAN( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY()+300, POSITION:GetZ()), MAKEVECTOR2(0,-1), 300, 300, 300, 120 ), 1, 1);

	EXPLOSIONATTACK:AddPushCondition( 300, 2000, -5000 );
	EXPLOSIONATTACK:AddMoveSpeedCondition(2500, 0.5); --슬로우 추가 160218

	--자신 및 아군 데미지 추가 적용식. 최종 데미지 합에서 아래 입력받은 수치를 곱해서 자신과 아군에게 데미지를 적용한다.
	--수치는 0에서 1까지의 정수로 입력한다.
	--EXPLOSIONATTACK:SetFriendlyDamage(자신 데미지 비율, 자신 외 아군 데미지 비율);

	EXPLOSIONATTACK:SetFriendlyDamage(0.5, 0.2);

	-- 0: 데미지 일괄적용, 1: 거리별데미지 적용, 2: 거리별데미지(폭발점과의 거리를 가지고 체크. )
	--EXPLOSIONATTACK:SetDamageApplyType( 1 );

	-- range 대비 2번째 범위 데미지 비율, 3번째 범위 데미지 비율, 4번째 범위 데미지 비율
	--EXPLOSIONATTACK:SetDamageRates( 0.75, 0.5, 0.25 );

	-- range 대비 2번째 범위 비율, 3번째 범위 비율, 4번째 범위 비율
	--EXPLOSIONATTACK:SetExplosionRanges( 0.25, 0.5, 0.75 );

	-- 중앙쪽 분포가 되는 랜덤
	-- EXPLOSIONATTACK:SetGaussRandomDamage( 랜덤 최소데미지, 랜덤 최대데미지, 랜덤확률, 중앙집중도( 0이면 고른분포, 높을수록 중앙에 집중 ) )
	 EXPLOSIONATTACK:SetGaussRandomDamage( 0, 167, 100, 1); -- 20150507 : 랜덤 데미지 기존 35~ 110 > 변경 28 ~ 110 (weapon damage 25)
	-- EXPLOSIONATTACK:SetGaussRandomDamage( 10, 130, 100, 3);

	 --기본 데미지+랜덤데미지 합한 값이 SetGaussRandomCritical 수치를 넘을 시에 크리티컬 메시지를 출력한다.
	 --아군 및 자신이 피격할 경우, FrendlyDamage 체크 전에 아래 크리티컬을 체크하고 FrendlyDamage에 따른 데미지를 게임 내 반영한다.
	 --즉 RandomCritical 수치가 100일 경우에 자신이 피격 시 50이상 데미지가 뜰 때 크리티컬 메시지가 호출된다.
	 EXPLOSIONATTACK:SetGaussRandomCritical( 120 );


	-- 고른 랜덤
	-- EXPLOSIONATTACK:SetRandomDamage( 랜덤 최소데미지, 랜덤 최대데미지, 랜덤확률 )
	-- 데미지 =  damage  + 랜덤 데미지




end


--[[ 수박 봄버 -- ,
	u32 uStateEndTime			= 공격상태시간
	float fLaunchForce			= 발사하는 힘
]]--
-------------------------------------------------------------------------------
function StandardWatermelonBomber(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitLua( 100, "Resources/Effects/skill_gunner_electronic_bomb_1.seq", "Resources/Sound/earthbomber_shot.ogg", 500, 4750 );

	-- 투사체 초기화용 루아스크립트 함수이름
	STATE:SetWeaponInitLuaFuncName( "StandardWatermelonInit" );

end



-------------------------------------------------------------------------------
-- 2 : 1에서 사용할 함수
-------------------------------------------------------------------------------
--[[  수박 봄버에 대한 초기화 함수.
]]--
-------------------------------------------------------------------------------
function StandardWatermelonInit()

	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( -4000.0, 16.0, 1000.0, 100.0, 7 ); -- 1 // 20150507 : u32 uExplosionTime 1500 > 1000으로 변경 + 속도 감소치 하여 약 1.5초 내에 터질 수 있도록.
--	GRENADE:InitLua( -4000.0, 16.0, 1500.0, 100.0, 1 );

	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	--기본 속도 감소치, 지면에 마찰 시 속도 감소치, 벽에 바운드 시 속도 감소치
--	GRENADE:SetDamping( 0.5, 6.0, 0.9 );
	GRENADE:SetDamping( 0.5, 16.0, 0.9 );

	-- int nDamageType ( 0:모두, 1:적, 2:적과 본인 )
	GRENADE:SetDamageType( 0 );

	-- 캐릭터에 충돌여부 ( 0:적캐릭에 부딪치지만 폭발안함. 1:적캐릭에 부딪치고 폭발, 2:캐릭터 통과 ), 적캐릭터만 충돌할 것인가(true/false )
	GRENADE:SetCollisionChar( 0, true );

	-- bool bCheck, float fCheckSpeed
	GRENADE:SetSpeedCheck( true, 200.0 );
--	GRENADE:SetSpeedCheck( true, 700.0 );

	-- 폭발시퀀스파일, 우리편 일반 탄체, 상대편 일반 탄체, 우리편 폭발 준비 탄체, 상대편 폭발 준비 탄체
	GRENADE:SetSequence( "Resources/Effects/weapon_earth_bomber_ex.seq",
	                     "Resources/Effects/weapon_watermelon_bomber_throw.seq",
						 "Resources/Effects/weapon_watermelon_bomber_throw.seq",
						 "Resources/Effects/weapon_watermelon_bomber_fire.seq",
						 "Resources/Effects/weapon_watermelon_bomber_fire.seq" );

	-- 폭발사운드
	GRENADE:SetExplosionSound( "Resources/Sound/earthbomber_bomb.ogg" );

		-- 폭발준비 사운드
	GRENADE:SetExplosionReadySound( "Resources/Sound/Earthbomber_limit.ogg" );

	-- 폭발 초기화용 루아스크립트 함수이름
	GRENADE:SetExplosionLuaName( "StandardWatermelonExplosion" );

	-- 폭발범위 설정.( XML에서 셋팅된 range는 사용안됨 )
	--GRENADE:SetCollisionRange( MAKESPHERE( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,0), 400, 400, 400 ) );

end



-------------------------------------------------------------------------------
-- 3 : 2에서 사용할 함수.
-------------------------------------------------------------------------------
--[[ 수박봄버 폭발용 함수
]]--
-------------------------------------------------------------------------------
function StandardWatermelonExplosion( damage, range )

	-- ( XML에서 셋팅된 range는 Sphere 타입에서만 사용된다. ), 기본적으로는 2번에서 셋팅한 폭발범위를 사용한다.
	-- 아래의 두개의 함수는 같이 써야함
	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_EARTH_BOMB, ATTACKATTRIB_EARTH_BOMBER , 0, damage, 0 );
	EXPLOSIONATTACK:InitAttack2( MAKESPHERE( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY(), POSITION:GetZ() ), range ), 1, 1 );

	EXPLOSIONATTACK:AddPushCondition( 300, 2000, -5000 );


	--자신 및 아군 데미지 추가 적용식. 최종 데미지 합에서 아래 입력받은 수치를 곱해서 자신과 아군에게 데미지를 적용한다.
	--수치는 0에서 1까지의 정수로 입력한다.
	--EXPLOSIONATTACK:SetFriendlyDamage(자신 데미지 비율, 자신 외 아군 데미지 비율);

	EXPLOSIONATTACK:SetFriendlyDamage(0.5, 0.2);

	-- 0: 데미지 일괄적용, 1: 거리별데미지 적용, 2: 거리별데미지(폭발점과의 거리를 가지고 체크. )
	EXPLOSIONATTACK:SetDamageApplyType( 2 );

	-- range 대비 2번째 범위 데미지 비율, 3번째 범위 데미지 비율, 4번째 범위 데미지 비율
	EXPLOSIONATTACK:SetDamageRates( 0.75, 0.3, 0.04 ); --0.75, 0.5, 0.25

	-- range 대비 2번째 범위 비율, 3번째 범위 비율, 4번째 범위 비율
	--2번째 범위 비율 이전값인 첫번째 범위 비율에는 SetDamageRates에서 세팅을 하지 않아도 1의 데미지 비율을 계산한다. (크리티컬 데미지)

	EXPLOSIONATTACK:SetExplosionRanges( 0.3, 0.5, 0.7 );	--0.4, 0.6, 0.8

	-- 중앙쪽 분포가 되는 랜덤
	-- EXPLOSIONATTACK:SetGaussRandomDamage( 랜덤 최소데미지, 랜덤 최대데미지, 랜덤확률, 중앙집중도( 0이면 고른분포, 높을수록 중앙에 집중 ) )
	-- EXPLOSIONATTACK:SetGaussRandomDamage( 10, 90, 10);

	-- 중앙쪽 분포가 되는 랜덤
	-- EXPLOSIONATTACK:SetGaussRandomDamage( 랜덤 최소데미지, 랜덤 최대데미지, 랜덤확률, 중앙집중도( 0이면 고른분포, 높을수록 중앙에 집중 ) )

	-- 고른 랜덤
	-- EXPLOSIONATTACK:SetRandomDamage( 랜덤 최소데미지, 랜덤 최대데미지, 랜덤확률 )
	-- 데미지 =  damage  + 랜덤 데미지

	-- 권동환 블로우 테스트
	-- EXPLOSIONATTACK:AddBlowCondition( 2000, 2000 );

end

