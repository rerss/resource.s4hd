
require "Resources/Script/Arcade_Util.lua"
require "Resources/Script/Arcade_Localize.lua"

-- 전역변수
-- Arcade : CArcadeSystem.

--gPunch = {};
--gPunch[1] = "AATYPE_1"
--gPunch[2] = "AATYPE_2"

-- AI의 초기화, Arcade의 스타일에 맞게 Host가 기억할 변수를 설정
-- 입력변수 : AI : CScriptAIController
function Init()
end

-- 일정시간마다 들어오는 함수. 
-- 입력변수 : UpdateArg( "WAIT_TIME", "AI_ACTOR" )
function Update()

	u32DiffID = Host:GetDifficulty();
	
	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );
	
	UpdateArg:SetLU32( "WAIT_TIME", 700 );
	
	
	-- 현재 공격 타입을 받아온다.
	u32CurrentAttackType = UpdateArg:GetLU32( "U32_1" );

	-- 현재 공격타입포인트를 받아온다.
	u32CurrentTypePoint = UpdateArg:GetLU32( "U32_2" );

	TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 10000, false, true );
	
	Arcade:Print( string.format( "현재어택타입=%d",u32CurrentAttackType ) );

	--AttackRate = math.random( 1, 100 );

	--보통 난이도
	if u32DiffID == 1 then
		AttackRate = 50;
	--어려움 난이도
	elseif u32DiffID == 2 then
		AttackRate = 65;
	--에스퍼 난이도
	elseif u32DiffID ==3 then
		AttackRate = 80;
	end
	
	RandomAttackRate = math.random( 1, 100 );

	if u32CurrentAttackType == 0 then

		if ( TargetActor ~= nil ) and ( Util:GetDist( AIActor, TargetActor) <= 1000  ) and ( AttackRate > RandomAttackRate ) then
			AttackTypePointUP( 2 );
			--Command_BackMove_ToActor( AIActor, 1750, TargetActor, 2000, math.random( -300, 300), math.random( -300, 300) );
			Command_BackMovingAttack_ToActor( AIActor, 1750, TargetActor, "AATYPE_1", false, 1000, math.random( -300, 300), math.random( -300, 300), 0 )
				
		elseif ( TargetActor ~= nil ) and ( Util:GetDist( AIActor, TargetActor) <= 1000 ) and ( AttackRate <= RandomAttackRate ) then
			Command_Attack( AIActor, TargetActor, "AATYPE_1", false, 0 );
		
		else
		
			if ( TargetActor ~= nil ) and ( Util:GetDist( AIActor, TargetActor) > 1000 ) then

				local myTargetActor = Util:GetAIActorByName( BROKEN_FAM107 );

				if ( myTargetActor ~= nil ) and (Util:GetDist( AIActor, myTargetActor) > 1300) then
					--UpdateArg:SetLU32( "WAIT_TIME", 550 );				
					Command_Move_ToActor( AIActor, 1750, myTargetActor, math.random( -300, 300), math.random( -300, 300) );
					
					Arcade:Print( string.format( "실행" ) );
				
				elseif  ( myTargetActor ~= nil ) and (Util:GetDist( AIActor, myTargetActor) <= 1300) then
					UpdateArg:SetLU32( "WAIT_TIME", 500 );
					Command_Attack( AIActor, myTargetActor, "AATYPE_1", false, 0 );
				end
			end
		end
		

	elseif u32CurrentAttackType == 1 then

		if ( TargetActor ~= nil ) and ( Util:GetDist( AIActor, TargetActor) <= 1000  ) then
			AttackTypePointUP( -1 );
			Command_BackMove_ToActor( AIActor, 1750, TargetActor, 2000, math.random( -300, 300), math.random( -300, 300) );
			
		else
		
			if ( TargetActor ~= nil ) and ( Util:GetDist( AIActor, TargetActor) > 1000 ) then

				local myTargetActor = Util:GetAIActorByName( BROKEN_FAM107 );

				if ( myTargetActor ~= nil ) and (Util:GetDist( AIActor, myTargetActor) > 1300 ) then
					--UpdateArg:SetLU32( "WAIT_TIME", 550 );				
					Command_Move_ToActor( AIActor, 1750, myTargetActor, math.random( -300, 300), math.random( -300, 300) );
				
				elseif  ( myTargetActor ~= nil ) and (Util:GetDist( AIActor, myTargetActor) <= 1300 ) then
					UpdateArg:SetLU32( "WAIT_TIME", 500 );
					Command_Attack( AIActor, myTargetActor, "AATYPE_1", false, 0 );
				end
			end
				
		end
		
	end
	
end



-- 공격타입 결정함수
function AttackTypePointUP( TypePoint )
	
	if TypePoint == -1 then

		UpdateArg:SetLU32( "U32_2",0 );

		u32CurrentTypePoint = UpdateArg:GetLU32( "U32_2" );

	else
		local myCurrentTypePoint = 0
		myCurrentTypePoint = UpdateArg:GetLU32( "U32_2" );
		UpdateArg:SetLU32( "U32_2",myCurrentTypePoint + TypePoint );

		u32CurrentTypePoint = UpdateArg:GetLU32( "U32_2" );
	end

	if u32CurrentTypePoint <= 5 then
		UpdateArg:SetLU32( "U32_1",0 );
	elseif u32CurrentTypePoint > 5 then
		UpdateArg:SetLU32( "U32_1",1 );
	end

end


-- AiActor가 State가 변경될때 들어오는 함수.
-- 입력변수 : StateChangeArg( "NOW_STATE", "PREV_STATE" )
function StateChange()
    
end

-- AiActor가 단위공격이 끝나고 들어오는 함수.
-- 입력변수 : AttackEndArg( "AI_ACTOR" )
function AttackEnd()

end

-- AiActor가 타겟을 죽였을때 들어오는 함수.
-- 입력변수 : KillTargetArg( "AI_ACTOR", "TARGET_ACTOR" )
function KillTarget()
end

-- AiActor가 타겟을 잃어 버렸을경우에 들어오는 함수
-- 입력변수 : LostTargetArg( "AI_ACTOR", "TARGET_ACTOR" )
function LostTarget()
end

-- AiActor가 타겟을 공격성공 했을때 들어오는 함수
-- 입력변수 : HitTargetArg( "AI_ACTOR", "TARGET_ACTOR" )
function HitTarget()
end

-- AiActor가 공격을  받았을때 들어오는 함수.
-- 입력변수 : HitMeArg( "AI_ACTOR", "ATTACK_ACTOR" )
function HitMe()
end

-- AiActor가 Hp가 변경되었을때 들어오는 함수
-- 입력변수 : ChangeHpArg( "AI_ACTOR" )
function ChangeHp()
end

-- TriggerSystem에서 발생한 NotifyID가 들어온다.
-- 입력변수 : TriggerArg( "NOTIFY_ID" )
function TriggerNotifyID()
end
