
require "Resources/Script/Arcade_Util.lua"

-- 전역변수
-- Arcade : CArcadeSystem.

gPosX = {}
gPosX[1] = 0
gPosX[2] = 600
gPosX[3] = 900
gPosX[4] = 600
gPosX[5] = 0
gPosX[6] = -600
gPosX[7] = -900
gPosX[8] = -600

gPosY = {}
gPosY[1] = -900 
gPosY[2] = -600 
gPosY[3] = 0    
gPosY[4] = 600
gPosY[5] = 900
gPosY[6] = 600
gPosY[7] = 0
gPosY[8] = -600

--gCount = 0

-- AI의 초기화, Arcade의 스타일에 맞게 Host가 기억할 변수를 설정
-- 입력변수 : AI : CScriptAIController

function Init()

end

-- 일정시간마다 들어오는 함수. 
-- 입력변수 : UpdateArg( "WAIT_TIME", "AI_ACTOR" )
function Update()
	
	-- NPC가 정해진 포지션을 주기적으로 이동하기 위해 사용하는 카운트
	RotateCount = UpdateArg:GetLU32( "U32_1" ); 
	PostionCount = UpdateArg:GetLU32( "U32_2" );
	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );

	-- 초기에 NPC에게 포지션을 랜덤으로 지정해 준다.
	if RotateCount == 0 then
		UpdateArg:SetLU32( "U32_1" , math.random( 1, 8 ) );
		RotateCount = UpdateArg:GetLU32( "U32_1" ); 
	elseif RotateCount > 8 then
		RotateCount = 1;
	end
	
	local AttackLimitCount = math.random( 2, 5 );
	
	-- NPC의 이동속도와 이동 포지션을 고려하여 지정된 알맞은 이동주기 값을 설정 해주어야 NPC가 부드럽게 이동함   
	UpdateArg:SetLU32( "WAIT_TIME", 1000 );

	TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 3000, false, true );

	if (TargetActor ~= nil) and ( PostionCount < AttackLimitCount ) and ( RotateCount ~= 0 ) and ( Util:GetDist( AIActor, TargetActor) > 900 ) then
		Command_Move_ToActor( AIActor, 2700, TargetActor, gPosX[RotateCount], gPosY[RotateCount] );
		UpdateArg:SetLU32( "U32_1" , RotateCount +1 );
		UpdateArg:SetLU32( "U32_2", PostionCount +1 );

		Arcade:Print( string.format( "실행1") ); 
		Arcade:Print( string.format( "%d", PostionCount) ); 

	elseif (TargetActor ~= nil) and ( PostionCount < AttackLimitCount ) and ( RotateCount ~= 0 ) and ( Util:GetDist( AIActor, TargetActor) <= 900 ) then
			Command_Move_ToActor( AIActor, 2700, TargetActor, gPosX[RotateCount], gPosY[RotateCount] );
			UpdateArg:SetLU32( "U32_1" , RotateCount +1 );
			UpdateArg:SetLU32( "U32_2", PostionCount +1 );
	
		Arcade:Print( string.format( "실행2") ); 
		Arcade:Print( string.format( "%d", PostionCount) ); 

	elseif (TargetActor ~= nil) and ( PostionCount >= AttackLimitCount ) and ( RotateCount ~= 0 ) and ( Util:GetDist( AIActor, TargetActor) > 900 ) then
			Command_Move_ToActor( AIActor, 2700, TargetActor, gPosX[RotateCount], gPosY[RotateCount] );
			UpdateArg:SetLU32( "U32_1" , RotateCount +1 );

		Arcade:Print( string.format( "실행3") ); 
		Arcade:Print( string.format( "%d", PostionCount) ); 

	elseif (TargetActor ~= nil) and ( PostionCount >= AttackLimitCount ) and ( RotateCount ~= 0 ) and ( Util:GetDist( AIActor, TargetActor) <= 900 ) then
			--Command_Move_ToActor( AIActor, 2700, TargetActor, gPosX[RotateCount], gPosY[RotateCount] );
			Command_MovingAttack_ToActor( AIActor, 1700, TargetActor, "AATYPE_1", true, gPosX[RotateCount], gPosY[RotateCount], 0 );
			UpdateArg:SetLU32( "U32_1" , RotateCount +1 );
			UpdateArg:SetLU32( "U32_2", 0 );
	
		Arcade:Print( string.format( "실행4") ); 
		Arcade:Print( string.format( "%d", PostionCount) ); 
	end

		TargetActor = Util:GetActorByMinDist( true, AIActor, 3000, 30000, false, true );

		if (TargetActor ~= nil) then		
			Command_Move_ToActor( AIActor, 1700, TargetActor, 0, 0 );
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
