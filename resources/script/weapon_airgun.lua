require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------
--[[
	±âº» Airgun ¼ÂÆÃ
	InitLuaÀÎÀÚ
	u32 uBeginTime
	u32 uShootTime
	u32 uMaxChargeTime
	SVector3 vShotOrigin
	float fShotOriginFront
	bool bSettingAimedPoint
	u32 uiCoolTime
	SVector3 vOffset
]]--
-------------------------------------------------------------------------------
function StandardAirgun(  OneShotTime, Power, Accuracy, AdditionalPower )
	
    STATE:SetFrontOffset( 275 );
    STATE:InitLua( 0, 1000, 3000, MAKEVECTOR3( 50, 280, 0 ), 250, false, 1000, MAKEVECTOR3( -100.0, -100.0, -160.0 ) );
	-- Á¤Áø¼ö ¿¡¾î°Ç ÈÄµô Äµ½½ ½ºÀ§Ä¡ (false:ÈÄµô Äµ½½ Çã¿ë¾ÈÇÔ true:ÈÄµô Äµ½½ ±¦ÂúÀ½)
	STATE:SetSwitchShootAfterDelay(false)
		local range = WEAPON:GetRange();

    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_AIR_GUN, ATTACKATTRIB_AIRGUN, 150, (Power*1.0)+AdditionalPower, AddtionalPower );    
    Attack1:InitAttack2( MAKECONE( MAKEVECTOR3(0.0, 0.0, 0.0), MAKEVECTOR3( 0.0, 0.0, -1.0 ), 35, 300, 1000 ), 1, 1, false  );    
    Attack1:SetCollisionRangeAdjust( false, false );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true );
	Attack1:AddBlowCondition( 2500, 2500 );
    AddAttack( ATTACKS, Attack1 );	

	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_AIR_GUN, ATTACKATTRIB_AIRGUN, 150, (Power*1.0)+AdditionalPower, AddtionalPower );    
    Attack1:InitAttack2( MAKECONE( MAKEVECTOR3(0.0, 0.0, 0.0), MAKEVECTOR3( 0.0, 0.0, -1.0 ), 29, 300, 1300 ), 1, 1, false  );    
    Attack1:SetCollisionRangeAdjust( false, false );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true );
	Attack1:AddBlowCondition( 3000, 3000 );
    AddAttack( ATTACKS, Attack1 );		

end

-- À¯´ÏÅ© ¿¡¾î°Ç 
-- Å¸ÀÔ Ãß°¡ º¯°æ, ATTACKATTRIB Ãß°¡
function StandardAirgunUnique(  OneShotTime, Power, Accuracy, AdditionalPower )
	
    STATE:SetFrontOffset( 275 );
    STATE:InitLua( 0, 1000, 3000, MAKEVECTOR3( 50, 280, 0 ), 250, false, 1000, MAKEVECTOR3( -100.0, -100.0, -160.0 ) );
	-- Á¤Áø¼ö ¿¡¾î°Ç ÈÄµô Äµ½½ ½ºÀ§Ä¡ (false:ÈÄµô Äµ½½ Çã¿ë¾ÈÇÔ true:ÈÄµô Äµ½½ ±¦ÂúÀ½)
	STATE:SetSwitchShootAfterDelay(false)
		local range = WEAPON:GetRange();

    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_AIR_GUN, ATTACKATTRIB_AIRGUN_UNIQUE, 150, (Power*1.0)+AdditionalPower, AddtionalPower );    
    Attack1:InitAttack2( MAKECONE( MAKEVECTOR3(0.0, 0.0, 0.0), MAKEVECTOR3( 0.0, 0.0, -1.0 ), 35, 300, 1000 ), 1, 1, false  );    
    Attack1:SetCollisionRangeAdjust( false, false );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true );
	Attack1:AddBlowCondition( 2500, 2500 );
    AddAttack( ATTACKS, Attack1 );	

	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_AIR_GUN, ATTACKATTRIB_AIRGUN_UNIQUE, 150, (Power*1.0)+AdditionalPower, AddtionalPower );    
    Attack1:InitAttack2( MAKECONE( MAKEVECTOR3(0.0, 0.0, 0.0), MAKEVECTOR3( 0.0, 0.0, -1.0 ), 29, 300, 1300 ), 1, 1, false  );    
    Attack1:SetCollisionRangeAdjust( false, false );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true );
	Attack1:AddBlowCondition( 3000, 3000 );
    AddAttack( ATTACKS, Attack1 );		

end