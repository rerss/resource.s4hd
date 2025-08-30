require "Resources/Script/ActorStates_Constants.lua"

-- InitLua( u32 uiBeginTime, u32 uiEndTime, u32 uiMisFiringChangeStateTime )
-- 헤비머신건
function StandardMachinegun( OneShotTime, Power, Accuracy, AdditionalPower )

	
	STATE:InitLua( 750, 750, 1000 );
	
	local AngleInside		= 15.0;
	local AngleMiddle		= 30.0;
	local AngleOutside		= 45.0;

	local ArrayDir		= {};	
	
	-- 안쪽 지정
	local vInnerPoint		= MAKECVECTOR3( 0,0,-1 );
	vInnerPoint:RotateY( AngleInside );
	
	ArrayDir[1]		= vInnerPoint;
	local index		= 1;
	
	for index = 1, 3, 1 do
		vInnerPoint:RotateZ( 90 );
		ArrayDir[ index + 1 ] = MAKECVECTOR3( vInnerPoint:GetX(), vInnerPoint:GetY(), vInnerPoint:GetZ() );
	end
	
	-- 중간 지정
	local vMiddlePoint	= MAKECVECTOR3( 0,0,-1 );
	vMiddlePoint:RotateY( AngleMiddle );
	
	ArrayDir[5]		= vMiddlePoint;
	
	for index = 1, 7, 1 do
		vMiddlePoint:RotateZ( 45 );
		ArrayDir[ index + 5 ] = MAKECVECTOR3( vMiddlePoint:GetX(), vMiddlePoint:GetY(), vMiddlePoint:GetZ() );
	end
	
	
	-- 외곽 지정
	local vOutsidePoint	= MAKECVECTOR3( 0,0,-1 );
	vOutsidePoint:RotateY( AngleOutside );
	
	ArrayDir[13]		= vOutsidePoint;
	
	for index = 1, 7, 1 do
		vOutsidePoint:RotateZ( 45 );
		ArrayDir[ index + 13 ] =  MAKECVECTOR3( vOutsidePoint:GetX(), vOutsidePoint:GetY(), vOutsidePoint:GetZ() );
	end
	
	
	-- 공격 생성
	
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
		    Attack:InitAttack1( WEAPONTYPE_MACHINE_GUN, ATTACKATTRIB_MACHINE_GUN_LOWER, fireTime, Power+AdditionalPower, AddtionalPower );
		    Attack:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack:SetCollisionRangeAdjust( false, false );
			Attack:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack );
		elseif value < 667 then
			Attack1 = CreateCAttack();
		    Attack1:InitAttack1( WEAPONTYPE_MACHINE_GUN, ATTACKATTRIB_MACHINE_GUN_MIDDLE, fireTime, Power+AdditionalPower, AddtionalPower );
		    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack1:SetCollisionRangeAdjust( false, false );
			Attack1:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack1 );
		else
			Attack2 = CreateCAttack();
		    Attack2:InitAttack1( WEAPONTYPE_MACHINE_GUN, ATTACKATTRIB_MACHINE_GUN_UPPER, fireTime, Power+AdditionalPower, AddtionalPower );
		    Attack2:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(vDir:GetX(),vDir:GetY(),vDir:GetZ()), RayDistanceLimit ), 1, 1, false  );
		    Attack2:SetCollisionRangeAdjust( false, false );
			Attack2:SetCritical( 2.5, 0 );
		    AddAttack( ATTACKS, Attack2 );
		end
		
	end

end