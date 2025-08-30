
require "Resources/Script/Arcade_Util.lua"
require "Resources/Script/Arcade_Localize.lua"

-- 전역변수
-- Arcade : CArcadeSystem.

gPunch = {};
gPunch[1] = "AATYPE_1"
gPunch[2] = "AATYPE_2"

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
	
	-- 키치는 공격하지 않는다.
	Util:LockAIActorByName( KICHI );
	
	-- 한계 이동카운트 : 설정된 값이 초과하면 공격 시도를 위해 설정
	local myLimitPathCount = 10;
	
	
	-- 현재 공격 타입을 받아온다.
	u32CurrentAttackType = UpdateArg:GetLU32( "U32_1" );

	-- 현재 공격타입포인트를 받아온다.
	u32CurrentTypePoint = UpdateArg:GetLU32( "U32_2" );
	
	-- 걸림 방지를 위해 이동하기 제한 카운트를 저장한다
	u32CurrentPathCount = UpdateArg:GetLU32( "U32_3" );

	-- 타겟후보
	local myMinDistTargetActor = Util:GetActorByMinDist( true, AIActor, 0, 30000, false, true );
	local myMaxHPTargetActor = Util:GetActorByMaxHP( true, AIActor, 0, 30000, false, true );

	Arcade:Print( string.format( "현재어택타입=%d",u32CurrentAttackType ) );

	--보통 난이도
	if u32DiffID == 1 then
		AttackRate = 50;
	--어려움 난이도
	elseif u32DiffID == 2 then
		AttackRate = 80;
	--에스퍼 난이도
	elseif u32DiffID ==3 then
		AttackRate =100;
	end
	
	-- 급접공격
	if u32CurrentAttackType == 0 then

		if myMinDistTargetActor ~= nil then
			if Util:GetDist( AIActor, myMinDistTargetActor) < 1000 then
				AttackTypePointUP( 3 );
				UpdateArg:SetLU32( "WAIT_TIME", 1600 );				
				Command_Attack( AIActor, myMinDistTargetActor, gPunch[math.random( 1, 2 )], true, 0 );
				Arcade:Print( string.format( "근접공격" ) );
			elseif Util:GetDist( AIActor, myMinDistTargetActor) > 1000 then
				
				-- 이동카운트가 클 경우 근접공격 바로 시도
				if u32CurrentPathCount > myLimitPathCount then
					-- 이동 카운트를 초기화
					AttackTypePointUP( 3 );
					PathCountUP( -1 );		
					UpdateArg:SetLU32( "WAIT_TIME", 1600 );				
					Command_Attack( AIActor, myMinDistTargetActor, gPunch[math.random( 1, 2 )], true, 0 );
					Arcade:Print( string.format( "근접공격" ) );
				
				-- 이동카운트가 적을 경우 타겟을 따라감
				elseif u32CurrentPathCount <= myLimitPathCount then
					UpdateArg:SetLU32( "WAIT_TIME", 650 );

					-- 이동 카운트 올려줌
					PathCountUP( 1 );					
					
					Command_Move_ToActor( AIActor, 750, myMinDistTargetActor, math.random( -500, 500), math.random( -500, 500) );
					Arcade:Print( string.format( "근접공격을위한이동" ) );
				end
				
			end
		else

			myMinDistTargetActor = Util:GetActorByMinDist( true, AIActor, 0, 10000, false, true );

			if myMinDistTargetActor ~= nil then
				UpdateArg:SetLU32( "WAIT_TIME", 650 );				
				Command_Move_ToActor( AIActor, 750, myMinDistTargetActor, math.random( -500, 500), math.random( -500, 500) );
				Arcade:Print( string.format( "근접공격을위한 장거리 이동" ) );
			end
		end

	-- 돌진공격
	elseif u32CurrentAttackType == 1 then

		if myMinDistTargetActor ~= nil then
			if Util:GetDist( AIActor, myMinDistTargetActor) < 3000 then
				AttackTypePointUP( 3 );
				UpdateArg:SetLU32( "WAIT_TIME", 4000 );				
				Command_Attack( AIActor, myMinDistTargetActor, "AATYPE_3", false, 0 );
				Arcade:Print( string.format( "돌진공격" ) );
			elseif Util:GetDist( AIActor, myMinDistTargetActor) > 3000 then
				
				-- 이동카운트가 클 경우 근접공격 바로 시도
				if u32CurrentPathCount > myLimitPathCount then
					-- 이동 카운트를 초기화
					AttackTypePointUP( 3 );
					PathCountUP( -1 );		
					UpdateArg:SetLU32( "WAIT_TIME", 1600 );				
					Command_Attack( AIActor, myMinDistTargetActor, gPunch[math.random( 1, 2 )], true, 0 );
					Arcade:Print( string.format( "근접공격" ) );
				
				-- 이동카운트가 적을 경우 타겟을 따라감
				elseif u32CurrentPathCount <= myLimitPathCount then
					UpdateArg:SetLU32( "WAIT_TIME", 650 );

					-- 이동 카운트 올려줌
					PathCountUP( 1 );					
					
					Command_Move_ToActor( AIActor, 750, myMinDistTargetActor, math.random( -500, 500), math.random( -500, 500) );
					Arcade:Print( string.format( "근접공격을위한이동" ) );
				end
				
			end
		else

			myMinDistTargetActor = Util:GetActorByMinDist( true, AIActor, 0, 10000, false, true );

			if myMinDistTargetActor ~= nil then
				UpdateArg:SetLU32( "WAIT_TIME", 650 );				
				Command_Move_ToActor( AIActor, 750, myMinDistTargetActor, math.random( -500, 500), math.random( -500, 500) );
				Arcade:Print( string.format( "근접공격을위한 장거리 이동" ) );
			end
		end		

	-- 레이저공격
	elseif u32CurrentAttackType == 2 then

		if myMaxHPTargetActor ~= nil then
			AttackTypePointUP( -1 );
			UpdateArg:SetLU32( "WAIT_TIME", 5050 );			
			Command_Attack( AIActor, myMaxHPTargetActor, "AATYPE_4", true, 0 );
			Arcade:Print( string.format( "레이저공격" ) );
		end
		--[[알 수 없는 버그로 주석처리
		else
			myMaxHPTargetActor = Util:GetActorByMaxHP( true, AiActor, 0, 10000, false, true );
			AttackTypePointUP( -1 );
			UpdateArg:SetLU32( "WAIT_TIME", 5050 );
			Command_Attack( AIActor, myMaxHPTargetActor, "AATYPE_4", true, 0 );
			Arcade:Print( string.format( "레이저공격" ) );
		end
		--]]

	end
	Arcade:Print( string.format( "포인트=%d", u32CurrentTypePoint) );

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

	if u32CurrentTypePoint <= 10 then
		UpdateArg:SetLU32( "U32_1",math.random( 0, 1 ) );
	elseif u32CurrentTypePoint > 10 then
		UpdateArg:SetLU32( "U32_1",2 );
	end

end

function PathCountUP( PathPoint )
	
	if PathPoint == -1 then
		
		UpdateArg:SetLU32( "U32_3",0 );
		u32CurrentPathCount = UpdateArg:GetLU32( "U32_3" );
	
	else
		local myCurrentPathCount
		myCurrentPathCount = UpdateArg:GetLU32( "U32_3" );
		UpdateArg:SetLU32( "U32_3",myCurrentPathCount + PathPoint );
		
		myCurrentPathCount = UpdateArg:GetLU32( "U32_3" );
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
