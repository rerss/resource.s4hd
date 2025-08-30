require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------
--[[
	�⺻ BreakerSwordJumpDash ����
	InitLua����
	std::string& EffectFile					::	���°� ���ɶ� ���� ����Ʈ �̸�( ���� ������� ���� )
	std::string& SoundFile					::	���°� ���ɶ� ���� ���� �̸�( ���� ������� ���� )
	u32 uiNormalTime						::	���� ������ �ֹ̳��̼� �÷��� �ð�
	u32 uiDelayTime						::	NormalTime�� ������ �������� ������ ���� �ð�
	u32 uiMinimumSceneUpdateTime		::	���� ���� update�ϴ� �ð�(frame) �ַ� 40�� �����ϰ� ����
	bool bOnlyVStateNormal				::	���� ���°� �����ÿ��� ��밡�������� ���θ� ������ ( true = �����ÿ� ������ �����ϰų� ���尡 ���� , false = ������ ��� �Ұ� )
]]--
-------------------------------------------------------------------------------
--���� ����
function StandardBreakerJumpDash(  OneShotTime, Power, Accuracy, AdditionalPower )
	

	STATE:SetDrop( 200, MAKEVECTOR3( 0, -20000, 0 ) );	
	--STATE:SetDrop( ���� �� �����ִ� ü�� �ð�, MAKEVECTOR3( ���� �޴� �߷� �� ) );
	STATE:SetStealthCancel( true );	
	STATE:EnableCameraShake( true, false, 500 );	
	-- ���� ���� �� ī�޶� ����ũ ���� , ��ġ�� ����ũ ��
	STATE:SetCameraShakeFactor1( 200, 30, 20 );
	--( ����ð�, ȸ���ð�, Ȯ�� );
	STATE:SetCameraShakeFactor2( 60, 0, 2000, 3000 );
	--( ���ν��ǵ�, ���ν��ǵ�, �ּҰŸ�, �ִ�Ÿ� );
	STATE:InitLua( 300, 550, 40, false );
	--���� �ð�, ��ü �ð�
	
	local range = WEAPON:GetRange();
	
	Attack = CreateCAttack();
	--Ÿ�� �ڽ� ������ ������
    Attack:InitAttack1( WEAPONTYPE_BREAKER, ATTACKATTRIB_BREAKER_SWORD_JUMPDASH, 250, (Power*1.0)+AdditionalPower, AdditionalPower ); --���� 250
	--Attack:InitAttack1( ����Ÿ��, ���ݼӼ�ID, ���� �ð�(1000=1��), ������(���� Powder+AdditionalPower �Է�, �����ۿ����� �߰������� );
	Attack:InitProximityWeapon( MAKEBOX( MAKEVECTOR3(0,250,-150), MAKEVECTOR3(0,0,-1), range*1.0, range*1.2, range*1.2 ), 1, 1,"HM017", false , 500, 1300 ); --Ÿ�ݰ� ���� (20170526)     
	--Attack:InitAttack2( �浹����, 1, 1, �����õ���  );
	--���� ������ ��� MAKEBOX, ��� ������ ��� MAKERAY ���
	--MAKEBOX : MAKEBOX( MAKEVECTOR3() = center, MAKEVECTOR3() = direction, width, height, lenght );
	--MAKERAY : MAKERAY( MAKEVECTOR3() = center, MAKEVECTOR3() = direction, length );
	--Attack:AddStunCondition( 500, 500, 0, 1000 ); --����ȿ�� 0.5�� �߰� (20170531) ���� ȿ�� ���� (20170704)
    Attack:AddPushCondition( 100, 5000.0, -2000.0 );    --�˹�
	--���� �ǰ� �� �� 3������ ���� �̻� �� 1���� ���� ���� �ִ� . (��ο�, Ǫ��, ����)
	-- Attack:AddBlowCondition( blow�Ÿ�, blow���� ); blow �Ӽ��� �߰��Ѵ�. ���� 5000�� ü�� �ð� �� 1000ms
    -- Attack:AddPushCondition( ����ð�, ���ۼӵ�, �׼����ǵ� ); push �Ӽ��� �߰��Ѵ�.( �׼����ǵ带 ���������� �����ؾ� ���� )
	-- Attack:AddStunCondition( �ּҽð�, �ִ�ð�, �ּҰŸ�, �ִ�Ÿ� ); stun �Ӽ��� �߰��Ѵ�.
    AddAttack( ATTACKS, Attack );
	--���� ������ �ϴ� �Լ�. ���� ���� �������� �� �־�� �Ѵ�.
	
end





-------------------------------------------------------------------------------
--[[
	�⺻ BreakerSwordAfterDash1 ����
	InitLua����
	u32 uiNormalTime						::	���� ������ �ֹ̳��̼� �÷��� �ð�
	u32 uiDelayTime						::	NormalTime�� ������ �������� ������ ���� �ð�
	u32 uiMinimumSceneUpdateTime		::	���� ���� update�ϴ� �ð�(frame) �ַ� 40�� �����ϰ� ����
	bool bOnlyVStateNormal				::	���� ���°� �����ÿ��� ��밡�������� ���θ� ������ ( true = �����ÿ� ������ �����ϰų� ���尡 ���� , false = ������ ��� �Ұ� )
]]--
-------------------------------------------------------------------------------
--ù ��Ÿ ����
function StandardBreakerAfterDash1(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 1.0 ); 
	STATE:SetStealthCancel( true );	
	STATE:SetHitStop( 220, 320 );	
	--���� ���� ���� �Լ�, �Է� �� ��븦 ���� ���� �� �ش� �ð���ŭ �������� ���� ���� ����Ѵ�. (Ÿ�ݰ� �ֱ� ���� �뵵)
	STATE:EnableCameraShake( true, false, 220 );
	STATE:SetCameraShakeFactor1( 200, 30, 20 );
	STATE:SetCameraShakeFactor2( 60, 0, 2000, 3000 );
	
	STATE:InitLua( 600, 500, 40, true );
	
	local range = WEAPON:GetRange();
	 	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_BREAKER, ATTACKATTRIB_BREAKER_SWORD_ATTACK1, 200, (Power*1.27)+AdditionalPower, AdditionalPower ); --���ݷ� ���� 1.0 -> 1.5 (20170526) 
    --Attack1:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0,200,-100), range*1.0, range*0.8  ), 1, 1, false  );
	Attack1:InitProximityWeapon( MAKEBOX( MAKEVECTOR3(0,200,0), MAKEVECTOR3(0,0,-1), range*1.5, range*0.7, range*1.0 ), 1, 1, "HM001", false, 1000, 1500);     --Ÿ�ݰ� ���� (20170526) 
    Attack1:AddBlowCondition( 2000, 1500 );     
    AddAttack( ATTACKS, Attack1 );

end


-------------------------------------------------------------------------------
--[[
	�⺻ StandardBreakerStandAttack_Strong ����
	InitLua����
	u32 uiNormalTime						::	���� ������ �ֹ̳��̼� �÷��� �ð�
	u32 uiDelayTime						::	NormalTime�� ������ �������� ������ ���� �ð�
	u32 uiMinimumSceneUpdateTime		::	���� ���� update�ϴ� �ð�(frame) �ַ� 40�� �����ϰ� ����
	bool bOnlyVStateNormal				::	���� ���°� �����ÿ��� ��밡�������� ���θ� ������ ( true = �����ÿ� ������ �����ϰų� ���尡 ���� , false = ������ ��� �Ұ� )	
]]--
-------------------------------------------------------------------------------
--ù ��Ÿ ����
function StandardBreakerStandAttack_Strong(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 1.0 ); 
	STATE:SetStealthCancel( true );	
	STATE:SetHitStop( 220, 320 );	
	STATE:EnableCameraShake( true, false, 220 );
	STATE:SetCameraShakeFactor1( 200, 30, 20 );
	STATE:SetCameraShakeFactor2( 60, 0, 2000, 3000 );
	
	STATE:InitLua( 600, 500, 40, true );
	
	local range = WEAPON:GetRange();
	 	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_BREAKER, ATTACKATTRIB_BREAKER_SWORD_ATTACK1, 200, (Power*1.27)+AdditionalPower, AdditionalPower ); --���ݷ� ���� 1.0 -> 1.5 (20170526)
    --Attack1:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0,200,-100), range*1.0, range*0.8  ), 1, 1, false  );
	Attack1:InitProximityWeapon( MAKEBOX( MAKEVECTOR3(0,200,0), MAKEVECTOR3(0,0,-1), range*1.5, range*0.7, range*1.0 ), 1, 1, "HM001", false, 1000, 1500);     --Ÿ�ݰ� ���� (20170526) 
    Attack1:AddBlowCondition( 2000, 1500 );     
    AddAttack( ATTACKS, Attack1 );

end

-------------------------------------------------------------------------------
--[[
	�⺻ BreakerSwordGatherGuage ����
	InitLua����
	u32 uiMinimumSceneUpdateTime		::	���� ���� update�ϴ� �ð�(frame) �ַ� 40�� �����ϰ� ����
	u32 uiLowerPartBeginTime				::	��ü �ִϸ��̼� �ð�( ����ü�� �ϳ���� �����ص� �ǹ̾��� )
	u32 uiAttackDelay						::	������ ������ �����Ͻ� ������ �����̸� �ִ� �κ�
	bool bOnlyVStateNormal				::	���� ���°� �����ÿ��� ��밡�������� ���θ� ������ ( true = �����ÿ� ������ �����ϰų� ���尡 ���� , false = ������ ��� �Ұ� )
	bool bEnableInputJump				::	���� ���¿��� ������ ���������� ���� ����( true = ���� ����, false = ���� �Ұ��� )
	u32 uiWaitInput
	
	InitLuaNoInputSecond����
	u32 uiWaitTime						::	���� ���¿����� max charge time
	u32 uiNormalTime						::	���� ������ �ֹ̳��̼� �÷��� �ð�
	u32 uiDelayTime						::	NormalTime�� ������ �������� ������ ���� �ð�
	
	InitLuaInputSecond����
	u32 uiWaitTime						::	���� ���¿����� max charge time
	u32 uiNormalTime						::	���� ������ �ֹ̳��̼� �÷��� �ð�
	u32 uiDelayTime						::	NormalTime�� ������ �������� ������ ���� �ð�
	string& strFirstBone					::	�ְ˿� ���� ����Ʈ�� ��ġ(bone) => �ְ��� ���� �ΰ��� ����Ʈ�� �پ�����
	string& strSecondBone				::	�ְ˿� ���� ����Ʈ�� ��ġ(bone) => �ְ��� ���� �ΰ��� ����Ʈ�� �پ�����
]]--
-------------------------------------------------------------------------------
--���� ���� ����
function StandardBreakerGatherGuage(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveSpeedRate( 0.7 );	
	STATE:SetStealthCancel( true );
	STATE:SetHitStop( 150, 300 ) ;
	STATE:SetMoveBoxMultiplier( 2.0 );	
	

	--[[ ���� ���·� ���� �ִ� �ּ� sp ���� ]]--
	STATE:SetStateMinSp( 0 );
	--���� ���� ��� ����ϴ� Ư�� ���� ���� �� SP�� �Ҹ�ǰ� ó��
	STATE:SetChargeTimer( false );
	--���� ���� Ÿ�̸�, True�� �� ������ �Ϸ���ڸ��� ��� ���� ������ �ߵ��ȴ�.
	
	STATE:InitLua( 40, 0, 900, false, true, 0 );
	STATE:InitLuaInputSecond( 0, 0, 0, "HM_DMGeffect_Dummy", "" );

end







-------------------------------------------------------------------------------
--[[
	�⺻ BreakerSwordAfterDash4 ����
	InitLua����
	u32 uiNormalTime						::	���� ������ �ֹ̳��̼� �÷��� �ð�
	u32 uiDelayTime						::	NormalTime�� ������ �������� ������ ���� �ð�
	u32 uiMinimumSceneUpdateTime		::	���� ���� update�ϴ� �ð�(frame) �ַ� 40�� �����ϰ� ����
	bool bOnlyVStateNormal				::	���� ���°� �����ÿ��� ��밡�������� ���θ� ������ ( true = �����ÿ� ������ �����ϰų� ���尡 ���� , false = ������ ��� �Ұ� )
]]--
-------------------------------------------------------------------------------
--���� ����
function StandardBreakerAfterDash4(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetDrop( 400, MAKEVECTOR3( 0, -10000, 0 ) );
	STATE:SetMoveBoxMultiplier( 1.0 );	
	STATE:SetStealthCancel( true );
	STATE:SetHitStop( 600, 700 ) ;
	STATE:SetCheckChargeAttack( true ) ;
	STATE:SetSettingChargeTime( true ) ;
	STATE:EnableCameraShake( true, false, 560 );
	STATE:SetCameraShakeFactor1( 300, 50, 60 );
	STATE:SetCameraShakeFactor2( 60, 0, 2000, 3000 );	
		
	
	STATE:InitLua( "", "", 800, 1000, 40, false , 2000 );
		
	--[[ ���� �ְ˿��� ����� �Ҹ� sp ���� ]]--
	STATE:SetSpendSp( 50 );
	
	local range = WEAPON:GetRange();
	
    Attack1 = CreateCAttack();
	Attack1:InitAttack1( WEAPONTYPE_BREAKER, ATTACKATTRIB_BREAKER_SWORD_ATTACK4, 600, (Power*0.8)+AdditionalPower, AdditionalPower ); --power �� ���� �ȵ�
	Attack1:InitProximityWeapon( MAKEBOX( MAKEVECTOR3(0,200,-100), MAKEVECTOR3(0,0,-1), range*1.5, range*1.2, range*1.7 ), 1, 1, "HM004", false, 5400, 5800  );
    --Attack1:AddPushCondition( 100, 2000, -5000 ); 
	--Attack1:AddPushCondition( 1500, 900, -10 );
	Attack1:AddStunCondition( 500, 500, 0, 1000 );
	Attack1:SetFullCharge( false );	
    AddAttack( ATTACKS, Attack1 );  
	
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_BREAKER, ATTACKATTRIB_BREAKER_SWORD_ATTACK4, 600, (Power*0.8)+AdditionalPower, AdditionalPower ); --power �� ���� �ȵ�
	Attack2:InitProximityWeapon( MAKEBOX( MAKEVECTOR3(0,200,-100), MAKEVECTOR3(0,0,-1), range*2.0, range*0.6, range*2.0), 1, 1, "HM004" ,false, 5400, 5800  );
	--Attack2:AddPushCondition( 200, 5000.0, -2000.0 );
	Attack2:AddStunCondition( 1500, 1500, 0, 1000 );
	Attack2:SetFullCharge( true );	
    AddAttack( ATTACKS, Attack2 );  
	
	

end


-------------------------------------------------------------------------------
--[[
	�⺻ BreakerSwordAfterDash5 ����
	InitLua����
	u32 uiMinimumSceneUpdateTime		::	���� ���� update�ϴ� �ð�(frame) �ַ� 40�� �����ϰ� ����
	u32 uiLowerPartBeginTime				::	��ü �ִϸ��̼� �ð�( ����ü�� �ϳ���� �����ص� �ǹ̾��� )
	u32 uiAttackDelay						::	������ ������ �����Ͻ� ������ �����̸� �ִ� �κ�
	bool bOnlyVStateNormal				::	���� ���°� �����ÿ��� ��밡�������� ���θ� ������ ( true = �����ÿ� ������ �����ϰų� ���尡 ���� , false = ������ ��� �Ұ� )
	bool bEnableInputJump				::	���� ���¿��� ������ ���������� ���� ����( true = ���� ����, false = ���� �Ұ��� )
	u32 uiWaitInput						::	���� ���ο��� ����ϴ� Ư����( ���� !! �����Ǿ��� ���� �����ϸ� �ʵ˴ϴ�. )
	
	InitLuaNoInputSecond����
	u32 uiWaitTime						::	���� ���¿����� max charge time
	u32 uiNormalTime						::	���� ������ �ֹ̳��̼� �÷��� �ð�
	u32 uiDelayTime						::	NormalTime�� ������ �������� ������ ���� �ð�
	
	InitLuaInputSecond����
	u32 uiWaitTime						::	���� ���¿����� max charge time
	u32 uiNormalTime						::	���� ������ �ֹ̳��̼� �÷��� �ð�
	u32 uiDelayTime						::	NormalTime�� ������ �������� ������ ���� �ð�
	string& strFirstBone					::	�ְ˿� ���� ����Ʈ�� ��ġ(bone) => �ְ��� ���� �ΰ��� ����Ʈ�� �پ�����
	string& strSecondBone				::	�ְ˿� ���� ����Ʈ�� ��ġ(bone) => �ְ��� ���� �ΰ��� ����Ʈ�� �پ�����
]]--
-------------------------------------------------------------------------------
--���� "����" ���� ����
function StandardBreakerAfterDash5(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveSpeedRate( 0.85 );	
	STATE:SetStealthCancel( true );
	STATE:SetHitStop( 150, 300 ) ;
	STATE:SetMoveBoxMultiplier( 2.0 );	
	
	--[[ ���� ���·� ���� �ִ� �ּ� sp ���� ]]--
	STATE:SetStateMinSp( 50 );
	STATE:SetChargeTimer( true );
	
	STATE:InitLua( 40, 0, 2000, false, true, 3 );
	STATE:InitLuaInputSecond( 2000, 0, 0, "HM_DMGeffect_Dummy", "" );
	
end

