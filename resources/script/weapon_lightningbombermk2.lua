-- [ ����Ʈ�� ���� MK2 ]

-- ����Ʈ�� ���� MK2 ���߿� �Լ�
function LightningBomberMk2_Explosion( damage, range )

	-- damage = damage * 0.1; -- �ӽ� �׽�Ʈ��.. �ʹ� �������� �꼭 ����.. ���߿� ��������.
	
	-- ( XML���� ���õ� range�� Sphere Ÿ�Կ����� ���ȴ�. ), �⺻�����δ� 2������ ������ ���߹����� ����Ѵ�.
	-- �Ʒ��� �ΰ��� �Լ��� ���� �����
	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_LIGHT_BOMB, ATTACKATTRIB_LIGHT_BOMBER_MK2, 0, damage, 0 );	
	
	--EXPLOSIONATTACK:InitAttack2�� ���� Ÿ�� �ڽ��� �����Ѵ�.
	-- �Ǹ��� ����� Param1 : �߽���
	-- �Ǹ��� ����� Param2 : ����.
	-- �Ǹ��� ����� Param3 : ������.
	EXPLOSIONATTACK:InitAttack2( MAKECYLINDER( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY()+250, POSITION:GetZ() ), 600, 600 ), 1, 1 );
	-- EXPLOSIONATTACK:InitAttack2( MAKEFAN( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY()+300, POSITION:GetZ()), MAKEVECTOR2(0,-1), 300, 300, 300, 120 ), 1, 1);
		
	-- EXPLOSIONATTACK:AddPushCondition( 300, 2000, -5000 );
		
	--�ڽ� �� �Ʊ� ������ �߰� �����. ���� ������ �տ��� �Ʒ� �Է¹��� ��ġ�� ���ؼ� �ڽŰ� �Ʊ����� �������� �����Ѵ�.
	--��ġ�� 0���� 1������ ������ �Է��Ѵ�.
	--EXPLOSIONATTACK:SetFriendlyDamage(�ڽ� ������ ����, �ڽ� �� �Ʊ� ������ ����);
	
	EXPLOSIONATTACK:SetFriendlyDamage(0.5, 0.2);
	
	-- 0: ������ �ϰ�����, 1: �Ÿ��������� ����, 2: �Ÿ���������(���������� �Ÿ��� ������ üũ. )
	--EXPLOSIONATTACK:SetDamageApplyType( 1 );
		
	-- range ��� 2��° ���� ������ ����, 3��° ���� ������ ����, 4��° ���� ������ ����
	--EXPLOSIONATTACK:SetDamageRates( 0.75, 0.5, 0.25 );
	
	-- range ��� 2��° ���� ����, 3��° ���� ����, 4��° ���� ����
	--EXPLOSIONATTACK:SetExplosionRanges( 0.25, 0.5, 0.75 );			

	-- �߾��� ������ �Ǵ� ����
	-- EXPLOSIONATTACK:SetGaussRandomDamage( ���� �ּҵ�����, ���� �ִ뵥����, ����Ȯ��, �߾����ߵ�( 0�̸� ������, �������� �߾ӿ� ���� ) )
	 EXPLOSIONATTACK:SetGaussRandomDamage( 10, 30, 100, 1);
	 
	 --�⺻ ������+���������� ���� ���� SetGaussRandomCritical ��ġ�� ���� �ÿ� ũ��Ƽ�� �޽����� ����Ѵ�.
	 --�Ʊ� �� �ڽ��� �ǰ��� ���, FrendlyDamage üũ ���� �Ʒ� ũ��Ƽ���� üũ�ϰ� FrendlyDamage�� ���� �������� ���� �� �ݿ��Ѵ�.
	 --�� RandomCritical ��ġ�� 100�� ��쿡 �ڽ��� �ǰ� �� 50�̻� �������� �� �� ũ��Ƽ�� �޽����� ȣ��ȴ�.
	 EXPLOSIONATTACK:SetGaussRandomCritical( 50 );
	 
	 -- ����Ʈ�� ���� MK2 �ܵ�� �߰�.
	 -- Param1 : �ܵ�� ���� �ð� ( 1000 = 1�� )
	 -- Param2 : �̵� �ӵ� ���� ( 1 = 100% )
	 EXPLOSIONATTACK:AddLightningBombMK2Condition(2500, 0.5);
	 
	-- �� ����
	-- EXPLOSIONATTACK:SetRandomDamage( ���� �ּҵ�����, ���� �ִ뵥����, ����Ȯ�� )
	-- ������ =  damage  + ���� ������

end

-- ����Ʈ�� ���� MK2�� ��ź �ʱ�ȭ �Լ�.
function StandardLightningMK2Init()
		
	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( -4000.0, 16.0, 300.0, 100.0 , 1 );
--	GRENADE:InitLua( -4000.0, 16.0, 1500.0, 100.0 , 7 );
	
	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	GRENADE:SetDamping( 0.5, 6.0, 0.9 );
	
	-- int nDamageType ( 0:���, 1:��, 2:���� ���� )
	GRENADE:SetDamageType( 2 );
	
	-- ĳ���Ϳ� �浹���� ( 0:��ĳ���� �΋Hġ���� ���߾���. 1:��ĳ���� �΋Hġ�� ����, 2:ĳ���� ��� ), ��ĳ���͸� �浹�� ���ΰ�(true/false )
	GRENADE:SetCollisionChar( 0, true );

	-- bool bCheck, float fCheckSpeed
	GRENADE:SetSpeedCheck( true, 200.0 );
--	GRENADE:SetSpeedCheck( true, 700.0 );
	
	-- ���߽���������, �츮�� �Ϲ� źü, ����� �Ϲ� źü, �츮�� ���� �غ� źü, ����� ���� �غ� źü
	GRENADE:SetSequence( "Resources/Effects/weapon_Lightning_bomber_ex.seq", "Resources/Effects/weapon_lbomber_mk2_throw.seq", "Resources/Effects/weapon_lbomber_mk2_throw.seq", "Resources/Effects/weapon_lbomber_mk2_fire.seq", "Resources/Effects/weapon_lbomber_mk2_fire.seq" );	
						
	-- ���߻���
	GRENADE:SetExplosionSound( "Resources/Sound/lightningbomber_bomb.ogg" );
	
	-- �����غ� ����
	GRENADE:SetExplosionReadySound( "Resources/Sound/Earthbomber_limit.ogg" );
	
	-- ���� �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	GRENADE:SetExplosionLuaName( "LightningBomberMk2_Explosion" );

	-- ���߹��� ����.( XML���� ���õ� range�� ���ȵ� )
	-- GRENADE:SetCollisionRange( MAKEBOX( MAKEVECTOR3(0,200,200), MAKEVECTOR3(0,0,-1), 400, 400, 400 ) );
	
	--SetCollisionRange�� ���� ȯ�濡�� �� �� �ִ� Ÿ�� �ڽ��� �����Ѵ�.
	--setcollsionRange�� �Ʒ� EXPLOSIONATTACK:InitAttack2�� ��ǥ���� ����ȭ�� �ؾ� ���������� �����Ѵ�.
	-- MAKECYLINDER( MAKEVECTOR3(center��), ����, ������ ); 
	GRENADE:SetCollisionRange( MAKECYLINDER( MAKEVECTOR3( 0, 200, 0 ), 600, 600 ) );

end

-- ����Ʈ�� ���� MK2 �⺻ ���� �Լ�.
function StandardLightningBomberMK2(  OneShotTime, Power, Accuracy, AdditionalPower )
		
	STATE:InitLua( 100, 
	"Resources/Effects/skill_gunner_electronic_bomb_1.seq", 
	"Resources/Sound/earthbomber_shot.ogg", 500, 4750 );
	
	-- ����ü �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	STATE:SetWeaponInitLuaFuncName( "StandardLightningMK2Init" );

end