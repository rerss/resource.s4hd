require "Resources/Script/ActorStates_Constants.lua"

-- ���� ��ó�� �̱ۼ� �� ���� �Լ�.
function RocketLauncher_Explosion( damage, range )

	fDamageRate = 0.5; 
	damage = damage * fDamageRate;

	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_ROCKET_LAUNCHER, ATTACKATTRIB_ROCKET_LAUNCHER_LEFT_ATTACK , 0, damage, 0 );
	EXPLOSIONATTACK:InitAttack2( MAKESPHERE( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY(), POSITION:GetZ() ), range ), 1, 1 );
	EXPLOSIONATTACK:AddPushCondition( 300, 2000, -5000 );   
	
	-- 0: ������ �ϰ�����, 1: �Ÿ��������� ����
	EXPLOSIONATTACK:SetDamageApplyType( 1 );
	
	-- range ��� 2��° ���� ������ ����, 3��° ���� ������ ����, 4��° ���� ������ ����
	EXPLOSIONATTACK:SetDamageRates( 0.75, 0.5, 0.5 );
	
	-- range ��� 2��° ���� ����, 3��° ���� ����, 4��° ���� ����
	EXPLOSIONATTACK:SetExplosionRanges( 0.25, 0.5, 0.5 );
	
	-- �߾��� ������ �Ǵ� ����
	EXPLOSIONATTACK:SetGaussRandomDamage( 15 , 20, 50, 100 );
	
	-- �� ����
	-- EXPLOSIONATTACK:SetRandomDamage( ���� �ּҵ�����, ���� �ִ뵥����, ����Ȯ�� )

end

-- ���� ��ó�� ��Ƽ�� �� ���� �Լ�.
function RocketLauncher_MultiShotExplosion( damage, range )

	fDamageRate = 1; 
	damage = damage * fDamageRate;
	
	EXPLOSIONATTACK:InitAttack1( WEAPONTYPE_ROCKET_LAUNCHER, ATTACKATTRIB_ROCKET_LAUNCHER_RIGHT_ATTACK , 0, damage, 0 );
	EXPLOSIONATTACK:InitAttack2( MAKESPHERE( MAKEVECTOR3( POSITION:GetX(), POSITION:GetY(), POSITION:GetZ() ), range ), 1, 1 );
	EXPLOSIONATTACK:AddPushCondition( 300, 2000, -5000 );   
	
	-- 0: ������ �ϰ�����, 1: �Ÿ��������� ����
	EXPLOSIONATTACK:SetDamageApplyType( 1 );
	
	-- range ��� 2��° ���� ������ ����, 3��° ���� ������ ����, 4��° ���� ������ ����
	EXPLOSIONATTACK:SetDamageRates( 0.75, 0.5, 0.5 );
	
	-- range ��� 2��° ���� ����, 3��° ���� ����, 4��° ���� ����
	EXPLOSIONATTACK:SetExplosionRanges( 0.25, 0.5, 0.75 );
	
	-- �߾��� ������ �Ǵ� ����
	EXPLOSIONATTACK:SetGaussRandomDamage( 0 , 20, 30, 1 );
	
	-- �� ����
	-- EXPLOSIONATTACK:SetRandomDamage( ���� �ּҵ�����, ���� �ִ뵥����, ����Ȯ�� )

end

-- ���� ��ó�� �̱� ���� �ʱ�ȭ �Լ�.
function RocketLauncher_RocketInit()

	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( 0.0, 16.0, 5000.0, 100.0 , 1 ); --7
	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	GRENADE:SetDamping( 0, 3.0, 0.9 );
	-- int nDamageType ( 0:���, 1:��, 2:���� ���� )
	GRENADE:SetDamageType( 2 );
	-- ĳ���Ϳ� �浹���� ( 0:��ĳ���� �΋Hġ���� ���߾���. 1:��ĳ���� �΋Hġ�� ����, 2:ĳ���� ��� ), ��ĳ���͸� �浹�� ���ΰ�(true/false )
	GRENADE:SetCollisionChar( 1, true );
	-- ����ź Ÿ�� ����. ( 0: �⺻, 1: ���� )
	GRENADE:SetType( 1 );
	-- bool bCheck, float fCheckSpeed
	GRENADE:SetSpeedCheck( false, 0.0 );
	-- ���߽���������, �츮�� �Ϲ� źü, ����� �Ϲ� źü, �츮�� ���� �غ� źü, ����� ���� �غ� źü
	GRENADE:SetSequence( "Resources/Effects/weapon_rl_ex.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "", "" );
	-- ���߻���
	GRENADE:SetExplosionSound( "Resources/Sound/rocket_bomb.ogg" );
	-- �߻� ����
	--GRENADE:SetLaunchSound( "Resources/Sound/rocket_launch.ogg" );
	-- ���ư��� ����
	--GRENADE:SetFlyingSound( "Resources/Sound/rocket_flying.ogg" );

	-- ���� �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	GRENADE:SetExplosionLuaName( "RocketLauncher_Explosion" );	
end

-- ���� ��ó �⺻ ���� �Լ�.
function StandardRocketLauncher( OneShotTime, Power, Accuracy, AdditionalPower )

	-- InitStandardRocket �Լ�
	-- ���� ��ó�� �̱� ���� �ʱ�ȭ �Լ�
	-- �߻� �ӵ�
	STATE:InitStandardRocket( "RocketLauncher_RocketInit", 7500 );
	STATE:SetLaunchSound( "Resources/Sound/rocket_launch.ogg" );

	-- ����1(������ Ÿ���� ��ü ����)
	-- ����2(�߻��� Ÿ���� ��ü ����)
	STATE:SetTargetPoint( 100, 100 );

	STATE:SetFrontOffset( 275 );
	
	-- ���� ������ ������ �ð�,
	-- �߻��� �븻 �ִϱ��� �ð�,
	-- ���� Ÿ��,
	STATE:InitLua( 0, 1000, 1500, MAKEVECTOR3( 50, 280, 0 ), 250, false, 1000 );
	--STATE:InitLua( 0, 1000, 3000, MAKEVECTOR3( 50, 280, 0 ), 250, false, 1000 );
 
end

-- ���� ��ó�� ��Ƽ ���� �ʱ�ȭ �Լ�.
function RocketLauncher_MultiRocketInit()

	GRENADE_T = {};
	GRENADE_T[1] = GRENADE1;
	GRENADE_T[2] = GRENADE2;
	GRENADE_T[3] = GRENADE3;

	for i=1,3 do
	
	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	-- ���� ��ó ���� �ð��� 10�ʷ� ���Ѵ�. ������� ��� �浹���� �ʴ� ������ �� ��쿡 ���� ���� ��.
	GRENADE_T[i]:InitLua( 0.0, 16.0, 10000.0, 100.0 , 1 ); --7
	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	GRENADE_T[i]:SetDamping( 0, 3.0, 0.9 );
	-- int nDamageType ( 0:���, 1:��, 2:���� ���� )
	GRENADE_T[i]:SetDamageType( 2 );
	-- ĳ���Ϳ� �浹���� ( 0:��ĳ���� �΋Hġ���� ���߾���. 1:��ĳ���� �΋Hġ�� ����, 2:ĳ���� ��� ), ��ĳ���͸� �浹�� ���ΰ�(true/false )
	GRENADE_T[i]:SetCollisionChar( 1, true );
	-- ����ź Ÿ�� ����. ( 0: �⺻, 1: ���� )
	GRENADE_T[i]:SetType( 1 );
	-- bool bCheck, float fCheckSpeed
	GRENADE_T[i]:SetSpeedCheck( false, 0.0 );
	-- ���߽���������, �츮�� �Ϲ� źü, ����� �Ϲ� źü, �츮�� ���� �غ� źü, ����� ���� �غ� źü
	GRENADE_T[i]:SetSequence( "Resources/Effects/weapon_rl_ex.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "", "" );
	-- ���߻���
	GRENADE_T[i]:SetExplosionSound( "Resources/Sound/rocket_bomb.ogg" );
	-- ���� �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	GRENADE_T[i]:SetExplosionLuaName( "RocketLauncher_MultiShotExplosion" );

	-- �߻� ����
	--GRENADE_T[i]:SetLaunchSound( "Resources/Sound/rocket_launch.ogg" );
	-- ���ư��� ����
	--GRENADE_T[i]:SetFlyingSound( "Resources/Sound/rocket_flying.ogg" );	
	end
	
end

-- ���� ��ó ��Ƽ�� ���� �Լ�.
function MultiShotRocketLauncher( OneShotTime, Power, Accuracy, AdditionalPower )

	-- InitMultishotRocket �Լ�.
	-- ���� ��ó�� ��Ƽ ���� �ʱ�ȭ �Լ�, 
	-- ���� �ӵ�, 
	-- �� ����, 
	-- ȸ���� �ӵ�, 
	-- ȸ���� �ݰ�,
	-- ��Ƽ�� ���� ���� ����,
	-- �߽������� ȸ���� �ݰ���� �������� �ð�.
	-- ����!) �� ������ ������ ��� ���� �ʱ�ȭ �Լ��� ���α׷� ������ �ʿ���.
	STATE:InitMultishotRocket( "RocketLauncher_MultiRocketInit", 4500, 3, 4, 300, 
		"Resources/Sound/rocket_reload.ogg", 500);
	STATE:SetLaunchSound( "Resources/Sound/rocket_launch.ogg" );

	-- ����1(������ Ÿ���� ��ü ����)
	-- ����2(�߻��� Ÿ���� ��ü ����)
	STATE:SetTargetPoint( 100, 100 );
	
	STATE:SetFrontOffset( 275 );
	
	-- ���� ������ �����ð�,
	-- �߻��� �븻 �ִϱ��� �ð�,
	-- ���� Ÿ��,
	STATE:InitLua( 3000, 1000, 1500, MAKEVECTOR3( 50, 280, 0 ), 250, false, 2000 );
	
	-- ������ : ��Ƽ�� ���� �ִ� ���� �����ð� �߰�
	STATE:SetMaxChargeDelayTime(2000);
end

--------------------------------------------------------------------------------------------------------------
-- �븻 ���� ��ó.
--------------------------------------------------------------------------------------------------------------

-- ���� ��ó�� �̱� ���� �ʱ�ȭ �Լ�.
function RocketLauncher_RocketInit_Normal()

	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	GRENADE:InitLua( 0.0, 16.0, 5000.0, 100.0 , 1 ); --7
	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	GRENADE:SetDamping( 0, 3.0, 0.9 );
	-- int nDamageType ( 0:���, 1:��, 2:���� ���� )
	GRENADE:SetDamageType( 2 );
	-- ĳ���Ϳ� �浹���� ( 0:��ĳ���� �΋Hġ���� ���߾���. 1:��ĳ���� �΋Hġ�� ����, 2:ĳ���� ��� ), ��ĳ���͸� �浹�� ���ΰ�(true/false )
	GRENADE:SetCollisionChar( 1, true );
	-- ����ź Ÿ�� ����. ( 0: �⺻, 1: ���� )
	GRENADE:SetType( 1 );
	-- bool bCheck, float fCheckSpeed
	GRENADE:SetSpeedCheck( false, 0.0 );
	-- ���߽���������, �츮�� �Ϲ� źü, ����� �Ϲ� źü, �츮�� ���� �غ� źü, ����� ���� �غ� źü
	GRENADE:SetSequence( "Resources/Effects/weapon_rl_ex.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "", "" );
	-- ���߻���
	GRENADE:SetExplosionSound( "Resources/Sound/rocket_bomb.ogg" );
	-- �߻� ����
	--GRENADE:SetLaunchSound( "Resources/Sound/rocket_launch.ogg" );
	-- ���ư��� ����
	--GRENADE:SetFlyingSound( "Resources/Sound/rocket_flying.ogg" );
	
	-- ���� �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	GRENADE:SetExplosionLuaName( "RocketLauncher_Explosion" );

end

-- �븻 ���� ��ó �⺻ ���� �Լ�.
function StandardRocketLauncherNormal( OneShotTime, Power, Accuracy, AdditionalPower )
	
	-- InitStandardRocket �Լ�
	-- ���� ��ó�� �̱� ���� �ʱ�ȭ �Լ�, 
	-- �߻� �ӵ�
	STATE:InitStandardRocket( "RocketLauncher_RocketInit_Normal", 7500 );
	STATE:SetLaunchSound( "Resources/Sound/rocket_launch.ogg" );
	
	STATE:SetFrontOffset( 275 );
	STATE:InitLua( 0, 1000, 2000, MAKEVECTOR3( 50, 280, 0 ), 250, false, 1000 );
 
end

-- ���� ��ó�� ��Ƽ ���� �ʱ�ȭ �Լ�.
function RocketLauncher_MultiRocketInit_Normal()

	GRENADE_T = {};
	GRENADE_T[1] = GRENADE1;
	GRENADE_T[2] = GRENADE2;
	GRENADE_T[3] = GRENADE3;

	for i=1,3 do
	
	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	-- ���� ��ó ���� �ð��� 10�ʷ� ���Ѵ�. ������� ��� �浹���� �ʴ� ������ �� ��쿡 ���� ���� ��.
	GRENADE_T[i]:InitLua( 0.0, 16.0, 5000.0, 100.0 , 1 ); --7
	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	GRENADE_T[i]:SetDamping( 0, 3.0, 0.9 );
	-- int nDamageType ( 0:���, 1:��, 2:���� ���� )
	GRENADE_T[i]:SetDamageType( 2 );
	-- ĳ���Ϳ� �浹���� ( 0:��ĳ���� �΋Hġ���� ���߾���. 1:��ĳ���� �΋Hġ�� ����, 2:ĳ���� ��� ), ��ĳ���͸� �浹�� ���ΰ�(true/false )
	GRENADE_T[i]:SetCollisionChar( 1, true );
	-- ����ź Ÿ�� ����. ( 0: �⺻, 1: ���� )
	GRENADE_T[i]:SetType( 1 );
	-- bool bCheck, float fCheckSpeed
	GRENADE_T[i]:SetSpeedCheck( false, 0.0 );
	-- ���߽���������, �츮�� �Ϲ� źü, ����� �Ϲ� źü, �츮�� ���� �غ� źü, ����� ���� �غ� źü
	GRENADE_T[i]:SetSequence( "Resources/Effects/weapon_rl_ex.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "", "" );
	-- ���߻���
	GRENADE_T[i]:SetExplosionSound( "Resources/Sound/rocket_bomb.ogg" );
	-- ���� �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	GRENADE_T[i]:SetExplosionLuaName( "RocketLauncher_MultiShotExplosion" );
	
	-- �߻� ����
	--GRENADE_T[i]:SetLaunchSound( "Resources/Sound/rocket_launch.ogg" );
	-- ���ư��� ����
	--GRENADE_T[i]:SetFlyingSound( "Resources/Sound/rocket_flying.ogg" );
	end
	
end

-- �븻 ���� ��ó ��Ƽ�� ���� �Լ�.
function MultiShotRocketLauncherNormal( OneShotTime, Power, Accuracy, AdditionalPower )

	-- InitMultishotRocket �Լ�.
	-- ���� ��ó�� ��Ƽ ���� �ʱ�ȭ �Լ�, 
	-- ���� �ӵ�, 
	-- �� ����, 
	-- ȸ���� �ӵ�, 
	-- ȸ���� �ݰ�,
	-- ��Ƽ�� ���� ���� ����,
	-- �߽������� ȸ���� �ݰ���� �������� �ð�.
	-- ����!) �� ������ ������ ��� ���� �ʱ�ȭ �Լ��� ���α׷� ������ �ʿ���.
	STATE:InitMultishotRocket( "RocketLauncher_MultiRocketInit_Normal", 4500, 3, 4, 300,
		"Resources/Sound/rocket_reload_normal.ogg", 500);
	STATE:SetLaunchSound( "Resources/Sound/rocket_launch.ogg" );

	STATE:SetFrontOffset( 275 );
	STATE:InitLua( 2500, 1000, 3000, MAKEVECTOR3( 50, 280, 0 ), 250, false, 1000 );
	
	-- ������ : ��Ƽ�� ���� �ִ� ���� �����ð� �߰�
	STATE:SetMaxChargeDelayTime(2000)
	
end

-- ��Ʈ ���� ����ũ ��Ƽ ���� �� �� �ʱ�ȭ.
-- ��Ʈ �� ��밡 �߻��ϴ� ������ �ǹ��Ѵ�.
function RocketLauncher_MultiRocketInit_Ghost()

	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	-- ���� ��ó ���� �ð��� 10�ʷ� ���Ѵ�. ������� ��� �浹���� �ʴ� ������ �� ��쿡 ���� ���� ��.
	GRENADE:InitLua( 0.0, 16.0, 5000.0, 100.0 , 1 ); --7
	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	GRENADE:SetDamping( 0, 3.0, 0.9 );
	-- int nDamageType ( 0:���, 1:��, 2:���� ���� )
	GRENADE:SetDamageType( 2 );
	-- ĳ���Ϳ� �浹���� ( 0:��ĳ���� �΋Hġ���� ���߾���. 1:��ĳ���� �΋Hġ�� ����, 2:ĳ���� ��� ), ��ĳ���͸� �浹�� ���ΰ�(true/false )
	GRENADE:SetCollisionChar( 1, true );
	-- ����ź Ÿ�� ����. ( 0: �⺻, 1: ���� )
	GRENADE:SetType( 1 );
	-- bool bCheck, float fCheckSpeed
	GRENADE:SetSpeedCheck( false, 0.0 );
	-- ���߽���������, �츮�� �Ϲ� źü, ����� �Ϲ� źü, �츮�� ���� �غ� źü, ����� ���� �غ� źü
	GRENADE:SetSequence( "Resources/Effects/weapon_rl_ex.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "", "" );
	-- ���߻���
	GRENADE:SetExplosionSound( "Resources/Sound/rocket_bomb.ogg" );
	-- ���� �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	GRENADE:SetExplosionLuaName( "RocketLauncher_MultiShotExplosion" );
	
	-- �߻� ����
	--GRENADE:SetLaunchSound( "Resources/Sound/rocket_launch.ogg" );
	-- ���ư��� ����
	--GRENADE:SetFlyingSound( "Resources/Sound/rocket_flying.ogg" );	

end

-- ��Ʈ ���� ��� ��Ƽ ���� �� �� �ʱ�ȭ.  
-- ��Ʈ �� ��밡 �߻��ϴ� ������ �ǹ��Ѵ�.
function RocketLauncher_MultiRocketInit_Normal_Ghost()

	-- float fGravity, float fBoundRadius, u32 uExplosionTime, float fSensingRange, float fPlaneBoundRate
	-- ���� ��ó ���� �ð��� 10�ʷ� ���Ѵ�. ������� ��� �浹���� �ʴ� ������ �� ��쿡 ���� ���� ��.
	GRENADE:InitLua( 0.0, 16.0, 5000.0, 100.0 , 1 ); --7
	-- float fBaseDamping, float fFrictionDamping, float fBounceDamping
	GRENADE:SetDamping( 0, 3.0, 0.9 );
	-- int nDamageType ( 0:���, 1:��, 2:���� ���� )
	GRENADE:SetDamageType( 2 );
	-- ĳ���Ϳ� �浹���� ( 0:��ĳ���� �΋Hġ���� ���߾���. 1:��ĳ���� �΋Hġ�� ����, 2:ĳ���� ��� ), ��ĳ���͸� �浹�� ���ΰ�(true/false )
	GRENADE:SetCollisionChar( 1, true );
	-- ����ź Ÿ�� ����. ( 0: �⺻, 1: ���� )
	GRENADE:SetType( 1 );
	-- bool bCheck, float fCheckSpeed
	GRENADE:SetSpeedCheck( false, 0.0 );
	-- ���߽���������, �츮�� �Ϲ� źü, ����� �Ϲ� źü, �츮�� ���� �غ� źü, ����� ���� �غ� źü
	GRENADE:SetSequence( "Resources/Effects/weapon_rl_ex.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "", "" );
	-- ���߻���
	GRENADE:SetExplosionSound( "Resources/Sound/rocket_bomb.ogg" );
	-- ���� �ʱ�ȭ�� ��ƽ�ũ��Ʈ �Լ��̸�
	GRENADE:SetExplosionLuaName( "RocketLauncher_MultiShotExplosion" );

	-- �߻� ����
	--GRENADE:SetLaunchSound( "Resources/Sound/rocket_launch.ogg" );
	-- ���ư��� ����
	--GRENADE:SetFlyingSound( "Resources/Sound/rocket_flying.ogg" );	

end

