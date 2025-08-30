require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------
--[[
	기본 리볼버 셋팅
	InitLua인자
	float fHeightOffset
	float fSideOffset0
	float fSideOffset1
	float fFrontOffset
	u32 uiAnimPlayTime
	u32 uiCoolTime	
]]--
-------------------------------------------------------------------------------
function StandardRevolver(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetFrontOffset( 275 );
	STATE:InitLua( 260.0, 40.0, -40.0, 250.0, 800, 650 );
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_REVOLVER, ATTACKATTRIB_REVOLVER, 150, Power*0.25+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0.02,-1), RayDistanceLimit ), 1, 1, false  );
    -- 거리별 데미지 - Ray를 이용한 타입에서 사용할 거리별 데미지
    -- 0:일반, 1:그레네이드용, 2: 폭발형거리별데미지, 3:총기류 거리별 데미지( Ray, ThickRay )
	Attack1:SetDamageApplyType( 3 );    
    -- 기준거리를 셋팅
    Attack1:SetDistanceDamageLength( 3000 );
	Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:SetCritical( 2.5, 0 );
    Attack1:SetConsumeAmmo( 1 );
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:AddPushCondition( 100, 1700.0, -5000.0 );    --(200,2000,-5000)
    -- CPushCondition( uiEffectLimitTime, fSpeedStart, fAccel )
                                -- 넉백 시간, 넉백 속도,  넉백 가속도
	Attack1:SetCameraShakeSetFactor1( 50, 25, 20 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1500.0 );
    Attack1:SetCameraShakeRandomDir( true );
    AddAttack( ATTACKS, Attack1 );   
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_REVOLVER, ATTACKATTRIB_REVOLVER, 150, Power*0.25+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,-0.5*Accuracy,-1), RayDistanceLimit ), 1, 1, false  );
    -- 거리별 데미지 - Ray를 이용한 타입에서 사용할 거리별 데미지
    -- 0:일반, 1:그레네이드용, 2: 폭발형거리별데미지, 3:총기류 거리별 데미지( Ray, ThickRay )
	Attack2:SetDamageApplyType( 3 );    
    -- 기준거리를 셋팅
    Attack2:SetDistanceDamageLength( 3000 );
	Attack2:SetCollisionRangeAdjust( false, false );    
	Attack2:SetCritical( 2.5, 0 );
    Attack2:AddPushCondition( 100, 1700.0, -5000.0 );    --(200,2000,-5000)
    -- CPushCondition( uiEffectLimitTime, fSpeedStart, fAccel )
                                -- 넉백 시간, 넉백 속도,  넉백 가속도
    AddAttack( ATTACKS, Attack2 );   
    
    Attack3 = CreateCAttack();
    Attack3:InitAttack1( WEAPONTYPE_REVOLVER, ATTACKATTRIB_REVOLVER, 150, Power*0.25+AdditionalPower, AddtionalPower );
    Attack3:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0.5*Accuracy,0.5*Accuracy,-1), RayDistanceLimit ), 1, 1, false  );
    -- 거리별 데미지 - Ray를 이용한 타입에서 사용할 거리별 데미지
    -- 0:일반, 1:그레네이드용, 2: 폭발형거리별데미지, 3:총기류 거리별 데미지( Ray, ThickRay )
	Attack3:SetDamageApplyType( 3 );    
    -- 기준거리를 셋팅
    Attack3:SetDistanceDamageLength( 3000 );
	Attack3:SetCollisionRangeAdjust( false, false );    
	Attack3:SetCritical( 2.5, 0 );
    Attack3:AddPushCondition( 100, 1700.0, -5000.0 );    --(200,2000,-5000)
        -- CPushCondition( uiEffectLimitTime, fSpeedStart, fAccel )
                                -- 넉백 시간, 넉백 속도,  넉백 가속도
    AddAttack( ATTACKS, Attack3 );   
    
    Attack4 = CreateCAttack();
    Attack4:InitAttack1( WEAPONTYPE_REVOLVER, ATTACKATTRIB_REVOLVER, 150, Power*0.25+AdditionalPower, AddtionalPower );
    Attack4:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(-0.5*Accuracy,0.5*Accuracy,-1), RayDistanceLimit ), 1, 1, false  );
    Attack4:SetCollisionRangeAdjust( false, false );   
	Attack4:SetCritical( 2.5, 0 );	
    Attack4:AddPushCondition( 100, 1700.0, -5000.0 );    --(200,2000,-5000)
        -- CPushCondition( uiEffectLimitTime, fSpeedStart, fAccel )
                                -- 넉백 시간, 넉백 속도,  넉백 가속도
    AddAttack( ATTACKS, Attack4 );

end