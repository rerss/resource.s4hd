
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

	u32DiffID = Host:GetDifficulty();
	
	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );
    
	UpdateArg:SetLU32( "WAIT_TIME", 700 );

	TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 500, true, true );

	--AttackRate = math.random(1, 100);
	--보통 난이도
	if u32DiffID == 1 then
		AttackRate = 80;
	--어려움 난이도
	elseif u32DiffID == 2 then
		AttackRate = 100;
	--에스퍼 난이도
	elseif u32DiffID ==3 then
		AttackRate =100;
	end
	
	RandomAttackRate = math.random(1, 100);
	
	if (TargetActor ~= nil) and (AttackRate > RandomAttackRate) then
	
		Command_MovingAttack_ToActor( AIActor, 1750, TargetActor, "AATYPE_1", true, math.random(-500, 500),  math.random(-500, 500), 0 );
	
	else
			
		TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 1000, true, true );
			
		if TargetActor ~= nil then
	
			Command_Move_ToActor( AIActor, 1200, TargetActor, math.random(-500, 500), math.random(-500, 500) );
			
		else
			
			TargetActor = Util:GetActorByMinDist( true, AIActor, 1000, 20000, false, true );
			
			if TargetActor ~= nil then
		
				Command_Move_ToActor( AIActor, 1750, TargetActor, math.random(-500, 500), math.random(-500, 500) );
				
			end
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
