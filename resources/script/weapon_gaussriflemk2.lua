require "Resources/Script/ActorStates_Constants.lua"
-------------------------------------------------------------------------------
--[[
	���콺 ������ ��ũ2 ��Ŭ�� ���� ����.
	
	OneShotTime = 1000/rate_of_fire([_rc_weapon.xml�� power])
	Power = [_rc_weapon.xml�� power] * [constant_info.xml �� GAMETEMPO_damage_multiplier : ���� 2]
	Accuracy = [_rc_weapon.xml�� Accuracy]
	AdditionalPower = 0
	
]]--
-------------------------------------------------------------------------------
function GaussRifleMK2_Standard(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetFrontOffset( 275 );
	STATE:InitLua( 900, 250, 200, 260.0 );
	STATE:SetMK2( true );
	
	ACTORSTATE:SetGunSpreadType( 2 );
    --  ��ȭ��, ȸ����, �ּҰ�, �ִ밪
    ACTORSTATE:SetInnerAccuracyVary( 18, 1,  0.3, 1 );
	ACTORSTATE:SetOuterAccuracyVary( 24, 1,  0.3, 1 );
	
	local arDirs = {};
	
	local i;
	for i = 1, 10, 1 do	
	arDirs[i] = MAKECVECTOR3( 0.0, 0.0, -1.0 );
	end
--	arDirs[1] = MAKECVECTOR3( 0.0, 0.0*Accuracy, -1.0 );
--	arDirs[2] = MAKECVECTOR3( 0.0, 0.1*Accuracy, -1.0 );
--	arDirs[3] = MAKECVECTOR3( 0.0, 0.2*Accuracy, -1.0 );
--	arDirs[4] = MAKECVECTOR3( 0.0, 0.3*Accuracy, -1.0 );
--	arDirs[5] = MAKECVECTOR3( 0.0, 0.4*Accuracy, -1.0 );
	
	-- ���� �ڵ带 ���� ��� _rc_weapon�� �׸� rate_of_fire�� [ 1000/���簪 ]���� �־ ������.
	-- ���� : �� ���� ��ȭ�� ���� ������ ������ ������ ���� �ؾ� �Ѵ�.
	OneShotTime = 130; 
	
	local index = 1;

	    arDirs[ index ]:Normalize();
		
	    Attack = CreateCAttack();
	    Attack:InitAttack1( 
			WEAPONTYPE_GAUSS_RIFLE_MK2, 
			ATTACKATTRIB_GAUSS_RIFLE_MK2_LEFT_ATTACK, 
			20, Power, AddtionalPower );
			
	    Attack:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3( arDirs[ index ]:GetX(), arDirs[ index ]:GetY() , arDirs[ index ]:GetZ() ), RayDistanceLimit ), 1, 1, false  );
	    Attack:SetCollisionRangeAdjust( false, false );
		Attack:SetCritical( 2.5, 0 );
	    Attack:SetConsumeAmmo( 1 );
	    Attack:SetCameraShakeEnable( true, true, 0 );
	    Attack:SetCameraShakeSetFactor1( 50, 25, 5 );
	    Attack:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
	    Attack:SetCameraShakeRandomDir( true );
	    AddAttack( ATTACKS, Attack );

	for index = 2, 10, 1 do
		
	    arDirs[ index ]:Normalize();
		
	    Attack = CreateCAttack();
	    Attack:InitAttack1( 
			WEAPONTYPE_GAUSS_RIFLE_MK2, 
			ATTACKATTRIB_GAUSS_RIFLE_MK2_LEFT_ATTACK, 
			50 + ( (index-1)*OneShotTime ), 
			--100,
			Power, AddtionalPower );
			
	    Attack:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3( arDirs[ index ]:GetX(), arDirs[ index ]:GetY() , arDirs[ index ]:GetZ() ), RayDistanceLimit ), 1, 1, false  );
	    Attack:SetCollisionRangeAdjust( false, false );
		Attack:SetCritical( 2.5, 0 );
	    Attack:SetConsumeAmmo( 1 );
	    Attack:SetCameraShakeEnable( true, true, 0 );
	    Attack:SetCameraShakeSetFactor1( 50, 25, 5 );
	    Attack:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
	    Attack:SetCameraShakeRandomDir( true );
	    AddAttack( ATTACKS, Attack );
    
	end    

end

-------------------------------------------------------------------------------
--[[
	���콺 ������ ��ũ2 ��Ŭ�� ���� ����.
	
	OneShotTime = 0
	Power = [_rc_weapon.xml�� power] * [constant_info.xml �� GAMETEMPO_damage_multiplier : ���� 2]
	Accuracy = [_rc_weapon.xml�� Accuracy]
	AdditionalPower = 0
]]--
-------------------------------------------------------------------------------
function GaussRifleMK2_MultiShot(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:SetFrontOffset( 7 );                              -- ���ݰŸ� 5
	-- STATE:InitLua( ���� �ð�, �ĵ�����, ��� ����, �ѱ� Y��ǥ ����);
	STATE:InitLua( 1400, 740, 0, 260.0 );

	-- ���⼺ ȿ�� ��� �Լ�
	-- STATE:InitDirectionSequence
	--						( ���Ⱑ �߻�Ǳ������ �����ð�,
	-- 						���⼺ �߻� ȿ��,
	--						���⼺ ���� ȿ��,
	--						�߻�� ������ ��� �̸� )
	local AttackDelayTime = 250; -- ���Ⱑ �߻�Ǳ������ �����ð�
	STATE:InitDirectionSequence(AttackDelayTime,"Resources/Effects/weapon_gaussmk2_sp_rail.seq","","Gauss_Rifle_MK2_Head_Dummy");
	
	-- �Է� ���� �ð� ���� �Լ�.
	STATE:InitInputDelayTime(800);
	
	-- �Ҹ� SP ����.
	STATE:SetSpendSp(35);--24 
	
	-- ���� �Ÿ� ����.
	local AttackRange = 1800; 
	
	local arDirs = {};
	arDirs[1] = MAKECVECTOR3( -1.2*Accuracy, 0.0, -1.0 ); --STATE:GetFireAngleX(1), 0.0, -1.0 );
	arDirs[2] = MAKECVECTOR3( -0.6*Accuracy, 0.0, -1.0 ); --STATE:GetFireAngleX(2), 0.0, -1.0 );
	arDirs[3] = MAKECVECTOR3(  0.0*Accuracy, 0.0, -1.0 ); --STATE:GetFireAngleX(3), 0.0, -1.0 );
	arDirs[4] = MAKECVECTOR3(  0.6*Accuracy, 0.0, -1.0 ); --STATE:GetFireAngleX(4), 0.0, -1.0 );
	arDirs[5] = MAKECVECTOR3(  1.2*Accuracy, 0.0, -1.0 ); --STATE:GetFireAngleX(5), 0.0, -1.0 );
	arDirs[6] = MAKECVECTOR3(  0.0*Accuracy, -0.1, -1.0 ); --STATE:GetFireAngleX(6), 0.0, -1.0 );
	arDirs[7] = MAKECVECTOR3(  0.0*Accuracy, 0.1, -1.0 ); --STATE:GetFireAngleX(7), 0.0, -1.0 );
	
	for index = 1, 7, 1 do
		
	    arDirs[ index ]:Normalize();
		
	    Attack = CreateCAttack();
	    Attack:InitAttack1( 
			WEAPONTYPE_GAUSS_RIFLE_MK2, 
			ATTACKATTRIB_GAUSS_RIFLE_MK2_RIGHT_ATTACK, 
			AttackDelayTime + ( (index-1)*OneShotTime ), Power*1.15+AdditionalPower, AddtionalPower );--1.5
		
	    Attack:InitAttack2( 
			MAKERAY( 
					MAKEVECTOR3(0,0,0), 
					MAKEVECTOR3( 
						arDirs[ index ]:GetX(), 
						arDirs[ index ]:GetY(), 
						arDirs[ index ]:GetZ() ),
					AttackRange ), 
			1, 1, false  );
			
	    Attack:SetCollisionRangeAdjust( false, false );
		Attack:SetCritical( 2.5, 0 );
	    Attack:SetConsumeAmmo( 1 );
	    Attack:SetCameraShakeEnable( true, true, 0 );
	    Attack:SetCameraShakeSetFactor1( 200, 40, 40 );
	    Attack:SetCameraShakeSetFactor2( 60.0, 60.0, 500.0, 600.0 );
	    Attack:SetCameraShakeRandomDir( true );
		Attack:SetCameraShakeWhenSuccess( true );
	    
		
		-- Attack:AddPushCondition( ����ð�, ���ۼӵ�, �׼����ǵ� ); push �Ӽ��� �߰��Ѵ�.( �׼����ǵ带 ���������� �����ؾ� ���� )
		Attack:AddBlowCondition( 1200, 1500 );
		
	    AddAttack( ATTACKS, Attack );
    
	end
	
end