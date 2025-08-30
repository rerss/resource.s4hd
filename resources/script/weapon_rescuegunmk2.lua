require "Resources/Script/ActorStates_Constants.lua"

-- ����ť ��ũ 2 �߻� �Լ� ( ����, ������ Ŭ�� )

-- ����ť ź �߻� �Լ�.
-- �ڽ� �Լ� : StandardRescueGunMK2Init
function StandardRescueGunMK2Launch(  OneShotTime, Power, Accuracy, AdditionalPower )
		
	STATE:InitLua( 100, 
	"Resources/Effects/skill_gunner_electronic_bomb_1.seq",
	"Resources/Sound/rescuegun_shot.ogg", 
	500, 5000 ); -- (�� �� �ĵ�500, �Ѿ� ���ư��� �� 4000�� ���� �� ���ư��� �ӵ��� �޶���)
	
	-- ����ü �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	STATE:SetWeaponInitLuaFuncName( "StandardRescueGunMK2Init" );

end

-- ����ť ź�� ���� �ʱ�ȭ �Լ�.	
-- �ڽ� �Լ� : StandardRescueGunMK2Explosion
function StandardRescueGunMK2Init()
	-- (�߷°�,**,�����µ� �ɸ��� ��,**)	
	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( -4500.0, 16.0, 2600.0, 100.0 , 1 );  -- 2000.0, ź�� ���� �� �����µ� �ɸ��� �ð�	
--	GRENADE:InitLua( -4500.0, 16.0, 4000.0, 100.0 , 7 );  -- 2000.0, ź�� ���� �� �����µ� �ɸ��� �ð�	
	
	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	-- �⺻ �ӵ� ����ġ, ���鿡 ���� �� �ӵ� ����ġ, ���� �ٿ�� �� �ӵ� ����ġ _(���� ������ ��ź�� �������� �ӵ� ����)
--	GRENADE:SetDamping( 0.5, 5.0, 0.9 );   --( 0.5, 6.0, 0.9 ) , ( 0.5, 10, 0.6 ), ( 0.5, 20, 0.5 )
	GRENADE:SetDamping( 0.5, 16.0, 0.9 );   --( 0.5, 6.0, 0.9 ) , ( 0.5, 10, 0.6 ), ( 0.5, 20, 0.5 )
	
	-- int nDamageType ( 0:���, 1:��, 2:���� ����, 3: �Ʊ� )
	GRENADE:SetDamageType( 3 );  -- ź�� ������ �������� �������� �ִ����� ���� ��
	
	-- ĳ���Ϳ� �浹���� ( 0:��ĳ���� �΋Hġ���� ���߾���. 1:��ĳ���� �΋Hġ�� ����, 2:ĳ���� ��� ), ��ĳ���͸� �浹�� ���ΰ�(true/false )
	GRENADE:SetCollisionChar( 3, false ); -- ĳ���Ϳ� �浹 �� �������� ���������Ŀ� ��
	
	-- bool bCheck, float fCheckSpeed ��ź�� �� �� �̵� üũ�� �ϴ��� ���� ���� true/false
	GRENADE:SetSpeedCheck( true, 200.0 );   -- üũ ���� �Ŀ� 2������ �Ѿ
--	GRENADE:SetSpeedCheck( true, 700.0 );   -- üũ ���� �Ŀ� 2������ �Ѿ
	
	-- ���߽���������, �츮�� �Ϲ� źü, ����� �Ϲ� źü, �츮�� ���� �غ� źü, ����� ���� �غ� źü(���� �غ� Ȥ�� ������ ������ �Ʊ��� ���� ������ ���� �̹����� �޶����� �ϴ� �Լ�)
	GRENADE:SetSequence( 
	"Resources/Effects/weapon_resque_fire02.seq", 
	"Resources/Effects/weapon_rescuemk2_hp_ball01.seq", 
	"Resources/Effects/weapon_rescuemk2_hp_ball01_enemy.seq", 
	"Resources/Effects/weapon_rescuemk2_hp_ball02.seq", 
	"Resources/Effects/weapon_rescuemk2_hp_ball02_enemy.seq" );
	
	-- ���߻���
	GRENADE:SetExplosionSound( "Resources/Sound/rescuegun_bomb.ogg" );
	
	-- ���� �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	GRENADE:SetExplosionLuaName( "StandardRescueGunMK2Explosion" );
	
	-- // Ȱ��ȭ ���� ������ �浹�ؾ� �ϴ°�?( true/false ) �⺻�� false ��
	GRENADE:SetAfterActiveCheckChar( true );
	
end

--  ����ť�� ���߿� �Լ�
function StandardRescueGunMK2Explosion( damage, range )

	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_RESCUEGUN, ATTACKATTRIB_RESCUEGUN , 0, damage, 0 );
	EXPLOSIONATTACK:InitAttack2( MAKESPHERE( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY(), POSITION:GetZ() ), range ), 1, 1 );
	
	-- ����1 : sp full.
	-- ����2 : źâ full.
	EXPLOSIONATTACK:InitAttack3( true, false ); 
		
	-- 0: ������ �ϰ�����, 1: �Ÿ��������� ����.
	EXPLOSIONATTACK:SetDamageApplyType( 0 );
		
	--�ڽ� �� �Ʊ� ������ �߰� �����. ���� ������ �տ��� �Ʒ� �Է¹��� ��ġ�� ���ؼ� �ڽŰ� �Ʊ����� �������� �����Ѵ�. ��ġ�� 0���� 1������ ������ �Է��Ѵ�.
	--(�ڽ� ������ ����, �ڽ� �� �Ʊ� ������ ����);
	EXPLOSIONATTACK:SetFriendlyDamage(0, 1.0);

	-- ���� ������ ����Լ� ���
	--EXPLOSIONATTACK:SetLastDamageLuaFunction( "StandardRescueGunCalcDamage" );  StandardRescueGunCalcDamage �̺κ��� ���� �Ǹ� ���߿� üũ�Ǿ� ���콺 �Լ��� ������� ���Ͽ� �ּ� ó����
		
	EXPLOSIONATTACK:SetUiCriticalExplosionAttack( false );  -- ũ��Ƽ�� ������ ��� ����
	EXPLOSIONATTACK:SetExceptSentry( true );   -- ��Ʈ���� ���ݿ��� ���� �Ұ�����
		
	-- EXPLOSIONATTACK:SetCritical( 2.0, 10 );   --���� ũ��Ƽ�� (ũ��Ƽ�� ����, ũ��Ƽ�� Ȯ��)
	EXPLOSIONATTACK:SetCritical( 1.0, 0 );   --���� ũ��Ƽ�� (ũ��Ƽ�� ����, ũ��Ƽ�� Ȯ��)
		
end

-- Ammo ����ť ź �߻� �Լ�.
-- �ڽ� �Լ� : StandardRescueGunMK2Init_Ammo
function StandardRescueGunMK2Launch_Ammo(  OneShotTime, Power, Accuracy, AdditionalPower )
		
	STATE:InitLua( 100, 
	"Resources/Effects/skill_gunner_electronic_bomb_1.seq", 
	"Resources/Sound/rescuegun_shot.ogg", 
	500, 4000 ); -- (�� �� �ĵ�500, �Ѿ� ���ư��� �� 4000�� ���� �� ���ư��� �ӵ��� �޶���)
	
	-- ����ü �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	STATE:SetWeaponInitLuaFuncName( "StandardRescueGunMK2Init_Ammo" );

end

-- Ammo ����ť ź�� ���� �ʱ�ȭ �Լ�.	
-- �ڽ� �Լ� : StandardRescueGunMK2Explosion_Ammo
function StandardRescueGunMK2Init_Ammo()
	-- (�߷°�,**,�����µ� �ɸ��� ��,**)	
	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( -4500.0, 16.0, 3200.0, 100.0 , 1 );  -- 2000.0, ź�� ���� �� �����µ� �ɸ��� �ð�	
--	GRENADE:InitLua( -4500.0, 16.0, 4000.0, 100.0 , 7 );  -- 2000.0, ź�� ���� �� �����µ� �ɸ��� �ð�	
	
	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	-- �⺻ �ӵ� ����ġ, ���鿡 ���� �� �ӵ� ����ġ, ���� �ٿ�� �� �ӵ� ����ġ _(���� ������ ��ź�� �������� �ӵ� ����)
--	GRENADE:SetDamping( 0.5, 2.0, 0.9 );   --( 0.5, 6.0, 0.9 ) , ( 0.5, 10, 0.6 ), ( 0.5, 20, 0.5 )
	GRENADE:SetDamping( 0.5, 16.0, 0.9 );   --( 0.5, 6.0, 0.9 ) , ( 0.5, 10, 0.6 ), ( 0.5, 20, 0.5 )
	
	-- int nDamageType ( 0:���, 1:��, 2:���� ���� )
	GRENADE:SetDamageType( 3 );   -- ź�� ������ �������� �������� �ִ����� ���� ��
	
	-- ĳ���Ϳ� �浹���� ( 0:��ĳ���� �΋Hġ���� ���߾���. 1:��ĳ���� �΋Hġ�� ����, 2:ĳ���� ��� ), ��ĳ���͸� �浹�� ���ΰ�(true/false )
	GRENADE:SetCollisionChar( 3, false ); -- ĳ���Ϳ� �浹 �� �������� ���������Ŀ� ��
	
	-- bool bCheck, float fCheckSpeed ��ź�� �� �� �̵� üũ�� �ϴ��� ���� ���� true/false
	GRENADE:SetSpeedCheck( true, 200.0 );   -- üũ ���� �Ŀ� 2������ �Ѿ
--	GRENADE:SetSpeedCheck( true, 700.0 );   -- üũ ���� �Ŀ� 2������ �Ѿ
	
	-- ���߽���������, �츮�� �Ϲ� źü, ����� �Ϲ� źü, �츮�� ���� �غ� źü, ����� ���� �غ� źü(���� �غ� Ȥ�� ������ ������ �Ʊ��� ���� ������ ���� �̹����� �޶����� �ϴ� �Լ�)
	GRENADE:SetSequence( 
	"Resources/Effects/weapon_resque_fire03.seq", 
	"Resources/Effects/weapon_rescuemk2_ammo_ball01.seq", 
	"Resources/Effects/weapon_rescuemk2_ammo_ball01_enemy.seq", 
	"Resources/Effects/weapon_rescuemk2_ammo_ball02.seq", 
	"Resources/Effects/weapon_rescuemk2_ammo_ball02_enemy.seq" );
	
	-- ���߻���
	GRENADE:SetExplosionSound( "Resources/Sound/rescuegun_bomb.ogg" );
	
	-- ���� �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	GRENADE:SetExplosionLuaName( "StandardRescueGunMK2Explosion_Ammo" );
	
	-- // Ȱ��ȭ ���� ������ �浹�ؾ� �ϴ°�?( true/false ) �⺻�� false ��
	GRENADE:SetAfterActiveCheckChar( true );
	
end

-- Ammo ����ť�� ���߿� �Լ�
function StandardRescueGunMK2Explosion_Ammo( damage, range )

	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_RESCUEGUN, ATTACKATTRIB_RESCUEGUN , 0, damage, 0 );
	EXPLOSIONATTACK:InitAttack2( MAKESPHERE( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY(), POSITION:GetZ() ), range ), 1, 1 );

	-- ����1 : sp full.
	-- ����2 : źâ full.
	EXPLOSIONATTACK:InitAttack3( false, true );
		
	-- 0: ������ �ϰ�����, 1: �Ÿ��������� ����
	EXPLOSIONATTACK:SetDamageApplyType( 0 );
		
	--�ڽ� �� �Ʊ� ������ �߰� �����. ���� ������ �տ��� �Ʒ� �Է¹��� ��ġ�� ���ؼ� �ڽŰ� �Ʊ����� �������� �����Ѵ�. ��ġ�� 0���� 1������ ������ �Է��Ѵ�.
	--(�ڽ� ������ ����, �ڽ� �� �Ʊ� ������ ����);
	EXPLOSIONATTACK:SetFriendlyDamage(0, 0.0);

	-- ���� ������ ����Լ� ���
	--EXPLOSIONATTACK:SetLastDamageLuaFunction( "StandardRescueGunCalcDamage" );  StandardRescueGunCalcDamage �̺κ��� ���� �Ǹ� ���߿� üũ�Ǿ� ���콺 �Լ��� ������� ���Ͽ� �ּ� ó����
		
	EXPLOSIONATTACK:SetUiCriticalExplosionAttack( false );  -- ũ��Ƽ�� ������ ��� ����
	EXPLOSIONATTACK:SetExceptSentry( true );   -- ��Ʈ���� ���ݿ��� ���� �Ұ�����
		
	-- EXPLOSIONATTACK:SetCritical( 2.0, 10 );   --���� ũ��Ƽ�� (ũ��Ƽ�� ����, ũ��Ƽ�� Ȯ��)
	EXPLOSIONATTACK:SetCritical( 1.0, 0 );   --���� ũ��Ƽ�� (ũ��Ƽ�� ����, ũ��Ƽ�� Ȯ��)
		
	-- EXPLOSIONATTACK:AddPushCondition( 300, 2000, -5000 );	-- �˹�	
    -- range ��� 2��° ���� ������ ����, 3��° ���� ������ ����, 4��° ���� ������ ���� (�Ÿ��� ������ ���� �𸣸� ��ȣ������ �������)
	-- EXPLOSIONATTACK:SetDamageRates( 0.75, 0.5, 0.5 ); 
	
	-- range ��� 2��° ���� ����, 3��° ���� ����, 4��° ���� ����
	-- EXPLOSIONATTACK:SetExplosionRanges( 0.25, 0.5, 0.75 ); (�Ÿ��� ������ ���� �𸣸� ��ȣ������ �������)
	
	-- �߾��� ������ �Ǵ� ����
	-- EXPLOSIONATTACK:SetGaussRandomDamage( ���� �ּҵ�����, ���� �ִ뵥����, ����Ȯ��, �߾����ߵ�( 0�̸� ������, �������� �߾ӿ� ���� ) ) ����Ʈ�� ������ ���� ���� �Լ�
	
	-- �� ����
	-- EXPLOSIONATTACK:SetRandomDamage( ���� �ּҵ�����, ���� �ִ뵥����, ����Ȯ�� ) ����Ʈ�� ������ ���� ���� �Լ�
	
end
