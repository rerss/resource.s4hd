require "Resources/Script/ActorStates_Constants.lua"
-- ���� ������, ȣ�� ������, ����ũ ������, ���Ʈ ������
-------------------------------------------------------------------------------
--[[
	�⺻ SMG2 ����
	InitLua����
	-- fHeightOffset,				// �߻�Ǵ� ��ġ�� ������
	-- fSideOffset0,				// �߻�Ǵ� ��ġ�� ������
	-- fSideOffset1,				// �߻�Ǵ� ��ġ�� ������
	-- fFrontOffset,				// �߻�Ǵ� ��ġ�� ������
	-- uiMisFiringChangeStateTime,	// �ҹ߻����϶� �̽ð��� ������ ���°� �ٲ�( ���ε�� )
	-- uiAnimPlayTime,				// �ִϸ��̼��� �÷��� �ð��� ������ ���Ѵ�. ( ����ӵ� ���� )
	-- uiShotCount,					// �߻�Ǵ� �Ѿ��� ��
	-- szMisFiringSoundFile			// �ҹ��϶� ����� ��������
]]--
-------------------------------------------------------------------------------
-- ���̶�����
function StandardSmg2(  OneShotTime, Power, Accuracy, AdditionalPower ) 
	
	STATE:InitLua( 260,40,-40,250, 500, 666, 4, "Resources/Sound/smg_dry_fire.ogg" );
	STATE:SetAutoReload( true ); 
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SMG2, ATTACKATTRIB_SMG2, 50, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,Accuracy,-1), RayDistanceLimit ), 1, 1, false  );
    Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:SetCritical( 2.5, 0 );
    Attack1:SetConsumeAmmo( 1 );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SMG2, ATTACKATTRIB_SMG2, 50 + (OneShotTime*1), Power+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(Accuracy*0.5,Accuracy* -0.5,-1), RayDistanceLimit ), 1, 1, false  );    
    Attack2:SetCollisionRangeAdjust( false, false );
	Attack2:SetCritical( 2.5, 0 );
    Attack2:SetConsumeAmmo( 1 );    
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack2:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack2:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack2 );
    
    Attack3 = CreateCAttack();
    Attack3:InitAttack1( WEAPONTYPE_SMG2, ATTACKATTRIB_SMG2, 50 + (OneShotTime*2), Power+AdditionalPower, AddtionalPower );
    Attack3:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(Accuracy* -0.5,Accuracy* -0.5,-1), RayDistanceLimit ), 1, 1, false  );
    Attack3:SetCollisionRangeAdjust( false, false );
	Attack3:SetCritical( 2.5, 0 );
    Attack3:SetConsumeAmmo( 1 );    
    Attack3:SetCameraShakeEnable( true, true, 0 );
    Attack3:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack3:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack3:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack3 );
    
    Attack4 = CreateCAttack();
    Attack4:InitAttack1( WEAPONTYPE_SMG2, ATTACKATTRIB_SMG2, 50 + (OneShotTime*3), Power+AdditionalPower, AddtionalPower );
    Attack4:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );
    Attack4:SetCollisionRangeAdjust( false, false );
	Attack4:SetCritical( 2.5, 0 );
    Attack4:SetConsumeAmmo( 1 );    
    Attack4:SetCameraShakeEnable( true, true, 0 );
    Attack4:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack4:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack4:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack4 );   
	
end


-------------------------------------------------------------------------------
--[[
	�⺻ SMG2 ����
	InitLua����
	-- fHeightOffset,				// �߻�Ǵ� ��ġ�� ������
	-- fSideOffset0,				// �߻�Ǵ� ��ġ�� ������
	-- fSideOffset1,				// �߻�Ǵ� ��ġ�� ������
	-- fFrontOffset,				// �߻�Ǵ� ��ġ�� ������
	-- uiMisFiringChangeStateTime,	// �ҹ߻����϶� �̽ð��� ������ ���°� �ٲ�( ���ε�� )
	-- uiAnimPlayTime,				// �ִϸ��̼��� �÷��� �ð��� ������ ���Ѵ�. ( ����ӵ� ���� )
	-- uiShotCount,					// �߻�Ǵ� �Ѿ��� ��
	-- szMisFiringSoundFile			// �ҹ��϶� ����� ��������
]]--
-------------------------------------------------------------------------------
-- ȣ�ֶ�����
function StandardSmg2Homing(  OneShotTime, Power, Accuracy, AdditionalPower ) 
	
    STATE:InitLua( 260,40,-40,250, 500, 666, 1, "Resources/Sound/smg_dry_fire.ogg" );
    
    -- ��ź��ȭŸ��( 0:��ź��ȭ����, 1:������ ������ ��ȭ��(Inner�� ���), 2:�����ϰ� ��ȭ��(Inner, Outer���) )
    -- 1�� ������ ���� SetInnerAccuracyVary �Լ��� ����° �Ķ������ �ּҰ��� 1���� ũ�� �����Ͽ��� �Ѵ�.
    ACTORSTATE:SetGunSpreadType( 2 );
    
    --  ��ȭ��, ȸ����, �ּҰ�, �ִ밪
    -- SetGunSpreadType �Լ��� 1�� ������ ���� SetInnerAccuracyVary �Լ��� ����° �Ķ������ �ּҰ��� 1���� ũ�� �����Ͽ��� �Ѵ�.
    ACTORSTATE:SetInnerAccuracyVary( 30, 2,  0, 2 );
    
    --  ��ȭ��, ȸ����, �ּҰ�, �ִ밪
    ACTORSTATE:SetOuterAccuracyVary( 35, 2,  0, 4 );
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SMG2_HOMING, ATTACKATTRIB_SMG2_HOMING, 50, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKETHICKRAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), 70, RayDistanceLimit ), 1, 1, false  );
		

    -- �Ÿ��� ������ - Ray�� �̿��� Ÿ�Կ��� ����� �Ÿ��� ������
    -- 0:�Ϲ�, 1:�׷����̵��, 2: �������Ÿ���������, 3:�ѱ�� �Ÿ��� ������( Ray, ThickRay )
    Attack1:SetDamageApplyType( 3 );
    
    -- ���ذŸ��� ����
    Attack1:SetDistanceDamageLength( 8000 );
    --
	
	WEAPON:ApplyRandomDamage( Attack1 );	
	Attack1:SetCheckBodyPartsByThickray( false );
	
	
    Attack1:SetCollisionRangeAdjust( false, false );
    Attack1:SetConsumeAmmo( 1 );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true ); 
    AddAttack( ATTACKS, Attack1 );

    
end












-------------------------------------------------------------------------------
--[[
	�⺻ SMG2 ����
	InitLua����
	-- fHeightOffset,				// �߻�Ǵ� ��ġ�� ������
	-- fSideOffset0,				// �߻�Ǵ� ��ġ�� ������
	-- fSideOffset1,				// �߻�Ǵ� ��ġ�� ������
	-- fFrontOffset,				// �߻�Ǵ� ��ġ�� ������
	-- uiMisFiringChangeStateTime,	// �ҹ߻����϶� �̽ð��� ������ ���°� �ٲ�( ���ε�� )
	-- uiAnimPlayTime,				// �ִϸ��̼��� �÷��� �ð��� ������ ���Ѵ�. ( ����ӵ� ���� )
	-- uiShotCount,					// �߻�Ǵ� �Ѿ��� ��
	-- szMisFiringSoundFile			// �ҹ��϶� ����� ��������
]]--
-------------------------------------------------------------------------------
-- ����ũ ������
function StandardSparkRifle(  OneShotTime, Power, Accuracy, AdditionalPower ) 
	
    STATE:InitLua( 260,40,-40,250, 500, 666, 1, "Resources/Sound/smg_dry_fire.ogg" );
    
    -- ��ź��ȭŸ��( 0:��ź��ȭ����, 1:������ ������ ��ȭ��(Inner�� ���), 2:�����ϰ� ��ȭ��(Inner, Outer���) )
    -- 1�� ������ ���� SetInnerAccuracyVary �Լ��� ����° �Ķ������ �ּҰ��� 1���� ũ�� �����Ͽ��� �Ѵ�.
    ACTORSTATE:SetGunSpreadType( 2 );
    
    --  ��ȭ��, ȸ����, �ּҰ�, �ִ밪
    -- SetGunSpreadType �Լ��� 1�� ������ ���� SetInnerAccuracyVary �Լ��� ����° �Ķ������ �ּҰ��� 1���� ũ�� �����Ͽ��� �Ѵ�.
    ACTORSTATE:SetInnerAccuracyVary( 40, 2,  0, 2 );
    
    --  ��ȭ��, ȸ����, �ּҰ�, �ִ밪
    ACTORSTATE:SetOuterAccuracyVary( 45, 2,  0, 4 );
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SPARK_RIFLE, ATTACKATTRIB_SPARK_RIFLE, 50, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKETHICKRAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), 10, RayDistanceLimit ), 1, 1, false  );
		
	-- SetCritical (����, Ȯ��);
	Attack1:SetCritical( 3, 20 );
	Attack1:SetCheckBodyPartsByThickray( false );
	
	-- �Ÿ��� ������ - Ray�� �̿��� Ÿ�Կ��� ����� �Ÿ��� ������
    -- 0:�Ϲ�, 1:�׷����̵��, 2: �������Ÿ���������, 3:�ѱ�� �Ÿ��� ������( Ray, ThickRay )
    Attack1:SetDamageApplyType( 3 );
    
    -- ���ذŸ��� ����
    Attack1:SetDistanceDamageLength( 8000 );
    --
	
	
    Attack1:SetCollisionRangeAdjust( false, false );
    Attack1:SetConsumeAmmo( 1 );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true ); 	
    AddAttack( ATTACKS, Attack1 );
    
end








-------------------------------------------------------------------------------
--[[
	�⺻ SMG2(�Ʈ������) ����
	InitLua����
	-- fHeightOffset,				// �߻�Ǵ� ��ġ�� ������
	-- fSideOffset0,				// �߻�Ǵ� ��ġ�� ������
	-- fSideOffset1,				// �߻�Ǵ� ��ġ�� ������
	-- fFrontOffset,				// �߻�Ǵ� ��ġ�� ������
	-- uiMisFiringChangeStateTime,	// �ҹ߻����϶� �̽ð��� ������ ���°� �ٲ�( ���ε�� )
	-- uiAnimPlayTime,				// �ִϸ��̼��� �÷��� �ð��� ������ ���Ѵ�. ( ����ӵ� ���� )
	-- uiShotCount,					// �߻�Ǵ� �Ѿ��� ��
	-- szMisFiringSoundFile			// �ҹ��϶� ����� ��������
]]--
-------------------------------------------------------------------------------
-- �Ʈ ������
function StandardClassicRifle(  OneShotTime, Power, Accuracy, AdditionalPower ) 
	
    STATE:InitLua( 260,40,-40,250, 500, 666, 1, "Resources/Sound/smg_dry_fire.ogg" );
    
    -- ��ź��ȭŸ��( 0:��ź��ȭ����, 1:������ ������ ��ȭ��(Inner�� ���), 2:�����ϰ� ��ȭ��(Inner, Outer���) )
    -- 1�� ������ ���� SetInnerAccuracyVary �Լ��� ����° �Ķ������ �ּҰ��� 1���� ũ�� �����Ͽ��� �Ѵ�.
    ACTORSTATE:SetGunSpreadType( 2 );
    
    --  ��ȭ��, ȸ����, �ּҰ�, �ִ밪
    -- SetGunSpreadType �Լ��� 1�� ������ ���� SetInnerAccuracyVary �Լ��� ����° �Ķ������ �ּҰ��� 1���� ũ�� �����Ͽ��� �Ѵ�.
    ACTORSTATE:SetInnerAccuracyVary( 5, 1,  0.3, 1 );  -- ���� �� ( 35, 2,  0, 2 )  , ( 15, 1,  0.3, 1 ) , (5, 1,  0.3, 1 )
    
    --  ��ȭ��, ȸ����, �ּҰ�, �ִ밪
    ACTORSTATE:SetOuterAccuracyVary( 15, 1,  0.5, 3 ); -- ���� �� ( 40, 2,  0, 4 ) , ( 30, 2,  0.5, 4 ) ,( 30, 2,  1, 5 )
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_CLASSICRIFLE, ATTACKATTRIB_CLASSICRIFLE, 0.5, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );  --MAKETHICKRAY(ȣ��)	,MAKERAY(ȣ�־ƴ�)

    -- �Ÿ��� ������ - Ray�� �̿��� Ÿ�Կ��� ����� �Ÿ��� ������
    -- 0:�Ϲ�, 1:�׷����̵��, 2: �������Ÿ���������, 3:�ѱ�� �Ÿ��� ������( Ray, ThickRay )
	Attack1:SetDamageApplyType( 3 );
    
	
    -- SetCritical (����, Ȯ��);
	Attack1:SetCritical( 1.25, 0 );
	Attack1:SetCheckBodyPartsByThickray( false );
	
	
	
    -- ���ذŸ��� ����
	Attack1:SetDistanceDamageLength( 8000 );
    --
	
	-- WEAPON:ApplyRandomDamage( Attack1 );	
	Attack1:SetCheckBodyPartsByThickray( false );
	
	
    Attack1:SetCollisionRangeAdjust( false, false );
    Attack1:SetConsumeAmmo( 1 );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true ); 
    AddAttack( ATTACKS, Attack1 );

    
end

-------------------------------------------------------------------------------
--[[
	�ڱ��� ���Ʈ ������
	InitLua����
	-- fHeightOffset,				// �߻�Ǵ� ��ġ�� ������
	-- fSideOffset0,				// �߻�Ǵ� ��ġ�� ������
	-- fSideOffset1,				// �߻�Ǵ� ��ġ�� ������
	-- fFrontOffset,				// �߻�Ǵ� ��ġ�� ������
	-- uiMisFiringChangeStateTime,	// �ҹ߻����϶� �̽ð��� ������ ���°� �ٲ�( ���ε�� )
	-- uiAnimPlayTime,				// �ִϸ��̼��� �÷��� �ð��� ������ ���Ѵ�. ( ����ӵ� ���� )
	-- uiShotCount,					// �߻�Ǵ� �Ѿ��� ��
	-- szMisFiringSoundFile			// �ҹ��϶� ����� ��������
]]--
-------------------------------------------------------------------------------
function StandardCogWheelClassicRifle(  OneShotTime, Power, Accuracy, AdditionalPower )
	
    STATE:InitLua( 260,40,-40,250, 500, 666, 1, "Resources/Sound/smg_dry_fire.ogg" );
    
    -- ��ź��ȭŸ��( 0:��ź��ȭ����, 1:������ ������ ��ȭ��(Inner�� ���), 2:�����ϰ� ��ȭ��(Inner, Outer���) )
    -- 1�� ������ ���� SetInnerAccuracyVary �Լ��� ����° �Ķ������ �ּҰ��� 1���� ũ�� �����Ͽ��� �Ѵ�.
    ACTORSTATE:SetGunSpreadType( 2 );
    
    --  ��ȭ��, ȸ����, �ּҰ�, �ִ밪
    -- SetGunSpreadType �Լ��� 1�� ������ ���� SetInnerAccuracyVary �Լ��� ����° �Ķ������ �ּҰ��� 1���� ũ�� �����Ͽ��� �Ѵ�.
    ACTORSTATE:SetInnerAccuracyVary( 5, 1,  0.3, 1 );  -- ���� �� ( 35, 2,  0, 2 )  , ( 15, 1,  0.3, 1 ) , (5, 1,  0.3, 1 )
    
    --  ��ȭ��, ȸ����, �ּҰ�, �ִ밪
    ACTORSTATE:SetOuterAccuracyVary( 15, 1,  0.5, 3 ); -- ���� �� ( 40, 2,  0, 4 ) , ( 30, 2,  0.5, 4 ) ,( 30, 2,  1, 5 )
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_CLASSICRIFLE, ATTACKATTRIB_COGWHEEL_CLASSICRIFLE, 40, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );  --MAKETHICKRAY(ȣ��)	,MAKERAY(ȣ�־ƴ�)

    -- �Ÿ��� ������ - Ray�� �̿��� Ÿ�Կ��� ����� �Ÿ��� ������
    -- 0:�Ϲ�, 1:�׷����̵��, 2: �������Ÿ���������, 3:�ѱ�� �Ÿ��� ������( Ray, ThickRay )
	Attack1:SetDamageApplyType( 3 );
    
	
    -- SetCritical (����, Ȯ��);
	Attack1:SetCritical( 1.25, 0 );
	Attack1:SetCheckBodyPartsByThickray( false );
	
	
	
    -- ���ذŸ��� ����
	Attack1:SetDistanceDamageLength( 8000 );
    --
	
	-- WEAPON:ApplyRandomDamage( Attack1 );	
	Attack1:SetCheckBodyPartsByThickray( false );
	
	
    Attack1:SetCollisionRangeAdjust( false, false );
    Attack1:SetConsumeAmmo( 1 );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true ); 
    AddAttack( ATTACKS, Attack1 );

    
end


-------------------------------------------------------------------------------
--[[
	���Ͱ�
	InitLua����
	-- fHeightOffset,				// �߻�Ǵ� ��ġ�� ������
	-- fSideOffset0,				// �߻�Ǵ� ��ġ�� ������
	-- fSideOffset1,				// �߻�Ǵ� ��ġ�� ������
	-- fFrontOffset,				// �߻�Ǵ� ��ġ�� ������
	-- uiMisFiringChangeStateTime,	// �ҹ߻����϶� �̽ð��� ������ ���°� �ٲ�( ���ε�� )
	-- uiAnimPlayTime,				// �ִϸ��̼��� �÷��� �ð��� ������ ���Ѵ�. ( ����ӵ� ���� )
	-- uiShotCount,					// �߻�Ǵ� �Ѿ��� ��
	-- szMisFiringSoundFile			// �ҹ��϶� ����� ��������
]]--
-------------------------------------------------------------------------------
function StandardWaterGun(  OneShotTime, Power, Accuracy, AdditionalPower )
	
    STATE:InitLua( 260,40,-40,250, 500, 666, 1, "Resources/Sound/smg_dry_fire.ogg" );
    
    -- ��ź��ȭŸ��( 0:��ź��ȭ����, 1:������ ������ ��ȭ��(Inner�� ���), 2:�����ϰ� ��ȭ��(Inner, Outer���) )
    -- 1�� ������ ���� SetInnerAccuracyVary �Լ��� ����° �Ķ������ �ּҰ��� 1���� ũ�� �����Ͽ��� �Ѵ�.
    ACTORSTATE:SetGunSpreadType( 2 );
    
    --  ��ȭ��, ȸ����, �ּҰ�, �ִ밪
    -- SetGunSpreadType �Լ��� 1�� ������ ���� SetInnerAccuracyVary �Լ��� ����° �Ķ������ �ּҰ��� 1���� ũ�� �����Ͽ��� �Ѵ�.
    ACTORSTATE:SetInnerAccuracyVary( 30, 2,  0, 2 );
    
    --  ��ȭ��, ȸ����, �ּҰ�, �ִ밪
    ACTORSTATE:SetOuterAccuracyVary( 35, 2,  0, 4 );
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SMG2_HOMING, ATTACKATTRIB_SMG2_WATERGUN, 50, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKETHICKRAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), 70, RayDistanceLimit ), 1, 1, false  );
		

    -- �Ÿ��� ������ - Ray�� �̿��� Ÿ�Կ��� ����� �Ÿ��� ������
    -- 0:�Ϲ�, 1:�׷����̵��, 2: �������Ÿ���������, 3:�ѱ�� �Ÿ��� ������( Ray, ThickRay )
	Attack1:SetDamageApplyType( 3 );
    
    -- ���ذŸ��� ����
	Attack1:SetDistanceDamageLength( 8000 );
    --
	
	WEAPON:ApplyRandomDamage( Attack1 );	
	Attack1:SetCheckBodyPartsByThickray( false );
	
	
    Attack1:SetCollisionRangeAdjust( false, false );
    Attack1:SetConsumeAmmo( 1 );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true ); 
    AddAttack( ATTACKS, Attack1 );

    
end

-------------------------------------------------------------------------------
--[[
	���Ʈ ������ ����ũ - �׵� Ÿ����������
	InitLua����
	-- fHeightOffset,				// �߻�Ǵ� ��ġ�� ������
	-- fSideOffset0,				// �߻�Ǵ� ��ġ�� ������
	-- fSideOffset1,				// �߻�Ǵ� ��ġ�� ������
	-- fFrontOffset,				// �߻�Ǵ� ��ġ�� ������
	-- uiMisFiringChangeStateTime,	// �ҹ߻����϶� �̽ð��� ������ ���°� �ٲ�( ���ε�� )
	-- uiAnimPlayTime,				// �ִϸ��̼��� �÷��� �ð��� ������ ���Ѵ�. ( ����ӵ� ���� )
	-- uiShotCount,					// �߻�Ǵ� �Ѿ��� ��
	-- szMisFiringSoundFile			// �ҹ��϶� ����� ��������
]]--
-------------------------------------------------------------------------------
--�׵� Ÿ����������
function StandardAssultRifleUnique(  OneShotTime, Power, Accuracy, AdditionalPower ) 
	
    STATE:InitLua( 260,40,-40,250, 500, 666, 1, "Resources/Sound/smg_dry_fire.ogg" );
    
    -- ��ź��ȭŸ��( 0:��ź��ȭ����, 1:������ ������ ��ȭ��(Inner�� ���), 2:�����ϰ� ��ȭ��(Inner, Outer���) )
    -- 1�� ������ ���� SetInnerAccuracyVary �Լ��� ����° �Ķ������ �ּҰ��� 1���� ũ�� �����Ͽ��� �Ѵ�.
    ACTORSTATE:SetGunSpreadType( 2 );
    
    --  ��ȭ��, ȸ����, �ּҰ�, �ִ밪
    -- SetGunSpreadType �Լ��� 1�� ������ ���� SetInnerAccuracyVary �Լ��� ����° �Ķ������ �ּҰ��� 1���� ũ�� �����Ͽ��� �Ѵ�.
    ACTORSTATE:SetInnerAccuracyVary( 5, 1,  0.3, 1 );  -- ���� �� ( 35, 2,  0, 2 )  , ( 15, 1,  0.3, 1 ) , (5, 1,  0.3, 1 )
    
    --  ��ȭ��, ȸ����, �ּҰ�, �ִ밪
    ACTORSTATE:SetOuterAccuracyVary( 15, 1,  0.5, 3 ); -- ���� �� ( 40, 2,  0, 4 ) , ( 30, 2,  0.5, 4 ) ,( 30, 2,  1, 5 )
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_ASSULT_RIFLE_UNIQUE , ATTACKATTRIB_ASSULT_RIFLE_UNIQUE, 40, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );  --MAKETHICKRAY(ȣ��)	,MAKERAY(ȣ�־ƴ�)

    -- �Ÿ��� ������ - Ray�� �̿��� Ÿ�Կ��� ����� �Ÿ��� ������
    -- 0:�Ϲ�, 1:�׷����̵��, 2: �������Ÿ���������, 3:�ѱ�� �Ÿ��� ������( Ray, ThickRay )
	Attack1:SetDamageApplyType( 3 );
    
	
    -- SetCritical (����, Ȯ��);
	--Attack1:SetCritical( 1.55, 7 );
	Attack1:SetCritical( 1.25, 0 );
	--Attack1:SetCheckBodyPartsByThickray( false );
	
	
	
    -- ���ذŸ��� ����
	Attack1:SetDistanceDamageLength( 8000 );
    --
	
	-- WEAPON:ApplyRandomDamage( Attack1 );	
	Attack1:SetCheckBodyPartsByThickray( false );
	
	
    Attack1:SetCollisionRangeAdjust( false, false );
    Attack1:SetConsumeAmmo( 1 );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true ); 
    AddAttack( ATTACKS, Attack1 );

    
end

-- ����ũ ������
function StandardSparkRifleUnique(  OneShotTime, Power, Accuracy, AdditionalPower ) 
	
    STATE:InitLua( 260,40,-40,250, 500, 666, 1, "Resources/Sound/smg_dry_fire.ogg" );
    
    -- ��ź��ȭŸ��( 0:��ź��ȭ����, 1:������ ������ ��ȭ��(Inner�� ���), 2:�����ϰ� ��ȭ��(Inner, Outer���) )
    -- 1�� ������ ���� SetInnerAccuracyVary �Լ��� ����° �Ķ������ �ּҰ��� 1���� ũ�� �����Ͽ��� �Ѵ�.
    ACTORSTATE:SetGunSpreadType( 2 );
    
    --  ��ȭ��, ȸ����, �ּҰ�, �ִ밪
    -- SetGunSpreadType �Լ��� 1�� ������ ���� SetInnerAccuracyVary �Լ��� ����° �Ķ������ �ּҰ��� 1���� ũ�� �����Ͽ��� �Ѵ�.
    ACTORSTATE:SetInnerAccuracyVary( 40, 2,  0, 2 );
    
    --  ��ȭ��, ȸ����, �ּҰ�, �ִ밪
    ACTORSTATE:SetOuterAccuracyVary( 45, 2,  0, 4 );
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SPARK_RIFLE, ATTACKATTRIB_SPARK_RIFLE_UNIQUE, 50, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKETHICKRAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), 10, RayDistanceLimit ), 1, 1, false  );
		
	-- SetCritical (����, Ȯ��);
	Attack1:SetCritical( 3, 20 );
	Attack1:SetCheckBodyPartsByThickray( false );
	
	-- �Ÿ��� ������ - Ray�� �̿��� Ÿ�Կ��� ����� �Ÿ��� ������
    -- 0:�Ϲ�, 1:�׷����̵��, 2: �������Ÿ���������, 3:�ѱ�� �Ÿ��� ������( Ray, ThickRay )
    Attack1:SetDamageApplyType( 3 );
    
    -- ���ذŸ��� ����
    Attack1:SetDistanceDamageLength( 8000 );
    --
	
	
    Attack1:SetCollisionRangeAdjust( false, false );
    Attack1:SetConsumeAmmo( 1 );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true ); 	
    AddAttack( ATTACKS, Attack1 );
    
end
