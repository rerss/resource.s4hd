require "Resources/Script/ActorStates_Constants.lua"
--[[
< 데모닉 너클 공격 설정 >

1. 공격 설정. ( 공격 범위 및 데미지 등을 설정함 )
2. 공격 속성 설정. ( AttackAttribIndexer.lua 에서 사용하는 함수 설정 )

* 무기 타입 : WEAPONTYPE_DEMONIC_KNUCKLE
* 초기 제작 : minho

]]--

-------------------------------------------------------------------------------------------------------------
-- 약공격 1 공격 설정.
-------------------------------------------------------------------------------------------------------------
function LeftAttack_DemonicKnuckle( OneShotTime, Power, Accuracy, AdditionalPower )
	-- STATE -> CAttackMovingState
	
	STATE:SetMoveBoxMultiplier( 2.0 );
	STATE:SetStealthCancel( true );
	STATE:SetMoveStopWhenDamage( false);
	STATE:SetMoveSpeedRate( 1.2 );
	
	STATE:InitLua( 800, 50, 0, false );
	
	local range = WEAPON:GetRange();	
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_DEMONIC_KNUCKLE, ATTACKATTRIB_DEMONIC_KNUCKLE_LEFT_ATTACK, 240, (Power*0.9), AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,200,-50), MAKEVECTOR3(0,0,-1), range*1.0, range*0.8, range*1.0 ), 1, 1, false  );
    Attack1:SetCameraShakeEnable( true, true, 0 );  
    Attack1:SetCameraShakeSetFactor1( 200, 50, 5 );
    Attack1:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 );
    Attack1:SetCameraShakeWhenSuccess( true );   
    AddAttack( ATTACKS, Attack1 );    


end

-------------------------------------------------------------------------------------------------------------
-- 약공격 2 공격 설정.
--
-- !!! 껍데기로만 존재하고 현재는 사용 안함 (약공격 1로만 컨트롤)!!!
--
-------------------------------------------------------------------------------------------------------------
function LeftAttack2_DemonicKnuckle( OneShotTime, Power, Accuracy, AdditionalPower  )
	-- STATE -> CAttackMovingState
		
	STATE:SetMoveBoxMultiplier( 2.0 );
	STATE:SetStealthCancel( true );
	STATE:SetMoveStopWhenDamage( false);
	STATE:SetMoveSpeedRate( 1.2 );
	
	STATE:InitLua( 800, 50, 0, false );
	
	local range = WEAPON:GetRange();	
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_DEMONIC_KNUCKLE, ATTACKATTRIB_DEMONIC_KNUCKLE_LEFT_ATTACK2, 180, (Power*0.9), AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,-50), MAKEVECTOR3(0,0,-1), range*1.0, range*0.8, range*1.0 ), 1, 1, false  );
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 5 );
    Attack1:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 );
    Attack1:SetCameraShakeWhenSuccess( true );   
    AddAttack( ATTACKS, Attack1 );   

end

-------------------------------------------------------------------------------------------------------------
-- 점프 공격 공격 설정.
-------------------------------------------------------------------------------------------------------------
function LeftJump_DemonicKnuckle(  OneShotTime, Power, Accuracy, AdditionalPower )
	-- STATE -> CAttackState
		
	STATE:SetDrop( 400, MAKEVECTOR3( 0, -4000, 0 ) ); -- 두번째 인자 : 점프해서 내려 찍을 방향(여기서는 아래로 내려 찍는다.)
	STATE:SetStealthCancel( true );
	STATE:SetCoolTime( 1500 );
	STATE:SetMoveBoxMultiplier( 0 );
	STATE:SetHitStop( 550, 750 );
	STATE:EnableCameraShake( true, false, 600 );
	STATE:SetCameraShakeFactor1( 200, 50, 30 );
	STATE:SetCameraShakeFactor2( 10, 60, 2000, 3000 );
	
	STATE:InitLua( 550, 550, 40, false );
	
	local range = WEAPON:GetRange(); -- weapon.xlsx -> weapon_limit -> range 를 사용함. 직접 여기서 값을 넣어도 됨.
    
    -- Attack1 = CreateCAttack();
    -- Attack1:InitAttack1( WEAPONTYPE_DEMONIC_KNUCKLE, ATTACKATTRIB_COUNTER_SWORD_CRITICAL, 600, (Power*1.5)+AdditionalPower, AddtionalPower );
    -- Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,0), MAKEVECTOR3(0,0,-1), range - 100 ), 1, 1, false  );
    -- Attack1:SetAlwaysCritical( true );
    -- AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_DEMONIC_KNUCKLE, ATTACKATTRIB_DEMONIC_KNUCKLE_JUMP_ATTACK, 550, (Power*0.8), AddtionalPower );
    Attack2:InitAttack2( MAKEFAN( MAKEVECTOR3(0,80,0), MAKEVECTOR2(0,-1), range*0.8, range*0.7, range*1.7, 60 ), 1, 1, false );  -- 실린더 높이 조절은 MAKECYLINDER 의 두번째 인자.
    Attack2:AddStunCondition( 1200, 1600, 0, 500 ); -- 스턴
    AddAttack( ATTACKS, Attack2 );

end

-------------------------------------------------------------------------------------------------------------
-- 특수 공격 공격 설정.
-------------------------------------------------------------------------------------------------------------
function RightAttack_DemonicKnuckle(  OneShotTime, Power, Accuracy, AdditionalPower )
	-- STATE -> CAttackState
	
	STATE:SetMoveBoxMultiplier( 2.0 );	
	STATE:SetStealthCancel( true );	
	STATE:SetMoveStopWhenDamage( true );	
	STATE:EnableCameraShake( true, false, 600 );
	STATE:SetCameraShakeFactor1( 200, 50, 30 );
	STATE:SetCameraShakeFactor2( 10, 60, 2000, 3000 );
	STATE:InitLua( 700, 800, 40, true );
	STATE:SetCoolTime( 4000 );
	-- 모든 상태 이상 면역 기능을 활성화 한다. 매개 변수 1은 면역 시간.
	STATE:SetImmune(1500); 
	-- STATE:SetImmune(31500); 
	
	--소모 SP 설정.
	STATE:SetSpendSp( 40 );
	STATE:SetStateMinSp( 40 ); -- 데모닉 너클을 시전하기 위해서 필요한 최소 sp -> 카운터 스워드 버그시 사용되기때문에 추가.
	
	-- 방어력을 올린다. 20% 공격이 덜 들어 온다.
	STATE:SetPlusDefensePowerRate(0.2); 
	
	-- 파워 설정.(적당한 값으로 조절하면 됨)
	Power = Power * 1.8;
	
	local range = WEAPON:GetRange()-200;
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_DEMONIC_KNUCKLE, ATTACKATTRIB_DEMONIC_KNUCKLE_RIGHT_ATTACK, 700, Power, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,-60), MAKEVECTOR3(0,0,-1), range*1.4 ), 1, 1, false  );	
    Attack1:SetAlwaysCritical( true );
    AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_DEMONIC_KNUCKLE, ATTACKATTRIB_DEMONIC_KNUCKLE_RIGHT_ATTACK, 700, (Power*1.6)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,220,-60), MAKEVECTOR3(0,0,-1), range*1.0, range*1.2, range*1.9 ), 1, 1, false  ); 
    Attack2:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack2:AddBlowCondition( 3400, 2400 ); -- 블로우 컨디션 적용.
    AddAttack( ATTACKS, Attack2 );
    

end

-------------------------------------------------------------------------------------------------------------
-- 캣너클 특수 공격 공격 설정.
-------------------------------------------------------------------------------------------------------------
function RightAttack_CatKnuckle(  OneShotTime, Power, Accuracy, AdditionalPower )
	-- STATE -> CAttackState
	
	STATE:SetMoveBoxMultiplier( 2.0 );	
	STATE:SetStealthCancel( true );	
	STATE:SetMoveStopWhenDamage( true );	
	STATE:EnableCameraShake( true, false, 600 );
	STATE:SetCameraShakeFactor1( 200, 50, 30 );
	STATE:SetCameraShakeFactor2( 10, 60, 2000, 3000 );
	STATE:InitLua( 700, 800, 40, true );
	STATE:SetCoolTime( 4000 );
	-- 모든 상태 이상 면역 기능을 활성화 한다. 매개 변수 1은 면역 시간.
	STATE:SetImmune(1500); 
	STATE:SetSuperAmorEffectKey(1); -- 슈퍼아머 이펙트 키 = 1번
	-- STATE:SetImmune(31500); 
	
	--소모 SP 설정.
	STATE:SetSpendSp( 40 );
	STATE:SetStateMinSp( 40 ); -- 데모닉 너클을 시전하기 위해서 필요한 최소 sp -> 카운터 스워드 버그시 사용되기때문에 추가.
	
	-- 방어력을 올린다. 20% 공격이 덜 들어 온다.
	STATE:SetPlusDefensePowerRate(0.2); 
	
	-- 파워 설정.(적당한 값으로 조절하면 됨)
	Power = Power * 1.8;
	
	local range = WEAPON:GetRange()-200;
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_DEMONIC_KNUCKLE, ATTACKATTRIB_DEMONIC_KNUCKLE_RIGHT_ATTACK, 700, Power, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,-60), MAKEVECTOR3(0,0,-1), range*1.4 ), 1, 1, false  );	
    Attack1:SetAlwaysCritical( true );
    AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_DEMONIC_KNUCKLE, ATTACKATTRIB_DEMONIC_KNUCKLE_RIGHT_ATTACK, 700, (Power*1.6)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,220,-60), MAKEVECTOR3(0,0,-1), range*1.0, range*1.2, range*1.9 ), 1, 1, false  ); 
    Attack2:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack2:AddBlowCondition( 3400, 2400 ); -- 블로우 컨디션 적용.
    AddAttack( ATTACKS, Attack2 );
    

end


-------------------------------------------------------------------------------
-- 공격 속성 설정.
--[[
이것은 AttackAttribIndexer.lua의 AttackAttribIndexer_Run() 함수에서 호출 되어야 함.

]]--
-------------------------------------------------------------------------------
function AttackAttribute_DemonicKnuckle()

	-- 왼쪽 버튼 공격.
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_DEMONIC_KNUCKLE_LEFT_ATTACK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_DEMONIC_KNUCKLE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 300, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/bsword_attack.ogg", "Resources/Sound/bsword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/bsword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_demonicknuckle.dds", 64, 32 );

	-- 왼쪽 버튼 공격2.
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_DEMONIC_KNUCKLE_LEFT_ATTACK2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_DEMONIC_KNUCKLE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 300, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/bsword_attack.ogg", "Resources/Sound/bsword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/bsword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_demonicknuckle.dds", 64, 32 );

	-- 점프 공격
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_DEMONIC_KNUCKLE_JUMP_ATTACK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_DEMONIC_KNUCKLE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 1000, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/bsword_power.ogg", "Resources/Sound/bsword_power.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_demonicknuckle.dds", 64, 32 );
	
	-- 오른쪽 버튼 공격.
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_DEMONIC_KNUCKLE_RIGHT_ATTACK );		
	
	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_DEMONIC_KNUCKLE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 1200, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/bsword_attack.ogg", "Resources/Sound/bsword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/bsword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_demonicknuckle.dds", 64, 32 );
	
end	