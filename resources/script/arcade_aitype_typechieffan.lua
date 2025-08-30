
require "Resources/Script/Arcade_Util.lua"

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
	
   
	UpdateArg:SetLU32( "WAIT_TIME", 700 );

	TargetActor = Util:GetActorByMinHP( true, AIActor, 0, 3000 - math.random( 1, 2000), true, true );

	AttackRate = math.random( 1, 100 );

	if  (TargetActor ~= nil)  and (Util:GetDist( AIActor, TargetActor) <= 2500)  and ( AttackRate > 50 ) then
		Command_BackMove_ToActor( AIActor, 1750, TargetActor, 1000, math.random( -500, 500), math.random( -500, 500) );

	elseif (TargetActor ~= nil)  and (Util:GetDist( AIActor, TargetActor) <= 2500)  and ( AttackRate <= 50 ) then
		Command_BackMovingAttack_ToActor( AIActor, 1750, TargetActor, "AATYPE_1", true, 1000, math.random( -500, 500), math.random( -500, 500), math.min(300, Util:GetDist( AIActor, TargetActor)/10) );

	elseif (TargetActor ~= nil) and (Util:GetDist( AIActor, TargetActor) > 2500 ) and ( AttackRate > 90) then
		--Command_Move_ToActor( AIActor, 300, TargetActor, math.random( -500, 500), math.random( -500, 500) )
		Command_Stop ( AIActor );

	elseif (TargetActor ~= nil) and (Util:GetDist( AIActor, TargetActor) > 2500 ) and ( AttackRate <= 90) then		
		Command_Attack( AIActor, TargetActor, "AATYPE_1", true, math.min(300, Util:GetDist( AIActor, TargetActor)/10) );
	
	else
			
		TargetActor = Util:GetActorByMinDist( true, AIActor, 3000, 10000, false, true );
			
		if TargetActor ~= nil then
			-- 네트워크 지연문제로 250 정도 더한다.
			Command_Move_ToActor( AIActor, 1750, TargetActor, math.random( -500, 500), math.random( -500, 500) );
	
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
end

-- AiActor가 Hp가 변경되었을때 들어오는 함수
-- 입력변수 : ChangeHpArg( "AI_ACTOR" )
function ChangeHp()
end

-- TriggerSystem에서 발생한 NotifyID가 들어온다.
-- 입력변수 : TriggerArg( "NOTIFY_ID" )
function TriggerNotifyID()

end
