require "Resources/Script/Arcade_Util.lua"

-- 전역변수
-- Arcade : CArcadeSystem.

-- AI가 플레이어를 기준으로 위치를 잡을 때 사용되는 좌표 값
-- gPosX와 gPosY는 같은 순서 쌍으로 사용되어야 한다.
gPosX = {}
gPosX[1] = 0
gPosX[2] = 500
gPosX[3] = 750
gPosX[4] = 500
gPosX[5] = 0
gPosX[6] = -500
gPosX[7] = -750
gPosX[8] = -500

gPosY = {}
gPosY[1] = 750 
gPosY[2] = 500 
gPosY[3] = 0    
gPosY[4] = -500
gPosY[5] = -750
gPosY[6] = -500
gPosY[7] = 0
gPosY[8] = 500



-- AI의 초기화, Arcade의 스타일에 맞게 Host가 기억할 변수를 설정
-- 입력변수 : AI : CScriptAIController

function Init()

end

-- 일정시간마다 들어오는 함수. 
-- 입력변수 : UpdateArg( "WAIT_TIME", "AI_ACTOR" )
function Update()
	
	u32DiffID = Host:GetDifficulty();
	
	RotateCount = UpdateArg:GetLU32( "U32_1" ); 
	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );
	
	-- 회피 카운트
	g_u32dodgeCount = UpdateArg:GetLU32( "U32_2" );

	-- RotateCount가 0이 되면 AI의 위치를 재설정 하기 위한 값 생성
	if RotateCount == 0 then
		UpdateArg:SetLU32( "U32_1" , math.random( 1, 8 ) );
		RotateCount = UpdateArg:GetLU32( "U32_1" ); 
	end
	
    
	UpdateArg:SetLU32( "WAIT_TIME", 800 + math.random(0, 200) );

	TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 3000, false, true );

	-- 공격을 시도하는지 여부를 판단하기 위한 랜덤 값 생성
	--AttackRate = math.random( 1, 100 );
	
	--보통 난이도
	if u32DiffID == 1 then
		AttackRate = 60;
	--어려움 난이도
	elseif u32DiffID == 2 then
		AttackRate = 75;
	--에스퍼 난이도
	elseif u32DiffID == 3 then
		AttackRate = 90;
	end
	
	RandomAttackRate = math.random( 1, 100 );
	
	if (TargetActor ~= nil) then
		
		if ( AttackRate > RandomAttackRate) and ( Util:GetDist( AIActor, TargetActor) <= 900 ) then
			Command_MovingAttack_ToActor( AIActor, 2250, TargetActor, "AATYPE_1", true, gPosX[RotateCount] + math.random( -200, 200 ), gPosY[RotateCount] + math.random( -200, 200 ), 0 );
		elseif ( AttackRate > RandomAttackRate ) and ( Util:GetDist( AIActor, TargetActor) > 900 ) then
			Command_Move_ToActor( AIActor, 2250, TargetActor, gPosX[RotateCount] + math.random( -200, 200 ), gPosY[RotateCount] + math.random( -200, 200 ) );
		elseif AttackRate <= RandomAttackRate then
			Command_Move_ToActor( AIActor, 2250, TargetActor, gPosX[RotateCount] + math.random( -200, 200 ), gPosY[RotateCount] + math.random( -200, 200 ) );
		end

	else		
		TargetActor = Util:GetActorByMinDist( true, AIActor, 3000, 30000, false, true );

		if (TargetActor ~= nil) then
			Command_Move_ToActor( AIActor, 1750, TargetActor, 0, 0 );
		end

	end		
		UpdateArg:SetLU32( "U32_1", RotateCount );
	
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
	
	AIActor			= HitMeArg:GetAIActor( "AI_ACTOR" );
	TargetActor	= HitMeArg:GetActor( "ATTACK_ACTOR" );
	
	Command_Dodge_ToActor( AIActor, TargetActor, true );
--[[
	-- 회피 코드	
	if g_u32dodgeCount >= 2 then
		-- 공격받으면 회피할 방향 결정
		local myDodgeDirection = math.random( 1, 2);
		
		if myDodgeDirection == 1 then
			
			Arcade:Print( string.format( "왼쪽으로 회피") );
			
			UpdateArg:SetLU32( "U32_2", 0 );
			-- 왼쪽으로 회피
			Command_Dodge_ToActor( AIActor, TargetActor, true );
		elseif myDodgeDirection == 2 then 
			
			Arcade:Print( string.format( "오른쪽으로 회피") );
			-- 회피카운트 초기화
			UpdateArg:SetLU32( "U32_2", 0 );
			-- 오른쪽으로 회피
			Command_Dodge_ToActor( AIActor, TargetActor, false );
		end
		
	else
		-- 닷지카운트 업
		g_u32dodgeCount = UpdateArg:GetLU32( "U32_2" );
		UpdateArg:SetLU32( "U32_2", g_u32dodgeCount + 1 );
	end
--]]
end

-- AiActor가 Hp가 변경되었을때 들어오는 함수
-- 입력변수 : ChangeHpArg( "AI_ACTOR" )
function ChangeHp()
end

-- TriggerSystem에서 발생한 NotifyID가 들어온다.
-- 입력변수 : TriggerArg( "NOTIFY_ID" )
function TriggerNotifyID()

end
