require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------
--[[
	�⺻ StandardKatana_A_SwordAfterDash1 ����
	InitLua����
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal 
	
	��Ÿ ���� 1
]]--
-------------------------------------------------------------------------------
function StandardKatana_A_SwordAfterDash1(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 0.0 );
	--���� �ڽ� �̵���(1.0�� ��������)
	STATE:SetMoveSpeedRate( 2.0 );
	--Ư�� �߰� ���. �̵� �� ���⿡ ���� ���� ��� ������ ������. 1.0�� �������� �̵��� ���� ����
	STATE:SetMoveStopWhenDamage( true );
	STATE:SetStealthCancel( true );	
	--STATE:SetHitStop( 300, 500 );				
	--SetHitStop : ���� Ÿ�� �� ������ �ð�
	
	STATE:InitLua( 350, 500, 40, true );
	STATE:ResetMoveBoxAtSubStateChange( true );
	-- ���°� �ٲ� �� ����ڽ���ġ�� �ʱ�ȭ�Ѵ�.
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_SWORD_ATTACK1, 225, (Power*0.75)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,100), MAKEVECTOR3(0,0,-1), range*0.8, range*0.4, range*1.0 ), 1, 1, false  );        
    Attack1:AddPushCondition( 100, 2000, -5000 );
	--�ڷ� �и��� �� �ɸ��� �� �ð�, �и��� ��(���̳ʽ��� �� �� ���ܿ�), ���ӵ��� ����ġ
	Attack1:SetCameraShakeEnable( true, true, 0 );
	Attack1:SetCameraShakeSetFactor1( 100, 50, 20 );
    Attack1:SetCameraShakeSetFactor2( 50.0, 0.0, 2000.0, 3000.0 );
    Attack1:SetCameraShakeWhenSuccess( true );  
	Attack1:SetCheckBodyPartsByThickray( false );
    AddAttack( ATTACKS, Attack1 );

end




-------------------------------------------------------------------------------
--[[
	�⺻ StandardKatana_A_SwordAfterDash2 ����
	InitLua����
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal 
	
	��Ÿ ���� 2
]]--
-------------------------------------------------------------------------------
function StandardKatana_A_SwordAfterDash2(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 1.0 );	
	STATE:SetStealthCancel( true );		
	STATE:InitLua( 800, 1000, 40, true );
	STATE:ResetMoveBoxAtSubStateChange( true ); 
	-- ���°� �ٲ� �� ����ڽ���ġ�� �ʱ�ȭ�Ѵ�.
	
	local range = WEAPON:GetRange();
    
	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_SWORD_ATTACK2, 300, (Power*0.625)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,100), MAKEVECTOR3(0,0,-1), range*1.3, range*0.4, range*1.0 ), 1, 1, false  );        
	Attack1:AddPushCondition( 100, 1500, -5000 );
    Attack1:SetCameraShakeEnable( true, true, 0 );
	Attack1:SetCameraShakeSetFactor1( 100, 50, 20 );
    Attack1:SetCameraShakeSetFactor2( 50.0, 0.0, 2000.0, 3000.0 );
	Attack1:SetCameraShakeWhenSuccess( true );  
	AddAttack( ATTACKS, Attack1 );
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_SWORD_ATTACK2, 700, (Power*0.625)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,100), MAKEVECTOR3(0,0,-1), range*1.3, range*0.4, range*1.0 ), 1, 1, false  );        
    Attack2:AddPushCondition( 100, 1500, -5000 );
    Attack2:SetCameraShakeEnable( true, true, 0 );
	Attack2:SetCameraShakeSetFactor1( 100, 50, 20 );
    Attack2:SetCameraShakeSetFactor2( 50.0, 0.0, 2000.0, 3000.0 );
    Attack2:SetCameraShakeWhenSuccess( true );  
	AddAttack( ATTACKS, Attack2 );
	
end




-------------------------------------------------------------------------------
--[[
	�⺻ StandardKatana_A_SwordAfterDash3 ����
	InitLua����
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal 
	
	��Ÿ ���� 3
]]--
-------------------------------------------------------------------------------
function StandardKatana_A_SwordAfterDash3(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 1.0 );	
	STATE:SetStealthCancel( true );	
	STATE:SetHitStop( 300, 450 );	
	
	STATE:InitLua( 500, 700, 40, true );
	STATE:ResetMoveBoxAtSubStateChange( true ); -- ���°� �ٲ� �� ����ڽ���ġ�� �ʱ�ȭ�Ѵ�.
	
	local range = WEAPON:GetRange();
    	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_SWORD_ATTACK3, 350, (Power*1.0)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,100), MAKEVECTOR3(0,0,-1), range*0.8, range*0.4, range*1.2 ), 1, 1, false  );        
    Attack1:AddBlowCondition( 3000, 2000 );
	Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack1:SetCameraShakeSetFactor2( 0.0, 75.0, 2000.0, 3000.0 );
	Attack1:SetCameraShakeWhenSuccess( true );  
	Attack1:SetCritical( 2, 10 );
	-- SetCritical (����, Ȯ��);
    AddAttack( ATTACKS, Attack1 );

end

-------------------------------------------------------------------------------
--[[
	�⺻ StandardKatana_A_SwordJumpDash JumpDash ����
	InitLua����
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal 
	
	���� ����
]]--
-------------------------------------------------------------------------------
function StandardKatana_A_SwordJumpDash(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetDrop( 1, MAKEVECTOR3( 0, -700, -1600 ) );
	--setdrop : ���� ���� �� �����ִ� ü���ð�
	--MAKEVECTOR3 : �����ϸ鼭 �������� �Ÿ�(x,y,z)
	STATE:SetDelayDrop( 1, MAKEVECTOR3( 0, -5000, 0 ) );
	--�����̽� ��� �ð�
	
	STATE:SetStealthCancel( true );
	STATE:SetMoveBoxMultiplier( 0 );
	STATE:SetMaxAttackCount( 3 );
	--���� �ִ� �Է� Ƚ�� (īŸ�� �������� ���� ���)
	
	
	STATE:InitLua( 400, 450, 40, false );
	local range = WEAPON:GetRange();
	
 	Attack1 = CreateCAttack();
	Attack1:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_SWORD_JUMPDASH, 200, (Power*0.6)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,150), MAKEVECTOR3(0,0,-1), range*0.7, range*1.2, range*1.0 ), 1, 1, false  );      
    Attack1:AddPushCondition( 50, 2000, -5000 );
	Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 100, 30, 50 );			
	--( ����ð�, ȸ���ð�, Ȯ�� );
    Attack1:SetCameraShakeSetFactor2( 30.0, 0.0, 2000.0, 3000.0 );	
	--( ���ν��ǵ�, ���ν��ǵ�, �ּҰŸ�, �ִ�Ÿ� );
	Attack1:SetCameraShakeWhenSuccess( true );
    AddAttack( ATTACKS, Attack1 );
	
	Attack2 = CreateCAttack();
	Attack2:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_SWORD_JUMPDASH, 300, (Power*0.6)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,150), MAKEVECTOR3(0,0,-1), range*0.7, range*1.2, range*1.0 ), 1, 1, false  );      
    Attack2:AddPushCondition( 50, 2000, -5000 );
	Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 100, 30, 50 );				
	--( ����ð�, ȸ���ð�, Ȯ�� );
    Attack2:SetCameraShakeSetFactor2( 30.0, 0.0, 2000.0, 3000.0 );	
	--( ���ν��ǵ�, ���ν��ǵ�, �ּҰŸ�, �ִ�Ÿ� );
	Attack2:SetCameraShakeWhenSuccess( true );
	Attack2:SetPlaySound( false );
    AddAttack( ATTACKS, Attack2 );
	
		
	Attack3 = CreateCAttack();
	Attack3:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_SWORD_JUMPDASH, 600, (Power*0.9)+AdditionalPower, AddtionalPower );
    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,150), MAKEVECTOR3(0,0,-1), range*0.7, range*1.2, range*1.3 ), 1, 1, false  );      
    Attack3:AddPushCondition( 500, 2500, -5000 );
	Attack3:SetCameraShakeEnable( true, true, 0 );
    Attack3:SetCameraShakeSetFactor1( 200, 50, 50 );				
	--( ����ð�, ȸ���ð�, Ȯ�� );
    Attack3:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );	
	--( ���ν��ǵ�, ���ν��ǵ�, �ּҰŸ�, �ִ�Ÿ� );
	Attack3:SetCameraShakeWhenSuccess( true );
	Attack3:SetCritical( 1, 30 );
	-- SetCritical (����, Ȯ��);
	Attack3:SetPlaySound( false );
    AddAttack( ATTACKS, Attack3 );
	
end

-------------------------------------------------------------------------------
--[[
	�⺻ StandardKatana_A_SwordStrong ����
	InitLua����
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal 
	
	�� ����
]]--
-------------------------------------------------------------------------------
function StandardKatana_A_SwordStrong(  OneShotTime, Power, Accuracy, AdditionalPower )
		
	STATE:SetMoveBoxMultiplier( 1.5 );			
	--���� �ڽ� �̵���(1.0�� ��������)
	STATE:SetStealthCancel( true );	
	--STATE:SetHitStop( 300, 450 );	
	
	STATE:InitLua( 500, 700, 40, true );
	STATE:ResetMoveBoxAtSubStateChange( true ); 
	-- ���°� �ٲ� �� ����ڽ���ġ�� �ʱ�ȭ�Ѵ�.
	
	local range = WEAPON:GetRange();
    
	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_SWORD_ATTACK4, 100, (Power*0.125)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,150), MAKEVECTOR3(0,0,-1), range*0.8, range*0.3, range*1.0 ), 1, 1, false  );        
	Attack1:AddPushCondition( 100, 2000, -5000 );
	Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 50 );				
	--( ����ð�, ȸ���ð�, Ȯ�� );
    Attack1:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );	
	--( ���ν��ǵ�, ���ν��ǵ�, �ּҰŸ�, �ִ�Ÿ� );
	Attack1:SetCameraShakeWhenSuccess( true );
    AddAttack( ATTACKS, Attack1 );
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_SWORD_ATTACK4, 400, (Power*1.75)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,200,-100), MAKEVECTOR3(0,0,-1), range*0.8, range*1.0, range*1.4 ), 1, 1, false  );        
	Attack2:AddBlowCondition( 3000, 2000 );
	Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 200, 50, 50 );				
	--( ����ð�, ȸ���ð�, Ȯ�� );
    Attack2:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );	
	--( ���ν��ǵ�, ���ν��ǵ�, �ּҰŸ�, �ִ�Ÿ� );
	Attack2:SetCameraShakeWhenSuccess( true );
	Attack2:SetCritical( 1.4, 30 );
	Attack2:SetPlaySound( false );
    AddAttack( ATTACKS, Attack2 );
    
end

-------------------------------------------------------------------------------
--[[
	�⺻ StandardKatana_A_SwordAttack2Charge ����
	InitLua����
	u32 uiMinimumSceneUpdateTime		::	���� ���� update�ϴ� �ð�(frame) �ַ� 40�� �����ϰ� ����
	u32 uiLowerPartBeginTime			::	��ü �ִϸ��̼� �ð�( ����ü�� �ϳ���� �����ص� �ǹ̾��� )
	u32 uiAttackDelay					::	������ ������ �����Ͻ� ������ �����̸� �ִ� �κ�
	bool bOnlyVStateNormal				::	���� ���°� �����ÿ��� ��밡�������� ���θ� ������ ( true = �����ÿ� ������ �����ϰų� ���尡 ���� , false = ������ ��� �Ұ� )
	bool bEnableInputJump				::	���� ���¿��� ������ ���������� ���� ����( true = ���� ����, false = ���� �Ұ��� )
	u32 uiWaitInput						::	���� ���ο��� ����ϴ� Ư����( ���� !! �����Ǿ��� ���� �����ϸ� �ʵ˴ϴ�. )
	
	InitLuaNoInputSecond����
	u32 uiWaitTime						::	���� ���¿����� max charge time
	u32 uiNormalTime					::	���� ������ �ֹ̳��̼� �÷��� �ð�
	u32 uiDelayTime						::	NormalTime�� ������ �������� ������ ���� �ð�
	
	InitLuaInputSecond����
	u32 uiWaitTime						::	���� ���¿����� max charge time
	u32 uiNormalTime					::	���� ������ �ֹ̳��̼� �÷��� �ð�
	u32 uiDelayTime						::	NormalTime�� ������ �������� ������ ���� �ð�
	string& strFirstBone				::	����Ʈ�� ��ġ(bone)
	string& strSecondBone				::	����Ʈ�� ��ġ(bone)
	
	Ư���� ��ġ
]]--
-------------------------------------------------------------------------------
function StandardKatana_A_SwordAttack2Charge(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveSpeedRate( 0.0 );	
	STATE:SetStealthCancel( true );
	--STATE:SetHitStop( 150, 300 ) ;
	STATE:SetMoveBoxMultiplier( 2.0 );	
	STATE:SetPersistDecrementMaxSp( 25 );
	--sp�� �� �� �ִ� �ִ뷮
	STATE:SetSpendSp( 25 );
	--�ʴ� �Һ�Ǵ� sp��
	
	--[[ ���� ���·� ���� �ִ� �ּ� sp ���� ]]--
	STATE:SetChargeTimer( true );
	
	STATE:SetStandingWait( true ); --�����¿��� �������� ����
	
	STATE:InitLua( 40, 0, 1000, false, false, 3 );
	STATE:InitLuaInputSecond( 1000, 8000, 0, "Bip01 L Hand", "" );
	
end


-------------------------------------------------------------------------------
--[[
	�⺻ StandardKatana_A_SwordAttack2Dash ����
	InitLua����
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal 
	
	���� ����
]]--
-------------------------------------------------------------------------------
function StandardKatana_A_SwordAttack2Dash(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:SetMoveBoxMultiplier( 0.85 );
	--���� ��ġ 1.3 �ü� ���ݺ��� �Ϻη� �� �� �̵��ϰ� �ϱ� ���� ������
	--���� ��ġ 1.5����(���ݽð��� 1350���� 1050���� ���ӿ� ���� �̵� �Ÿ� �ø��� ���� ����	
	STATE:SetStealthCancel( true );	
	STATE:SetMoveStopWhenDamage( false );
	STATE:SetCheckChargeAttack( true );
	STATE:SetSettingChargeTime( true );
	STATE:ResetMoveBoxAtSubStateChange( true );
	STATE:SetIncreaseDelayChargeTime( false );

	STATE:SetMaxIncreaseDelayTime( 0 );
	STATE:SetSpRecoveryChargeAttack( false );
	STATE:SetEnableMouseSensitivityRotate( true );
	--�����߰� �ĵ� �� ���콺 ȸ�� ���� ����
	STATE:SetNormalMouseSensitivityRotate( 0.25 );
	--���� �� ���콺 ȸ�� �ӵ�
	--STATE:SetDelayMouseSensitivityRotate( 1.0 );
	--�ĵ� �� ���콺 ȸ�� �ӵ� (���Է� �� ����Ʈ ��ġ 1.0���� ����)
		
	STATE:SetFpsCameraInfoNewCam( true, false );
	-- STATE:SetFpsCameraInfoNewCamHori( 0.25, 0.05, 2.0 );
	-- STATE:SetFpsCameraInfoNewCamVert( 0.95, 0.98, 0.5 );
	STATE:SetFpsCameraInfoNewCamHori( 0.4, 0.05, 2.0 );
	--STATE:SetFpsCameraInfoNewCamHori( 0.95, 0.98, 0.5 );
	STATE:SetFpsCameraInfoNewCamVert( 0.95, 0.98, 0.5 );
	
	-- SetFpsCameraInfoNewCam      ( bool	isNewCam, bool isNewCamLinkHeight );
	-- SetFpsCameraInfoNewCamHori  ( float SpringConstHori,float DampConstHori, float SpringLenHori );
	-- SetFpsCameraInfoNewCamVert  ( float SpringConstVert, float DampConstVert, float SpringLenVert );
	
	STATE:InitLua( "", "", 550, 1100, 40, false , 1000 );
	--������ ��ġ�� ���� �Է� �ð� ����
	--���� Ÿ�� ( "", "", 1350, 1000, 40, false , 2000 );
	--STATE:SetDrop( 100, MAKEVECTOR3( 0, -1000, 0 ) );
	--STATE:SetSpendSp( 30 );
	
	--�����̵��� �ٸ� Actor�� �浹ó�� �����ʴ´�() �����ϰ� ����Ѵ� )
	STATE:SetIgnoreActorCollision( true );
	
	local range = WEAPON:GetRange();

	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_ATTACK2_CHARGE, 33, (Power*1.6)+AdditionalPower, AddtionalPower ); --33
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,100,-100), MAKEVECTOR3(0,0,-1), range*0.9, range*0.4, range*1.5 ), 1, 1, false  ); 
    Attack1:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack1:SetCameraShakeSetFactor2( 0.0, 75.0, 2000.0, 3000.0 );
	Attack1:SetCameraShakeWhenSuccess( true );  
	Attack1:SetCameraShakeReiteration( false ); 
	--ī�޶� ����ŷ �ߺ��� �ȵǵ��� �ϴ� ���. �� �Լ��� false�� �Է� �� �ߵ�. ���Է½� ������� ����.
	Attack1:AddPushCondition( 150, 2500, -5000 );
	Attack1:AddBlowCondition( -1500, 3500 );
	--Attack1:AddBlowCondition( -1000, 3500 );
	Attack1:SetFullCharge( false );	
    AddAttack( ATTACKS, Attack1 );	
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_ATTACK2_CHARGE, 255, (Power*1.6)+AdditionalPower, AddtionalPower ); --230
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,100,-360), MAKEVECTOR3(0,0,-1), range*0.9, range*0.4, range*1.5 ), 1, 1, false  ); 
    Attack2:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack2:SetCameraShakeSetFactor2( 0.0, 75.0, 2000.0, 3000.0 );
	Attack2:SetCameraShakeWhenSuccess( true );  
	Attack2:SetCameraShakeReiteration( false );  
	Attack2:AddPushCondition( 150, 2500, -5000 );
	Attack2:AddBlowCondition( -1500, 3500 );-- -1500,2500
	--Attack2:AddBlowCondition( -1000, 3500 );	
	Attack2:SetFullCharge( false );	
	Attack2:SetPlaySound( false );
    AddAttack( ATTACKS, Attack2 );	
		
	--[[Attack3 = CreateCAttack();
    Attack3:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_ATTACK2_CHARGE, 45, (Power*0.0)+AdditionalPower, AddtionalPower );
    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,100,-100), MAKEVECTOR3(0,0,-1), range*0.15, range*0.4, range*1.5 ), 1, 1, false  ); 
    Attack3:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack3:SetCameraShakeEnable( true, true, 0 );
    Attack3:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack3:SetCameraShakeSetFactor2( 0.0, 75.0, 2000.0, 3000.0 );
	Attack3:SetCameraShakeWhenSuccess( true );  
	Attack3:SetCameraShakeReiteration( false );  
	Attack3:AddBlowCondition( -1000, 3500 );
	--������ Attack1:AddBlowCondition( -2500, 4000 );
	Attack3:SetFullCharge( false );	
	Attack3:SetPlaySound( false );
	Attack3:SetCritical( 1, 100 );
    AddAttack( ATTACKS, Attack3 );	
	
	Attack4 = CreateCAttack();
    Attack4:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_ATTACK2_CHARGE, 240, (Power*0.0)+AdditionalPower, AddtionalPower );
    Attack4:InitAttack2( MAKEBOX( MAKEVECTOR3(0,100,-360), MAKEVECTOR3(0,0,-1), range*0.15, range*0.4, range*1.5 ), 1, 1, false  ); 
    Attack4:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack4:SetCameraShakeEnable( true, true, 0 );
    Attack4:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack4:SetCameraShakeSetFactor2( 0.0, 75.0, 2000.0, 3000.0 );
	Attack4:SetCameraShakeWhenSuccess( true );  
	Attack4:SetCameraShakeReiteration( false );  
	Attack4:AddBlowCondition( -1000, 3500 );
	Attack4:SetFullCharge( false );	
	Attack4:SetPlaySound( false );
	Attack4:SetCritical( 1, 100 );
    AddAttack( ATTACKS, Attack4 );	
	
	Attack5 = CreateCAttack();
    Attack5:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_ATTACK2_CHARGE, 32, (Power*1.6)+AdditionalPower, AddtionalPower );
    Attack5:InitAttack2( MAKEBOX( MAKEVECTOR3(0,100,-100), MAKEVECTOR3(0,0,-1), range*0.9, range*0.4, range*1.5 ), 1, 1, false  );  
    Attack5:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack5:SetFullCharge( false );	
	--Attack5:SetCritical( 2, 10 );
	Attack5:SetPlaySound( false );
    AddAttack( ATTACKS, Attack5 );		

	Attack6 = CreateCAttack();
    Attack6:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_ATTACK2_CHARGE, 229, (Power*1.6)+AdditionalPower, AddtionalPower );
    Attack6:InitAttack2( MAKEBOX( MAKEVECTOR3(0,100,-360), MAKEVECTOR3(0,0,-1), range*0.9, range*0.4, range*1.5 ), 1, 1, false  ); 
    Attack6:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack6:SetFullCharge( false );	
	--Attack6:SetCritical( 2, 10 );
	Attack6:SetPlaySound( false );
    AddAttack( ATTACKS, Attack6 );	
	]]
	--attack1~6 : ������	
	--attack7~12 : Ǯ����

	Attack7 = CreateCAttack();
    Attack7:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_ATTACK2_FULL_CHARGE, 33, (Power*2.75)+AdditionalPower, AddtionalPower );
    Attack7:InitAttack2( MAKEBOX( MAKEVECTOR3(0,100,-100), MAKEVECTOR3(0,0,-1), range*0.9, range*0.4, range*1.6 ), 1, 1, false  ); 
    Attack7:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack7:SetCameraShakeEnable( true, true, 0 );
    Attack7:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack7:SetCameraShakeSetFactor2( 0.0, 75.0, 2000.0, 3000.0 );
	Attack7:SetCameraShakeWhenSuccess( true ); 
	Attack7:SetCameraShakeReiteration( false );  
	Attack7:AddPushCondition( 150, 2500, -5000 );
	Attack7:AddBlowCondition( -1500, 3500 );
	-- Attack7:AddBlowCondition( -1000, 3500 );
	Attack7:SetFullCharge( true );
    AddAttack( ATTACKS, Attack7 );	
	
	Attack8 = CreateCAttack();
    Attack8:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_ATTACK2_FULL_CHARGE, 270, (Power*2.75)+AdditionalPower, AddtionalPower ); -- 230
    Attack8:InitAttack2( MAKEBOX( MAKEVECTOR3(0,100,-360), MAKEVECTOR3(0,0,-1), range*0.9, range*0.4, range*1.9 ), 1, 1, false  ); 
    Attack8:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack8:SetCameraShakeEnable( true, true, 0 );
    Attack8:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack8:SetCameraShakeSetFactor2( 0.0, 75.0, 2000.0, 3000.0 );
	Attack8:SetCameraShakeWhenSuccess( true ); 
	Attack8:SetCameraShakeReiteration( false );  
	Attack8:AddPushCondition( 150, 2500, -5000 );
	Attack8:AddBlowCondition( -1500, 3500 );
	-- Attack8:AddBlowCondition( -1000, 3500 );
	Attack8:SetFullCharge( true );
	Attack8:SetPlaySound( false );	
    AddAttack( ATTACKS, Attack8 );	
	
	--[[Attack9 = CreateCAttack();
    Attack9:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_ATTACK2_FULL_CHARGE, 45, (Power*0.0)+AdditionalPower, AddtionalPower );
    Attack9:InitAttack2( MAKEBOX( MAKEVECTOR3(0,100,-100), MAKEVECTOR3(0,0,-1), range*0.9, range*0.4, range*1.9 ), 1, 1, false  ); 
    Attack9:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack9:SetCameraShakeEnable( true, true, 0 );
    Attack9:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack9:SetCameraShakeSetFactor2( 0.0, 75.0, 2000.0, 3000.0 );
	Attack9:SetCameraShakeWhenSuccess( true ); 
	Attack9:SetCameraShakeReiteration( false );  
	Attack9:AddBlowCondition( -1000, 3500 );
	Attack9:SetFullCharge( true );	
	Attack9:SetPlaySound( false );
	Attack9:SetCritical( 1, 100 );
    AddAttack( ATTACKS, Attack9 );	
	
	Attack10 = CreateCAttack();
    Attack10:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_ATTACK2_FULL_CHARGE, 240, (Power*0.0)+AdditionalPower, AddtionalPower );
    Attack10:InitAttack2( MAKEBOX( MAKEVECTOR3(0,100,-360), MAKEVECTOR3(0,0,-1), range*0.9, range*0.4, range*1.9 ), 1, 1, false  ); 
    Attack10:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack10:SetCameraShakeEnable( true, true, 0 );
    Attack10:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack10:SetCameraShakeSetFactor2( 0.0, 75.0, 2000.0, 3000.0 );
	Attack10:SetCameraShakeWhenSuccess( true ); 
	Attack10:SetCameraShakeReiteration( false );  
	Attack10:AddBlowCondition( -1000, 3500 );
	Attack10:SetFullCharge( true );	
	Attack10:SetPlaySound( false );
	Attack10:SetCritical( 1, 100 );
    AddAttack( ATTACKS, Attack10 );		
	
	Attack11 = CreateCAttack();
    Attack11:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_ATTACK2_CHARGE, 32, (Power*1.8)+AdditionalPower, AddtionalPower );
    Attack11:InitAttack2( MAKEBOX( MAKEVECTOR3(0,100,-100), MAKEVECTOR3(0,0,-1), range*0.9, range*0.4, range*1.5 ), 1, 1, false  );  
    Attack11:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack11:SetFullCharge( true );	
	--Attack11:SetCritical( 2, 10 );
	Attack11:SetPlaySound( false );
    AddAttack( ATTACKS, Attack11 );		

	Attack12 = CreateCAttack();
    Attack12:InitAttack1( WEAPONTYPE_KATANA_A_SWORD, ATTACKATTRIB_KATANA_A_ATTACK2_CHARGE, 229, (Power*1.8)+AdditionalPower, AddtionalPower );
    Attack12:InitAttack2( MAKEBOX( MAKEVECTOR3(0,100,-360), MAKEVECTOR3(0,0,-1), range*0.9, range*0.4, range*1.5 ), 1, 1, false  ); 
    Attack12:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack12:SetFullCharge( true );	
	--Attack12:SetCritical( 2, 10 );
	Attack12:SetPlaySound( false );
    AddAttack( ATTACKS, Attack12 );	
	]]
	
end

-------------------------------------------------------------------------------
--[[
	�⺻ StandardKatana_A_SwordAttack2BackDash ����
	InitLua����
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal 
	
	������뽬
]]--
-------------------------------------------------------------------------------
function StandardKatana_A_SwordAttack2BackDash(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 1.2 );
	STATE:SetStealthCancel( true );	
	STATE:SetMoveStopWhenDamage( false );
	STATE:SetSpendSp( 25 );
	STATE:SetStateMinSp( 10 );
	STATE:InitLua( "", "", 400, 0, 0, true , 0 );
	
end

