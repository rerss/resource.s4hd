require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------
--[[
	기본 MG2 셋팅
	InitLua인자
	u32 uiFireCycleTime		=
	u32 uiDelayTime			=
	u32 uiMinimumDelayTime	=
	float fHeightOffset		=
]]--
-------------------------------------------------------------------------------
function StandardMg2(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetFrontOffset( 275 );
	STATE:InitLua( 900, 250, 200, 260.0 );
	
	local arDirs = {};
	arDirs[1] = MAKECVECTOR3( 0.0, 0.0*Accuracy, -1.0 );
	arDirs[2] = MAKECVECTOR3( 0.0, 0.05*Accuracy, -1.0 );
	arDirs[3] = MAKECVECTOR3( 0.0, 0.15*Accuracy, -1.0 );
	arDirs[4] = MAKECVECTOR3( 0.0, 0.35*Accuracy, -1.0 );
	arDirs[5] = MAKECVECTOR3( 0.0, 0.65*Accuracy, -1.0 );
	
	local index = 1;

	    arDirs[ index ]:Normalize();
		
	    Attack = CreateCAttack();
	    Attack:InitAttack1( WEAPONTYPE_MG2, ATTACKATTRIB_MG2, 20, Power+AdditionalPower, AddtionalPower );
	    Attack:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3( arDirs[ index ]:GetX(), arDirs[ index ]:GetY() , arDirs[ index ]:GetZ() ), RayDistanceLimit ), 1, 1, false  );
	    Attack:SetCollisionRangeAdjust( false, false );
		Attack:SetCritical( 2.5, 0 );
	    Attack:SetConsumeAmmo( 1 );
	    Attack:SetCameraShakeEnable( true, true, 0 );
	    Attack:SetCameraShakeSetFactor1( 50, 25, 5 );
	    Attack:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
	    Attack:SetCameraShakeRandomDir( true );
	    AddAttack( ATTACKS, Attack );
	
	for index = 2, 5, 1 do
		
	    arDirs[ index ]:Normalize();
		
	    Attack = CreateCAttack();
	    Attack:InitAttack1( WEAPONTYPE_MG2, ATTACKATTRIB_MG2, 50 + ( (index-1)*OneShotTime ), Power+AdditionalPower, AddtionalPower );
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
