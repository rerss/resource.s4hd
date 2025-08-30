require "Resources/Script/ActorStates_Constants.lua"	
-------------------------------------------------------------------------------
--[[
	�⺻ ����ӽŰ� ����
	InitLua����
	-- normaltime
	-- delaytime
	-- uiShotCount,					// �߻�Ǵ� �Ѿ��� ��
	-- szMisFiringSoundFile			// �ҹ��϶� ����� ��������
]]--
-------------------------------------------------------------------------------
function StandardDualgunAfterDash2(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:InitLua( 260, 900, 0 , 1, "Resources/Sound/smg_dry_fire.ogg" );
	ACTORSTATE:SetGunSpreadType( 2 );
    ACTORSTATE:SetInnerAccuracyVary( 55, 1,  0.3, 1 );  
	ACTORSTATE:SetOuterAccuracyVary( 60, 1,  0.5, 3 );

    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_DUAL_GUN, ATTACKATTRIB_DUAL_GUN_ATTACK1, 100, (Power*0.6)+AdditionalPower, AddtionalPower );--(Power*0.552)
    Attack1:InitAttack2( MAKETHICKRAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), 70, RayDistanceLimit ), 1, 1, false  );
	-- �Ÿ��� ������ - Ray�� �̿��� Ÿ�Կ��� ����� �Ÿ��� ������
    -- 0:�Ϲ�, 1:�׷����̵��, 2: �������Ÿ���������, 3:�ѱ�� �Ÿ��� ������( Ray, ThickRay )
    Attack1:SetDamageApplyType( 3 );    
    -- ���ذŸ��� ����
    Attack1:SetDistanceDamageLength( 5000 );
	Attack1:SetCheckBodyPartsByThickray( false );
    Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:AddPushCondition( 50, 2000.0, -3000.0 );  
    Attack1:SetConsumeAmmo( 1 );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack1 );
    
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_DUAL_GUN, ATTACKATTRIB_DUAL_GUN_ATTACK2, 250, (Power*0.6)+AdditionalPower, AddtionalPower );--(Power*0.552)
    Attack2:InitAttack2( MAKETHICKRAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), 70, RayDistanceLimit ), 1, 1, false  );
	-- �Ÿ��� ������ - Ray�� �̿��� Ÿ�Կ��� ����� �Ÿ��� ������
    -- 0:�Ϲ�, 1:�׷����̵��, 2: �������Ÿ���������, 3:�ѱ�� �Ÿ��� ������( Ray, ThickRay )
    Attack2:SetDamageApplyType( 3 );    
    -- ���ذŸ��� ����
    Attack2:SetDistanceDamageLength( 5000 );
	Attack2:SetCheckBodyPartsByThickray( false );
    Attack2:SetCollisionRangeAdjust( false, false );
	Attack2:AddPushCondition( 50, 2000.0, -3000.0 );  
    Attack2:SetConsumeAmmo( 1 );    
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack2:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack2:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack2 );
	
	
	Attack3 = CreateCAttack();
    Attack3:InitAttack1( WEAPONTYPE_DUAL_GUN, ATTACKATTRIB_DUAL_GUN_ATTACK1, 400, (Power*0.6)+AdditionalPower, AddtionalPower );--(Power*0.552)
    Attack3:InitAttack2( MAKETHICKRAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), 70, RayDistanceLimit ), 1, 1, false  );
	-- �Ÿ��� ������ - Ray�� �̿��� Ÿ�Կ��� ����� �Ÿ��� ������
    -- 0:�Ϲ�, 1:�׷����̵��, 2: �������Ÿ���������, 3:�ѱ�� �Ÿ��� ������( Ray, ThickRay )
    Attack3:SetDamageApplyType( 3 );    
    -- ���ذŸ��� ����
    Attack3:SetDistanceDamageLength( 5000 );
	Attack3:SetCheckBodyPartsByThickray( false );
    Attack3:SetCollisionRangeAdjust( false, false );
	Attack3:AddPushCondition( 50, 2000.0, -3000.0 );  
    Attack3:SetConsumeAmmo( 1 );    
    Attack3:SetCameraShakeEnable( true, true, 0 );
    Attack3:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack3:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack3:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack3 );
	
	
	
	Attack4 = CreateCAttack();
    Attack4:InitAttack1( WEAPONTYPE_DUAL_GUN, ATTACKATTRIB_DUAL_GUN_ATTACK2, 550, (Power*0.6)+AdditionalPower, AddtionalPower );--(Power*0.552)
    Attack4:InitAttack2( MAKETHICKRAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), 70, RayDistanceLimit ), 1, 1, false  );
	-- �Ÿ��� ������ - Ray�� �̿��� Ÿ�Կ��� ����� �Ÿ��� ������
    -- 0:�Ϲ�, 1:�׷����̵��, 2: �������Ÿ���������, 3:�ѱ�� �Ÿ��� ������( Ray, ThickRay )
    Attack4:SetDamageApplyType( 3 );    
    -- ���ذŸ��� ����
    Attack4:SetDistanceDamageLength( 5000 );
	Attack4:SetCheckBodyPartsByThickray( false );
    Attack4:SetCollisionRangeAdjust( false, false );
	Attack4:AddPushCondition( 50, 2000.0, -3000.0 );  
    Attack4:SetConsumeAmmo( 1 );    
    Attack4:SetCameraShakeEnable( true, true, 0 );
    Attack4:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack4:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack4:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack4 );
end


	
-------------------------------------------------------------------------------
--[[
	�⺻ ����ӽŰ� ����
	InitLua����
	-- normaltime
	-- delaytime
	-- uiShotCount,					// �߻�Ǵ� �Ѿ��� ��
	-- szMisFiringSoundFile			// �ҹ��϶� ����� ��������
]]--
-------------------------------------------------------------------------------
function StandardDualgunAfterDash3(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:InitLua( 260, 900, 0 , 1, "Resources/Sound/smg_dry_fire.ogg" );
	STATE:SetCameraRayOffset( 0.0, 0.0, 0.0 );
	ACTORSTATE:SetGunSpreadType( 2 );
    ACTORSTATE:SetInnerAccuracyVary( 50, 1,  0.3, 1 );  
	ACTORSTATE:SetOuterAccuracyVary( 55, 1,  0.5, 3 );

    Attack1 = CreateCAttack();	
    Attack1:InitAttack1( WEAPONTYPE_DUAL_GUN, ATTACKATTRIB_DUAL_GUN_ATTACK3, 350, (Power*0.6)+AdditionalPower, AddtionalPower );--(Power*0.652)
    Attack1:InitAttack2( MAKETHICKRAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), 50, RayDistanceLimit ), 1, 1, false  );
	-- �Ÿ��� ������ - Ray�� �̿��� Ÿ�Կ��� ����� �Ÿ��� ������
    -- 0:�Ϲ�, 1:�׷����̵��, 2: �������Ÿ���������, 3:�ѱ�� �Ÿ��� ������( Ray, ThickRay )
    Attack1:SetDamageApplyType( 3 );
    
    -- ���ذŸ��� ����
    Attack1:SetDistanceDamageLength( 5000 );
	Attack1:SetCheckBodyPartsByThickray( false );
    Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:AddPushCondition( 80, 2000.0, -3000.0 ); 
    Attack1:SetConsumeAmmo( 2 );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true );    
	Attack1:SetCritical( 2, 10 );
    AddAttack( ATTACKS, Attack1 );
	
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_DUAL_GUN, ATTACKATTRIB_DUAL_GUN_ATTACK3, 700, (Power*0.6)+AdditionalPower, AddtionalPower ); --(Power*0.652)
    Attack2:InitAttack2( MAKETHICKRAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), 70, RayDistanceLimit ), 1, 1, false  );
	-- �Ÿ��� ������ - Ray�� �̿��� Ÿ�Կ��� ����� �Ÿ��� ������
    -- 0:�Ϲ�, 1:�׷����̵��, 2: �������Ÿ���������, 3:�ѱ�� �Ÿ��� ������( Ray, ThickRay )
    Attack2:SetDamageApplyType( 3 );    
    -- ���ذŸ��� ����
    Attack2:SetDistanceDamageLength( 5000 );
	Attack2:SetCheckBodyPartsByThickray( false );
    Attack2:SetCollisionRangeAdjust( false, false );
	Attack2:AddPushCondition( 80, 2000.0, -3000.0 );  
    Attack2:SetConsumeAmmo( 2 );    
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack2:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack2:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack2 );

end

---- ---- ---- ---- ---- ----
-- Dual Magnum Normal Shot --
---- ---- ---- ---- ---- ----
function RenewalDualMagnum_SHOT( OneShotTime, Power, Accuracy, AdditionalPower )

    STATE:InitLua( 260, 900, 0 , 1, "Resources/Sound/smg_dry_fire.ogg" );
	STATE:SetCameraRayOffset( 0.0, 0.0, 0.0 );
	ACTORSTATE:SetGunSpreadType( 2 );
    ACTORSTATE:SetInnerAccuracyVary( 100, 1,  0.3, 1 );  
	ACTORSTATE:SetOuterAccuracyVary( 110, 1,  0.5, 3 );

    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_DUAL_GUN, ATTACKATTRIB_DUAL_GUN_ATTACK1, 100, (Power*0.6)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKETHICKRAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), 50, RayDistanceLimit ), 1, 1, false  );
	-- �Ÿ��� ������ - Ray�� �̿��� Ÿ�Կ��� ����� �Ÿ��� ������
    -- 0:�Ϲ�, 1:�׷����̵��, 2: �������Ÿ���������, 3:�ѱ�� �Ÿ��� ������( Ray, ThickRay )
    Attack1:SetDamageApplyType( 3 );
    
    -- ���ذŸ��� ����
    Attack1:SetDistanceDamageLength( 5000 );
	Attack1:SetCheckBodyPartsByThickray( false );
    Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:AddPushCondition( 10, 2000.0, -3000.0 ); 
    Attack1:SetConsumeAmmo( 1 );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true );    
	Attack1:SetCritical( 2, 10 );
    AddAttack( ATTACKS, Attack1 );
	
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_DUAL_GUN, ATTACKATTRIB_DUAL_GUN_ATTACK1, 250, (Power*0.6)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKETHICKRAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), 70, RayDistanceLimit ), 1, 1, false  );
	-- �Ÿ��� ������ - Ray�� �̿��� Ÿ�Կ��� ����� �Ÿ��� ������
    -- 0:�Ϲ�, 1:�׷����̵��, 2: �������Ÿ���������, 3:�ѱ�� �Ÿ��� ������( Ray, ThickRay )
    Attack2:SetDamageApplyType( 3 );    
    -- ���ذŸ��� ����
    Attack2:SetDistanceDamageLength( 5000 );
	Attack2:SetCheckBodyPartsByThickray( false );
    Attack2:SetCollisionRangeAdjust( false, false );
	Attack2:AddPushCondition( 10, 2000.0, -3000.0 );  
    Attack2:SetConsumeAmmo( 1 );    
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack2:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack2:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack2 );
	
	
	Attack3 = CreateCAttack();
	Attack3:InitAttack1( WEAPONTYPE_DUAL_GUN, ATTACKATTRIB_DUAL_GUN_ATTACK1, 400, (Power*0.6)+AdditionalPower, AddtionalPower );
    Attack3:InitAttack2( MAKETHICKRAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), 70, RayDistanceLimit ), 1, 1, false  );
	-- �Ÿ��� ������ - Ray�� �̿��� Ÿ�Կ��� ����� �Ÿ��� ������
    -- 0:�Ϲ�, 1:�׷����̵��, 2: �������Ÿ���������, 3:�ѱ�� �Ÿ��� ������( Ray, ThickRay )
    Attack3:SetDamageApplyType( 3 );    
    -- ���ذŸ��� ����
    Attack3:SetDistanceDamageLength( 5000 );
	Attack3:SetCheckBodyPartsByThickray( false );
    Attack3:SetCollisionRangeAdjust( false, false );
	Attack3:AddPushCondition( 10, 2000.0, -3000.0 );  
    Attack3:SetConsumeAmmo( 1 );    
    Attack3:SetCameraShakeEnable( true, true, 0 );
    Attack3:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack3:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack3:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack3 );
	
end

---- ---- ---- ---- ---- ----
--  Dual Magnum Jump Shot  --
---- ---- ---- ---- ---- ----
function RenewalDualMagnum_JUMP_SHOT( OneShotTime, Power, Accuracy, AdditionalPower )

    STATE:InitLua( 800, 0 , 1, "Resources/Sound/smg_dry_fire.ogg" );
	STATE:SetCameraRayOffset( 0.0, 0.0, 0.0 );
	ACTORSTATE:SetGunSpreadType( 2 );
    ACTORSTATE:SetInnerAccuracyVary( 60, 1,  0.3, 1 );  
	ACTORSTATE:SetOuterAccuracyVary( 65, 1,  0.5, 3 );
	
	-- ���� �Ŀ� ��ġ�� �����մϴ�.
	STATE:SetJUMP_POWER( 800 );
	-- ���� �Է��� �޴� �Ⱓ�� �����մϴ�. ex) 300���� �ϸ� 0.3�ʸ� ������ �ΰ� ���콺 �Է��� �޵��� �մϴ�.
	STATE:SetTermOfJumpShot( 190 );
	STATE:SetSpendSp( 0 );
	-- Ư���� ���... ���� ���� ���� �����ؼ� �̰����� �����ϵ��� �մϴ�.
	STATE:SetLowerAniData( "DU027_1", 0, 500, 500,	false, 1.0, true );
	

    Attack1 = CreateCAttack();
	Attack1:InitAttack1( WEAPONTYPE_DUAL_GUN, ATTACKATTRIB_DUAL_GUN_ATTACK3, 180, (Power*0.6)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKETHICKRAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), 50, RayDistanceLimit ), 1, 1, false  );
	-- �Ÿ��� ������ - Ray�� �̿��� Ÿ�Կ��� ����� �Ÿ��� ������
    -- 0:�Ϲ�, 1:�׷����̵��, 2: �������Ÿ���������, 3:�ѱ�� �Ÿ��� ������( Ray, ThickRay )
    Attack1:SetDamageApplyType( 3 );
    
    -- ���ذŸ��� ����
    Attack1:SetDistanceDamageLength( 5000 );
	Attack1:SetCheckBodyPartsByThickray( false );
    Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:AddPushCondition( 75, 2000.0, -5000.0 ); 
    Attack1:SetConsumeAmmo( 1 );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true );    
	Attack1:SetCritical( 2, 10 );
    AddAttack( ATTACKS, Attack1 );

	Attack2 = CreateCAttack();
	Attack2:InitAttack1( WEAPONTYPE_DUAL_GUN, ATTACKATTRIB_DUAL_GUN_ATTACK3, 180, (Power*0.6)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKETHICKRAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), 50, RayDistanceLimit ), 1, 1, false  );
	-- �Ÿ��� ������ - Ray�� �̿��� Ÿ�Կ��� ����� �Ÿ��� ������
    -- 0:�Ϲ�, 1:�׷����̵��, 2: �������Ÿ���������, 3:�ѱ�� �Ÿ��� ������( Ray, ThickRay )
    Attack1:SetDamageApplyType( 3 );
    
    -- ���ذŸ��� ����
    Attack2:SetDistanceDamageLength( 5000 );
	Attack2:SetCheckBodyPartsByThickray( false );
    Attack2:SetCollisionRangeAdjust( false, false );
	Attack2:AddPushCondition( 75, 2000.0, -5000.0 ); 
    Attack2:SetConsumeAmmo( 1 );    
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack2:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack2:SetCameraShakeRandomDir( true );    
	Attack2:SetCritical( 2, 10 );
    AddAttack( ATTACKS, Attack2 );
end

---- ---- ---- ---- ---- ---- ----
--   Dual Magnum Rolling Shot   --
---- ---- ---- ---- ---- ---- ----
function RenewalDualMagnum_ROLLING_SHOT( OneShotTime, Power, Accuracy, AdditionalPower )

    STATE:InitLua( 700, 0 , 1, "Resources/Sound/smg_dry_fire.ogg" );
	STATE:SetCameraRayOffset( 0.0, 0.0, 0.0 );
	ACTORSTATE:SetGunSpreadType( 2 );
    ACTORSTATE:SetInnerAccuracyVary( 10, 1,  0.3, 1 );  
	ACTORSTATE:SetOuterAccuracyVary( 15, 1,  0.5, 3 );
	

	
	-- ���� �ڽ� ����Ҳ���?
	STATE:SetUseMoveBox( true );
	STATE:SetMoveBoxMultiplier( 2 );
	STATE:SetSpendSp( 1 );

	-- ������ ��� �ű׳� ���� �����۾�
	STATE:SetCoolTime( 1500 );

	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_DUAL_GUN, ATTACKATTRIB_DUAL_GUN_ATTACK3, 100, (Power*0.6)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKETHICKRAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), 50, RayDistanceLimit ), 1, 1, false  );
	-- �Ÿ��� ������ - Ray�� �̿��� Ÿ�Կ��� ����� �Ÿ��� ������
    -- 0:�Ϲ�, 1:�׷����̵��, 2: �������Ÿ���������, 3:�ѱ�� �Ÿ��� ������( Ray, ThickRay )
    Attack1:SetDamageApplyType( 3 );
    
    -- ���ذŸ��� ����
    Attack1:SetDistanceDamageLength( 5000 );
	Attack1:SetCheckBodyPartsByThickray( false );
    Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:AddPushCondition( 75, 2000.0, -5000.0 ); 
    Attack1:SetConsumeAmmo( 1 );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true );    
	Attack1:SetCritical( 2, 10 );
    AddAttack( ATTACKS, Attack1 );
	
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_DUAL_GUN, ATTACKATTRIB_DUAL_GUN_ATTACK3, 100, (Power*0.6)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKETHICKRAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), 50, RayDistanceLimit ), 1, 1, false  );
	-- �Ÿ��� ������ - Ray�� �̿��� Ÿ�Կ��� ����� �Ÿ��� ������
    -- 0:�Ϲ�, 1:�׷����̵��, 2: �������Ÿ���������, 3:�ѱ�� �Ÿ��� ������( Ray, ThickRay )
    Attack1:SetDamageApplyType( 3 );
    
    -- ���ذŸ��� ����
    Attack2:SetDistanceDamageLength( 5000 );
	Attack2:SetCheckBodyPartsByThickray( false );
    Attack2:SetCollisionRangeAdjust( false, false );
	Attack2:AddPushCondition( 75, 2000.0, -5000.0 ); 
    Attack2:SetConsumeAmmo( 1 );    
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack2:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack2:SetCameraShakeRandomDir( true );    
	Attack2:SetCritical( 2, 10 );
    AddAttack( ATTACKS, Attack2 );
end