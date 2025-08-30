

require "Resources/Script/ActorStates_Constants.lua"

-- InitLua( u32 uiBeginTime, u32 uiEndTime, u32 uiMisFiringChangeStateTime )

function Standardturret( OneShotTime, Power, Accuracy, AdditionalPower )

	-- (����,�ĵ�, )
	STATE:InitLua( 800, 750, 1000 ); -- ���� �ð� (������ 750) ( 1200, 750, 1000 )
	
	
	local AngleInside		= 15.0;
	local AngleMiddle		= 30.0;
	local AngleOutside		= 45.0;

	local ArrayDir		= {};	
	
	-- ���� ����
	local vInnerPoint		= MAKECVECTOR3( 0,0,-1 );
	vInnerPoint:RotateY( AngleInside );
	
	ArrayDir[1]		= vInnerPoint;
	local index		= 1;
	
	for index = 1, 3, 1 do
		vInnerPoint:RotateZ( 90 );
		ArrayDir[ index + 1 ] = MAKECVECTOR3( vInnerPoint:GetX(), vInnerPoint:GetY(), vInnerPoint:GetZ() );
	end
	
	-- �߰� ����
	local vMiddlePoint	= MAKECVECTOR3( 0,0,-1 );
	vMiddlePoint:RotateY( AngleMiddle );
	
	ArrayDir[5]		= vMiddlePoint;
	
	for index = 1, 7, 1 do
		vMiddlePoint:RotateZ( 45 );
		ArrayDir[ index + 5 ] = MAKECVECTOR3( vMiddlePoint:GetX(), vMiddlePoint:GetY(), vMiddlePoint:GetZ() );
	end
	
	
	-- �ܰ� ����
	local vOutsidePoint	= MAKECVECTOR3( 0,0,-1 );
	vOutsidePoint:RotateY( AngleOutside );
	
	ArrayDir[13]		= vOutsidePoint;
	
	for index = 1, 7, 1 do
		vOutsidePoint:RotateZ( 45 );
		ArrayDir[ index + 13 ] =  MAKECVECTOR3( vOutsidePoint:GetX(), vOutsidePoint:GetY(), vOutsidePoint:GetZ() );
	end
	
	
	-- ���� ����
	
	local arrIndices	= { 2, 6, 3, 14, 10, 4, 20, 7, 17, 5, 8, 15, 9, 11, 12, 1, 13, 16, 18, 19 };
	
	math.randomseed( os.time() );
	
	for index = 1, 20, 1 do
		local vDir = ArrayDir[ arrIndices[ index ] ];
		vDir:Multiply( Accuracy, Accuracy, 1.0 );
		vDir:Normalize();		
		
		local value = math.random( 1, 1000 );
		local fireTime = ( ( index )*OneShotTime );  -- ���� �ð� [������ ( index )*OneShotTime]
		
		if value < 334  then
			Attack = CreateCAttack();
		    Attack:InitAttack1( WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_NORMAL, fireTime, Power*0.5+AdditionalPower, AddtionalPower ); 
		    Attack:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack:SetCollisionRangeAdjust( false, false );
			Attack:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack );
		elseif value < 667 then
			Attack1 = CreateCAttack();
		    Attack1:InitAttack1( WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_NORMAL, fireTime, Power*0.5+AdditionalPower, AddtionalPower );
		    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack1:SetCollisionRangeAdjust( false, false );
			Attack1:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack1 );
		else
			Attack2 = CreateCAttack();
		    Attack2:InitAttack1( WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_NORMAL, fireTime, Power*0.5+AdditionalPower, AddtionalPower );
		    Attack2:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack2:SetCollisionRangeAdjust( false, false );
			Attack2:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack2 );
		end
		
	end

end

-- InitLua( u32 uiBeginTime, u32 uiEndTime, u32 uiMisFiringChangeStateTime )

function Standardturret_MK2( OneShotTime, Power, Accuracy, AdditionalPower )

	-- (����,�ĵ�, )
	STATE:InitLua( 1200, 750, 1000 ); -- ���� �ð� (������ 750) ( 1200, 750, 1000 )
	
	
	local AngleInside		= 15.0;
	local AngleMiddle		= 30.0;
	local AngleOutside		= 45.0;

	local ArrayDir		= {};	
	
	-- ���� ����
	local vInnerPoint		= MAKECVECTOR3( 0,0,-1 );
	vInnerPoint:RotateY( AngleInside );
	
	ArrayDir[1]		= vInnerPoint;
	local index		= 1;
	
	for index = 1, 3, 1 do
		vInnerPoint:RotateZ( 90 );
		ArrayDir[ index + 1 ] = MAKECVECTOR3( vInnerPoint:GetX(), vInnerPoint:GetY(), vInnerPoint:GetZ() );
	end
	
	-- �߰� ����
	local vMiddlePoint	= MAKECVECTOR3( 0,0,-1 );
	vMiddlePoint:RotateY( AngleMiddle );
	
	ArrayDir[5]		= vMiddlePoint;
	
	for index = 1, 7, 1 do
		vMiddlePoint:RotateZ( 45 );
		ArrayDir[ index + 5 ] = MAKECVECTOR3( vMiddlePoint:GetX(), vMiddlePoint:GetY(), vMiddlePoint:GetZ() );
	end
	
	
	-- �ܰ� ����
	local vOutsidePoint	= MAKECVECTOR3( 0,0,-1 );
	vOutsidePoint:RotateY( AngleOutside );
	
	ArrayDir[13]		= vOutsidePoint;
	
	for index = 1, 7, 1 do
		vOutsidePoint:RotateZ( 45 );
		ArrayDir[ index + 13 ] =  MAKECVECTOR3( vOutsidePoint:GetX(), vOutsidePoint:GetY(), vOutsidePoint:GetZ() );
	end
	
	
	-- ���� ����
	
	local arrIndices	= { 2, 6, 3, 14, 10, 4, 20, 7, 17, 5, 8, 15, 9, 11, 12, 1, 13, 16, 18, 19 };
	
	math.randomseed( os.time() );
	
	for index = 1, 20, 1 do
		local vDir = ArrayDir[ arrIndices[ index ] ];
		vDir:Multiply( Accuracy, Accuracy, 1.0 );
		vDir:Normalize();		
		
		local value = math.random( 1, 1000 );
		local fireTime = ( ( index )*OneShotTime );  -- ���� �ð� [������ ( index )*OneShotTime]
		
		if value < 334  then
			Attack = CreateCAttack();
		    Attack:InitAttack1( WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_NORMAL, fireTime, Power*0.5+AdditionalPower, AddtionalPower ); 
		    Attack:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack:SetCollisionRangeAdjust( false, false );
			Attack:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack );
		elseif value < 667 then
			Attack1 = CreateCAttack();
		    Attack1:InitAttack1( WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_NORMAL, fireTime, Power*0.5+AdditionalPower, AddtionalPower );
		    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack1:SetCollisionRangeAdjust( false, false );
			Attack1:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack1 );
		else
			Attack2 = CreateCAttack();
		    Attack2:InitAttack1( WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_NORMAL, fireTime, Power*0.5+AdditionalPower, AddtionalPower );
		    Attack2:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack2:SetCollisionRangeAdjust( false, false );
			Attack2:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack2 );
		end
		
	end

end



------------------------------------
-- InitLua( u32 uiBeginTime, u32 uiEndTime, u32 uiMisFiringChangeStateTime )

function StandardturretInstall( OneShotTime, Power, Accuracy, AdditionalPower )

	
	STATE:InitLua( 200, 300, 200);			-- oneShotTime = ���� (ó�� �� 750) ( 200, 750, 1500)
	
	
	-- ī�޶� ����ŷ
	--  bUse(true/false),  uiShakeTime(50),  uiRestoreTime(100)_ȸ��, fExtent(2.5)_ũ��,   fVertSpeed(2.5)_����,  fHoriSpeed(3.5)_����, fMinDist(500)��,  fMaxDist(1000)�� 
	STATE:SetCameraShake( true, 50, 100, 7, 2.5, 3.5, 500, 1000 );  -- ( true, 50, 100, 2.5, 2.5, 3.5, 500, 1000 )
	
	
	-- ��ź��ȭŸ��( 0:��ź��ȭ����, 1:������ ������ ��ȭ��(Inner�� ���), 2:�����ϰ� ��ȭ��(Inner, Outer���) )
    -- 1�� ������ ���� SetInnerAccuracyVary �Լ��� ����° �Ķ������ �ּҰ��� 1���� ũ�� �����Ͽ��� �Ѵ�.
    ACTORSTATE:SetGunSpreadType( 2 );
    
    --  ��ȭ��, ȸ����, �ּҰ�, �ִ밪
    -- SetGunSpreadType �Լ��� 1�� ������ ���� SetInnerAccuracyVary �Լ��� ����° �Ķ������ �ּҰ��� 1���� ũ�� �����Ͽ��� �Ѵ�.
    ACTORSTATE:SetInnerAccuracyVary( 20, 1.5,  0, 1 );  -- 3�� ��(20,2,0,1) 2�� ���� ��(20,3,0,1), ���� �� ( 30, 2,  0, 2 )
    
    --  ��ȭ��, ȸ����, �ּҰ�, �ִ밪
    ACTORSTATE:SetOuterAccuracyVary( 35, 5,  0, 2 ); -- 3�� ��(35,5,0,2) 2�� ���� ��(30,4,0,2) , ���� �� ( 35, 2,  0, 4 )
	
	-- ���ݽ� ���콺 ȸ�� ���� ����(���ڰ� ���� ���� ����)  �⺻ (0.05 -> 0.1)
     ACTORSTATE:SetMouseSensitivityRotate( 0.3 );
	
	
	local AngleInside		= 15.0;
	local AngleMiddle		= 30.0;
	local AngleOutside		= 45.0;

	local ArrayDir		= {};	
	
	-- ���� ����
	local vInnerPoint		= MAKECVECTOR3( 0,0,-1 );
	vInnerPoint:RotateY( AngleInside );
	
	ArrayDir[1]		= vInnerPoint;
	local index		= 1;
	
	for index = 1, 3, 1 do
		vInnerPoint:RotateZ( 90 );
		ArrayDir[ index + 1 ] = MAKECVECTOR3( vInnerPoint:GetX(), vInnerPoint:GetY(), vInnerPoint:GetZ() );
	end
	
	-- �߰� ����
	local vMiddlePoint	= MAKECVECTOR3( 0,0,-1 );
	vMiddlePoint:RotateY( AngleMiddle );
	
	ArrayDir[5]		= vMiddlePoint;
	
	for index = 1, 7, 1 do
		vMiddlePoint:RotateZ( 45 );
		ArrayDir[ index + 5 ] = MAKECVECTOR3( vMiddlePoint:GetX(), vMiddlePoint:GetY(), vMiddlePoint:GetZ() );
	end
	
	
	-- �ܰ� ����
	local vOutsidePoint	= MAKECVECTOR3( 0,0,-1 );
	vOutsidePoint:RotateY( AngleOutside );
	
	ArrayDir[13]		= vOutsidePoint;
	
	for index = 1, 7, 1 do
		vOutsidePoint:RotateZ( 45 );
		ArrayDir[ index + 13 ] =  MAKECVECTOR3( vOutsidePoint:GetX(), vOutsidePoint:GetY(), vOutsidePoint:GetZ() );
	end
	
	
	-- ���� ����
	
	local arrIndices	= { 2, 6, 3, 14, 10, 4, 20, 7, 17, 5, 8, 15, 9, 11, 12, 1, 13, 16, 18, 19 };
	
	math.randomseed( os.time() );
	
	for index = 1, 20, 1 do
		local vDir = ArrayDir[ arrIndices[ index ] ];
		vDir:Multiply( Accuracy, Accuracy, 1.0 );
		vDir:Normalize();		
		
		local value = math.random( 1, 1000 );
		local fireTime = ( ( index )*OneShotTime );
		
		if value < 334  then
			Attack = CreateCAttack();
		    Attack:InitAttack1( WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_INSTALL, fireTime, Power+AdditionalPower, AddtionalPower );
		    Attack:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack:SetCollisionRangeAdjust( false, false );
			Attack:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack );
		elseif value < 667 then
			Attack1 = CreateCAttack();
		    Attack1:InitAttack1( WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_INSTALL, fireTime, Power+AdditionalPower, AddtionalPower );
		    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack1:SetCollisionRangeAdjust( false, false );
			Attack1:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack1 );
		else
			Attack2 = CreateCAttack();
		    Attack2:InitAttack1( WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_INSTALL, fireTime, Power+AdditionalPower, AddtionalPower );
		    Attack2:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack2:SetCollisionRangeAdjust( false, false );
			Attack2:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack2 );
		end
		
	end

end


-- InitLua( u32 uiBeginTime, u32 uiEndTime, u32 uiMisFiringChangeStateTime )

function StandardturretInstall_MK2( OneShotTime, Power, Accuracy, AdditionalPower )

	
	STATE:InitLua( 200, 300, 200);			-- oneShotTime = ���� (ó�� �� 750) ( 200, 750, 1500)
	
	
	-- ī�޶� ����ŷ
	--  bUse(true/false),  uiShakeTime(50),  uiRestoreTime(100)_ȸ��, fExtent(2.5)_ũ��,   fVertSpeed(2.5)_����,  fHoriSpeed(3.5)_����, fMinDist(500)��,  fMaxDist(1000)�� 
	STATE:SetCameraShake( true, 50, 100, 7, 2.5, 3.5, 500, 1000 );  -- ( true, 50, 100, 2.5, 2.5, 3.5, 500, 1000 )
	
	
	-- ��ź��ȭŸ��( 0:��ź��ȭ����, 1:������ ������ ��ȭ��(Inner�� ���), 2:�����ϰ� ��ȭ��(Inner, Outer���) )
    -- 1�� ������ ���� SetInnerAccuracyVary �Լ��� ����° �Ķ������ �ּҰ��� 1���� ũ�� �����Ͽ��� �Ѵ�.
    ACTORSTATE:SetGunSpreadType( 2 );
    
    --  ��ȭ��, ȸ����, �ּҰ�, �ִ밪
    -- SetGunSpreadType �Լ��� 1�� ������ ���� SetInnerAccuracyVary �Լ��� ����° �Ķ������ �ּҰ��� 1���� ũ�� �����Ͽ��� �Ѵ�.
    ACTORSTATE:SetInnerAccuracyVary( 20, 1.5,  0, 1 );  -- 3�� ��(20,2,0,1) 2�� ���� ��(20,3,0,1), ���� �� ( 30, 2,  0, 2 )
    
    --  ��ȭ��, ȸ����, �ּҰ�, �ִ밪
    ACTORSTATE:SetOuterAccuracyVary( 35, 5,  0, 2 ); -- 3�� ��(35,5,0,2) 2�� ���� ��(30,4,0,2) , ���� �� ( 35, 2,  0, 4 )
	
	-- ���ݽ� ���콺 ȸ�� ���� ����(���ڰ� ���� ���� ����)  �⺻ (0.05 -> 0.1)
     ACTORSTATE:SetMouseSensitivityRotate( 0.3 );
	
	
	local AngleInside		= 15.0;
	local AngleMiddle		= 30.0;
	local AngleOutside		= 45.0;

	local ArrayDir		= {};	
	
	-- ���� ����
	local vInnerPoint		= MAKECVECTOR3( 0,0,-1 );
	vInnerPoint:RotateY( AngleInside );
	
	ArrayDir[1]		= vInnerPoint;
	local index		= 1;
	
	for index = 1, 3, 1 do
		vInnerPoint:RotateZ( 90 );
		ArrayDir[ index + 1 ] = MAKECVECTOR3( vInnerPoint:GetX(), vInnerPoint:GetY(), vInnerPoint:GetZ() );
	end
	
	-- �߰� ����
	local vMiddlePoint	= MAKECVECTOR3( 0,0,-1 );
	vMiddlePoint:RotateY( AngleMiddle );
	
	ArrayDir[5]		= vMiddlePoint;
	
	for index = 1, 7, 1 do
		vMiddlePoint:RotateZ( 45 );
		ArrayDir[ index + 5 ] = MAKECVECTOR3( vMiddlePoint:GetX(), vMiddlePoint:GetY(), vMiddlePoint:GetZ() );
	end
	
	
	-- �ܰ� ����
	local vOutsidePoint	= MAKECVECTOR3( 0,0,-1 );
	vOutsidePoint:RotateY( AngleOutside );
	
	ArrayDir[13]		= vOutsidePoint;
	
	for index = 1, 7, 1 do
		vOutsidePoint:RotateZ( 45 );
		ArrayDir[ index + 13 ] =  MAKECVECTOR3( vOutsidePoint:GetX(), vOutsidePoint:GetY(), vOutsidePoint:GetZ() );
	end
	
	
	-- ���� ����
	
	local arrIndices	= { 2, 6, 3, 14, 10, 4, 20, 7, 17, 5, 8, 15, 9, 11, 12, 1, 13, 16, 18, 19 };
	
	math.randomseed( os.time() );
	
	for index = 1, 20, 1 do
		local vDir = ArrayDir[ arrIndices[ index ] ];
		vDir:Multiply( Accuracy, Accuracy, 1.0 );
		vDir:Normalize();		
		
		local value = math.random( 1, 1000 );
		local fireTime = ( ( index )*OneShotTime );
		
		if value < 334  then
			Attack = CreateCAttack();
		    Attack:InitAttack1( WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_INSTALL, fireTime, Power+AdditionalPower, AddtionalPower );
		    Attack:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack:SetCollisionRangeAdjust( false, false );
			Attack:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack );
		elseif value < 667 then
			Attack1 = CreateCAttack();
		    Attack1:InitAttack1( WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_INSTALL, fireTime, Power+AdditionalPower, AddtionalPower );
		    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack1:SetCollisionRangeAdjust( false, false );
			Attack1:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack1 );
		else
			Attack2 = CreateCAttack();
		    Attack2:InitAttack1( WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_INSTALL, fireTime, Power+AdditionalPower, AddtionalPower );
		    Attack2:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack2:SetCollisionRangeAdjust( false, false );
			Attack2:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack2 );
		end
		
	end

end


-------------------------------------------------------------------------------
--[[
	�⺻ �ͷ� ��� -> ��ġ ����
	InitLua����
	-- nNextStageTime,				// ���� ���·� �������� �ð�
]]--
-------------------------------------------------------------------------------

function StandardTurretToInstall(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:InitLua( 1600 );				 --��ġ ���� �ð�  (2000)
	STATE:SetCamLimit( true, 55, 70);    --���� (true, 40.5, 70) 		���� (ī�޶�����,���ϰ���,�¿찢��) (true, 45, 70)
	
	STATE:SetDistZoom( true, -330);		--ī�޶� �����ϰ� ���� �� ����  (true, 200) 	-- �Ÿ� �� ��뿩��( true/false ),  �ּҰŸ�( ù��° ���ڰ� true �϶��� ���� ) ( true, -150 )_157
	STATE:SetCamFixType( 1, -80 );			-- ( -1(disable), 0(left), 1(center), 2(right) )
	-- ī�޶� y�� ���� ġƮŰ: heightoffset (380/350�⺻����) (debug consolewindows s4_client�� �Է� �ϸ� ��) �߸𸣰����� ��ȣ������ ������� (400 ���� ������)
	
	
	-- SetPlusDefensePowerRate( ���� ����(0:��ü, 1:���), ���� ���� ����(0~1))
	-- ���� ���� ������ 1�� �ϸ� ������ �ȴ�.;;;����!!!
	-- ��ġ�� Ǯ �� �ʱ�ȭ�� �ݵ�� �ؾ� ��.
	STATE:SetPlusDefensePowerRate(0, 0.2); -- ��ġ ����, ��ġ�� �߰� ���� ����.
	STATE:SetPlusDefensePowerRate(1, 0.2); -- ��ġ ����, ��ġ�� ��� �� �߰� ���� ����.
end


-------------------------------------------------------------------------------
--[[
	�⺻ �ͷ� ��ġ -> ��� ����
	InitLua����
	-- nNextStageTime,				// ���� ���·� �������� �ð�
]]--
-------------------------------------------------------------------------------

function StandardTurretToNormal(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:InitLua( 1600 );
	STATE:SetCamLimit( false, 0, 0 );
	
	STATE:SetDistZoom( false, 0 );		--�Ÿ� �� ��뿩��( true/false ),  �ּҰŸ�( ù��° ���ڰ� true �϶��� ���� )
	STATE:SetCamFixType( -1, 0 );			-- ( -1(disable), 0(left), 1(center), 2(right) )
	
	-- SetPlusDefensePowerRate( ���� ����(0:��ü, 1:���), ���� ���� ����(0~1))
	-- ��ġ�� Ǯ �� �ʱ�ȭ�� ���ش�.
	STATE:SetPlusDefensePowerRate(0, 0); -- ��ġ ����, ��ġ�� �߰� ���� ����.
	STATE:SetPlusDefensePowerRate(1, 0); -- ��ġ ����, ��ġ�� ��� �� �߰� ���� ����
end


-------------------------------------------------------------------------------
--[[
	�⺻ �ͷ� ��� -> ��ġ ����
	InitLua����
	-- nNextStageTime,				// ���� ���·� �������� �ð�
]]--
-------------------------------------------------------------------------------

function StandardTurretToInstall_MK2(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:InitLua( 2000 );				 --��ġ ���� �ð�  (2000)
	STATE:SetCamLimit( true, 40.5, 70);    --���� (true, 40.5, 70) 		���� (ī�޶�����,���ϰ���,�¿찢��) (true, 45, 70)
	
	STATE:SetDistZoom( true, -330);		--ī�޶� �����ϰ� ���� �� ����  (true, 200) 	-- �Ÿ� �� ��뿩��( true/false ),  �ּҰŸ�( ù��° ���ڰ� true �϶��� ���� ) ( true, -150 )_157
	STATE:SetCamFixType( 1, -80 );			-- ( -1(disable), 0(left), 1(center), 2(right) )
	-- ī�޶� y�� ���� ġƮŰ: heightoffset (380/350�⺻����) (debug consolewindows s4_client�� �Է� �ϸ� ��) �߸𸣰����� ��ȣ������ ������� (400 ���� ������)

	-- SetPlusDefensePowerRate( ���� ����(0:��ü, 1:���), ���� ���� ����(0~1))
	-- ���� ���� ������ 1�� �ϸ� ������ �ȴ�.;;;����!!!
	-- ��ġ�� Ǯ �� �ʱ�ȭ�� �ݵ�� �ؾ� ��.
	STATE:SetPlusDefensePowerRate(0, 0.4); -- ��ġ ����, ��ġ�� �߰� ���� ����.
	STATE:SetPlusDefensePowerRate(1, 0.6); -- ��ġ ����, ��ġ�� ��� �� �߰� ���� ����.

	-- SetKnockBack_BlowDefensePowerRate( �˹�, ��ο� ���׷� ����(0~1) )
	-- �˹� ���׷� ������ 1�� �ϸ� �˹� ������ �ȵ�.
	-- ��ġ ���߿��� ���� �ǹǷ� �׽� ������ �ʿ��ϸ� �߰� �۾��� �ʿ���.
	STATE:SetKnockBack_BlowDefensePowerRate(0.5); -- �˹�, ��ο� ���׷� ���.
end


-------------------------------------------------------------------------------
--[[
	�⺻ �ͷ� ��ġ -> ��� ����
	InitLua����
	-- nNextStageTime,				// ���� ���·� �������� �ð�
]]--
-------------------------------------------------------------------------------

function StandardTurretToNormal_MK2(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:InitLua( 2000 );
	STATE:SetCamLimit( false, 0, 0 );
	
	STATE:SetDistZoom( false, 0 );		--�Ÿ� �� ��뿩��( true/false ),  �ּҰŸ�( ù��° ���ڰ� true �϶��� ���� )
	STATE:SetCamFixType( -1, 0 );			-- ( -1(disable), 0(left), 1(center), 2(right) )
	
	-- SetPlusDefensePowerRate( ���� ����(0:��ü, 1:���), ���� ���� ����(0~1))
	-- ��ġ�� Ǯ �� �ʱ�ȭ�� ���ش�.
	STATE:SetPlusDefensePowerRate(0, 0); -- ��ġ ����, ��ġ�� �߰� ���� ����.
	STATE:SetPlusDefensePowerRate(1, 0); -- ��ġ ����, ��ġ�� ��� �� �߰� ���� ����.
end