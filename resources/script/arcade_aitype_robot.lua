
require "Resources/Script/Arcade_Util.lua"

-- 전역변수
-- Arcade : CArcadeSystem.

gRandomPos = {}
gRandomPos[1] = -700
gRandomPos[2] = 700




-- AI의 초기화, Arcade의 스타일에 맞게 Host가 기억할 변수를 설정
-- 입력변수 : AI : CScriptAIController

function Init()

end

-- 일정시간마다 들어오는 함수. 
-- 입력변수 : UpdateArg( "WAIT_TIME", "AI_ACTOR" )
function Update()
	
	RotateCount = UpdateArg:GetLU32( "U32_1" ); 
	AIActor			= UpdateArg:GetAIActor( "AI_ACTOR" );

	if RotateCount == 0 then
		UpdateArg:SetLU32( "U32_1" , math.random( 1, 8 ) );
		RotateCount = UpdateArg:GetLU32( "U32_1" ); 
	end
	   
	UpdateArg:SetLU32( "WAIT_TIME", 700 );

	TargetActor = Util:GetActorByMinDist( AIActor, 0, 10000, true, true );

	AttackRate = math.random( 1, 100 );
	
	if (TargetActor ~= nil) and ( RotateCount == 1 ) then
		if AttackRate > 50 then
			Command_MovingAttack_ToActor( AIActor, 1700, TargetActor, "AATYPE_1", true, 0, 900, 0 );
		elseif AttackRate <= 50 then
			Command_Move_ToActor( AIActor, 1700, TargetActor, 0, 900 );
		end
		RotateCount = 2		
	elseif (TargetActor ~= nil) and ( RotateCount == 2 ) then
		if AttackRate > 50 then
			Command_MovingAttack_ToActor( AIActor, 1700, TargetActor, "AATYPE_1", true, 600, 600, 0 );
		elseif AttackRate <= 50 then
			Command_Move_ToActor( AIActor, 1700, TargetActor, 600,600 );
		end
		RotateCount = 3
	elseif (TargetActor ~= nil) and ( RotateCount == 3 ) then
		if AttackRate > 50 then
			Command_MovingAttack_ToActor( AIActor, 1700, TargetActor, "AATYPE_1", true, 900, 0, 0 );
		elseif AttackRate <= 50 then
		Command_Move_ToActor( AIActor, 1700, TargetActor, 900,0 );
		end
		RotateCount = 4
	elseif (TargetActor ~= nil) and ( RotateCount == 4 ) then
		if AttackRate > 50 then
			Command_MovingAttack_ToActor( AIActor, 1700, TargetActor, "AATYPE_1", true, 600, -600, 0 );
		elseif AttackRate <= 50 then
		Command_Move_ToActor( AIActor, 1700, TargetActor, 600,-600 );
		end
		RotateCount = 5
	elseif (TargetActor ~= nil) and ( RotateCount == 5 ) then
		if AttackRate > 50 then
			Command_MovingAttack_ToActor( AIActor, 1700, TargetActor, "AATYPE_1", true, 0, -900, 0 );
		elseif AttackRate <= 50 then
		Command_Move_ToActor( AIActor, 1700, TargetActor, 0,-900 );
		end
		RotateCount = 6
	elseif (TargetActor ~= nil) and ( RotateCount == 6 ) then
		if AttackRate > 50 then
			Command_MovingAttack_ToActor( AIActor, 1700, TargetActor, "AATYPE_1", true, -600, -600, 0 );
		elseif AttackRate <= 50 then
		Command_Move_ToActor( AIActor, 1700, TargetActor, -600,-600 );
		end
		RotateCount = 7
	elseif (TargetActor ~= nil) and ( RotateCount == 7 ) then
		if AttackRate > 50 then
			Command_MovingAttack_ToActor( AIActor, 1700, TargetActor, "AATYPE_1", true, -900, 0, 0 );
		elseif AttackRate <= 50 then
		Command_Move_ToActor( AIActor, 1700, TargetActor, -900,0 );
		end
		RotateCount = 8
	elseif (TargetActor ~= nil) and ( RotateCount == 8 ) then
		if AttackRate > 50 then
			Command_MovingAttack_ToActor( AIActor, 1700, TargetActor, "AATYPE_1", true, -600, 600, 0 );
		elseif AttackRate <= 50 then
		Command_Move_ToActor( AIActor, 1700, TargetActor, -600,600 );
		end
		RotateCount = 1
	else
	
		TargetActor = Util:GetActorByMinDist( AIActor, 0, 10000, true, true );

		if (TargetActor ~= nil) then
	
			Command_Move_ToActor( AIActor, 1400, TargetActor, gRandomPos[math.random(1, 2)], gRandomPos[math.random(1, 2)] );

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
end

-- AiActor가 Hp가 변경되었을때 들어오는 함수
-- 입력변수 : ChangeHpArg( "AI_ACTOR" )
function ChangeHp()
end

-- TriggerSystem에서 발생한 NotifyID가 들어온다.
-- 입력변수 : TriggerArg( "NOTIFY_ID" )
function TriggerNotifyID()

end
