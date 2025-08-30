require "Resources/Script/ActorStates_Constants.lua"
--[[
< 체인 라이트닝 건 MK2 공격 설정 >

* 무기 타입 : WEAPONTYPE_CHAIN_LIGHT_GUN_MK2
* 초기 제작 : YoHan
* STATE : CAttackChainLightGunState

]]--

-------------------------------------------------------------------------------------------------------------
-- 공격 설정.
-------------------------------------------------------------------------------------------------------------
function StandardChainLightGunMK2( OneShotTime, Power, Accuracy, AdditionalPower )
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

    ACTORSTATE:SetInnerAccuracyVary( 10, 2, 0, 4 ); -- 3차 원래 값(10,2,0,4) 2차 원래 값 (50,2,0,4), 원래 값 ( 30, 2,  0, 2 )
    ACTORSTATE:SetOuterAccuracyVary( 40, 3, 0, 6 ); -- 3차 원래 값(40,3,0,6) 2차 원래 값 (50,1,0,6), 원래 값 ( 35, 2,  0, 4 )
    ACTORSTATE:SetMouseSensitivityRotate( 0.6 ); -- 공격시 마우스 회전 비율 조정
	
	SetupVShotGroup( OneShotTime, Power, Accuracy, AdditionalPower );
	SetupRandomShotGroup( OneShotTime, Power, Accuracy, AdditionalPower );
end

-------------------------------------------------------------------------------------------------------------
-- V자 형태 탄착군 설정
-------------------------------------------------------------------------------------------------------------
function SetupVShotGroup( OneShotTime, Power, Accuracy, AdditionalPower )
	local fRotOffsetX = 0.7;
	local fRotOffsetY = 0.1;
	local uiCurrentIndex;
	local fFireTime = 0;
	for uiIndex = 0, 9, 1 do
		fFireTime  = ( ( uiIndex + 1 ) * OneShotTime );
		
		uiCurrentIndex = uiIndex;
		if 5 <= uiCurrentIndex then
			uiCurrentIndex = uiCurrentIndex -1;
		end
		
		local vecDir1 = MAKECVECTOR3( 0, 0, -1 );
		vecDir1:RotateX( fRotOffsetX * uiCurrentIndex );
		vecDir1:RotateY( fRotOffsetY * uiCurrentIndex );
		
		local vecDir2 = MAKECVECTOR3( 0, 0, -1 );
		vecDir2:RotateX( fRotOffsetX * uiCurrentIndex );
		vecDir2:RotateY( -fRotOffsetY * uiCurrentIndex );
		
		Attack1 = CreateCAttack();
		Attack1:InitAttack1( WEAPONTYPE_CHAIN_LIGHT_GUN_MK2, ATTACKATTRIB_CHAIN_LIGHT_GUN_MK2, fFireTime, Power, AddtionalPower );
		Attack1:InitAttack2( MAKERAY( MAKEVECTOR3( 0, 0, 0 ), MAKEVECTOR3( vecDir1:GetX(), vecDir1:GetY(), vecDir1:GetZ() ), RayDistanceLimit ), 1, 1, false );
		Attack1:SetCollisionRangeAdjust( false, false );
		Attack1:SetCritical( 2.5, 0 );
		Attack1:SetConsumeAmmo( 1 );
		AddAttack( ATTACKS, Attack1 );
		
		Attack2 = CreateCAttack();
		Attack2:InitAttack1( WEAPONTYPE_CHAIN_LIGHT_GUN_MK2, ATTACKATTRIB_CHAIN_LIGHT_GUN_MK2, fFireTime, Power, AddtionalPower );
		Attack2:InitAttack2( MAKERAY( MAKEVECTOR3( 0, 0, 0 ), MAKEVECTOR3( vecDir2:GetX(), vecDir2:GetY(), vecDir2:GetZ() ), RayDistanceLimit ), 1, 1, false );
		Attack2:SetCollisionRangeAdjust( false, false );
		Attack2:SetCritical( 2.5, 0 );
		Attack2:SetConsumeAmmo( 1 );
		AddAttack( ATTACKS, Attack2 );
	end
end

-------------------------------------------------------------------------------------------------------------
-- 랜덤 형태 탄착군 설정
-------------------------------------------------------------------------------------------------------------
function SetupRandomShotGroup( OneShotTime, Power, Accuracy, AdditionalPower )
	local fFireTime = 0;
	for uiIndex = 10, 49, 1 do
		fFireTime  = ( ( uiIndex + 1 ) * OneShotTime );

		Attack1 = CreateCAttack();
		Attack1:InitAttack1( WEAPONTYPE_CHAIN_LIGHT_GUN_MK2, ATTACKATTRIB_CHAIN_LIGHT_GUN_MK2, fFireTime, Power * 1.5, AddtionalPower );
		Attack1:InitAttack2( MAKERAY( MAKEVECTOR3( 0, 0, 0 ), MAKEVECTOR3( 0, 0, -1 ), RayDistanceLimit ), 1, 1, false );
		Attack1:SetCollisionRangeAdjust( false, false );
		Attack1:SetCritical( 2.5, 0 );
		Attack1:SetConsumeAmmo( 1 );
		AddAttack( ATTACKS, Attack1 );
		
		Attack2 = CreateCAttack();
		Attack2:InitAttack1( WEAPONTYPE_CHAIN_LIGHT_GUN_MK2, ATTACKATTRIB_CHAIN_LIGHT_GUN_MK2, fFireTime, Power * 1.5, AddtionalPower );
		Attack2:InitAttack2( MAKERAY( MAKEVECTOR3( 0, 0, 0 ), MAKEVECTOR3( 0, 0, -1 ), RayDistanceLimit ), 1, 1, false );
		Attack2:SetCollisionRangeAdjust( false, false );
		Attack2:SetCritical( 2.5, 0 );
		Attack2:SetConsumeAmmo( 1 );
		AddAttack( ATTACKS, Attack2 );
	end
end

-------------------------------------------------------------------------------
-- 공격 속성 설정.
--[[
이것은 AttackAttribIndexer.lua의 AttackAttribIndexer_Run() 함수에서 호출 되어야 함.

]]--
-------------------------------------------------------------------------------
function AttackAttribute_ChainLightGunMK2()
	currAttackAttrib = AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_CHAIN_LIGHT_GUN_MK2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_CHAIN_LIGHT_GUN_MK2 );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/assult_cogwheel_hit.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/assultrifle_hit.ogg", "Resources/Sound/wall_attack.ogg"  );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/gun_blast_umb.seq", "Resources/Effects/gun_blast_umb.seq", "Resources/Sound/assultrifle_shot.ogg", "ChainlightningGun_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "ChainlightningGun_Fire_Dummy", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_shockwave.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	currAttackAttrib:SetPartialAnim			( "00016", 70, 100, 0.2 );
end	
