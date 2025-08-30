require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------
--[[
	�⺻ ����ӽŰ� ����
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
function StandardSubmachine(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:InitLua( 260,40,-40,250, 500, 666, 4, "Resources/Sound/smg_dry_fire.ogg" ); -- 260,40,-40,250, 500,
	STATE:SetAutoReload( true ); 
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SUBMACHINE_GUN, ATTACKATTRIB_SUBMACHINE_GUN, 50, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );--MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,Accuracy,-1), RayDistanceLimit ), 1, 1, false  );
    Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:SetDamageApplyType( 3 );
    Attack1:SetDistanceDamageLength( 5000 );
	Attack1:SetCritical( 2.5, 0 );
    Attack1:SetConsumeAmmo( 1 );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SUBMACHINE_GUN, ATTACKATTRIB_SUBMACHINE_GUN, 50 + (OneShotTime*1), Power+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(Accuracy*0.5,Accuracy* -0.5,-1), RayDistanceLimit ), 1, 1, false  );    
    Attack2:SetCollisionRangeAdjust( false, false );
	Attack2:SetDamageApplyType( 3 );
    Attack2:SetDistanceDamageLength( 5000 );
	Attack2:SetCritical( 2.5, 0 );
    Attack2:SetConsumeAmmo( 1 );    
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack2:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack2:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack2 );
    
    Attack3 = CreateCAttack();
    Attack3:InitAttack1( WEAPONTYPE_SUBMACHINE_GUN, ATTACKATTRIB_SUBMACHINE_GUN, 50 + (OneShotTime*2), Power+AdditionalPower, AddtionalPower );
    Attack3:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(Accuracy* -0.5,Accuracy* -0.5,-1), RayDistanceLimit ), 1, 1, false  );
    Attack3:SetCollisionRangeAdjust( false, false );
	Attack3:SetDamageApplyType( 3 );
    Attack3:SetDistanceDamageLength( 5000 );
	Attack3:SetCritical( 2.5, 0 );
    Attack3:SetConsumeAmmo( 1 );    
    Attack3:SetCameraShakeEnable( true, true, 0 );
    Attack3:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack3:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack3:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack3 );
    
    Attack4 = CreateCAttack();
    Attack4:InitAttack1( WEAPONTYPE_SUBMACHINE_GUN, ATTACKATTRIB_SUBMACHINE_GUN, 50 + (OneShotTime*3), Power+AdditionalPower, AddtionalPower );
    Attack4:InitAttack2(MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,Accuracy,-1), RayDistanceLimit ), 1, 1, false  ); --MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );
    Attack4:SetCollisionRangeAdjust( false, false );
	Attack4:SetDamageApplyType( 3 );
    Attack4:SetDistanceDamageLength( 5000 );
	Attack4:SetCritical( 2.5, 0 );
    Attack4:SetConsumeAmmo( 1 );    
    Attack4:SetCameraShakeEnable( true, true, 0 );
    Attack4:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack4:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack4:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack4 );   

end

function StandardSubmachine_2(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:InitLua( 260,40,-40,250, 500, 666, 4, "Resources/Sound/smg_dry_fire.ogg" );
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SUBMACHINE_GUN, ATTACKATTRIB_SUBMACHINE_GUN, 50, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,Accuracy,-1), RayDistanceLimit ), 1, 1, false  );
    Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:SetDamageApplyType( 3 );
    Attack1:SetDistanceDamageLength( 5000 );
	Attack1:SetCritical( 2.5, 0 );
    Attack1:SetConsumeAmmo( 1 );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SUBMACHINE_GUN, ATTACKATTRIB_SUBMACHINE_GUN, 50 + (OneShotTime*1), Power+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(Accuracy*0.5,Accuracy* -0.5,-1), RayDistanceLimit ), 1, 1, false  );    
    Attack2:SetCollisionRangeAdjust( false, false );
	Attack2:SetDamageApplyType( 3 );
    Attack2:SetDistanceDamageLength( 5000 );
	Attack2:SetCritical( 2.5, 0 );
    Attack2:SetConsumeAmmo( 1 );    
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack2:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack2:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack2 );
    
    Attack3 = CreateCAttack();
    Attack3:InitAttack1( WEAPONTYPE_SUBMACHINE_GUN, ATTACKATTRIB_SUBMACHINE_GUN, 50 + (OneShotTime*2), Power+AdditionalPower, AddtionalPower );
    Attack3:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(Accuracy* -0.5,Accuracy* -0.5,-1), RayDistanceLimit ), 1, 1, false  );
    Attack3:SetCollisionRangeAdjust( false, false );
	Attack3:SetDamageApplyType( 3 );
    Attack3:SetDistanceDamageLength( 5000 );
	Attack3:SetCritical( 2.5, 0 );
    Attack3:SetConsumeAmmo( 1 );    
    Attack3:SetCameraShakeEnable( true, true, 0 );
    Attack3:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack3:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack3:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack3 );
    
    Attack4 = CreateCAttack();
    Attack4:InitAttack1( WEAPONTYPE_SUBMACHINE_GUN, ATTACKATTRIB_SUBMACHINE_GUN, 50 + (OneShotTime*3), Power+AdditionalPower, AddtionalPower );
    Attack4:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );
    Attack4:SetCollisionRangeAdjust( false, false );
	Attack4:SetDamageApplyType( 3 );
    Attack4:SetDistanceDamageLength( 5000 );
	Attack4:SetCritical( 2.5, 0 );
    Attack4:SetConsumeAmmo( 1 );    
    Attack4:SetCameraShakeEnable( true, true, 0 );
    Attack4:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack4:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack4:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack4 );   

end