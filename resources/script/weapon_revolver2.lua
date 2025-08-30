require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------
--[[
	�⺻ ������ ����
	InitLua����
	float fHeightOffset
	float fSideOffset0
	float fSideOffset1
	float fFrontOffset
	u32 uiAnimPlayTime
	u32 uiCoolTime	
]]--
-------------------------------------------------------------------------------
function StandardRevolver2(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetFrontOffset( 275 );
	STATE:InitLua( 260.0, 40.0, -40.0, 250.0, 500, 350 );
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_REVOLVER2, ATTACKATTRIB_REVOLVER2, 150, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,Accuracy,-1), RayDistanceLimit ), 1, 1, false  );
    
    Attack1:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ) );
    Attack1:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(Accuracy*0.5,Accuracy,-1), RayDistanceLimit ) );
    Attack1:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(-Accuracy*0.5,Accuracy,-1), RayDistanceLimit ) );    
    
	-- �Ÿ��� ������ - Ray�� �̿��� Ÿ�Կ��� ����� �Ÿ��� ������
    -- 0:�Ϲ�, 1:�׷����̵��, 2: �������Ÿ���������, 3:�ѱ�� �Ÿ��� ������( Ray, ThickRay )
	Attack1:SetDamageApplyType( 3 );    
    -- ���ذŸ��� ����
    Attack1:SetDistanceDamageLength( 3000 );
    Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:SetCritical( 2.5, 0 );
    Attack1:SetConsumeAmmo( 1 );
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true );
    Attack1:AddPushCondition( 100, 1500, -7000 );  --(100,3000, -6000)
    AddAttack( ATTACKS, Attack1 );

end