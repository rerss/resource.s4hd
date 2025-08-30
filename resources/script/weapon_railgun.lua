require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------
--[[
	�⺻ ���ϰ� ����
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
function StandardRailgun(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetFrontOffset( 275 );
	STATE:InitLua( 0, 650, 1000, MAKEVECTOR3( 50, 280, 0 ), 250, false, 650 );
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_RIFLE, ATTACKATTRIB_AIMED_SHOT, 100, 1, 1 );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );
    Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:SetCritical( 2.5, 0 );
	Attack1:AddBlowCondition( 2000.0, 2000.0 );
    Attack1:SetGhostCalcCollisionRange( true );
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 30 );
    Attack1:SetCameraShakeSetFactor2( 0.0, 30.0, 2000.0, 3000.0 );
    AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_RIFLE, ATTACKATTRIB_AIMED_SHOT_2, 100, 1, 1 );
    Attack2:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );
    Attack2:SetCollisionRangeAdjust( false, false );
    Attack2:SetGhostCalcCollisionRange( true );
	Attack2:SetCritical( 2.5, 0 );
    Attack2:AddBlowCondition( 2000.0, 2000.0 );
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 100, 50, 50 );
    Attack2:SetCameraShakeSetFactor2( 0.0, 50.0, 2000.0, 3000.0 );
	 -- ������ ���ϰ� ���� �̵��ӵ� ����
	 -- ����Ʈ�� ���� MK2 �ܵ�� �߰�.
	 -- Param1 : �ܵ�� ���� �ð� ( 1000 = 1�� )
	 -- Param2 : �̵� �ӵ� ���� ( 1 = 100% )
	-- ���ϰ� ����� ����������(��: ����� 30% ����)
	Attack2:SetPiercingReduceRate(30.0);
	
    AddAttack( ATTACKS, Attack2 );   

end

-- ���ϰ� ���� ��Ŭ���� ����Ŭ�� ����
function StandardRailgunCharge(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetFrontOffset( 275 );
	STATE:InitLua( 0, 650, 1000, MAKEVECTOR3( 50, 280, 0 ), 250, false, 650 );
 	 
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_RIFLE, ATTACKATTRIB_AIMED_SHOT, 100, 1, 1 );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );
    Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:SetCritical( 2.5, 15 );
    Attack1:SetGhostCalcCollisionRange( true );
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 30 );
    Attack1:SetCameraShakeSetFactor2( 0.0, 30.0, 2000.0, 3000.0 );
    AddAttack( ATTACKS, Attack1 );
  	  
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_RIFLE, ATTACKATTRIB_AIMED_SHOT_2, 100, 1, 1 );
    Attack2:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );
    Attack2:SetCollisionRangeAdjust( false, false );
    Attack2:SetGhostCalcCollisionRange( true );
	Attack2:SetCritical( 2.5, 15 );
    --Attack2:AddBlowCondition( 3000.0, 2000.0 );
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 100, 50, 50 );
    Attack2:SetCameraShakeSetFactor2( 0.0, 50.0, 2000.0, 3000.0 );
	 -- ������ ���ϰ� ���� �̵��ӵ� ����
	 -- ����Ʈ�� ���� MK2 �ܵ�� �߰�.
	 -- Param1 : �ܵ�� ���� �ð� ( 1000 = 1�� )
	 -- Param2 : �̵� �ӵ� ���� ( 1 = 100% )
  	Attack2:AddMoveSpeedCondition(2500, 0.5); -- ���ο� ȿ�� �߰� (20170704)
	-- ���ϰ� ����� ����������(��: ����� 30% ����)
	Attack2:SetPiercingReduceRate(30.0);
	
    AddAttack( ATTACKS, Attack2 );   

end

function StandardRailgun2(  OneShotTime, Power, Accuracy, AdditionalPower )
	-- �ű� ���� ���� 
	
	STATE:SetFrontOffset( 275 );
	STATE:InitLua( 0, 1000, 150, MAKEVECTOR3( 50, 280, 0 ), 250, 1000 );
	--����(��빫), �� ��� �ð�(���� �ð�), ���� ����(���� ���� ���� �ð�), MAKEVECTOR3, �߻���ġ(Ư���� ���� x), ���� ��Ÿ��) 
	 
	ACTORSTATE:SetGunSpreadType( 2 );
    
    --  ��ȭ��, ȸ����, �ּҰ�, �ִ밪
    -- SetGunSpreadType �Լ��� 1�� ������ ���� SetInnerAccuracyVary �Լ��� ����° �Ķ������ �ּҰ��� 1���� ũ�� �����Ͽ��� �Ѵ�.
    ACTORSTATE:SetInnerAccuracyVary( 30, 2,  0, 2 );
    
    --  ��ȭ��, ȸ����, �ּҰ�, �ִ밪
    ACTORSTATE:SetOuterAccuracyVary( 35, 2,  0, 4 );
	 
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_STANDARD_RAILGUN, ATTACKATTRIB_STANDARD_AIMED_SHOT, 0, (Power*0.5)+AdditionalPower, AddtionalPower );
    --Attack1:InitAttack2(  MAKETHICKRAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,Accuracy,-1), 50, RayDistanceLimit ), 1, 1, false   );
	Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,Accuracy,-1), RayDistanceLimit ), 1, 1, false  );
	Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:SetGhostCalcCollisionRange( true );
	Attack1:SetCritical( 2.5, 0 );
	Attack1:AddPushCondition( 200, 2000.0, -5000.0 );
    Attack1:SetCameraShakeEnable( true, true, 0 );
	Attack1:SetCameraShakeSetFactor1( 50, 25, 30 );
    Attack1:SetCameraShakeSetFactor2( 0.0, 50.0, 2000.0, 3000.0 );
    AddAttack( ATTACKS, Attack1 );
    
end

function StandardZoomIn( OneShotTime, Power, Accuracy, AdditionalPower ) --�������� ���ڵ�

	STATE:InitLua( 0, 700, MAKEVECTOR3( 50, 280, 0 ), false, 1500 );
	--���� ���� ���� �� ��(�� ������), ���� �ð�, MAKEVECTOR3(�߻���ġ) , FALSE(���x), ���� ��Ÿ��(��� x)
	
	STATE:SetDistZoom( true, -200 );
	--330
	
	STATE:SetSnipeAimControl( true, 300, 1000 );
	--true, 400, 1000
	
	STATE:SetCamHeight( true, -110 );
	ACTORSTATE:SetMouseSensitivityRotate( 0.8 );
	
	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_STANDARD_RAILGUN, ATTACKATTRIB_STANDARD_AIMED_SHOT_2, 0, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,Accuracy,-1), RayDistanceLimit ), 1, 1, false  );
	Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:SetGhostCalcCollisionRange( true );
	Attack1:SetCritical( 2.5, 0 );
    --Attack1:AddBlowCondition( 3000.0, 2000.0 );
	Attack1:AddPushCondition( 200, 2000.0, -5000.0 );
    Attack1:SetCameraShakeEnable( true, true, 0 );
	Attack1:SetCameraShakeSetFactor1( 100, 50, 100 );
    Attack1:SetCameraShakeSetFactor2( 100.0, 0.0, 2000.0, 3000.0 );
	--Attack1:SetCameraShakeSetFactor2( 50.0, 0.0, 2000.0, 3000.0 );
	--Attack1:SetCheckBodyPartsByThickray( false ); --2015/07/24 ũ��Ƽ�� ������ �ּ�ó�� -�ǵ�ȯ
	--Attack1:SetCritical( 0.57, 100 );--2015/07/24 ũ��Ƽ�� ������ �ּ�ó�� -�ǵ�ȯ
	
    AddAttack( ATTACKS, Attack1 ); 
	
end

function StandardZoomIn2( OneShotTime, Power, Accuracy, AdditionalPower ) --�������� ��Ʈ �׼�

	STATE:InitLua( 500, 400, MAKEVECTOR3( 50, 280, 0 ), false, 1500 );
	
	STATE:SetDistZoom( true, -200 );
	--330
	
	STATE:SetSnipeAimControl( true, 300, 1800 );
	----���� �� ī�޶� �̵��Ǵ� �ִ� ũ��, �ӵ�
	
	STATE:SetCamHeight( true, -110 );
	ACTORSTATE:SetMouseSensitivityRotate( 0.8 );
	
	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_STANDARD_RAILGUN, ATTACKATTRIB_STANDARD_AIMED_SHOT_2, 0, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,Accuracy,-1), RayDistanceLimit ), 1, 1, false  );
	Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:SetCritical( 2.5, 0 );
	Attack1:SetGhostCalcCollisionRange( true );
    Attack1:AddBlowCondition( 3000.0, 2000.0 );
    Attack1:SetCameraShakeEnable( true, true, 0 );
	Attack1:SetCameraShakeSetFactor1( 100, 50, 100 );
    Attack1:SetCameraShakeSetFactor2( 100.0, 0.0, 2000.0, 3000.0 );
	--Attack1:SetCameraShakeSetFactor2( 50.0, 0.0, 2000.0, 3000.0 );
	--Attack1:SetCheckBodyPartsByThickray( false );--2015/07/24 ũ��Ƽ�� ������ �ּ�ó�� -�ǵ�ȯ
	--Attack1:SetCritical( 0.57, 100 );--2015/07/24 ũ��Ƽ�� ������ �ּ�ó�� -�ǵ�ȯ
    AddAttack( ATTACKS, Attack1 ); 
	
end


-------------------------------------------------------------------------------
-- �űԹ��� ���ϰ� ����ũ ��ƾ��ƽ
-------------------------------------------------------------------------------

function StandardRailUniqueMarkTinStick(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetFrontOffset( 275 );
	STATE:InitLua( 0, 650, 1000, MAKEVECTOR3( 50, 280, 0 ), 250, false, 650 );
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONYTPE_RAIL_MARTINSTICK, ATTACKATTRIB_RAIL_MARTINSTICK, 100, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );
    Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:SetCritical( 2.5, 0 );
	Attack1:AddBlowCondition( 2000.0, 2000.0 );
    Attack1:SetGhostCalcCollisionRange( true );
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 30 );
    Attack1:SetCameraShakeSetFactor2( 0.0, 30.0, 2000.0, 3000.0 );
    AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONYTPE_RAIL_MARTINSTICK, ATTACKATTRIB_RAIL_MARTINSTICK_2, 100, Power+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );
    Attack2:SetCollisionRangeAdjust( false, false );
	Attack2:SetCritical( 2.5, 0 );
	Attack2:AddBlowCondition( 2000.0, 2000.0 );
    Attack2:SetGhostCalcCollisionRange( true );
    --Attack2:AddBlowCondition( 3000.0, 2000.0 );
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 100, 50, 50 );
    Attack2:SetCameraShakeSetFactor2( 0.0, 50.0, 2000.0, 3000.0 );
	 -- ������ ���ϰ� ���� �̵��ӵ� ����
	 -- ����Ʈ�� ���� MK2 �ܵ�� �߰�.
	 -- Param1 : �ܵ�� ���� �ð� ( 1000 = 1�� )
	 -- Param2 : �̵� �ӵ� ���� ( 1 = 100% )
	-- ���ϰ� ����� ����������(��: ����� 30% ����)
	Attack2:SetPiercingReduceRate(30.0);
	
    AddAttack( ATTACKS, Attack2 );   

end

-------------------------------------------------------------------------------
-- �űԹ��� ���ϰ� ����ũ ��ƾ��ƽ ��¡ ����
-------------------------------------------------------------------------------

function StandardRailUniqueMarkTinStickCharge(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetFrontOffset( 275 );
	STATE:InitLua( 0, 650, 1000, MAKEVECTOR3( 50, 280, 0 ), 250, false, 650 );
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONYTPE_RAIL_MARTINSTICK, ATTACKATTRIB_RAIL_MARTINSTICK, 100, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );
    Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:SetCritical( 2.5, 15 );
    Attack1:SetGhostCalcCollisionRange( true );
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 30 );
    Attack1:SetCameraShakeSetFactor2( 0.0, 30.0, 2000.0, 3000.0 );
    AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONYTPE_RAIL_MARTINSTICK, ATTACKATTRIB_RAIL_MARTINSTICK_2, 100, Power+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );
    Attack2:SetCollisionRangeAdjust( false, false );
	Attack2:SetCritical( 2.5, 15 );
    Attack2:SetGhostCalcCollisionRange( true );
    --Attack2:AddBlowCondition( 3000.0, 2000.0 );
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 100, 50, 50 );
    Attack2:SetCameraShakeSetFactor2( 0.0, 50.0, 2000.0, 3000.0 );
	 -- ������ ���ϰ� ���� �̵��ӵ� ����ww
	 -- ����Ʈ�� ���� MK2 �ܵ�� �߰�.
	 -- Param1 : �ܵ�� ���� �ð� ( 1000 = 1�� )
	 -- Param2 : �̵� �ӵ� ���� ( 1 = 100% )
 	Attack2:AddMoveSpeedCondition(2500, 0.5); -- ���ο� ȿ�� �߰� (20170704)
	-- ���ϰ� ����� ����������(��: ����� 30% ����)
	Attack2:SetPiercingReduceRate(30.0);
	
    AddAttack( ATTACKS, Attack2 );   

end
