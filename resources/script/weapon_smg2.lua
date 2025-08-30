require "Resources/Script/ActorStates_Constants.lua"
-- 세미 라이플, 호밍 라이플, 스파크 라이플, 어썰트 라이플
-------------------------------------------------------------------------------
--[[
	기본 SMG2 셋팅
	InitLua인자
	-- fHeightOffset,				// 발사되는 위치의 오프셋
	-- fSideOffset0,				// 발사되는 위치의 오프셋
	-- fSideOffset1,				// 발사되는 위치의 오프셋
	-- fFrontOffset,				// 발사되는 위치의 오프셋
	-- uiMisFiringChangeStateTime,	// 불발상태일때 이시간이 지나면 상태가 바뀜( 리로드등 )
	-- uiAnimPlayTime,				// 애니메이션의 플레이 시간을 강제로 정한다. ( 연사속도 무시 )
	-- uiShotCount,					// 발사되는 총알의 수
	-- szMisFiringSoundFile			// 불발일때 출력할 사운드파일
]]--
-------------------------------------------------------------------------------
-- 세미라이플
function StandardSmg2(  OneShotTime, Power, Accuracy, AdditionalPower ) 
	
	STATE:InitLua( 260,40,-40,250, 500, 666, 4, "Resources/Sound/smg_dry_fire.ogg" );
	STATE:SetAutoReload( true ); 
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SMG2, ATTACKATTRIB_SMG2, 50, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,Accuracy,-1), RayDistanceLimit ), 1, 1, false  );
    Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:SetCritical( 2.5, 0 );
    Attack1:SetConsumeAmmo( 1 );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SMG2, ATTACKATTRIB_SMG2, 50 + (OneShotTime*1), Power+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(Accuracy*0.5,Accuracy* -0.5,-1), RayDistanceLimit ), 1, 1, false  );    
    Attack2:SetCollisionRangeAdjust( false, false );
	Attack2:SetCritical( 2.5, 0 );
    Attack2:SetConsumeAmmo( 1 );    
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack2:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack2:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack2 );
    
    Attack3 = CreateCAttack();
    Attack3:InitAttack1( WEAPONTYPE_SMG2, ATTACKATTRIB_SMG2, 50 + (OneShotTime*2), Power+AdditionalPower, AddtionalPower );
    Attack3:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(Accuracy* -0.5,Accuracy* -0.5,-1), RayDistanceLimit ), 1, 1, false  );
    Attack3:SetCollisionRangeAdjust( false, false );
	Attack3:SetCritical( 2.5, 0 );
    Attack3:SetConsumeAmmo( 1 );    
    Attack3:SetCameraShakeEnable( true, true, 0 );
    Attack3:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack3:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack3:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack3 );
    
    Attack4 = CreateCAttack();
    Attack4:InitAttack1( WEAPONTYPE_SMG2, ATTACKATTRIB_SMG2, 50 + (OneShotTime*3), Power+AdditionalPower, AddtionalPower );
    Attack4:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );
    Attack4:SetCollisionRangeAdjust( false, false );
	Attack4:SetCritical( 2.5, 0 );
    Attack4:SetConsumeAmmo( 1 );    
    Attack4:SetCameraShakeEnable( true, true, 0 );
    Attack4:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack4:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack4:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack4 );   
	
end


-------------------------------------------------------------------------------
--[[
	기본 SMG2 셋팅
	InitLua인자
	-- fHeightOffset,				// 발사되는 위치의 오프셋
	-- fSideOffset0,				// 발사되는 위치의 오프셋
	-- fSideOffset1,				// 발사되는 위치의 오프셋
	-- fFrontOffset,				// 발사되는 위치의 오프셋
	-- uiMisFiringChangeStateTime,	// 불발상태일때 이시간이 지나면 상태가 바뀜( 리로드등 )
	-- uiAnimPlayTime,				// 애니메이션의 플레이 시간을 강제로 정한다. ( 연사속도 무시 )
	-- uiShotCount,					// 발사되는 총알의 수
	-- szMisFiringSoundFile			// 불발일때 출력할 사운드파일
]]--
-------------------------------------------------------------------------------
-- 호밍라이플
function StandardSmg2Homing(  OneShotTime, Power, Accuracy, AdditionalPower ) 
	
    STATE:InitLua( 260,40,-40,250, 500, 666, 1, "Resources/Sound/smg_dry_fire.ogg" );
    
    -- 집탄변화타입( 0:집탄변화없음, 1:설정한 방향대로 변화됨(Inner만 사용), 2:랜덤하게 변화됨(Inner, Outer사용) )
    -- 1로 설정할 때는 SetInnerAccuracyVary 함수의 세번째 파라미터인 최소값을 1보다 크게 설정하여야 한다.
    ACTORSTATE:SetGunSpreadType( 2 );
    
    --  변화값, 회복값, 최소값, 최대값
    -- SetGunSpreadType 함수를 1로 설정할 때는 SetInnerAccuracyVary 함수의 세번째 파라미터인 최소값을 1보다 크게 설정하여야 한다.
    ACTORSTATE:SetInnerAccuracyVary( 30, 2,  0, 2 );
    
    --  변화값, 회복값, 최소값, 최대값
    ACTORSTATE:SetOuterAccuracyVary( 35, 2,  0, 4 );
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SMG2_HOMING, ATTACKATTRIB_SMG2_HOMING, 50, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKETHICKRAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), 70, RayDistanceLimit ), 1, 1, false  );
		

    -- 거리별 데미지 - Ray를 이용한 타입에서 사용할 거리별 데미지
    -- 0:일반, 1:그레네이드용, 2: 폭발형거리별데미지, 3:총기류 거리별 데미지( Ray, ThickRay )
    Attack1:SetDamageApplyType( 3 );
    
    -- 기준거리를 셋팅
    Attack1:SetDistanceDamageLength( 8000 );
    --
	
	WEAPON:ApplyRandomDamage( Attack1 );	
	Attack1:SetCheckBodyPartsByThickray( false );
	
	
    Attack1:SetCollisionRangeAdjust( false, false );
    Attack1:SetConsumeAmmo( 1 );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true ); 
    AddAttack( ATTACKS, Attack1 );

    
end












-------------------------------------------------------------------------------
--[[
	기본 SMG2 셋팅
	InitLua인자
	-- fHeightOffset,				// 발사되는 위치의 오프셋
	-- fSideOffset0,				// 발사되는 위치의 오프셋
	-- fSideOffset1,				// 발사되는 위치의 오프셋
	-- fFrontOffset,				// 발사되는 위치의 오프셋
	-- uiMisFiringChangeStateTime,	// 불발상태일때 이시간이 지나면 상태가 바뀜( 리로드등 )
	-- uiAnimPlayTime,				// 애니메이션의 플레이 시간을 강제로 정한다. ( 연사속도 무시 )
	-- uiShotCount,					// 발사되는 총알의 수
	-- szMisFiringSoundFile			// 불발일때 출력할 사운드파일
]]--
-------------------------------------------------------------------------------
-- 스파크 라이플
function StandardSparkRifle(  OneShotTime, Power, Accuracy, AdditionalPower ) 
	
    STATE:InitLua( 260,40,-40,250, 500, 666, 1, "Resources/Sound/smg_dry_fire.ogg" );
    
    -- 집탄변화타입( 0:집탄변화없음, 1:설정한 방향대로 변화됨(Inner만 사용), 2:랜덤하게 변화됨(Inner, Outer사용) )
    -- 1로 설정할 때는 SetInnerAccuracyVary 함수의 세번째 파라미터인 최소값을 1보다 크게 설정하여야 한다.
    ACTORSTATE:SetGunSpreadType( 2 );
    
    --  변화값, 회복값, 최소값, 최대값
    -- SetGunSpreadType 함수를 1로 설정할 때는 SetInnerAccuracyVary 함수의 세번째 파라미터인 최소값을 1보다 크게 설정하여야 한다.
    ACTORSTATE:SetInnerAccuracyVary( 40, 2,  0, 2 );
    
    --  변화값, 회복값, 최소값, 최대값
    ACTORSTATE:SetOuterAccuracyVary( 45, 2,  0, 4 );
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SPARK_RIFLE, ATTACKATTRIB_SPARK_RIFLE, 50, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKETHICKRAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), 10, RayDistanceLimit ), 1, 1, false  );
		
	-- SetCritical (배율, 확률);
	Attack1:SetCritical( 3, 20 );
	Attack1:SetCheckBodyPartsByThickray( false );
	
	-- 거리별 데미지 - Ray를 이용한 타입에서 사용할 거리별 데미지
    -- 0:일반, 1:그레네이드용, 2: 폭발형거리별데미지, 3:총기류 거리별 데미지( Ray, ThickRay )
    Attack1:SetDamageApplyType( 3 );
    
    -- 기준거리를 셋팅
    Attack1:SetDistanceDamageLength( 8000 );
    --
	
	
    Attack1:SetCollisionRangeAdjust( false, false );
    Attack1:SetConsumeAmmo( 1 );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true ); 	
    AddAttack( ATTACKS, Attack1 );
    
end








-------------------------------------------------------------------------------
--[[
	기본 SMG2(어설트라이플) 셋팅
	InitLua인자
	-- fHeightOffset,				// 발사되는 위치의 오프셋
	-- fSideOffset0,				// 발사되는 위치의 오프셋
	-- fSideOffset1,				// 발사되는 위치의 오프셋
	-- fFrontOffset,				// 발사되는 위치의 오프셋
	-- uiMisFiringChangeStateTime,	// 불발상태일때 이시간이 지나면 상태가 바뀜( 리로드등 )
	-- uiAnimPlayTime,				// 애니메이션의 플레이 시간을 강제로 정한다. ( 연사속도 무시 )
	-- uiShotCount,					// 발사되는 총알의 수
	-- szMisFiringSoundFile			// 불발일때 출력할 사운드파일
]]--
-------------------------------------------------------------------------------
-- 어설트 라이플
function StandardClassicRifle(  OneShotTime, Power, Accuracy, AdditionalPower ) 
	
    STATE:InitLua( 260,40,-40,250, 500, 666, 1, "Resources/Sound/smg_dry_fire.ogg" );
    
    -- 집탄변화타입( 0:집탄변화없음, 1:설정한 방향대로 변화됨(Inner만 사용), 2:랜덤하게 변화됨(Inner, Outer사용) )
    -- 1로 설정할 때는 SetInnerAccuracyVary 함수의 세번째 파라미터인 최소값을 1보다 크게 설정하여야 한다.
    ACTORSTATE:SetGunSpreadType( 2 );
    
    --  변화값, 회복값, 최소값, 최대값
    -- SetGunSpreadType 함수를 1로 설정할 때는 SetInnerAccuracyVary 함수의 세번째 파라미터인 최소값을 1보다 크게 설정하여야 한다.
    ACTORSTATE:SetInnerAccuracyVary( 5, 1,  0.3, 1 );  -- 원래 값 ( 35, 2,  0, 2 )  , ( 15, 1,  0.3, 1 ) , (5, 1,  0.3, 1 )
    
    --  변화값, 회복값, 최소값, 최대값
    ACTORSTATE:SetOuterAccuracyVary( 15, 1,  0.5, 3 ); -- 원래 값 ( 40, 2,  0, 4 ) , ( 30, 2,  0.5, 4 ) ,( 30, 2,  1, 5 )
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_CLASSICRIFLE, ATTACKATTRIB_CLASSICRIFLE, 0.5, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );  --MAKETHICKRAY(호밍)	,MAKERAY(호밍아님)

    -- 거리별 데미지 - Ray를 이용한 타입에서 사용할 거리별 데미지
    -- 0:일반, 1:그레네이드용, 2: 폭발형거리별데미지, 3:총기류 거리별 데미지( Ray, ThickRay )
	Attack1:SetDamageApplyType( 3 );
    
	
    -- SetCritical (배율, 확률);
	Attack1:SetCritical( 1.25, 0 );
	Attack1:SetCheckBodyPartsByThickray( false );
	
	
	
    -- 기준거리를 셋팅
	Attack1:SetDistanceDamageLength( 8000 );
    --
	
	-- WEAPON:ApplyRandomDamage( Attack1 );	
	Attack1:SetCheckBodyPartsByThickray( false );
	
	
    Attack1:SetCollisionRangeAdjust( false, false );
    Attack1:SetConsumeAmmo( 1 );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true ); 
    AddAttack( ATTACKS, Attack1 );

    
end

-------------------------------------------------------------------------------
--[[
	코그휠 어썰트 라이플
	InitLua인자
	-- fHeightOffset,				// 발사되는 위치의 오프셋
	-- fSideOffset0,				// 발사되는 위치의 오프셋
	-- fSideOffset1,				// 발사되는 위치의 오프셋
	-- fFrontOffset,				// 발사되는 위치의 오프셋
	-- uiMisFiringChangeStateTime,	// 불발상태일때 이시간이 지나면 상태가 바뀜( 리로드등 )
	-- uiAnimPlayTime,				// 애니메이션의 플레이 시간을 강제로 정한다. ( 연사속도 무시 )
	-- uiShotCount,					// 발사되는 총알의 수
	-- szMisFiringSoundFile			// 불발일때 출력할 사운드파일
]]--
-------------------------------------------------------------------------------
function StandardCogWheelClassicRifle(  OneShotTime, Power, Accuracy, AdditionalPower )
	
    STATE:InitLua( 260,40,-40,250, 500, 666, 1, "Resources/Sound/smg_dry_fire.ogg" );
    
    -- 집탄변화타입( 0:집탄변화없음, 1:설정한 방향대로 변화됨(Inner만 사용), 2:랜덤하게 변화됨(Inner, Outer사용) )
    -- 1로 설정할 때는 SetInnerAccuracyVary 함수의 세번째 파라미터인 최소값을 1보다 크게 설정하여야 한다.
    ACTORSTATE:SetGunSpreadType( 2 );
    
    --  변화값, 회복값, 최소값, 최대값
    -- SetGunSpreadType 함수를 1로 설정할 때는 SetInnerAccuracyVary 함수의 세번째 파라미터인 최소값을 1보다 크게 설정하여야 한다.
    ACTORSTATE:SetInnerAccuracyVary( 5, 1,  0.3, 1 );  -- 원래 값 ( 35, 2,  0, 2 )  , ( 15, 1,  0.3, 1 ) , (5, 1,  0.3, 1 )
    
    --  변화값, 회복값, 최소값, 최대값
    ACTORSTATE:SetOuterAccuracyVary( 15, 1,  0.5, 3 ); -- 원래 값 ( 40, 2,  0, 4 ) , ( 30, 2,  0.5, 4 ) ,( 30, 2,  1, 5 )
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_CLASSICRIFLE, ATTACKATTRIB_COGWHEEL_CLASSICRIFLE, 40, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );  --MAKETHICKRAY(호밍)	,MAKERAY(호밍아님)

    -- 거리별 데미지 - Ray를 이용한 타입에서 사용할 거리별 데미지
    -- 0:일반, 1:그레네이드용, 2: 폭발형거리별데미지, 3:총기류 거리별 데미지( Ray, ThickRay )
	Attack1:SetDamageApplyType( 3 );
    
	
    -- SetCritical (배율, 확률);
	Attack1:SetCritical( 1.25, 0 );
	Attack1:SetCheckBodyPartsByThickray( false );
	
	
	
    -- 기준거리를 셋팅
	Attack1:SetDistanceDamageLength( 8000 );
    --
	
	-- WEAPON:ApplyRandomDamage( Attack1 );	
	Attack1:SetCheckBodyPartsByThickray( false );
	
	
    Attack1:SetCollisionRangeAdjust( false, false );
    Attack1:SetConsumeAmmo( 1 );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true ); 
    AddAttack( ATTACKS, Attack1 );

    
end


-------------------------------------------------------------------------------
--[[
	워터건
	InitLua인자
	-- fHeightOffset,				// 발사되는 위치의 오프셋
	-- fSideOffset0,				// 발사되는 위치의 오프셋
	-- fSideOffset1,				// 발사되는 위치의 오프셋
	-- fFrontOffset,				// 발사되는 위치의 오프셋
	-- uiMisFiringChangeStateTime,	// 불발상태일때 이시간이 지나면 상태가 바뀜( 리로드등 )
	-- uiAnimPlayTime,				// 애니메이션의 플레이 시간을 강제로 정한다. ( 연사속도 무시 )
	-- uiShotCount,					// 발사되는 총알의 수
	-- szMisFiringSoundFile			// 불발일때 출력할 사운드파일
]]--
-------------------------------------------------------------------------------
function StandardWaterGun(  OneShotTime, Power, Accuracy, AdditionalPower )
	
    STATE:InitLua( 260,40,-40,250, 500, 666, 1, "Resources/Sound/smg_dry_fire.ogg" );
    
    -- 집탄변화타입( 0:집탄변화없음, 1:설정한 방향대로 변화됨(Inner만 사용), 2:랜덤하게 변화됨(Inner, Outer사용) )
    -- 1로 설정할 때는 SetInnerAccuracyVary 함수의 세번째 파라미터인 최소값을 1보다 크게 설정하여야 한다.
    ACTORSTATE:SetGunSpreadType( 2 );
    
    --  변화값, 회복값, 최소값, 최대값
    -- SetGunSpreadType 함수를 1로 설정할 때는 SetInnerAccuracyVary 함수의 세번째 파라미터인 최소값을 1보다 크게 설정하여야 한다.
    ACTORSTATE:SetInnerAccuracyVary( 30, 2,  0, 2 );
    
    --  변화값, 회복값, 최소값, 최대값
    ACTORSTATE:SetOuterAccuracyVary( 35, 2,  0, 4 );
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SMG2_HOMING, ATTACKATTRIB_SMG2_WATERGUN, 50, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKETHICKRAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), 70, RayDistanceLimit ), 1, 1, false  );
		

    -- 거리별 데미지 - Ray를 이용한 타입에서 사용할 거리별 데미지
    -- 0:일반, 1:그레네이드용, 2: 폭발형거리별데미지, 3:총기류 거리별 데미지( Ray, ThickRay )
	Attack1:SetDamageApplyType( 3 );
    
    -- 기준거리를 셋팅
	Attack1:SetDistanceDamageLength( 8000 );
    --
	
	WEAPON:ApplyRandomDamage( Attack1 );	
	Attack1:SetCheckBodyPartsByThickray( false );
	
	
    Attack1:SetCollisionRangeAdjust( false, false );
    Attack1:SetConsumeAmmo( 1 );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true ); 
    AddAttack( ATTACKS, Attack1 );

    
end

-------------------------------------------------------------------------------
--[[
	어썰트 라이플 유니크 - 네덴 타이프라이터
	InitLua인자
	-- fHeightOffset,				// 발사되는 위치의 오프셋
	-- fSideOffset0,				// 발사되는 위치의 오프셋
	-- fSideOffset1,				// 발사되는 위치의 오프셋
	-- fFrontOffset,				// 발사되는 위치의 오프셋
	-- uiMisFiringChangeStateTime,	// 불발상태일때 이시간이 지나면 상태가 바뀜( 리로드등 )
	-- uiAnimPlayTime,				// 애니메이션의 플레이 시간을 강제로 정한다. ( 연사속도 무시 )
	-- uiShotCount,					// 발사되는 총알의 수
	-- szMisFiringSoundFile			// 불발일때 출력할 사운드파일
]]--
-------------------------------------------------------------------------------
--네덴 타이프라이터
function StandardAssultRifleUnique(  OneShotTime, Power, Accuracy, AdditionalPower ) 
	
    STATE:InitLua( 260,40,-40,250, 500, 666, 1, "Resources/Sound/smg_dry_fire.ogg" );
    
    -- 집탄변화타입( 0:집탄변화없음, 1:설정한 방향대로 변화됨(Inner만 사용), 2:랜덤하게 변화됨(Inner, Outer사용) )
    -- 1로 설정할 때는 SetInnerAccuracyVary 함수의 세번째 파라미터인 최소값을 1보다 크게 설정하여야 한다.
    ACTORSTATE:SetGunSpreadType( 2 );
    
    --  변화값, 회복값, 최소값, 최대값
    -- SetGunSpreadType 함수를 1로 설정할 때는 SetInnerAccuracyVary 함수의 세번째 파라미터인 최소값을 1보다 크게 설정하여야 한다.
    ACTORSTATE:SetInnerAccuracyVary( 5, 1,  0.3, 1 );  -- 원래 값 ( 35, 2,  0, 2 )  , ( 15, 1,  0.3, 1 ) , (5, 1,  0.3, 1 )
    
    --  변화값, 회복값, 최소값, 최대값
    ACTORSTATE:SetOuterAccuracyVary( 15, 1,  0.5, 3 ); -- 원래 값 ( 40, 2,  0, 4 ) , ( 30, 2,  0.5, 4 ) ,( 30, 2,  1, 5 )
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_ASSULT_RIFLE_UNIQUE , ATTACKATTRIB_ASSULT_RIFLE_UNIQUE, 40, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );  --MAKETHICKRAY(호밍)	,MAKERAY(호밍아님)

    -- 거리별 데미지 - Ray를 이용한 타입에서 사용할 거리별 데미지
    -- 0:일반, 1:그레네이드용, 2: 폭발형거리별데미지, 3:총기류 거리별 데미지( Ray, ThickRay )
	Attack1:SetDamageApplyType( 3 );
    
	
    -- SetCritical (배율, 확률);
	--Attack1:SetCritical( 1.55, 7 );
	Attack1:SetCritical( 1.25, 0 );
	--Attack1:SetCheckBodyPartsByThickray( false );
	
	
	
    -- 기준거리를 셋팅
	Attack1:SetDistanceDamageLength( 8000 );
    --
	
	-- WEAPON:ApplyRandomDamage( Attack1 );	
	Attack1:SetCheckBodyPartsByThickray( false );
	
	
    Attack1:SetCollisionRangeAdjust( false, false );
    Attack1:SetConsumeAmmo( 1 );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true ); 
    AddAttack( ATTACKS, Attack1 );

    
end

-- 스파크 라이플
function StandardSparkRifleUnique(  OneShotTime, Power, Accuracy, AdditionalPower ) 
	
    STATE:InitLua( 260,40,-40,250, 500, 666, 1, "Resources/Sound/smg_dry_fire.ogg" );
    
    -- 집탄변화타입( 0:집탄변화없음, 1:설정한 방향대로 변화됨(Inner만 사용), 2:랜덤하게 변화됨(Inner, Outer사용) )
    -- 1로 설정할 때는 SetInnerAccuracyVary 함수의 세번째 파라미터인 최소값을 1보다 크게 설정하여야 한다.
    ACTORSTATE:SetGunSpreadType( 2 );
    
    --  변화값, 회복값, 최소값, 최대값
    -- SetGunSpreadType 함수를 1로 설정할 때는 SetInnerAccuracyVary 함수의 세번째 파라미터인 최소값을 1보다 크게 설정하여야 한다.
    ACTORSTATE:SetInnerAccuracyVary( 40, 2,  0, 2 );
    
    --  변화값, 회복값, 최소값, 최대값
    ACTORSTATE:SetOuterAccuracyVary( 45, 2,  0, 4 );
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SPARK_RIFLE, ATTACKATTRIB_SPARK_RIFLE_UNIQUE, 50, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKETHICKRAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), 10, RayDistanceLimit ), 1, 1, false  );
		
	-- SetCritical (배율, 확률);
	Attack1:SetCritical( 3, 20 );
	Attack1:SetCheckBodyPartsByThickray( false );
	
	-- 거리별 데미지 - Ray를 이용한 타입에서 사용할 거리별 데미지
    -- 0:일반, 1:그레네이드용, 2: 폭발형거리별데미지, 3:총기류 거리별 데미지( Ray, ThickRay )
    Attack1:SetDamageApplyType( 3 );
    
    -- 기준거리를 셋팅
    Attack1:SetDistanceDamageLength( 8000 );
    --
	
	
    Attack1:SetCollisionRangeAdjust( false, false );
    Attack1:SetConsumeAmmo( 1 );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true ); 	
    AddAttack( ATTACKS, Attack1 );
    
end
