require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------
--[[
	기본 서브머신건 셋팅
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
function StandardSubmachine(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:InitLua( 260,40,-40,250, 500, 666, 4, "Resources/Sound/smg_dry_fire.ogg" ); -- 260,40,-40,250, 500,
	STATE:SetAutoReload( true ); 
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SUBMACHINE_GUN, ATTACKATTRIB_SUBMACHINE_GUN, 50, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );--MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,Accuracy,-1), RayDistanceLimit ), 1, 1, false  );
    Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:SetDamageApplyType( 3 );
    Attack1:SetDistanceDamageLength( 5000 );
	Attack1:SetCritical( 2.5, 0 );
    Attack1:SetConsumeAmmo( 1 );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SUBMACHINE_GUN, ATTACKATTRIB_SUBMACHINE_GUN, 50 + (OneShotTime*1), Power+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(Accuracy*0.5,Accuracy* -0.5,-1), RayDistanceLimit ), 1, 1, false  );    
    Attack2:SetCollisionRangeAdjust( false, false );
	Attack2:SetDamageApplyType( 3 );
    Attack2:SetDistanceDamageLength( 5000 );
	Attack2:SetCritical( 2.5, 0 );
    Attack2:SetConsumeAmmo( 1 );    
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack2:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack2:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack2 );
    
    Attack3 = CreateCAttack();
    Attack3:InitAttack1( WEAPONTYPE_SUBMACHINE_GUN, ATTACKATTRIB_SUBMACHINE_GUN, 50 + (OneShotTime*2), Power+AdditionalPower, AddtionalPower );
    Attack3:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(Accuracy* -0.5,Accuracy* -0.5,-1), RayDistanceLimit ), 1, 1, false  );
    Attack3:SetCollisionRangeAdjust( false, false );
	Attack3:SetDamageApplyType( 3 );
    Attack3:SetDistanceDamageLength( 5000 );
	Attack3:SetCritical( 2.5, 0 );
    Attack3:SetConsumeAmmo( 1 );    
    Attack3:SetCameraShakeEnable( true, true, 0 );
    Attack3:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack3:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack3:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack3 );
    
    Attack4 = CreateCAttack();
    Attack4:InitAttack1( WEAPONTYPE_SUBMACHINE_GUN, ATTACKATTRIB_SUBMACHINE_GUN, 50 + (OneShotTime*3), Power+AdditionalPower, AddtionalPower );
    Attack4:InitAttack2(MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,Accuracy,-1), RayDistanceLimit ), 1, 1, false  ); --MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );
    Attack4:SetCollisionRangeAdjust( false, false );
	Attack4:SetDamageApplyType( 3 );
    Attack4:SetDistanceDamageLength( 5000 );
	Attack4:SetCritical( 2.5, 0 );
    Attack4:SetConsumeAmmo( 1 );    
    Attack4:SetCameraShakeEnable( true, true, 0 );
    Attack4:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack4:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack4:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack4 );   

end

function StandardSubmachine_2(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:InitLua( 260,40,-40,250, 500, 666, 4, "Resources/Sound/smg_dry_fire.ogg" );
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SUBMACHINE_GUN, ATTACKATTRIB_SUBMACHINE_GUN, 50, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,Accuracy,-1), RayDistanceLimit ), 1, 1, false  );
    Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:SetDamageApplyType( 3 );
    Attack1:SetDistanceDamageLength( 5000 );
	Attack1:SetCritical( 2.5, 0 );
    Attack1:SetConsumeAmmo( 1 );    
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SUBMACHINE_GUN, ATTACKATTRIB_SUBMACHINE_GUN, 50 + (OneShotTime*1), Power+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(Accuracy*0.5,Accuracy* -0.5,-1), RayDistanceLimit ), 1, 1, false  );    
    Attack2:SetCollisionRangeAdjust( false, false );
	Attack2:SetDamageApplyType( 3 );
    Attack2:SetDistanceDamageLength( 5000 );
	Attack2:SetCritical( 2.5, 0 );
    Attack2:SetConsumeAmmo( 1 );    
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack2:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack2:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack2 );
    
    Attack3 = CreateCAttack();
    Attack3:InitAttack1( WEAPONTYPE_SUBMACHINE_GUN, ATTACKATTRIB_SUBMACHINE_GUN, 50 + (OneShotTime*2), Power+AdditionalPower, AddtionalPower );
    Attack3:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(Accuracy* -0.5,Accuracy* -0.5,-1), RayDistanceLimit ), 1, 1, false  );
    Attack3:SetCollisionRangeAdjust( false, false );
	Attack3:SetDamageApplyType( 3 );
    Attack3:SetDistanceDamageLength( 5000 );
	Attack3:SetCritical( 2.5, 0 );
    Attack3:SetConsumeAmmo( 1 );    
    Attack3:SetCameraShakeEnable( true, true, 0 );
    Attack3:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack3:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack3:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack3 );
    
    Attack4 = CreateCAttack();
    Attack4:InitAttack1( WEAPONTYPE_SUBMACHINE_GUN, ATTACKATTRIB_SUBMACHINE_GUN, 50 + (OneShotTime*3), Power+AdditionalPower, AddtionalPower );
    Attack4:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );
    Attack4:SetCollisionRangeAdjust( false, false );
	Attack4:SetDamageApplyType( 3 );
    Attack4:SetDistanceDamageLength( 5000 );
	Attack4:SetCritical( 2.5, 0 );
    Attack4:SetConsumeAmmo( 1 );    
    Attack4:SetCameraShakeEnable( true, true, 0 );
    Attack4:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack4:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack4:SetCameraShakeRandomDir( true );    
    AddAttack( ATTACKS, Attack4 );   

end