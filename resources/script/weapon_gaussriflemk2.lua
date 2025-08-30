require "Resources/Script/ActorStates_Constants.lua"
-------------------------------------------------------------------------------
--[[
	가우스 라이플 마크2 좌클릭 공격 설정.
	
	OneShotTime = 1000/rate_of_fire([_rc_weapon.xml의 power])
	Power = [_rc_weapon.xml의 power] * [constant_info.xml 의 GAMETEMPO_damage_multiplier : 값은 2]
	Accuracy = [_rc_weapon.xml의 Accuracy]
	AdditionalPower = 0
	
]]--
-------------------------------------------------------------------------------
function GaussRifleMK2_Standard(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetFrontOffset( 275 );
	STATE:InitLua( 900, 250, 200, 260.0 );
	STATE:SetMK2( true );
	
	ACTORSTATE:SetGunSpreadType( 2 );
    --  변화값, 회복값, 최소값, 최대값
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
	
	-- 다음 코드를 안할 경우 _rc_weapon의 항목 rate_of_fire를 [ 1000/현재값 ]으로 넣어도 설정됨.
	-- 주의 : 이 값의 변화에 따라 적당히 어텍의 개수를 조절 해야 한다.
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
	가우스 라이플 마크2 우클릭 공격 설정.
	
	OneShotTime = 0
	Power = [_rc_weapon.xml의 power] * [constant_info.xml 의 GAMETEMPO_damage_multiplier : 값은 2]
	Accuracy = [_rc_weapon.xml의 Accuracy]
	AdditionalPower = 0
]]--
-------------------------------------------------------------------------------
function GaussRifleMK2_MultiShot(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:SetFrontOffset( 7 );                              -- 공격거리 5
	-- STATE:InitLua( 공격 시간, 후딜레이, 사용 안함, 총구 Y좌표 보정);
	STATE:InitLua( 1400, 740, 0, 260.0 );

	-- 방향성 효과 출력 함수
	-- STATE:InitDirectionSequence
	--						( 무기가 발사되기까지의 지연시간,
	-- 						방향성 발사 효과,
	--						방향성 사운드 효과,
	--						발사될 무기의 노드 이름 )
	local AttackDelayTime = 250; -- 무기가 발사되기까지의 지연시간
	STATE:InitDirectionSequence(AttackDelayTime,"Resources/Effects/weapon_gaussmk2_sp_rail.seq","","Gauss_Rifle_MK2_Head_Dummy");
	
	-- 입력 지연 시간 설정 함수.
	STATE:InitInputDelayTime(800);
	
	-- 소모 SP 설정.
	STATE:SetSpendSp(35);--24 
	
	-- 사정 거리 설정.
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
	    
		
		-- Attack:AddPushCondition( 적용시간, 시작속도, 액셀스피드 ); push 속성을 추가한다.( 액셀스피드를 음수값으로 설정해야 멈춤 )
		Attack:AddBlowCondition( 1200, 1500 );
		
	    AddAttack( ATTACKS, Attack );
    
	end
	
end