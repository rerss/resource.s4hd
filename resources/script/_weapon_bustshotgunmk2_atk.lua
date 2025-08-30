require "Resources/Script/ActorStates_Constants.lua"
--[[
< ����Ʈ ���� MK2 ���� ���� >

* ���� Ÿ�� : WEAPONTYPE_SMG4
* �ʱ� ���� : minho
* STATE : CAttackRevolverShotState

]]--

-------------------------------------------------------------------------------------------------------------
-- ����� 1 ���� ����.
-------------------------------------------------------------------------------------------------------------
function LeftAttack_BustShotGunMK2(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:SetFrontOffset( 275 );
	
	-- [ ���� ���� ]
	-- fHeightOffset, fSideOffset0, fSideOffset1, fFrontOffset,	
	-- uiAnimPlayTime : ��ݽ� �ִϸ��̼� �ð� ����.
	-- uiCoolTime : ��ȿ ������ ���� �ð� ����.(uiAnimPlayTime�� ���� ���� �����)
	STATE:InitLua( 260.0, 40.0, -40.0, 250.0, 650, 650 );

	Offset = {
		{0.25, 0.5},{0.5, 0.25},
		{0.5, -0.25},{0.25, -0.5},
		{-0.25, -0.5},{-0.5, -0.25},
		{-0.5, 0.25},{-0.23, 0.5 }
	};
	
	for j = 1,7 do
		_Attack = CreateCAttack();
		
		_Attack:InitAttack1( WEAPONTYPE_REVOLVER2, ATTACKATTRIB_BUSTSHOTGUN_MK2_ATTACK, 150, (Power*0.175)+AdditionalPower, AddtionalPower );
		_Attack:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,-0.05*Accuracy,-1), RayDistanceLimit ), 1, 1, true );

		local i = 1;
		while Offset[i] do
			_Attack:AddCollisionRange( 
				MAKERAY( 
					MAKEVECTOR3(0,0,0), 
					MAKEVECTOR3(Offset[i][1]*Accuracy, Offset[i][2]*Accuracy,-1), 
					RayDistanceLimit ) );
			i = i + 1;
		end
		
		_Attack:SetDamageApplyType( 3 );
		_Attack:SetDistanceDamageLength( 5000 );
		_Attack:SetCollisionRangeAdjust( false, false );
		_Attack:SetCritical( 2.5, 0 );
		_Attack:AddPushCondition( 200, 750, -1875 );
		AddAttack( ATTACKS, _Attack );
		
	end
	
	Attack1 = CreateCAttack();
	Attack1:InitAttack1( WEAPONTYPE_REVOLVER2, ATTACKATTRIB_BUSTSHOTGUN_MK2_ATTACK, 150, (Power*0.175)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,-0.05*Accuracy,-1), RayDistanceLimit ), 1, 1, false );
    
	Attack1:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ) );
	
	Attack1:SetDamageApplyType( 3 );
    Attack1:SetDistanceDamageLength( 5000 );
	Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:SetCritical( 2.5, 0 );
	Attack1:SetConsumeAmmo( 1 );
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true );
    Attack1:AddPushCondition( 100, 3000, -6000 );
    AddAttack( ATTACKS, Attack1 );

    	
	
end

-------------------------------------------------------------------------------
-- ���� �Ӽ� ����.
--[[
�̰��� AttackAttribIndexer.lua�� AttackAttribIndexer_Run() �Լ����� ȣ�� �Ǿ�� ��.

]]--
-------------------------------------------------------------------------------
function AttackAttribute_BustShotGunMK2()

	-- ���� ��ư ����.
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_BUSTSHOTGUN_MK2_ATTACK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SMG4 );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/burstshotgun_hit.ogg", "Resources/Sound/burstshotgun_wall_hit.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/weapon_shotgun_fire.seq", "Resources/Effects/weapon_shotgun_fire.seq", "Resources/Sound/burstshotgun_blast.ogg", "ShotGun_Fire_Dummy" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/weapon_shotgun_jump.seq", "Resources/Effects/weapon_shotgun_jump.seq", "Resources/Sound/revo_blast.ogg", "ShotGun_Fire_Dummy01" );
	currAttackAttrib:SetGunTracerAttachNode	( "ShotGun_Fire_Dummy", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_shotgun.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 70, 100, 0.2 );
	
end	
