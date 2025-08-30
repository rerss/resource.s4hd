require "Resources/Script/ActorStates_Constants.lua"
-- 스매쉬 라이플
-------------------------------------------------------------------------------
--[[
	기본 SMG3GUN 셋팅
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
-- 스매쉬 라이플(원거리)
function StandardSmg3gun(  OneShotTime, Power, Accuracy, AdditionalPower ) 
	
	STATE:SetFrontOffset( 275 );
	STATE:InitLua( 260, 40, -40, 250, 500, 666, 1, "Resources/Sound/smg_dry_fire.ogg" );
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SMG3, ATTACKATTRIB_SMG3_GUN, 50, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,Accuracy,-1), RayDistanceLimit ), 1, 1, false  );
    
    Attack1:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ) );
    Attack1:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(Accuracy*0.5,Accuracy,-1), RayDistanceLimit ) );
    Attack1:AddCollisionRange( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(-Accuracy*0.5,Accuracy,-1), RayDistanceLimit ) );    
    
	Attack1:SetDamageApplyType( 3 );    
    -- 기준거리를 셋팅
	Attack1:SetDistanceDamageLength( 8000 );
	Attack1:SetCheckBodyPartsByThickray( false );
    
    Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:SetCritical( 2.5, 0 );
    Attack1:SetConsumeAmmo( 1 );
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 50, 25, 5 );
    Attack1:SetCameraShakeSetFactor2( 1.0, 1.0, 1000.0, 1000.0 );
    Attack1:SetCameraShakeRandomDir( true );
    AddAttack( ATTACKS, Attack1 );

end