require "Resources/Script/Weapon_submachine.lua" --���� �ӽŰ�
require "Resources/Script/Weapon_machinegun.lua" --��� �ӽŰ�
require "Resources/Script/Weapon_railgun.lua" --���ϰ�
require "Resources/Script/Weapon_revolver.lua" --������
require "Resources/Script/Weapon_smg2.lua"--���� ������, ȣ�� ������, ����ũ ������, ���Ʈ ������
require "Resources/Script/Weapon_cannonade.lua" --ĳ����̵�
require "Resources/Script/Weapon_mg2.lua" --���콺 ������
require "Resources/Script/Weapon_assassinclaw.lua" --����Ż ��ũ
require "Resources/Script/Weapon_revolver2.lua" --�ڵ��
require "Resources/Script/Weapon_smg4.lua" --����Ʈ ����, ��ũ ���̺��
require "Resources/Script/Weapon_smg3gun.lua" --���Ž� ������(���Ÿ�)
require "Resources/Script/Weapon_smg3sword.lua" --���Ž� ������(����)
require "Resources/Script/Weapon_bat.lua" --���� ��Ʈ
require "Resources/Script/Weapon_countersword.lua" --ī���� ������
require "Resources/Script/Weapon_doublesword.lua" --Ʈ�� ���̵�
require "Resources/Script/Weapon_katanasword.lua" --īŸ��(������)
require "Resources/Script/Weapon_plasmasword.lua" --�ö�� ������
require "Resources/Script/Weapon_spydagger.lua" --������ ���
require "Resources/Script/Weapon_Airgun.lua" --�����
require "Resources/Script/Weapon_mine.lua" --�׷����̵��, � ����, ����Ʈ�� ����
require "Resources/Script/Weapon_breakersword.lua" --�극��Ŀ
require "Resources/Script/Weapon_turret.lua" --�ͷ�
require "Resources/Script/Weapon_Sentry.lua" --��Ʈ�� ����
require "Resources/Script/Weapon_katana_a_sword.lua" --īŸ��(��)
require "Resources/Script/Weapon_sigmablade.lua" --�ñ׸����̵�
require "Resources/Script/Weapon_dualgun.lua" --Ʃ��ű׳�
require "Resources/Script/Weapon_Death_Scythe.lua" --��ų�
require "Resources/Script/Weapon_IRONBOOTS.lua" --���̾� ����
require "Resources/Script/Weapon_GaussRifleMK2.lua"--���콺 ������ MK2
require "Resources/Script/Weapon_rocketlauncher.lua" --���� ��ó
require "Resources/Script/Weapon_VirtualSheild.lua" -- ���߾� ����
require "Resources/Script/_Weapon_DemonicKnuckle_Atk.lua" -- ����� ��Ŭ.
require "Resources/Script/_Weapon_BustShotGunMK2_Atk.lua" -- ����Ʈ ���� MK2.
require "Resources/Script/_Weapon_ChainLightGunMK2_Atk.lua" -- ü�� ����Ʈ�� �� MK2.
require "Resources/Script/Weapon_MindWeapon.lua" -- ���ε� ��ũ, ���ε� ���̺�
require "Resources/Script/Weapon_VitalShock.lua" -- ����Ż ��ũ ������ũ ����
---------------------------------------------------------------------------------------------------------------------------------------------
--[[
	-- �������ִ� ��ũ��Ʈ�� ����δ� Ư���� ����� ������ ����.	
]]--


---------------------------------------------------------------------------------------------------------------------------------------------
--[[
	�浹 ���� ����
	
	-- z -1 ���� ĳ���Ͱ� �ٶ󺸴� ����
	
	MAKEVECTOR3( x,y,z );	-- �Լ��� �Ķ���ͷθ� ����� �� ����.
	MAKEVECTOR2( x,y );		-- �Լ��� �Ķ���ͷθ� ����� �� ����.
	
	MAKECVECTOR3( x,y,z );	-- ��ƿ� ������ �� �� ����.( �߰��� �Ϲ� vector �ѱ�°� �۾��ϰ��� ), �Լ��� �Ķ���ͷδ� �ѱ� �� ����.
		GetX();				-- x���� ��ȯ�Ѵ�.
		GetY();				-- y���� ��ȯ�Ѵ�.
		GetZ();				-- z���� ��ȯ�Ѵ�.
		
		ex) vector3 = MAKECVECTOR3( 1,1,1 );
			STATE:InitLua( MAKEVECTOR3( vector3:GetX(), vector3:GetY(), vector3:GetZ() ) );
			x : +���̸� ��������, -���̸� �������� �̵�
			y : +���̸� ����, -���̸� �Ʒ��� �̵�
			z : +���̸� �÷��̾� ��(ī�޶� ����)����, -���̸� �÷��̾� ����(ī�޶� �ٱ���)���� �̵�
	
	* �÷��̾��� Ÿ�ݹڽ� ũ��� ��������� �����Ͽ��� ��, ������ �� 100(Ÿ��Ʈ�ϰ� ���� 95����) ���̴� �� 300~320��.
	-- Ray	
	MAKERAY( MAKEVECTOR3() = center, MAKEVECTOR3() = direction, length );
	
	-- Sphere
	MAKESPHERE( MAKEVECTOR3() = center, ������ );
	
	-- Box
	MAKEBOX( MAKEVECTOR3() = center, MAKEVECTOR3() = direction, width, height, lenght );
	center 
	-- Cylinder
	MAKECYLINDER( MAKEVECTOR3(center��), ������, ���� );
	center�� �� ���� �� ���� �� 0,0,0���� �ν�. ���� �ÿ��� MAKEVECTOR3(x,y,z)�� �����Ͽ��� ��.
	������ ����(Attack = CreateCExplosionAttack();) �� ��� ��, ���Ͱ��� �ڵ����� ��Ʈ�� �� �������� ������.(ĳ����̵�ó��)
	
	-- Fan
	MAKEFAN( MAKEVECTOR3() = center, MAKEVECTOR2() = direction, width, height, length, ���� );
	
	-- Pole
	MAKEPOLE( MAKEVECTOR3() = center, MAKEVECTOR3() = direction, width, height, length );
	
	-- Thickray : ���̸� �̿��� ȣ���� ���ؼ��� ����ؾ� ��.
	MAKETHICKRAY( MAKEVECTOR3() = center, MAKEVECTOR3() = direction, thickness = ȣ�� ����, length );
	
	-- cone
	MAKECONE( MAKEVECTOR3(x, y, z), MAKEVECTOR3( 0.0, 0.0, -1.0 ), ������, ���� ����, �ٴڸ� ���� )
	
]]--

---------------------------------------------------------------------------------------------------------------------------------------------
--[[	�Ϲݰ��� ��ũ��Ʈ �޴���	

	--setdrop : ���� �� �����ִ� ü���ð�
	--MAKEVECTOR3 : �����ϸ鼭 �������� �Ÿ�
	STATE:SetDrop( ���� �� �����ִ� ü�� �ð�, MAKEVECTOR3( x, y, z ) );
	
	--setdrop : ���� �� ������ �� �����ִ� ü���ð�
	--MAKEVECTOR3 : ���� �� ������ �� �������� �Ÿ�
	STATE:SetDelayDrop( ���� �� �ĵ����� �� �����ִ� ü�� �ð�, MAKEVECTOR3( x, y, z ) );
		
	-- �ִϸ��̼� �� �Էµ� ���� �ڽ��� �Ʒ� ������ŭ �������� ���� �� ����
	STATE:SetMoveBoxMultiplier( �̵��ӵ� ���� );
	
	-- Ư�� �̵� ���. �̵� �� ���⿡ ���� ���� ��� ������ ������. 1.0�� �⺻ �̼�
	STATE:SetMoveSpeedRate( �̵��ӵ� ���� );

	-- (���� ���� ����) ���� �ð��� ���� �ĵ����� ���� ����
	STATE:SetIncreaseDelayChargeTime( true/false );

	-- �� SetIncreaseDelayChargeTime���� true �Է� �� �����ϴ� ������ �ð� �Է� 1000 = 1��. ���� �ð��� ����Ͽ� �ش� �Էµ� ���ڸ�ŭ �߰������� ����
	STATE:SetMaxIncreaseDelayTime( �ִ� ������ ������ �Է� (1000 = 1�ʱ���) );
	
	--�����߰� �ĵ� �� ���콺 ȸ�� �ӵ� ���� ����
	STATE:SetEnableMouseSensitivityRotate( true/false );
	
	--�� SetEnableMouseSensitivityRotate �Է� �� ���콺 ȸ�� �ӵ� ���� ��ġ ���� (1.0�� �Ϲ� �ӵ� ����)
	STATE:SetNormalMouseSensitivityRotate( ���콺 ȸ�� �ӵ� �� );	
	
	
	-- ������ 1�� ����( �Ʒ�2�߿� �ϳ��� �����ؾ� ��. )
	Attack = CreateCAttack();				-- �Ϲ��� ����	
	
	-- ���� �ʱ�ȭ1 
    Attack:InitAttack1( ����Ÿ��, ���ݼӼ�ID, �߻�ð�, ������, �����ۿ����� �߰������� );
    
    -- ���� �ʱ�ȭ2
    Attack:InitAttack2( �浹����, 1, 1, �����õ���  );
    
    -- ���ݽ� �浹����( ���� �� ��ġ ���� : ��κ��� false�� �ϰ� ���� )
    Attack:SetCollisionRangeAdjust( �������� ���������� �������, �������� ��ġ�� ���� ��ġ�̵� );
    
    -- ������ �� �� ���Ǵ� ź�� ��
    Attack:SetConsumeAmmo( ��� ź�� �� );    
    
    -- ��Ʈ������ ������ ������ ���÷� üũ��.( ��κ� false ������ ����ȭ�� ����. ����� ������:���ϰ�,ĳ���̵� �� true�� �����Ǿ� ���� )
    -- �⺻�� false �̸� true�϶��� �����ۼ� ���.
    -- ������ �͵��� ��¿ �� ������ �� �� ������ true�� �������� ���ƾ� ��.
    Attack:SetGhostCalcCollisionRange( true/false );
    
    -- blow �Ӽ��� �߰��Ѵ�. ���� 5000�� ü�� �ð� �� 1000ms
    Attack:AddBlowCondition( blow�Ÿ�, blow���� );
    
    -- push �Ӽ��� �߰��Ѵ�.( �׼����ǵ带 ���������� �����ؾ� ���� )
    Attack:AddPushCondition( ����ð�, ���ۼӵ�, �׼����ǵ� );  
    
    -- stun �Ӽ��� �߰��Ѵ�.
    Attack:AddStunCondition( �ּҽð�, �ִ�ð�, �ּҰŸ�, �ִ�Ÿ� );
    
    -- �׻� ũ��Ƽ�� �����ΰ�?
    Attack:SetAlwaysCritical( true/false );
	
	--���� ũ��Ƽ�� ����
	Attack1:SetCritical( ũ�� �� ���� ����, Ȯ��(�ۼ�Ʈ�� ���ڷ� �Է�) );
	��: 50% Ȯ���� 3���� �������� ���� ��� (3, 50)
    
    -- ī�޶� ����ŷ
    Attack:SetCameraShakeEnable( ��Ŀ��������, �����ΰ�, �غ�ð� );
    Attack:SetCameraShakeSetFactor1( ����ð�, ȸ���ð�, Ȯ�� );
    Attack:SetCameraShakeSetFactor2( ���ν��ǵ�, ���ν��ǵ�, �ּҰŸ�, �ִ�Ÿ� );
    Attack:SetCameraShakeRandomDir( �������� �����ΰ� );    
    Attack:SetCameraShakeWhenSuccess( ���������� �����ΰ� );

    -- ���ݽÿ� ���带 ����� ���ΰ�?
    Attack:SetPlaySound( true / false );
    
    -- ���ݸ���Ʈ�� ������ �߰��Ѵ�.
    AddAttack( ATTACKS, ������ ���� );		


]]--


---------------------------------------------------------------------------------------------------------------------------------------------
--[[	������ ���� ��ũ��Ʈ �޴���

	-- ������ 1�� ����( �Ʒ�2�߿� �ϳ��� �����ؾ� ��. )
	Attack = CreateCExplosionAttack();		-- ������ ����
	
	-- ���� �ʱ�ȭ1 
    Attack:InitAttack1( ����Ÿ��, ���ݼӼ�ID, �߻�ð�, ������, �����ۿ����� �߰������� );
    
    -- ���� �ʱ�ȭ2
    Attack:InitAttack2( �浹����, 1, 1  );
    
    -- ���ݽ� �浹����( ���� �� ��ġ ���� : ��κ��� false�� �ϰ� ���� )
    Attack:SetCollisionRangeAdjust( �������� ���������� �������, �������� ��ġ�� ���� ��ġ�̵� );
    
    -- ������ �� �� ���Ǵ� ź�� ��
    Attack:SetConsumeAmmo( ��� ź�� �� );    
    
    -- ��Ʈ������ ������ ������ ���÷� üũ��.( ��κ� false ������ ����ȭ�� ����. ����� ������:���ϰ�,ĳ���̵� �� true�� �����Ǿ� ���� )
    -- �⺻�� false �̸� true�϶��� �����ۼ� ���.
    -- ������ �͵��� ��¿ �� ������ �� �� ������ true�� �������� ���ƾ� ��.
    Attack:SetGhostCalcCollisionRange( true/false );
    
    -- blow �Ӽ��� �߰��Ѵ�.
    Attack:AddBlowCondition( blow�Ÿ�, blow���� );
    
    -- push �Ӽ��� �߰��Ѵ�.( �׼����ǵ带 ���������� �����ؾ� ���� )
    Attack:AddPushCondition( ����ð�, ���ۼӵ�, �׼����ǵ� );  
    
    -- stun �Ӽ��� �߰��Ѵ�.
    Attack:AddStunCondition( �ּҽð�, �ִ�ð�, �ּҰŸ�, �ִ�Ÿ� );
    
    -- �׻� ũ��Ƽ�� �����ΰ�?
    Attack:SetAlwaysCritical( true/false );
    
    -- ī�޶� ����ŷ
    Attack:SetCameraShakeEnable( ��Ŀ��������, �����ΰ�, �غ�ð� );
    Attack:SetCameraShakeSetFactor1( ����ð�, ȸ���ð�, Ȯ�� );
    Attack:SetCameraShakeSetFactor2( ���ν��ǵ�, ���ν��ǵ�, �ּҰŸ�, �ִ�Ÿ� );
    Attack:SetCameraShakeRandomDir( �������� �����ΰ� );    
    Attack:SetCameraShakeWhenSuccess( ���������� �����ΰ� );
    
    -- ���ݸ���Ʈ�� ������ �߰��Ѵ�.
    AddAttack( ATTACKS, ������ ���� );
	
]]--

---------------------------------------------------------------------------------------------------------------------------------------------
--[[	WEAPON Ŭ���� �Լ�
	
	-- �ش� ���ݿ� ���� ���� ������ ����
	-- Attack = CreateCAttack(); <- ���� �����Ȱ�	
	WEAPON:ApplyRandomDamage( Attack );
		
	-- ������ ����
	WEAPON:GetRange();
	
]]--


---------------------------------------------------------------------------------------------------------------------------------------------
--[[	�� ���� ���� ���º� �Լ� ����	
		-- �Ʒ� �Լ� �߰������δ� �۵��� ���������� ���� �ʰ�, Ŭ���̾�Ʈ�� �۾� ��û �� ��� ���� �� �� �ִ� ����Ʈ
	
	<īŸ�� ���� �Է� ��>
	
	-- ������ ���ڸ�ŭ ���� ���� Ƚ���� �����ϴ� ��� (īŸ�� ���� ���� �� ����)
	STATE:SetMaxAttackCount( ���� Ƚ�� );
	
		
		
]]--


---------------------------------------------------------------------------------------------------------------------------------------------
--[[	���������� ����ϴ� ���� �� ���� ����
	
	u32 uiNormalTime						::	���� ������ �ֹ̳��̼� �÷��� �ð�
	u32 uiDelayTime						::	NormalTime�� ������ �������� ������ ���� �ð�
	u32 uiMinimumSceneUpdateTime		::	���� ���� update�ϴ� �ð�(frame) �ַ� 40�� �����ϰ� ����
	bool bOnlyVStateNormal				::	���� ���°� �����ÿ��� ��밡�������� ���θ� ������ ( true = �����ÿ� ������ �����ϰų� ���尡 ���� , false = ������ ��� �Ұ� )
	bool bEnableInputJump				::	���� ���¿��� ������ ���������� ���� ����( true = ���� ����, false = ���� �Ұ��� )
	
	STATE:SetStateMinSp( �ش� ���¿� ���� ���ؼ� �ʿ��� �ּ� sp ) :: ���� �������⿡�� �����
	STATE:SetSpendSp( �ش� ���¿��� ����� sp ) :: ���� �������⿡�� �����
]]--