require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------
--[[
	�⺻ �ɳ��̵� ����
	InitLua����
	u32 uBeginTime				=
	u32 uShootTime				=
	u32 uMaxChargeTime			=
	SVector3 vShotOrigin		=
	float fShotOriginFront		=
	bool bSettingAimedPoint		=	�������� Attack�� center�� �����Ѵ�. ĳ����̵忡�� ����
	u32 uiCoolTime				= 
]]--
-------------------------------------------------------------------------------
function StandardCannonade(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetFrontOffset( 275 );
	STATE:InitLua( 0, 1500, 2000, MAKEVECTOR3( 50, 280, 0 ), 250, true, 1000 );
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCExplosionAttack();
    Attack1:InitAttack1( WEAPONTYPE_CANNONADE, ATTACKATTRIB_CANNONADE_SHOT, 100, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKESPHERE( MAKEVECTOR3(), range*0.7 ) , 1, 1  );
    
    -- �Ÿ������� ����.
    -- �Ÿ��� ������ - Ray�� �̿��� Ÿ�Կ��� ����� �Ÿ��� ������
    -- 0:�Ϲ�, 1:�׷����̵��, 2: �������Ÿ���������, 3:�ѱ�� �Ÿ��� ������( Ray, ThickRay )
    Attack1:SetDamageApplyType( 1 );
    
    Attack1:SetCollisionRangeAdjust( false, false );
    Attack1:SetGhostCalcCollisionRange( true );
    Attack1:AddPushCondition( 100, 5000.0, -10000.0 ); 
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 50 );
    Attack1:SetCameraShakeSetFactor2( 50.0, 0.0, 2000.0, 3000.0 );
    AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCExplosionAttack();
    Attack2:InitAttack1( WEAPONTYPE_CANNONADE, ATTACKATTRIB_CANNONADE_SHOT_2, 100, Power+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKESPHERE( MAKEVECTOR3(), range*1.2 ) , 1, 1  );
    
     -- �Ÿ������� ����.
     -- �Ÿ��� ������ - Ray�� �̿��� Ÿ�Կ��� ����� �Ÿ��� ������
     -- 0:�Ϲ�, 1:�׷����̵��, 2: �������Ÿ���������, 3:�ѱ�� �Ÿ��� ������( Ray, ThickRay )
    Attack2:SetDamageApplyType( 1 );
    
    Attack2:SetCollisionRangeAdjust( false, false );
    Attack2:SetGhostCalcCollisionRange( true );
    Attack2:AddPushCondition( 200, 5000.0, -10000.0 ); 
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 100, 50, 50 );
    Attack2:SetCameraShakeSetFactor2( 50.0, 0.0, 2000.0, 3000.0 );
    AddAttack( ATTACKS, Attack2 );

end