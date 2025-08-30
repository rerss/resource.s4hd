require "Resources/Script/ActorStates_Constants.lua"
require "Resources/Script/Weapon_rocketlauncher.lua"
require "Resources/Script/Weapon_lightningbomberMK2.lua"
require "Resources/Script/Weapon_rescuegunMK2.lua"

-------------------------------------------------------------------------------
-- 1 : Weapon_lua.x7 ���� ����� �Լ�
-------------------------------------------------------------------------------
--[[  �׷����̵带 ��� �ִ� ���¿��� �߻縦 �Ҷ� ������ �Լ�.
	�⺻ MineLaunch ����
	InitLua����
	u32 uThrowTime				= ���ݹ�ư�� ���� �Ŀ� �ش�ð��Ŀ� �߻縦 �Ѵ�.
	cchar * szThrowSequence,
	cchar * szThrowSound,
	u32 uStateEndTime			= ���ݻ��½ð�
	float fLaunchForce			= �߻��ϴ� ��
]]--
-------------------------------------------------------------------------------
function StandardMineLaunch(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitLua( 100, "Resources/Effects/skill_gunner_electronic_bomb_1.seq", "Resources/Sound/grenade_fire.ogg", 500, 4000 );

	-- ����ü �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	STATE:SetWeaponInitLuaFuncName( "StandardMineInit" );

end



-------------------------------------------------------------------------------
-- 2 : 1���� ����� �Լ�
-------------------------------------------------------------------------------
--[[  �׷����̵� ź�� ���� �ʱ�ȭ �Լ�.
]]--
-------------------------------------------------------------------------------
function StandardMineInit()

	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( -4000.0, 16.0, 3000.0, 100.0 , 1 );
--	GRENADE:InitLua( -4000.0, 16.0, 3000.0, 100.0 , 7 );

	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
--	GRENADE:SetDamping( 0.5, 3.0, 0.9 );
	GRENADE:SetDamping( 0.5, 16.0, 0.9 );

	-- int nDamageType ( 0:���, 1:��, 2:���� ���� )
	GRENADE:SetDamageType( 2 );

	-- ĳ���Ϳ� �浹���� ( 0:��ĳ���� �ε�ġ���� ���߾���. 1:��ĳ���� �ε�ġ�� ����, 2:ĳ���� ��� ), ��ĳ���͸� �浹�� ���ΰ�(true/false )
	GRENADE:SetCollisionChar( 1, true );

	-- bool bCheck, float fCheckSpeed
	GRENADE:SetSpeedCheck( false, 0.0 );

	-- ���߽���������, �츮�� �Ϲ� źü, ����� �Ϲ� źü, �츮�� ���� �غ� źü, ����� ���� �غ� źü
	GRENADE:SetSequence( "Resources/Effects/skill_gunner_electronic_bomb_3.seq", "Resources/Effects/skill_gunner_electronic_bomb_2_ally.seq", "Resources/Effects/skill_gunner_electronic_bomb_2_enemy.seq", "", "" );

	-- ���߻���
	GRENADE:SetExplosionSound( "Resources/Sound/grenade_explosion.ogg" );

	-- ���� �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	GRENADE:SetExplosionLuaName( "StandardMineExplosion" );

end



-------------------------------------------------------------------------------
-- 3 : 2���� ����� �Լ�.
-------------------------------------------------------------------------------
--[[  �׷����̵� ���߿� �Լ�
]]--
-------------------------------------------------------------------------------
function StandardMineExplosion( damage, range )

	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_MINE_LAUNCHER, ATTACKATTRIB_MINE_LAUNCHER , 0, damage, 0 );
	EXPLOSIONATTACK:InitAttack2( MAKESPHERE( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY(), POSITION:GetZ() ), range ), 1, 1 );
	EXPLOSIONATTACK:AddPushCondition( 300, 2000, -5000 );

	-- 0: ������ �ϰ�����, 1: �Ÿ��������� ����
	EXPLOSIONATTACK:SetDamageApplyType( 1 );

	-- range ��� 2��° ���� ������ ����, 3��° ���� ������ ����, 4��° ���� ������ ����
	EXPLOSIONATTACK:SetDamageRates( 0.75, 0.5, 0.5 );

	-- range ��� 2��° ���� ����, 3��° ���� ����, 4��° ���� ����
	EXPLOSIONATTACK:SetExplosionRanges( 0.25, 0.5, 0.75 );

	-- �߾��� ������ �Ǵ� ����
	-- EXPLOSIONATTACK:SetGaussRandomDamage( ���� �ּҵ�����, ���� �ִ뵥����, ����Ȯ��, �߾����ߵ�( 0�̸� ������, �������� �߾ӿ� ���� ) )

	-- �� ����
	-- EXPLOSIONATTACK:SetRandomDamage( ���� �ּҵ�����, ���� �ִ뵥����, ����Ȯ�� )

end


-------------------------------------------------------------------------------
-- 1 : Weapon_lua.x7 ���� ����� �Լ�
-------------------------------------------------------------------------------
--[[  ��ӳ���Ʈ �׷����̵带 ��� �ִ� ���¿��� �߻縦 �Ҷ� ������ �Լ�.
	�⺻ MineLaunch ����
	InitLua����
	u32 uThrowTime				= ���ݹ�ư�� ���� �Ŀ� �ش�ð��Ŀ� �߻縦 �Ѵ�.
	cchar * szThrowSequence,
	cchar * szThrowSound,
	u32 uStateEndTime			= ���ݻ��½ð�
	float fLaunchForce			= �߻��ϴ� ��
]]--
-------------------------------------------------------------------------------
function GrenadeUniqueLaunch(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitLua( 100, "Resources/Effects/grenade_summer_night_blast.seq", "Resources/Sound/grenade_fire.ogg", 500, 4000 );

	-- ����ü �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	STATE:SetWeaponInitLuaFuncName( "GrenadeUniqueInit" );

end

-------------------------------------------------------------------------------
-- 2 : 1���� ����� �Լ�
-------------------------------------------------------------------------------
--[[  �׷����̵� ź�� ���� �ʱ�ȭ �Լ�.
]]--
-------------------------------------------------------------------------------
function GrenadeUniqueInit()

	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( -4000.0, 16.0, 3000.0, 100.0 , 1 );
--	GRENADE:InitLua( -4000.0, 16.0, 3000.0, 100.0 , 7 );

	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
--	GRENADE:SetDamping( 0.5, 3.0, 0.9 );
	GRENADE:SetDamping( 0.5, 16.0, 0.9 );

	-- int nDamageType ( 0:���, 1:��, 2:���� ���� )
	GRENADE:SetDamageType( 2 );

	-- ĳ���Ϳ� �浹���� ( 0:��ĳ���� �ε�ġ���� ���߾���. 1:��ĳ���� �ε�ġ�� ����, 2:ĳ���� ��� ), ��ĳ���͸� �浹�� ���ΰ�(true/false )
	GRENADE:SetCollisionChar( 1, true );

	-- bool bCheck, float fCheckSpeed
	GRENADE:SetSpeedCheck( false, 0.0 );

	-- ���߽���������, �츮�� �Ϲ� źü, ����� �Ϲ� źü, �츮�� ���� �غ� źü, ����� ���� �غ� źü
	GRENADE:SetSequence( "Resources/Effects/grenade_summer_night_explosion.seq", "Resources/Effects/grenade_summer_night_bullet.seq", "Resources/Effects/grenade_summer_night_bullet_enemy.seq", "", "" );

	-- ���߻���
	GRENADE:SetExplosionSound( "Resources/Sound/grenade_explosion.ogg" );

	-- ���� �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	GRENADE:SetExplosionLuaName( "GrenadeUniqueExplosion" );

end

-------------------------------------------------------------------------------
-- 3 : 2���� ����� �Լ�.
-------------------------------------------------------------------------------
--[[  �׷����̵� ���߿� �Լ�
]]--
-------------------------------------------------------------------------------
function GrenadeUniqueExplosion( damage, range )

	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_MINE_LAUNCHER, ATTACKATTRIB_MINE_LAUNCHER , 0, damage, 0 );
	EXPLOSIONATTACK:InitAttack2( MAKESPHERE( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY(), POSITION:GetZ() ), range ), 1, 1 );
	EXPLOSIONATTACK:AddPushCondition( 300, 2000, -5000 );

	-- 0: ������ �ϰ�����, 1: �Ÿ��������� ����
	EXPLOSIONATTACK:SetDamageApplyType( 1 );

	-- range ��� 2��° ���� ������ ����, 3��° ���� ������ ����, 4��° ���� ������ ����
	EXPLOSIONATTACK:SetDamageRates( 0.75, 0.5, 0.5 ); --0.75, 0.5, 0.5

	-- range ��� 2��° ���� ����, 3��° ���� ����, 4��° ���� ����
	EXPLOSIONATTACK:SetExplosionRanges( 0.25, 0.5, 0.75 );

	-- �߾��� ������ �Ǵ� ����
	-- EXPLOSIONATTACK:SetGaussRandomDamage( ���� �ּҵ�����, ���� �ִ뵥����, ����Ȯ��, �߾����ߵ�( 0�̸� ������, �������� �߾ӿ� ���� ) )

	-- �� ����
	-- EXPLOSIONATTACK:SetRandomDamage( ���� �ּҵ�����, ���� �ִ뵥����, ����Ȯ�� )

end



--[[ � ���� -- ,
	u32 uStateEndTime			= ���ݻ��½ð�
	float fLaunchForce			= �߻��ϴ� ��
]]--
-------------------------------------------------------------------------------
function StandardEarthBomber(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitLua( 100, "Resources/Effects/skill_gunner_electronic_bomb_1.seq", "Resources/Sound/earthbomber_shot.ogg", 500, 4750 );

	-- ����ü �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	STATE:SetWeaponInitLuaFuncName( "StandardEarthInit" );

end



-------------------------------------------------------------------------------
-- 2 : 1���� ����� �Լ�
-------------------------------------------------------------------------------
--[[  ������� ���� �ʱ�ȭ �Լ�.
]]--
-------------------------------------------------------------------------------
function StandardEarthInit()

	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( -4000.0, 16.0, 1000.0, 100.0, 7 ); -- 1 // 20150507 : u32 uExplosionTime 1500 > 1000���� ���� + �ӵ� ����ġ �Ͽ� �� 1.5�� ���� ���� �� �ֵ���.
--	GRENADE:InitLua( -4000.0, 16.0, 1500.0, 100.0, 1 );

	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	--�⺻ �ӵ� ����ġ, ���鿡 ���� �� �ӵ� ����ġ, ���� �ٿ�� �� �ӵ� ����ġ
--	GRENADE:SetDamping( 0.5, 6.0, 0.9 );
	GRENADE:SetDamping( 0.5, 16.0, 0.9 );

	-- int nDamageType ( 0:���, 1:��, 2:���� ���� )
	GRENADE:SetDamageType( 0 );

	-- ĳ���Ϳ� �浹���� ( 0:��ĳ���� �ε�ġ���� ���߾���. 1:��ĳ���� �ε�ġ�� ����, 2:ĳ���� ��� ), ��ĳ���͸� �浹�� ���ΰ�(true/false )
	GRENADE:SetCollisionChar( 0, true );

	-- bool bCheck, float fCheckSpeed
	GRENADE:SetSpeedCheck( true, 200.0 );
--	GRENADE:SetSpeedCheck( true, 700.0 );

	-- ���߽���������, �츮�� �Ϲ� źü, ����� �Ϲ� źü, �츮�� ���� �غ� źü, ����� ���� �غ� źü
	GRENADE:SetSequence( "Resources/Effects/weapon_earth_bomber_ex.seq", "Resources/Effects/weapon_earth_bomber_throw.seq", "Resources/Effects/weapon_earth_bomber_throw.seq", "Resources/Effects/weapon_earth_bomber_fire.seq", "Resources/Effects/weapon_earth_bomber_fire.seq" );

	-- ���߻���
	GRENADE:SetExplosionSound( "Resources/Sound/earthbomber_bomb.ogg" );

		-- �����غ� ����
	GRENADE:SetExplosionReadySound( "Resources/Sound/Earthbomber_limit.ogg" );

	-- ���� �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	GRENADE:SetExplosionLuaName( "StandardEarthExplosion" );

	-- ���߹��� ����.( XML���� ���õ� range�� ���ȵ� )
	--GRENADE:SetCollisionRange( MAKESPHERE( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,0), 400, 400, 400 ) );

end



-------------------------------------------------------------------------------
-- 3 : 2���� ����� �Լ�.
-------------------------------------------------------------------------------
--[[ ����� ���߿� �Լ�
]]--
-------------------------------------------------------------------------------
function StandardEarthExplosion( damage, range )

	-- ( XML���� ���õ� range�� Sphere Ÿ�Կ����� ���ȴ�. ), �⺻�����δ� 2������ ������ ���߹����� ����Ѵ�.
	-- �Ʒ��� �ΰ��� �Լ��� ���� �����
	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_EARTH_BOMB, ATTACKATTRIB_EARTH_BOMBER , 0, damage, 0 );
	EXPLOSIONATTACK:InitAttack2( MAKESPHERE( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY(), POSITION:GetZ() ), range ), 1, 1 );

	EXPLOSIONATTACK:AddPushCondition( 300, 2000, -5000 );


	--�ڽ� �� �Ʊ� ������ �߰� �����. ���� ������ �տ��� �Ʒ� �Է¹��� ��ġ�� ���ؼ� �ڽŰ� �Ʊ����� �������� �����Ѵ�.
	--��ġ�� 0���� 1������ ������ �Է��Ѵ�.
	--EXPLOSIONATTACK:SetFriendlyDamage(�ڽ� ������ ����, �ڽ� �� �Ʊ� ������ ����);

	EXPLOSIONATTACK:SetFriendlyDamage(0.5, 0.2);

	-- 0: ������ �ϰ�����, 1: �Ÿ��������� ����, 2: �Ÿ���������(���������� �Ÿ��� ������ üũ. )
	EXPLOSIONATTACK:SetDamageApplyType( 2 );

	-- range ��� 2��° ���� ������ ����, 3��° ���� ������ ����, 4��° ���� ������ ����
	EXPLOSIONATTACK:SetDamageRates( 0.75, 0.3, 0.04 ); --0.75, 0.5, 0.25

	-- range ��� 2��° ���� ����, 3��° ���� ����, 4��° ���� ����
	--2��° ���� ���� �������� ù��° ���� �������� SetDamageRates���� ������ ���� �ʾƵ� 1�� ������ ������ ����Ѵ�. (ũ��Ƽ�� ������)

	EXPLOSIONATTACK:SetExplosionRanges( 0.3, 0.5, 0.7 );	--0.4, 0.6, 0.8

	-- �߾��� ������ �Ǵ� ����
	-- EXPLOSIONATTACK:SetGaussRandomDamage( ���� �ּҵ�����, ���� �ִ뵥����, ����Ȯ��, �߾����ߵ�( 0�̸� ������, �������� �߾ӿ� ���� ) )
	-- EXPLOSIONATTACK:SetGaussRandomDamage( 10, 90, 10);

	-- �߾��� ������ �Ǵ� ����
	-- EXPLOSIONATTACK:SetGaussRandomDamage( ���� �ּҵ�����, ���� �ִ뵥����, ����Ȯ��, �߾����ߵ�( 0�̸� ������, �������� �߾ӿ� ���� ) )

	-- �� ����
	-- EXPLOSIONATTACK:SetRandomDamage( ���� �ּҵ�����, ���� �ִ뵥����, ����Ȯ�� )
	-- ������ =  damage  + ���� ������

	-- �ǵ�ȯ ��ο� �׽�Ʈ
	-- EXPLOSIONATTACK:AddBlowCondition( 2000, 2000 );

end



-- ����Ʈ�� ���� --


-------------------------------------------------------------------------------
-- 1 : Weapon_lua.x7 ���� ����� �Լ�
-------------------------------------------------------------------------------
--[[  ����Ʈ�� ������ ��� �ִ� ���¿��� �߻縦 �Ҷ� ������ �Լ�.
	�⺻ MineLaunch ����
	InitLua����
	u32 uThrowTime				= ���ݹ�ư�� ���� �Ŀ� �ش�ð��Ŀ� �߻縦 �Ѵ�.
	cchar * szThrowSequence,
	cchar * szThrowSound,
	u32 uStateEndTime			= ���ݻ��½ð�
	float fLaunchForce			= �߻��ϴ� ��
]]--
-------------------------------------------------------------------------------
function StandardLightningBomber(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitLua( 100, "Resources/Effects/skill_gunner_electronic_bomb_1.seq", "Resources/Sound/earthbomber_shot.ogg", 500, 4750 );

	-- ����ü �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	STATE:SetWeaponInitLuaFuncName( "StandardLightningInit" );

end



-------------------------------------------------------------------------------
-- 2 : 1���� ����� �Լ�
-------------------------------------------------------------------------------
--[[  ����Ʈ�� ������ ���� �ʱ�ȭ �Լ�.
]]--
-------------------------------------------------------------------------------
function StandardLightningInit()

	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( -4000.0, 16.0, 1000.0, 100.0 , 1 ); --������ �ӵ� ���� (1.5�ʳ��� ����)
--	GRENADE:InitLua( -4000.0, 16.0, 1500.0, 100.0 , 7 );

	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	--�⺻ �ӵ� ����ġ, ���鿡 ���� �� �ӵ� ����ġ, ���� �ٿ�� �� �ӵ� ����ġ
--	GRENADE:SetDamping( 0.5, 6.0, 0.9 );
	GRENADE:SetDamping( 0.5, 16.0, 0.9 );

	-- int nDamageType ( 0:���, 1:��, 2:���� ���� )
	GRENADE:SetDamageType( 0 );

	-- ĳ���Ϳ� �浹���� ( 0:��ĳ���� �ε�ġ���� ���߾���. 1:��ĳ���� �ε�ġ�� ����, 2:ĳ���� ��� ), ��ĳ���͸� �浹�� ���ΰ�(true/false )
	GRENADE:SetCollisionChar( 0, true );

	-- bool bCheck, float fCheckSpeed
	GRENADE:SetSpeedCheck( true, 200.0 );
--	GRENADE:SetSpeedCheck( true, 700.0 );

	-- ���߽���������, �츮�� �Ϲ� źü, ����� �Ϲ� źü, �츮�� ���� �غ� źü, ����� ���� �غ� źü
	GRENADE:SetSequence( "Resources/Effects/weapon_Lightning_bomber_ex.seq", "Resources/Effects/weapon_Lightning_bomber_throw.seq", "Resources/Effects/weapon_Lightning_bomber_throw.seq", "Resources/Effects/weapon_Lightning_bomber_fire.seq", "Resources/Effects/weapon_Lightning_bomber_fire.seq" );

	-- ���߻���
	GRENADE:SetExplosionSound( "Resources/Sound/lightningbomber_bomb.ogg" );

	-- �����غ� ����
	GRENADE:SetExplosionReadySound( "Resources/Sound/Earthbomber_limit.ogg" );

	-- ���� �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	GRENADE:SetExplosionLuaName( "StandardLightningExplosion" );

	-- ���߹��� ����.( XML���� ���õ� range�� ���ȵ� )
	-- GRENADE:SetCollisionRange( MAKEBOX( MAKEVECTOR3(0,200,200), MAKEVECTOR3(0,0,-1), 400, 400, 400 ) );

	--SetCollisionRange�� ���� ȯ�濡�� �� �� �ִ� Ÿ�� �ڽ��� �����Ѵ�.
	--setcollsionRange�� �Ʒ� EXPLOSIONATTACK:InitAttack2�� ��ǥ���� ����ȭ�� �ؾ� ���������� �����Ѵ�.
	GRENADE:SetCollisionRange( MAKECYLINDER( MAKEVECTOR3( 0, 200, 0 ), 700, 900 ) );

end

-------------------------------------------------------------------------------
-- 3 : 2���� ����� �Լ�.
-------------------------------------------------------------------------------
--[[  ����Ʈ�� ���� ���߿� �Լ�
]]--
-------------------------------------------------------------------------------
function StandardLightningExplosion( damage, range )

	-- ( XML���� ���õ� range�� Sphere Ÿ�Կ����� ���ȴ�. ), �⺻�����δ� 2������ ������ ���߹����� ����Ѵ�.
	-- �Ʒ��� �ΰ��� �Լ��� ���� �����
	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_LIGHT_BOMB, ATTACKATTRIB_LIGHT_BOMBER , 0, damage, 0 );

	--EXPLOSIONATTACK:InitAttack2�� ���� Ÿ�� �ڽ��� �����Ѵ�.
	EXPLOSIONATTACK:InitAttack2( MAKECYLINDER( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY()+250, POSITION:GetZ() ), 700, 900 ), 1, 1 );
	-- EXPLOSIONATTACK:InitAttack2( MAKEFAN( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY()+300, POSITION:GetZ()), MAKEVECTOR2(0,-1), 300, 300, 300, 120 ), 1, 1);

	EXPLOSIONATTACK:AddPushCondition( 300, 2000, -5000 );
	EXPLOSIONATTACK:AddMoveSpeedCondition(2500, 0.5); --���ο� �߰� 160218


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
	 EXPLOSIONATTACK:SetGaussRandomDamage( 0, 167, 100, 1); -- 20150507 : ���� ������ ���� 35~ 110 > ���� 28 ~ 110 (weapon damage 25)
	-- EXPLOSIONATTACK:SetGaussRandomDamage( 10, 130, 100, 3);

	 --�⺻ ������+���������� ���� ���� SetGaussRandomCritical ��ġ�� ���� �ÿ� ũ��Ƽ�� �޽����� ����Ѵ�.
	 --�Ʊ� �� �ڽ��� �ǰ��� ���, FrendlyDamage üũ ���� �Ʒ� ũ��Ƽ���� üũ�ϰ� FrendlyDamage�� ���� �������� ���� �� �ݿ��Ѵ�.
	 --�� RandomCritical ��ġ�� 100�� ��쿡 �ڽ��� �ǰ� �� 50�̻� �������� �� �� ũ��Ƽ�� �޽����� ȣ��ȴ�.
	 EXPLOSIONATTACK:SetGaussRandomCritical( 120 );


	-- �� ����
	-- EXPLOSIONATTACK:SetRandomDamage( ���� �ּҵ�����, ���� �ִ뵥����, ����Ȯ�� )
	-- ������ =  damage  + ���� ������




end





-- ����ť�� --

------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- 1 : Weapon_lua.x7 ���� ����� �Լ�
-------------------------------------------------------------------------------
--[[  �׷����̵带 ��� �ִ� ���¿��� �߻縦 �Ҷ� ������ �Լ�.
	�⺻ MineLaunch ����
	InitLua����
	u32 uThrowTime				= ���ݹ�ư�� ���� �Ŀ� �ش�ð��Ŀ� �߻縦 �Ѵ�.
	cchar * szThrowSequence,
	cchar * szThrowSound,
	u32 uStateEndTime			= ���ݻ��½ð�
	float fLaunchForce			= �߻��ϴ� ��
]]--
-------------------------------------------------------------------------------
function StandardRescueGunLaunch(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitLua( 100, "Resources/Effects/skill_gunner_electronic_bomb_1.seq", "Resources/Sound/rescuegun_shot.ogg", 500, 5000 ); -- (�� �� �ĵ�500,�Ѿ� ���ư��� �� 4000�� ���� �� ���ư��� �ӵ��� �޶���)

	-- ����ü �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	STATE:SetWeaponInitLuaFuncName( "StandardRescueGunInit" );

end



-------------------------------------------------------------------------------
-- 2 : 1���� ����� �Լ�
-------------------------------------------------------------------------------
--[[  ����ť ź�� ���� �ʱ�ȭ �Լ�.
]]--
-------------------------------------------------------------------------------
function StandardRescueGunInit()
	-- (�߷°�,**,�����µ� �ɸ��� ��,**)
	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( -4500.0, 16.0, 4000.0, 100.0 , 1 );  -- 2000.0, ź�� ���� �� �����µ� �ɸ��� �ð�
--	GRENADE:InitLua( -4500.0, 16.0, 4000.0, 100.0 , 7 );  -- 2000.0, ź�� ���� �� �����µ� �ɸ��� �ð�

	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	-- �⺻ �ӵ� ����ġ, ���鿡 ���� �� �ӵ� ����ġ, ���� �ٿ�� �� �ӵ� ����ġ _(���� ������ ��ź�� �������� �ӵ� ����)
--	GRENADE:SetDamping( 0.5, 0, 0.3 );   --( 0.5, 6.0, 0.9 ) , ( 0.5, 10, 0.6 ), ( 0.5, 20, 0.5 )
	GRENADE:SetDamping( 0.5, 16, 0.3 );   --( 0.5, 6.0, 0.9 ) , ( 0.5, 10, 0.6 ), ( 0.5, 20, 0.5 )

	-- int nDamageType ( 0:���, 1:��, 2:���� ���� )
	GRENADE:SetDamageType( 0 );   -- ź�� ������ �������� �������� �ִ����� ���� �� (�Ϲ� ����ť���� �����Ե� ���� ����Ǹ� Mk2�� ������� ����)

	-- ĳ���Ϳ� �浹���� ( 0:��ĳ���� �ε�ġ���� ���߾���. 1:��ĳ���� �ε�ġ�� ����, 2:ĳ���� ��� ), ��ĳ���͸� �浹�� ���ΰ�(true/false )
	GRENADE:SetCollisionChar( 3, false ); -- ĳ���Ϳ� �浹 �� �������� ���������Ŀ� ��

	-- bool bCheck, float fCheckSpeed ��ź�� �� �� �̵� üũ�� �ϴ��� ���� ���� true/false
	GRENADE:SetSpeedCheck( true, 200.0 );   -- üũ ���� �Ŀ� 2������ �Ѿ
--	GRENADE:SetSpeedCheck( true, 700.0 );   -- üũ ���� �Ŀ� 2������ �Ѿ



	-- ���߽���������, �츮�� �Ϲ� źü, ����� �Ϲ� źü, �츮�� ���� �غ� źü, ����� ���� �غ� źü(���� �غ� Ȥ�� ������ ������ �Ʊ��� ���� ������ ���� �̹����� �޶����� �ϴ� �Լ�)
	GRENADE:SetSequence( "Resources/Effects/weapon_resque_fire01.seq", "Resources/Effects/weapon_resque_ball01.seq", "Resources/Effects/weapon_resque_ball01.seq", "Resources/Effects/weapon_resque_ball02.seq", "Resources/Effects/weapon_resque_ball02.seq" );

	-- ���߻���
	GRENADE:SetExplosionSound( "Resources/Sound/rescuegun_bomb.ogg" );

	-- ���� �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	GRENADE:SetExplosionLuaName( "StandardRescueGunExplosion" );

	-- // Ȱ��ȭ ���� ������ �浹�ؾ� �ϴ°�?( true/false ) �⺻�� false ��
	GRENADE:SetAfterActiveCheckChar( true );

	-- ������ ����ť�� ����
	GRENADE:SetRescueCriticalMaxProb( 100.0 );
	GRENADE:SetRescueCriticalMinProb( 0.0 );

end



-------------------------------------------------------------------------------
-- 3 : 2���� ����� �Լ�.
-------------------------------------------------------------------------------
--[[  ����ť�� ���߿� �Լ�
]]--
-------------------------------------------------------------------------------
function StandardRescueGunExplosion( damage, range )

	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_RESCUEGUN, ATTACKATTRIB_RESCUEGUN , 0, damage, 0 );
	EXPLOSIONATTACK:InitAttack2( MAKESPHERE( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY(), POSITION:GetZ() ), range ), 1, 1 );


	-- 0: ������ �ϰ�����, 1: �Ÿ��������� ����
	EXPLOSIONATTACK:SetDamageApplyType( 0 );

	--�ڽ� �� �Ʊ� ������ �߰� �����. ���� ������ �տ��� �Ʒ� �Է¹��� ��ġ�� ���ؼ� �ڽŰ� �Ʊ����� �������� �����Ѵ�. ��ġ�� 0���� 1������ ������ �Է��Ѵ�.
	--(�ڽ� ������ ����, �ڽ� �� �Ʊ� ������ ����);
	EXPLOSIONATTACK:SetFriendlyDamage(0, 5.0);	-- �������Ե� 100% ȸ���Ǵ� ������ ����. ������ ���� 5��� �����ϰ� weapon���� ��ġ ����

	-- ���� ������ ����Լ� ���
	--EXPLOSIONATTACK:SetLastDamageLuaFunction( "StandardRescueGunCalcDamage" );  StandardRescueGunCalcDamage �̺κ��� ���� �Ǹ� ���߿� üũ�Ǿ� ���콺 �Լ��� ������� ���Ͽ� �ּ� ó����


	EXPLOSIONATTACK:SetUiCriticalExplosionAttack( false );  -- ũ��Ƽ�� ������ ��� ����
	EXPLOSIONATTACK:SetExceptSentry( true );   -- ��Ʈ���� ���ݿ��� ���� �Ұ�����


	EXPLOSIONATTACK:SetCritical( 1.96, 10 );   --���� ũ��Ƽ�� (ũ��Ƽ�� ����, ũ��Ƽ�� Ȯ��)


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

-------------------------------------------------------------------------------
-- 4 : 3���� ����� �Լ�.
-------------------------------------------------------------------------------
--[[  ����ť�� ���� �������� ����ϴ� �Լ�
	�Ʒ��� �͵��� ������ ���Ѿ� �Ѵ�.
	lastDamage �� ���� ��� ���� �־���� �Ѵ�.
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

]]-- �ο� üũ�� ���ϰ� �Ǿ� ��� ���ϴ� �Լ�



-- ����ũ ���� ----------------------------------------------------------------

--[[ ���� ����ũ -- ,
	u32 uStateEndTime			= ���ݻ��½ð�
	float fLaunchForce			= �߻��ϴ� ��
]]--
-------------------------------------------------------------------------------
function StandardUniqueBomber(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitLua( 100, "Resources/Effects/skill_gunner_electronic_bomb_1.seq", "Resources/Sound/earthbomber_shot.ogg", 500, 4750 );

	-- ����ü �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	STATE:SetWeaponInitLuaFuncName( "StandardUniqueInit" );

end

-------------------------------------------------------------------------------
-- 2 : 1���� ����� �Լ�
-------------------------------------------------------------------------------
--[[ ����ũ ������ ���� �ʱ�ȭ �Լ�.
]]--
-------------------------------------------------------------------------------
function StandardUniqueInit()

	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( -4000.0, 16.0, 1000.0, 100.0 , 7 );	--������ �ӵ� ����
--	GRENADE:InitLua( -4000.0, 16.0, 1500.0, 100.0 , 1 );

	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	--�⺻ �ӵ� ����ġ, ���鿡 ���� �� �ӵ� ����ġ, ���� �ٿ�� �� �ӵ� ����ġ
--	GRENADE:SetDamping( 0.5, 6.0, 0.9 );
	GRENADE:SetDamping( 0.5, 16.0, 0.9 );

	-- int nDamageType ( 0:���, 1:��, 2:���� ���� )
	GRENADE:SetDamageType( 0 );

	-- ĳ���Ϳ� �浹���� ( 0:��ĳ���� �ε�ġ���� ���߾���. 1:��ĳ���� �ε�ġ�� ����, 2:ĳ���� ��� ), ��ĳ���͸� �浹�� ���ΰ�(true/false )
	GRENADE:SetCollisionChar( 0, true );

	-- bool bCheck, float fCheckSpeed
	GRENADE:SetSpeedCheck( true, 200.0 );
--	GRENADE:SetSpeedCheck( true, 700.0 );

	-- ���߽���������, �츮�� �Ϲ� źü, ����� �Ϲ� źü, �츮�� ���� �غ� źü, ����� ���� �غ� źü
	GRENADE:SetSequence( "Resources/Effects/weapon_earth_bomber_ex.seq",
                         "Resources/Effects/weapon_earthbomber_r_throw.seq",
                         "Resources/Effects/weapon_earthbomber_r_throw.seq",
                         "Resources/Effects/weapon_earthbomber_r_fire.seq",
                         "Resources/Effects/weapon_earthbomber_r_fire.seq" );

	-- ���߻���
	GRENADE:SetExplosionSound( "Resources/Sound/earthbomber_bomb.ogg" );

		-- �����غ� ����
	GRENADE:SetExplosionReadySound( "Resources/Sound/Earthbomber_limit.ogg" );

	-- ���� �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	GRENADE:SetExplosionLuaName( "StandardUniqueExplosion" );

	-- ���߹��� ����.( XML���� ���õ� range�� ���ȵ� )
	--GRENADE:SetCollisionRange( MAKESPHERE( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,0), 400, 400, 400 ) );

end

-------------------------------------------------------------------------------
-- 3 : 2���� ����� �Լ�.
-------------------------------------------------------------------------------
--[[ ����ũ ���� ���߿� �Լ�
]]--
-------------------------------------------------------------------------------
function StandardUniqueExplosion( damage, range )

	-- ( XML���� ���õ� range�� Sphere Ÿ�Կ����� ���ȴ�. ), �⺻�����δ� 2������ ������ ���߹����� ����Ѵ�.
	-- �Ʒ��� �ΰ��� �Լ��� ���� �����
	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_EARTH_BOMB, ATTACKATTRIB_EARTH_BOMBER , 0, damage, 0 );
	EXPLOSIONATTACK:InitAttack2( MAKESPHERE( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY(), POSITION:GetZ() ), range ), 1, 1 );

	EXPLOSIONATTACK:AddPushCondition( 300, 2000, -5000 );

	--�ڽ� �� �Ʊ� ������ �߰� �����. ���� ������ �տ��� �Ʒ� �Է¹��� ��ġ�� ���ؼ� �ڽŰ� �Ʊ����� �������� �����Ѵ�.
	--��ġ�� 0���� 1������ ������ �Է��Ѵ�.
	--EXPLOSIONATTACK:SetFriendlyDamage(�ڽ� ������ ����, �ڽ� �� �Ʊ� ������ ����);

	EXPLOSIONATTACK:SetFriendlyDamage(0.5, 0.2);

	-- 0: ������ �ϰ�����, 1: �Ÿ��������� ����, 2: �Ÿ���������(���������� �Ÿ��� ������ üũ. )
	EXPLOSIONATTACK:SetDamageApplyType( 2 );

	-- range ��� 2��° ���� ������ ����, 3��° ���� ������ ����, 4��° ���� ������ ����
	EXPLOSIONATTACK:SetDamageRates( 0.75, 0.3, 0.04 );

	-- range ��� 2��° ���� ����, 3��° ���� ����, 4��° ���� ����
	--2��° ���� ���� �������� ù��° ���� �������� SetDamageRates���� ������ ���� �ʾƵ� 1�� ������ ������ ����Ѵ�. (ũ��Ƽ�� ������)

	EXPLOSIONATTACK:SetExplosionRanges( 0.3, 0.5, 0.7 );

	-- �߾��� ������ �Ǵ� ����
	-- EXPLOSIONATTACK:SetGaussRandomDamage( ���� �ּҵ�����, ���� �ִ뵥����, ����Ȯ��, �߾����ߵ�( 0�̸� ������, �������� �߾ӿ� ���� ) )
	-- EXPLOSIONATTACK:SetGaussRandomDamage( 10, 90, 10);

	-- �߾��� ������ �Ǵ� ����
	-- EXPLOSIONATTACK:SetGaussRandomDamage( ���� �ּҵ�����, ���� �ִ뵥����, ����Ȯ��, �߾����ߵ�( 0�̸� ������, �������� �߾ӿ� ���� ) )

	-- �� ����
	-- EXPLOSIONATTACK:SetRandomDamage( ���� �ּҵ�����, ���� �ִ뵥����, ����Ȯ�� )
	-- ������ =  damage  + ���� ������

end


-- �۸�ġ ���� � ���� ----------------------------------------------------------------

--[[ �۸�ġ ���� � ���� -- ,
	u32 uStateEndTime			= ���ݻ��½ð�
	float fLaunchForce			= �߻��ϴ� ��
]]--
-------------------------------------------------------------------------------
function GlitchJoyEarthBomber(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitLua( 100, "Resources/Effects/skill_gunner_electronic_bomb_1.seq", "Resources/Sound/earthbomber_shot.ogg", 500, 4750 );

	-- ����ü �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	STATE:SetWeaponInitLuaFuncName( "GlitchJoyEarthBomberInit" );

end

-------------------------------------------------------------------------------
-- 2 : 1���� ����� �Լ�
-------------------------------------------------------------------------------
--[[ �۸�ġ ���� � ������ ���� �ʱ�ȭ �Լ�.
]]--
-------------------------------------------------------------------------------
function GlitchJoyEarthBomberInit()

	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( -4000.0, 16.0, 1000.0, 100.0 , 7 );	--������ �ӵ� ����
--	GRENADE:InitLua( -4000.0, 16.0, 1500.0, 100.0 , 1 );

	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	--�⺻ �ӵ� ����ġ, ���鿡 ���� �� �ӵ� ����ġ, ���� �ٿ�� �� �ӵ� ����ġ
--	GRENADE:SetDamping( 0.5, 6.0, 0.9 );
	GRENADE:SetDamping( 0.5, 16.0, 0.9 );

	-- int nDamageType ( 0:���, 1:��, 2:���� ���� )
	GRENADE:SetDamageType( 0 );

	-- ĳ���Ϳ� �浹���� ( 0:��ĳ���� �ε�ġ���� ���߾���. 1:��ĳ���� �ε�ġ�� ����, 2:ĳ���� ��� ), ��ĳ���͸� �浹�� ���ΰ�(true/false )
	GRENADE:SetCollisionChar( 0, true );

	-- bool bCheck, float fCheckSpeed
	GRENADE:SetSpeedCheck( true, 200.0 );
--	GRENADE:SetSpeedCheck( true, 700.0 );

	-- ���߽���������, �츮�� �Ϲ� źü, ����� �Ϲ� źü, �츮�� ���� �غ� źü, ����� ���� �غ� źü
	GRENADE:SetSequence( "Resources/Effects/weapon_earth_bomber_joy_ex.seq",
                         "Resources/Effects/weapon_earth_bomber_joy_throw.seq",
                         "Resources/Effects/weapon_earth_bomber_joy_throw.seq",
                         "Resources/Effects/weapon_earth_bomber_joy_fire.seq",
                         "Resources/Effects/weapon_earth_bomber_joy_fire.seq" );

	-- ���߻���
	GRENADE:SetExplosionSound( "Resources/Sound/earthbomber_bomb.ogg" );

		-- �����غ� ����
	GRENADE:SetExplosionReadySound( "Resources/Sound/Earthbomber_limit.ogg" );

	-- ���� �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	GRENADE:SetExplosionLuaName( "GlitchJoyEarthBomberExplosion" );

	-- ���߹��� ����.( XML���� ���õ� range�� ���ȵ� )
	--GRENADE:SetCollisionRange( MAKESPHERE( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,0), 400, 400, 400 ) );

end

-------------------------------------------------------------------------------
-- 3 : 2���� ����� �Լ�.
-------------------------------------------------------------------------------
--[[ �۸�ġ ���� � ���� ���߿� �Լ�
]]--
-------------------------------------------------------------------------------
function GlitchJoyEarthBomberExplosion( damage, range )

	-- ( XML���� ���õ� range�� Sphere Ÿ�Կ����� ���ȴ�. ), �⺻�����δ� 2������ ������ ���߹����� ����Ѵ�.
	-- �Ʒ��� �ΰ��� �Լ��� ���� �����
	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_EARTH_BOMB, ATTACKATTRIB_EARTH_BOMBER , 0, damage, 0 );
	EXPLOSIONATTACK:InitAttack2( MAKESPHERE( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY(), POSITION:GetZ() ), range ), 1, 1 );

	EXPLOSIONATTACK:AddPushCondition( 300, 2000, -5000 );

	--�ڽ� �� �Ʊ� ������ �߰� �����. ���� ������ �տ��� �Ʒ� �Է¹��� ��ġ�� ���ؼ� �ڽŰ� �Ʊ����� �������� �����Ѵ�.
	--��ġ�� 0���� 1������ ������ �Է��Ѵ�.
	--EXPLOSIONATTACK:SetFriendlyDamage(�ڽ� ������ ����, �ڽ� �� �Ʊ� ������ ����);

	EXPLOSIONATTACK:SetFriendlyDamage(0.5, 0.2);

	-- 0: ������ �ϰ�����, 1: �Ÿ��������� ����, 2: �Ÿ���������(���������� �Ÿ��� ������ üũ. )
	EXPLOSIONATTACK:SetDamageApplyType( 2 );

	-- range ��� 2��° ���� ������ ����, 3��° ���� ������ ����, 4��° ���� ������ ����
	EXPLOSIONATTACK:SetDamageRates( 0.75, 0.3, 0.04 );

	-- range ��� 2��° ���� ����, 3��° ���� ����, 4��° ���� ����
	--2��° ���� ���� �������� ù��° ���� �������� SetDamageRates���� ������ ���� �ʾƵ� 1�� ������ ������ ����Ѵ�. (ũ��Ƽ�� ������)

	EXPLOSIONATTACK:SetExplosionRanges( 0.3, 0.5, 0.7 );

	-- �߾��� ������ �Ǵ� ����
	-- EXPLOSIONATTACK:SetGaussRandomDamage( ���� �ּҵ�����, ���� �ִ뵥����, ����Ȯ��, �߾����ߵ�( 0�̸� ������, �������� �߾ӿ� ���� ) )
	-- EXPLOSIONATTACK:SetGaussRandomDamage( 10, 90, 10);

	-- �߾��� ������ �Ǵ� ����
	-- EXPLOSIONATTACK:SetGaussRandomDamage( ���� �ּҵ�����, ���� �ִ뵥����, ����Ȯ��, �߾����ߵ�( 0�̸� ������, �������� �߾ӿ� ���� ) )

	-- �� ����
	-- EXPLOSIONATTACK:SetRandomDamage( ���� �ּҵ�����, ���� �ִ뵥����, ����Ȯ�� )
	-- ������ =  damage  + ���� ������

end


-------------------------------------------------------------------------------
--[[  �۸�ġ �ı� ����Ʈ�� ���� ]]--
-------------------------------------------------------------------------------
function GlitchDestroyedLightningBomber(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitLua( 100, "Resources/Effects/skill_gunner_electronic_bomb_1.seq", "Resources/Sound/earthbomber_shot.ogg", 500, 4750 );

	-- ����ü �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	STATE:SetWeaponInitLuaFuncName( "GlitchDestroyedLightningInit" );

end


function GlitchDestroyedLightningInit()

	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( -4000.0, 16.0, 1000.0, 100.0 , 1 ); --������ �ӵ� ���� (1.5�ʳ��� ����)
--	GRENADE:InitLua( -4000.0, 16.0, 1500.0, 100.0 , 7 );

	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	--�⺻ �ӵ� ����ġ, ���鿡 ���� �� �ӵ� ����ġ, ���� �ٿ�� �� �ӵ� ����ġ
--	GRENADE:SetDamping( 0.5, 6.0, 0.9 );
	GRENADE:SetDamping( 0.5, 16.0, 0.9 );

	-- int nDamageType ( 0:���, 1:��, 2:���� ���� )
	GRENADE:SetDamageType( 0 );

	-- ĳ���Ϳ� �浹���� ( 0:��ĳ���� �ε�ġ���� ���߾���. 1:��ĳ���� �ε�ġ�� ����, 2:ĳ���� ��� ), ��ĳ���͸� �浹�� ���ΰ�(true/false )
	GRENADE:SetCollisionChar( 0, true );

	-- bool bCheck, float fCheckSpeed
	GRENADE:SetSpeedCheck( true, 200.0 );
--	GRENADE:SetSpeedCheck( true, 700.0 );

	-- ���߽���������, �츮�� �Ϲ� źü, ����� �Ϲ� źü, �츮�� ���� �غ� źü, ����� ���� �غ� źü
	GRENADE:SetSequence( "Resources/Effects/weapon_lightning_bomber_glitch_ex.seq", "Resources/Effects/weapon_lightning_bomber_glitch_throw.seq", "Resources/Effects/weapon_lightning_bomber_glitch_throw.seq", "Resources/Effects/weapon_lightning_bomber_glitch_fire.seq", "Resources/Effects/weapon_lightning_bomber_glitch_fire.seq" );

	-- ���߻���
	GRENADE:SetExplosionSound( "Resources/Sound/lightningbomber_bomb.ogg" );

	-- �����غ� ����
	GRENADE:SetExplosionReadySound( "Resources/Sound/Earthbomber_limit.ogg" );

	-- ���� �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	GRENADE:SetExplosionLuaName( "GlitchDestroyedLightningExplosion" );

	-- ���߹��� ����.( XML���� ���õ� range�� ���ȵ� )
	-- GRENADE:SetCollisionRange( MAKEBOX( MAKEVECTOR3(0,200,200), MAKEVECTOR3(0,0,-1), 400, 400, 400 ) );

	--SetCollisionRange�� ���� ȯ�濡�� �� �� �ִ� Ÿ�� �ڽ��� �����Ѵ�.
	--setcollsionRange�� �Ʒ� EXPLOSIONATTACK:InitAttack2�� ��ǥ���� ����ȭ�� �ؾ� ���������� �����Ѵ�.
	GRENADE:SetCollisionRange( MAKECYLINDER( MAKEVECTOR3( 0, 200, 0 ), 700, 900 ) );

end

-------------------------------------------------------------------------------
-- 3 : 2���� ����� �Լ�.
-------------------------------------------------------------------------------
--[[  ����Ʈ�� ���� ���߿� �Լ�
]]--
-------------------------------------------------------------------------------
function GlitchDestroyedLightningExplosion( damage, range )

	-- ( XML���� ���õ� range�� Sphere Ÿ�Կ����� ���ȴ�. ), �⺻�����δ� 2������ ������ ���߹����� ����Ѵ�.
	-- �Ʒ��� �ΰ��� �Լ��� ���� �����
	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_LIGHT_BOMB, ATTACKATTRIB_LIGHT_BOMBER , 0, damage, 0 );

	--EXPLOSIONATTACK:InitAttack2�� ���� Ÿ�� �ڽ��� �����Ѵ�.
	EXPLOSIONATTACK:InitAttack2( MAKECYLINDER( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY()+250, POSITION:GetZ() ), 700, 900 ), 1, 1 );
	-- EXPLOSIONATTACK:InitAttack2( MAKEFAN( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY()+300, POSITION:GetZ()), MAKEVECTOR2(0,-1), 300, 300, 300, 120 ), 1, 1);

	EXPLOSIONATTACK:AddPushCondition( 300, 2000, -5000 );
	EXPLOSIONATTACK:AddMoveSpeedCondition(2500, 0.5); --���ο� �߰� 160218

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
	 EXPLOSIONATTACK:SetGaussRandomDamage( 0, 167, 100, 1); -- 20150507 : ���� ������ ���� 35~ 110 > ���� 28 ~ 110 (weapon damage 25)
	-- EXPLOSIONATTACK:SetGaussRandomDamage( 10, 130, 100, 3);

	 --�⺻ ������+���������� ���� ���� SetGaussRandomCritical ��ġ�� ���� �ÿ� ũ��Ƽ�� �޽����� ����Ѵ�.
	 --�Ʊ� �� �ڽ��� �ǰ��� ���, FrendlyDamage üũ ���� �Ʒ� ũ��Ƽ���� üũ�ϰ� FrendlyDamage�� ���� �������� ���� �� �ݿ��Ѵ�.
	 --�� RandomCritical ��ġ�� 100�� ��쿡 �ڽ��� �ǰ� �� 50�̻� �������� �� �� ũ��Ƽ�� �޽����� ȣ��ȴ�.
	 EXPLOSIONATTACK:SetGaussRandomCritical( 120 );


	-- �� ����
	-- EXPLOSIONATTACK:SetRandomDamage( ���� �ּҵ�����, ���� �ִ뵥����, ����Ȯ�� )
	-- ������ =  damage  + ���� ������




end


--[[ ���� ���� -- ,
	u32 uStateEndTime			= ���ݻ��½ð�
	float fLaunchForce			= �߻��ϴ� ��
]]--
-------------------------------------------------------------------------------
function StandardWatermelonBomber(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitLua( 100, "Resources/Effects/skill_gunner_electronic_bomb_1.seq", "Resources/Sound/earthbomber_shot.ogg", 500, 4750 );

	-- ����ü �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	STATE:SetWeaponInitLuaFuncName( "StandardWatermelonInit" );

end



-------------------------------------------------------------------------------
-- 2 : 1���� ����� �Լ�
-------------------------------------------------------------------------------
--[[  ���� ������ ���� �ʱ�ȭ �Լ�.
]]--
-------------------------------------------------------------------------------
function StandardWatermelonInit()

	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( -4000.0, 16.0, 1000.0, 100.0, 7 ); -- 1 // 20150507 : u32 uExplosionTime 1500 > 1000���� ���� + �ӵ� ����ġ �Ͽ� �� 1.5�� ���� ���� �� �ֵ���.
--	GRENADE:InitLua( -4000.0, 16.0, 1500.0, 100.0, 1 );

	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	--�⺻ �ӵ� ����ġ, ���鿡 ���� �� �ӵ� ����ġ, ���� �ٿ�� �� �ӵ� ����ġ
--	GRENADE:SetDamping( 0.5, 6.0, 0.9 );
	GRENADE:SetDamping( 0.5, 16.0, 0.9 );

	-- int nDamageType ( 0:���, 1:��, 2:���� ���� )
	GRENADE:SetDamageType( 0 );

	-- ĳ���Ϳ� �浹���� ( 0:��ĳ���� �ε�ġ���� ���߾���. 1:��ĳ���� �ε�ġ�� ����, 2:ĳ���� ��� ), ��ĳ���͸� �浹�� ���ΰ�(true/false )
	GRENADE:SetCollisionChar( 0, true );

	-- bool bCheck, float fCheckSpeed
	GRENADE:SetSpeedCheck( true, 200.0 );
--	GRENADE:SetSpeedCheck( true, 700.0 );

	-- ���߽���������, �츮�� �Ϲ� źü, ����� �Ϲ� źü, �츮�� ���� �غ� źü, ����� ���� �غ� źü
	GRENADE:SetSequence( "Resources/Effects/weapon_earth_bomber_ex.seq",
	                     "Resources/Effects/weapon_watermelon_bomber_throw.seq",
						 "Resources/Effects/weapon_watermelon_bomber_throw.seq",
						 "Resources/Effects/weapon_watermelon_bomber_fire.seq",
						 "Resources/Effects/weapon_watermelon_bomber_fire.seq" );

	-- ���߻���
	GRENADE:SetExplosionSound( "Resources/Sound/earthbomber_bomb.ogg" );

		-- �����غ� ����
	GRENADE:SetExplosionReadySound( "Resources/Sound/Earthbomber_limit.ogg" );

	-- ���� �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	GRENADE:SetExplosionLuaName( "StandardWatermelonExplosion" );

	-- ���߹��� ����.( XML���� ���õ� range�� ���ȵ� )
	--GRENADE:SetCollisionRange( MAKESPHERE( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,0), 400, 400, 400 ) );

end



-------------------------------------------------------------------------------
-- 3 : 2���� ����� �Լ�.
-------------------------------------------------------------------------------
--[[ ���ں��� ���߿� �Լ�
]]--
-------------------------------------------------------------------------------
function StandardWatermelonExplosion( damage, range )

	-- ( XML���� ���õ� range�� Sphere Ÿ�Կ����� ���ȴ�. ), �⺻�����δ� 2������ ������ ���߹����� ����Ѵ�.
	-- �Ʒ��� �ΰ��� �Լ��� ���� �����
	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_EARTH_BOMB, ATTACKATTRIB_EARTH_BOMBER , 0, damage, 0 );
	EXPLOSIONATTACK:InitAttack2( MAKESPHERE( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY(), POSITION:GetZ() ), range ), 1, 1 );

	EXPLOSIONATTACK:AddPushCondition( 300, 2000, -5000 );


	--�ڽ� �� �Ʊ� ������ �߰� �����. ���� ������ �տ��� �Ʒ� �Է¹��� ��ġ�� ���ؼ� �ڽŰ� �Ʊ����� �������� �����Ѵ�.
	--��ġ�� 0���� 1������ ������ �Է��Ѵ�.
	--EXPLOSIONATTACK:SetFriendlyDamage(�ڽ� ������ ����, �ڽ� �� �Ʊ� ������ ����);

	EXPLOSIONATTACK:SetFriendlyDamage(0.5, 0.2);

	-- 0: ������ �ϰ�����, 1: �Ÿ��������� ����, 2: �Ÿ���������(���������� �Ÿ��� ������ üũ. )
	EXPLOSIONATTACK:SetDamageApplyType( 2 );

	-- range ��� 2��° ���� ������ ����, 3��° ���� ������ ����, 4��° ���� ������ ����
	EXPLOSIONATTACK:SetDamageRates( 0.75, 0.3, 0.04 ); --0.75, 0.5, 0.25

	-- range ��� 2��° ���� ����, 3��° ���� ����, 4��° ���� ����
	--2��° ���� ���� �������� ù��° ���� �������� SetDamageRates���� ������ ���� �ʾƵ� 1�� ������ ������ ����Ѵ�. (ũ��Ƽ�� ������)

	EXPLOSIONATTACK:SetExplosionRanges( 0.3, 0.5, 0.7 );	--0.4, 0.6, 0.8

	-- �߾��� ������ �Ǵ� ����
	-- EXPLOSIONATTACK:SetGaussRandomDamage( ���� �ּҵ�����, ���� �ִ뵥����, ����Ȯ��, �߾����ߵ�( 0�̸� ������, �������� �߾ӿ� ���� ) )
	-- EXPLOSIONATTACK:SetGaussRandomDamage( 10, 90, 10);

	-- �߾��� ������ �Ǵ� ����
	-- EXPLOSIONATTACK:SetGaussRandomDamage( ���� �ּҵ�����, ���� �ִ뵥����, ����Ȯ��, �߾����ߵ�( 0�̸� ������, �������� �߾ӿ� ���� ) )

	-- �� ����
	-- EXPLOSIONATTACK:SetRandomDamage( ���� �ּҵ�����, ���� �ִ뵥����, ����Ȯ�� )
	-- ������ =  damage  + ���� ������

	-- �ǵ�ȯ ��ο� �׽�Ʈ
	-- EXPLOSIONATTACK:AddBlowCondition( 2000, 2000 );

end

