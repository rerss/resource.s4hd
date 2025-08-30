
require "Resources/Script/Arcade_Util.lua"
require "Resources/Script/Arcade_Localize.lua"

-- 전역변수
-- Arcade : CArcadeSystem.

-- AI의 초기화, Arcade의 스타일에 맞게 Host가 기억할 변수를 설정
-- 입력변수 : AI : CScriptAIController
function Init()

end

-- 일정시간마다 들어오는 함수. 
-- 입력변수 : UpdateArg( "WAIT_TIME", "AI_ACTOR" )
function Update()

	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );

	-- 회피 카운트
	g_u32dodgeCount = UpdateArg:GetLU32( "U32_1" );
	
	-- 키치와 거리체크를 위해 키치 타겟을 별도로 저장한다.
	g_SpecialTargetActor = Util:GetAIActorByName( KICHI );
		
	-- 키치 공격카운트
	g_KichiAttackCount = UpdateArg:GetLU32( "U32_2" );
	
	-- 타겟 설정
	if g_KichiAttackCount >= 1 then
	
		g_myTargetActor = g_SpecialTargetActor;
		
	elseif ( g_KichiAttackCount == 0 ) and ( g_SpecialTargetActor ~= nil ) then
	
		if Util:GetDist( AIActor, g_SpecialTargetActor ) > 3000 then
			g_myTargetActor = g_SpecialTargetActor;
			UpdateArg:SetLU32( "U32_2", 1 );
		elseif Util:GetDist( AIActor, g_SpecialTargetActor ) <= 3000 then
			Util:LockAIActorByName( KICHI )
			g_myTargetActor = Util:GetActorByMinDist( true, AIActor, 0, 3000, false, true );
		end
		
	end	
	
    
	UpdateArg:SetLU32( "WAIT_TIME", 700 );
	
	-- 공격확률 정하기
	AttackRate = math.random(1, 100);
	
	-- 타겟이 있을 때
	if g_myTargetActor ~= nil then
	
		-- 거리가 가까울 때
		if Util:GetDist( AIActor, g_myTargetActor) <= 700 then
			-- 공격
			UpdateArg:SetLU32( "WAIT_TIME", 700 );
			-- 키치타겟 초기화
			UpdateArg:SetLU32( "U32_2", 0 );
			Command_MovingAttack_ToActor( AIActor, 1750, g_myTargetActor, "AATYPE_1", true, 0, 0, 0 );			

		-- 거리가 멀 때
		elseif Util:GetDist( AIActor, g_myTargetActor) > 700 then
			-- 이동
			UpdateArg:SetLU32( "WAIT_TIME", 700 );
			Command_Move_ToActor( AIActor, 1200, g_myTargetActor, math.random(-700, 700), math.random(-700, 700) );
		end
	
	-- 타겟이 없을 때
	else
		g_myTargetActor = Util:GetActorByMinDist( true, AIActor, 3000, 30000, false, true );
		if g_myTargetActor ~= nil then
			-- 이동
			UpdateArg:SetLU32( "WAIT_TIME", 700 );
			Command_Move_ToActor( AIActor, 1200, g_myTargetActor, math.random(-700, 700), math.random(-700, 700) );
		end	
		
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
	-- 닷지카운트를 가져온다
	g_u32dodgeCount = UpdateArg:GetLU32( "U32_1" );
	
	-- 회피 코드	
	if g_u32dodgeCount >= 3 then
		-- 공격받으면 회피할 방향 결정
		local myDodgeDirection = math.random( 1, 3);
		
		if myDodgeDirection == 1 then
			
			Arcade:Print( string.format( "왼쪽으로 회피") );
			
			UpdateArg:SetLU32( "U32_1", 0 );
			-- 왼쪽으로 회피
			Command_Dodge_ToActor( AIActor, g_myTargetActor, true );
		elseif myDodgeDirection == 2 then 
			
			Arcade:Print( string.format( "오른쪽으로 회피") );
			-- 회피카운트 초기화
			UpdateArg:SetLU32( "U32_1", 0 );
			-- 오른쪽으로 회피
			Command_Dodge_ToActor( AIActor, g_myTargetActor, false );
		end
		
	else
		-- 닷지카운트 업
		g_u32dodgeCount = UpdateArg:GetLU32( "U32_1" );
		UpdateArg:SetLU32( "U32_1", g_u32dodgeCount + 1 );
	end
	
end

-- AiActor가 Hp가 변경되었을때 들어오는 함수
-- 입력변수 : ChangeHpArg( "AI_ACTOR" )
function ChangeHp()
end

-- TriggerSystem에서 발생한 NotifyID가 들어온다.
-- 입력변수 : TriggerArg( "NOTIFY_ID" )
function TriggerNotifyID()

end
