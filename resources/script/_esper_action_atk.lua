require "Resources/Script/ActorStates_Constants.lua"

------------------------------------------------ 에스퍼 액션 세팅 기본 --------------------------------------
--STATE:SetStateMinSp( 0 );								-- 스테이트 들어가기 위한 최소 SP
--STATE:SetCoolTime( 0 );								-- 쿨타임 10000 : 1초
--STATE:SetUseAttack( true ); 							-- 공격이 들어가는 스킬 판단 : 에스퍼 밤, 스턴건은 데미지 들어가므로 true
--STATE:EnableCameraShake( true, false, 600 );		 	-- ( 포커스유저만, 흔들것인가, 준비시간 );
--STATE:SetCameraShakeFactor1( 200, 50, 30 );			-- ( 흔들기시간, 회복시간, 확장 );
--STATE:SetCameraShakeFactor2( 10, 60, 2000, 3000 ); 	-- ( 세로스피드, 가로스피드, 최소거리, 최대거리 );
-------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------
-- EsperBeam 효과.
-------------------------------------------------------------------------------------------------------------
function EsperSkill_EsperBeam(  Power  )

	STATE:SetMoveBoxMultiplier( 1.0 );					 -- ( 이동거리 배율 );
	STATE:EnableCameraShake( true, false, 200 );		 -- ( 포커스유저만, 흔들것인가, 준비시간 );
	STATE:SetCameraShakeFactor1( 200, 50, 30 );			 -- ( 흔들기시간, 회복시간, 확장 );
	STATE:SetCameraShakeFactor2( 10, 60, 1000, 1500 ); 	 -- ( 세로스피드, 가로스피드, 최소거리, 최대거리 );
	STATE:SetUseAttack( true ); 						 -- 공격 사용하는 에스퍼칩 타입

	STATE:SetStateMinSp( 0 ); 							 -- 소모 sp -> xml 로 빼서 작업 가능. ( 해킹이슈 )
	STATE:SetCoolTime( 120000 ); 							 -- 쿨타임 : 60초(60000)

	STATE:InitLua( 700, 300 , true ); 					 -- 애니메이션 타임 , 딜레이 타임 , 지면에서만 발동 여부

	STATE:SetEtcSkillStateEnter( true );				 -- 플라잉 , 앵커링을 제외한 모든 스킬사용중일때 캔슬 후 스킬 사용 여부.
	STATE:SetFlyAnchoringStateEnter( false );			 -- 플라잉 , 앵커링 스킬 사용중일 때 캔슬 후 스킬 사용 여부.

	local range = ACTION:GetRange(); 					 -- Range -> EsperAction.xml 파일에 선언되어있음 인덱스는 2번.

    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_UNUSED , ATTACKATTRIB_ESPERSKILL_ESPERBEAM, 300, Power*25, 0 ); 								  -- ( 무기타입, 공격속성ID, 발사시간, 데미지, 아이템에의한 추가데미지 );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3( 0,250,-60 ), MAKEVECTOR3( 0,0,-1 ), range*0.6, range*0.8, range*4.0 ), 1, 1, false );  --충돌 박스 생성 ( 충돌정보(넓이/높이/거리650), 1, 1, 랜덤시드사용  );
--  Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3( 0,250,-60 ), MAKEVECTOR3( 0,0,-1 ), range*1.2, range*0.8, range*2.6 ), 1, 1, false );  --충돌 박스 생성 ( 충돌정보(넓이/높이/거리650), 1, 1, 랜덤시드사용  );

--  Attack1:AddStunCondition( 1200, 1600, 0, 500 );			-- 스턴 ( 최소시간 최대시간 최소거리 최대거리 ) - 거리에따른 스턴시간.
--	Attack1:AddBlowCondition( 6000, 800 );			-- 블로우 컨디션 적용.
--  Attack1:AddPushCondition( 300, 1500, -3000 );

    AddAttack( ATTACKS, Attack1 );
end


-- 공격이 들어가지 않는 효과는 루아로 빠져있지 않음 테스트를 위하여 루아로 강제 세팅 - 추후에 삭제 예정
-- EsperAction.xml 에서 제어 필요.
-------------------------------------------------------------------------------------------------------------
-- EsperCoat 효과.
-------------------------------------------------------------------------------------------------------------
function EsperSkill_EsperCoat(  Power  )

	--STATE:SetStealthCancel( true );						 -- 스킬발동시 투명화 취소.
	STATE:SetStateMinSp( 10 ); 							 -- 소모 sp -> xml 로 빼서 작업 가능. ( 해킹이슈 )

	STATE:InitLua( 500, 0, true ); 					 -- 애니메이션 타임 , 딜레이 타임 , 지면에서만 발동 여부
	STATE:SetCoolTime( 30000 ); 							 -- 쿨타임 : 60초 - 30초로 변경

	STATE:SetEtcSkillStateEnter( true );				 -- 플라잉 , 앵커링을 제외한 모든 스킬사용중일때 캔슬 후 스킬 사용 여부.
	STATE:SetFlyAnchoringStateEnter( false );			 -- 플라잉 , 앵커링 스킬 사용중일 때 캔슬 후 스킬 사용 여부.

	STATE:SetConditionTime( 5000 );						-- 컨디션 타임 : 5초

end

-------------------------------------------------------------------------------------------------------------
-- EsperBomb 효과.
-------------------------------------------------------------------------------------------------------------
function EsperSkill_EsperBomb(  Power  )
	-- STATE -> CAttackState

	--STATE:SetDrop( 500, MAKEVECTOR3( 0, -4000, 0 ) ); -- 두번째 인자 : 점프해서 내려 찍을 방향(여기서는 아래로 내려 찍는다.)
	STATE:SetMoveBoxMultiplier( 0.5 );		--이동거리 600
	STATE:EnableCameraShake( true, false, 600 );
	STATE:SetCameraShakeFactor1( 200, 50, 30 );
	STATE:SetCameraShakeFactor2( 10, 60, 2000, 3000 );
	STATE:SetUseAttack( true ); 						 -- 공격 사용하는 에스퍼칩 타입
	STATE:SetStateMinSp( 0 ); 							 -- 소모 sp -> xml 로 빼서 작업 가능. ( 해킹이슈 )

	STATE:SetEtcSkillStateEnter( true );				 -- 플라잉 , 앵커링을 제외한 모든 스킬사용중일때 캔슬 후 스킬 사용 여부.
	STATE:SetFlyAnchoringStateEnter( true );			 -- 플라잉 , 앵커링 스킬 사용중일 때 캔슬 후 스킬 사용 여부.

	STATE:SetMidAirAttackState( false );				-- 지면 , 공중 공격 이분화 여부 true: 제자리 / false : 이동
	STATE:SetIgnoreActorCollision( true );				-- 시전 시 액터와의 충돌 무시

	STATE:InitLua( 1000, 0,  1000 , false );  -- InitLua( u32 uiNormalTime, u32 uiDelayTime , bool bOnlyVStateNormal )

	STATE:SetCoolTime( 60000 );

	local range = ACTION:GetRange(); -- weapon.xlsx -> weapon_limit -> range 를 사용함. 직접 여기서 값을 넣어도 됨.

    Attack1 = CreateCAttack();
  	Attack1:InitAttack1( WEAPONTYPE_UNUSED, ATTACKATTRIB_ESPERSKILL_ESPER_BOMB, 550, Power , 0 ); -- 데미지 박스 생성시간
	  Attack1:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0,200,0), 800, range*1 ), 1, 1, false  );
  	  Attack1:AddLightningBombMK2Condition(5000, 0.5);  --SP BURN : 5초 / 1=100% / 0.2 = 80% 감소
	  Attack1:AddBlowCondition( 1000,4000 );

    AddAttack( ATTACKS, Attack1 );

--		Attack1:InitAttack2( MAKEFAN( MAKEVECTOR3(0,140,-50), MAKEVECTOR2(0,-1), range*0.7, range*0.35, range*0.85, 60 ), 1, 1, false );	-- 팬 너비 ;  높이(0.25>0.35)-길이-각도
-- 		MAKEFAN( MAKEVECTOR3(0,80,0), MAKEVECTOR2(0,-1), range*0.8, range*0.7, range*1.7, 60 ), 1, 1, false 원본
--		MAKEFAN( MAKEVECTOR3(0,140,-50), MAKEVECTOR2(0,-1), range*0.7, range*0.25, range*0.85, 120 ), 1, 1, false

--		Attack2 = CreateCAttack();
-- 		Attack2:InitAttack1( WEAPONTYPE_UNUSED, ATTACKATTRIB_ESPERSKILL_ESPER_BOMB, 550, Power , 0 ); -- 데미지 박스 생성시간
--		Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), range*0.5, range*0.85, range*1.2 ), 1, 1, false  );	--넓이/높이/길이
-- 		Attack2:AddStunCondition( 1200, 1600, 0, 500 ); -- 스턴
--	  AddAttack( ATTACKS, Attack2 );

end

-------------------------------------------------------------------------------------------------------------
-- KneeSliding 효과.
-------------------------------------------------------------------------------------------------------------
function EsperSkill_EsperKneeSlide(  Power  )

	STATE:SetMoveBoxMultiplier( 0.65 );					 -- ( 이동거리 배율 1.0 = 1300);

	STATE:SetStateMinSp( 25 ); 							 -- 소모 sp 20 - 25로 변경
	STATE:SetCoolTime( 0 );

	STATE:SetEtcSkillStateEnter( true );				 -- 플라잉 , 앵커링을 제외한 모든 스킬사용중일때 캔슬 후 스킬 사용 여부.
	STATE:SetFlyAnchoringStateEnter( false );			 -- 플라잉 , 앵커링 스킬 사용중일 때 캔슬 후 스킬 사용 여부.

	STATE:SetLotateLimit( false , 0 , 0 );				 -- 카메라 로테이션 제어 함수 ( 로테이션제어 활성화여부-true 카메라 정면 고정 / false 카메라 기존유지 , X축 각도 , Y축 각도 )
	STATE:SetDirectionLimit( false );					 -- 카메라 방향으로 디렉션 제어. true : 디렉션 제어함 false : 디렉션 제어 품.

	STATE:InitLua( 600 , 0 , false ); 					 -- 애니메이션 타임 , 딜레이 타임 , 지면에서만 발동 여부 , 애니메이션 타임을 증가 시 이동거리가 늘어나게 된다.
end


-------------------------------------------------------------------------------------------------------------
function AttackAttribute_EsperSetSkill()

	-- 에스퍼 빔
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_ESPERSKILL_ESPERBEAM );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_UNUSED ); -- 무기타입의 공격이 아니므로 Unused
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE ); -- 카운트 스워드의 가드상태에 공격 시 자신이 스턴 당하는 지 여부 ENABLE : 스턴 당함, DISABLE : 스턴 당하지 않음
	currAttackAttrib:SetGuardData			( 0 , GUARDCRUSH_ENABLE ); --카운터 스워드의 가드를 뚫을 수 있는 지 여부  ENABLE : 뚫음, DISABLE : 뚫지 못함
	currAttackAttrib:SetDamageData			( 1, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );
	--(공격 성공 시 상대방을 경직 시킬 수 있는 시간 1000=1초, 상대의 이동을 차단하는 지 여부, 머리/몸통/발 등 파츠에 따라 데미지를 입는 지 여부(현재는 머리 외에는 무조건 파츠 데미지가 아닌 고정데미지가 입히게 작업되어 있음)

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/weapon_mindshock_body.seq", "Resources/Effects/weapon_mindshock_body.seq", "Resources/Sound/rail_blast.ogg", "Resources/Sound/rail_blast.ogg" );
	--(상대를 공격할 때 출력하는 시퀸스, 벽을 공격할 때 출력하는 시퀸스, 상대를 공격할 때 출력하는 사운드, 벽을 공격할 때 출력하는 시퀸스)
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/bsword_s.ogg" );
	--(허공을 공격 시 출력하는 시퀸스, 허공을 공격 시 출력하는 사운드)
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/EsperAction/Esperaction.png", 32, 32 ); -- KillImage & widthSize , HeightSize
	--(상대 킬 시 우측 상단에 출력하는 아이콘, 아이콘 사이즈X, 아이콘 사이즈Y)

	-- 에스퍼 밤
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_ESPERSKILL_ESPER_BOMB );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_UNUSED );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );	--가드 상태의 적에게 스턴 당하지 않음
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_ENABLE );	-- 가드 뚫음
	currAttackAttrib:SetDamageData			( 1000, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/airgun_blast.ogg", "Resources/Sound/airgun_blast.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/EsperAction/Esperaction.png", 32, 32 );

end