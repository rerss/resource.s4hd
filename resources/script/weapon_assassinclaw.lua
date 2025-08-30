require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------
--[[
	기본 ASSASSINCLAW 셋팅
	InitLua인자
	u32 uiMinimumSceneUpdateTime	=
	u32 uiLowerPartBeginTime		=
	bool bOnlyVStateNormal			=
	bool bEnableInputJump			=
]]--
-------------------------------------------------------------------------------
function StandardAssassinclaw(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	-- STATE:SetFrontOffset( 200 );
	STATE:SetMoveSpeedRate( 1.0 );
	STATE:SetStealthCancel( true );	
	STATE:InitLua( 40, 0, false, true );
	
	local range = WEAPON:GetRange();
	
	Attack = CreateCAttack();
    Attack:InitAttack1( WEAPONTYPE_ASSASSIN_CLAW, ATTACKATTRIB_ASSASSIN_CLAW, 400, (Power*4.0)+AdditionalPower, AddtionalPower );
    Attack:InitAttack2( MAKEBOX( MAKEVECTOR3(0.0, 250.0, -100.0), MAKEVECTOR3( 0.0, 0.0, -1.0), 100.0, 100.0, range ), 1, 1, false  );    
    Attack:SetCameraShakeEnable( true, true, 0 );
    Attack:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack:SetCameraShakeRandomDir( true );
    AddAttack( ATTACKS, Attack );
	
	local index = 1;
	for index = 1, 8, 1 do
	
		Attack = CreateCAttack();
	    Attack:InitAttack1( WEAPONTYPE_ASSASSIN_CLAW, ATTACKATTRIB_ASSASSIN_CLAW, 500+( (index-1)*125 ), Power+AdditionalPower, AddtionalPower );
	    Attack:InitAttack2( MAKEBOX( MAKEVECTOR3(0.0, 250.0, -100.0), MAKEVECTOR3( 0.0, 0.0, -1.0), 100.0, 100.0, range ), 1, 1, false  );    
	    Attack:SetCameraShakeEnable( true, true, 0 );
	    Attack:SetCameraShakeSetFactor1( 50, 25, 5 );
	    Attack:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
	    Attack:SetCameraShakeRandomDir( true );
	    AddAttack( ATTACKS, Attack );
	
	end

end