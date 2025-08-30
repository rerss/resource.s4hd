require "Resources/Script/ActorStates_Constants.lua"
-- ���Ž� ������
-------------------------------------------------------------------------------
--[[
	�⺻ SMG3GUN ����
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
-- ���Ž� ������(���Ÿ�)
function StandardSmg3gun(  OneShotTime, Power, Accuracy, AdditionalPower ) 
	
	STATE:SetFrontOffset( 275 );
	STATE:InitLua( 260, 40, -40, 250, 500, 666, 1, "Resources/Sound/smg_dry_fire.ogg" );
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SMG3, ATTACKATTRIB_SMG3_GUN, 50, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,Accuracy,-1), RayDistanceLimit ), 1, 1, false  );
    
    Attack1:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ) );
    Attack1:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(Accuracy*0.5,Accuracy,-1), RayDistanceLimit ) );
    Attack1:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(-Accuracy*0.5,Accuracy,-1), RayDistanceLimit ) );    
    
	Attack1:SetDamageApplyType( 3 );    
    -- ���ذŸ��� ����
	Attack1:SetDistanceDamageLength( 8000 );
	Attack1:SetCheckBodyPartsByThickray( false );
    
    Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:SetCritical( 2.5, 0 );
    Attack1:SetConsumeAmmo( 1 );
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true );
    AddAttack( ATTACKS, Attack1 );

end