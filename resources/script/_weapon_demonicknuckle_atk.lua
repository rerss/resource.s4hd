require "Resources/Script/ActorStates_Constants.lua"
--[[
< ����� ��Ŭ ���� ���� >

1. ���� ����. ( ���� ���� �� ������ ���� ������ )
2. ���� �Ӽ� ����. ( AttackAttribIndexer.lua ���� ����ϴ� �Լ� ���� )

* ���� Ÿ�� : WEAPONTYPE_DEMONIC_KNUCKLE
* �ʱ� ���� : minho

]]--

-------------------------------------------------------------------------------------------------------------
-- ����� 1 ���� ����.
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
-- ����� 2 ���� ����.
--
-- !!! ������θ� �����ϰ� ����� ��� ���� (����� 1�θ� ��Ʈ��)!!!
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
-- ���� ���� ���� ����.
-------------------------------------------------------------------------------------------------------------
function LeftJump_DemonicKnuckle(  OneShotTime, Power, Accuracy, AdditionalPower )
	-- STATE -> CAttackState
		
	STATE:SetDrop( 400, MAKEVECTOR3( 0, -4000, 0 ) ); -- �ι�° ���� : �����ؼ� ���� ���� ����(���⼭�� �Ʒ��� ���� ��´�.)
	STATE:SetStealthCancel( true );
	STATE:SetCoolTime( 1500 );
	STATE:SetMoveBoxMultiplier( 0 );
	STATE:SetHitStop( 550, 750 );
	STATE:EnableCameraShake( true, false, 600 );
	STATE:SetCameraShakeFactor1( 200, 50, 30 );
	STATE:SetCameraShakeFactor2( 10, 60, 2000, 3000 );
	
	STATE:InitLua( 550, 550, 40, false );
	
	local range = WEAPON:GetRange(); -- weapon.xlsx -> weapon_limit -> range �� �����. ���� ���⼭ ���� �־ ��.
    
    -- Attack1 = CreateCAttack();
    -- Attack1:InitAttack1( WEAPONTYPE_DEMONIC_KNUCKLE, ATTACKATTRIB_COUNTER_SWORD_CRITICAL, 600, (Power*1.5)+AdditionalPower, AddtionalPower );
    -- Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,0), MAKEVECTOR3(0,0,-1), range - 100 ), 1, 1, false  );
    -- Attack1:SetAlwaysCritical( true );
    -- AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_DEMONIC_KNUCKLE, ATTACKATTRIB_DEMONIC_KNUCKLE_JUMP_ATTACK, 550, (Power*0.8), AddtionalPower );
    Attack2:InitAttack2( MAKEFAN( MAKEVECTOR3(0,80,0), MAKEVECTOR2(0,-1), range*0.8, range*0.7, range*1.7, 60 ), 1, 1, false );  -- �Ǹ��� ���� ������ MAKECYLINDER �� �ι�° ����.
    Attack2:AddStunCondition( 1200, 1600, 0, 500 ); -- ����
    AddAttack( ATTACKS, Attack2 );

end

-------------------------------------------------------------------------------------------------------------
-- Ư�� ���� ���� ����.
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
	-- ��� ���� �̻� �鿪 ����� Ȱ��ȭ �Ѵ�. �Ű� ���� 1�� �鿪 �ð�.
	STATE:SetImmune(1500); 
	-- STATE:SetImmune(31500); 
	
	--�Ҹ� SP ����.
	STATE:SetSpendSp( 40 );
	STATE:SetStateMinSp( 40 ); -- ����� ��Ŭ�� �����ϱ� ���ؼ� �ʿ��� �ּ� sp -> ī���� ������ ���׽� ���Ǳ⶧���� �߰�.
	
	-- ������ �ø���. 20% ������ �� ��� �´�.
	STATE:SetPlusDefensePowerRate(0.2); 
	
	-- �Ŀ� ����.(������ ������ �����ϸ� ��)
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
	Attack2:AddBlowCondition( 3400, 2400 ); -- ��ο� ����� ����.
    AddAttack( ATTACKS, Attack2 );
    

end

-------------------------------------------------------------------------------------------------------------
-- Ĺ��Ŭ Ư�� ���� ���� ����.
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
	-- ��� ���� �̻� �鿪 ����� Ȱ��ȭ �Ѵ�. �Ű� ���� 1�� �鿪 �ð�.
	STATE:SetImmune(1500); 
	STATE:SetSuperAmorEffectKey(1); -- ���۾Ƹ� ����Ʈ Ű = 1��
	-- STATE:SetImmune(31500); 
	
	--�Ҹ� SP ����.
	STATE:SetSpendSp( 40 );
	STATE:SetStateMinSp( 40 ); -- ����� ��Ŭ�� �����ϱ� ���ؼ� �ʿ��� �ּ� sp -> ī���� ������ ���׽� ���Ǳ⶧���� �߰�.
	
	-- ������ �ø���. 20% ������ �� ��� �´�.
	STATE:SetPlusDefensePowerRate(0.2); 
	
	-- �Ŀ� ����.(������ ������ �����ϸ� ��)
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
	Attack2:AddBlowCondition( 3400, 2400 ); -- ��ο� ����� ����.
    AddAttack( ATTACKS, Attack2 );
    

end


-------------------------------------------------------------------------------
-- ���� �Ӽ� ����.
--[[
�̰��� AttackAttribIndexer.lua�� AttackAttribIndexer_Run() �Լ����� ȣ�� �Ǿ�� ��.

]]--
-------------------------------------------------------------------------------
function AttackAttribute_DemonicKnuckle()

	-- ���� ��ư ����.
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

	-- ���� ��ư ����2.
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

	-- ���� ����
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
	
	-- ������ ��ư ����.
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