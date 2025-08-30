-- [ 라이트닝 봄버 MK2 ]

-- 라이트닝 봄버 MK2 폭발용 함수
function LightningBomberMk2_Explosion( damage, range )

	-- damage = damage * 0.1; -- 임시 테스트용.. 너무 데미지가 쎄서 줄임.. 나중에 지워야함.
	
	-- ( XML에서 셋팅된 range는 Sphere 타입에서만 사용된다. ), 기본적으로는 2번에서 셋팅한 폭발범위를 사용한다.
	-- 아래의 두개의 함수는 같이 써야함
	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_LIGHT_BOMB, ATTACKATTRIB_LIGHT_BOMBER_MK2, 0, damage, 0 );	
	
	--EXPLOSIONATTACK:InitAttack2는 실제 타격 박스를 생성한다.
	-- 실린더 만들기 Param1 : 중심점
	-- 실린더 만들기 Param2 : 높이.
	-- 실린더 만들기 Param3 : 반지름.
	EXPLOSIONATTACK:InitAttack2( MAKECYLINDER( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY()+250, POSITION:GetZ() ), 600, 600 ), 1, 1 );
	-- EXPLOSIONATTACK:InitAttack2( MAKEFAN( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY()+300, POSITION:GetZ()), MAKEVECTOR2(0,-1), 300, 300, 300, 120 ), 1, 1);
		
	-- EXPLOSIONATTACK:AddPushCondition( 300, 2000, -5000 );
		
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
	 EXPLOSIONATTACK:SetGaussRandomDamage( 10, 30, 100, 1);
	 
	 --기본 데미지+랜덤데미지 합한 값이 SetGaussRandomCritical 수치를 넘을 시에 크리티컬 메시지를 출력한다.
	 --아군 및 자신이 피격할 경우, FrendlyDamage 체크 전에 아래 크리티컬을 체크하고 FrendlyDamage에 따른 데미지를 게임 내 반영한다.
	 --즉 RandomCritical 수치가 100일 경우에 자신이 피격 시 50이상 데미지가 뜰 때 크리티컬 메시지가 호출된다.
	 EXPLOSIONATTACK:SetGaussRandomCritical( 50 );
	 
	 -- 라이트닝 봄버 MK2 콘디션 추가.
	 -- Param1 : 콘디션 지속 시간 ( 1000 = 1초 )
	 -- Param2 : 이동 속도 비율 ( 1 = 100% )
	 EXPLOSIONATTACK:AddLightningBombMK2Condition(2500, 0.5);
	 
	-- 고른 랜덤
	-- EXPLOSIONATTACK:SetRandomDamage( 랜덤 최소데미지, 랜덤 최대데미지, 랜덤확률 )
	-- 데미지 =  damage  + 랜덤 데미지

end

-- 라이트닝 봄버 MK2의 폭탄 초기화 함수.
function StandardLightningMK2Init()
		
	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( -4000.0, 16.0, 300.0, 100.0 , 1 );
--	GRENADE:InitLua( -4000.0, 16.0, 1500.0, 100.0 , 7 );
	
	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	GRENADE:SetDamping( 0.5, 6.0, 0.9 );
	
	-- int nDamageType ( 0:모두, 1:적, 2:적과 본인 )
	GRENADE:SetDamageType( 2 );
	
	-- 캐릭터에 충돌여부 ( 0:적캐릭에 부딫치지만 폭발안함. 1:적캐릭에 부딫치고 폭발, 2:캐릭터 통과 ), 적캐릭터만 충돌할 것인가(true/false )
	GRENADE:SetCollisionChar( 0, true );

	-- bool bCheck, float fCheckSpeed
	GRENADE:SetSpeedCheck( true, 200.0 );
--	GRENADE:SetSpeedCheck( true, 700.0 );
	
	-- 폭발시퀀스파일, 우리편 일반 탄체, 상대편 일반 탄체, 우리편 폭발 준비 탄체, 상대편 폭발 준비 탄체
	GRENADE:SetSequence( "Resources/Effects/weapon_Lightning_bomber_ex.seq", "Resources/Effects/weapon_lbomber_mk2_throw.seq", "Resources/Effects/weapon_lbomber_mk2_throw.seq", "Resources/Effects/weapon_lbomber_mk2_fire.seq", "Resources/Effects/weapon_lbomber_mk2_fire.seq" );	
						
	-- 폭발사운드
	GRENADE:SetExplosionSound( "Resources/Sound/lightningbomber_bomb.ogg" );
	
	-- 폭발준비 사운드
	GRENADE:SetExplosionReadySound( "Resources/Sound/Earthbomber_limit.ogg" );
	
	-- 폭발 초기화용 루아스크립트 함수이름
	GRENADE:SetExplosionLuaName( "LightningBomberMk2_Explosion" );

	-- 폭발범위 설정.( XML에서 셋팅된 range는 사용안됨 )
	-- GRENADE:SetCollisionRange( MAKEBOX( MAKEVECTOR3(0,200,200), MAKEVECTOR3(0,0,-1), 400, 400, 400 ) );
	
	--SetCollisionRange은 데브 환경에서 볼 수 있는 타격 박스를 생성한다.
	--setcollsionRange와 아래 EXPLOSIONATTACK:InitAttack2의 좌표값을 동기화를 해야 정상적으로 적용한다.
	-- MAKECYLINDER( MAKEVECTOR3(center값), 높이, 반지름 ); 
	GRENADE:SetCollisionRange( MAKECYLINDER( MAKEVECTOR3( 0, 200, 0 ), 600, 600 ) );

end

-- 라이트닝 봄버 MK2 기본 공격 함수.
function StandardLightningBomberMK2(  OneShotTime, Power, Accuracy, AdditionalPower )
		
	STATE:InitLua( 100, 
	"Resources/Effects/skill_gunner_electronic_bomb_1.seq", 
	"Resources/Sound/earthbomber_shot.ogg", 500, 4750 );
	
	-- 투사체 초기화용 루아스크립트 함수이름
	STATE:SetWeaponInitLuaFuncName( "StandardLightningMK2Init" );

end