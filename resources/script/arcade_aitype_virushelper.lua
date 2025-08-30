
require "Resources/Script/Arcade_Util.lua"
require "Resources/Script/Arcade_Localize.lua"

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
gPosY[1] = 900 
gPosY[2] = 600 
gPosY[3] = 0    
gPosY[4] = -600
gPosY[5] = -900
gPosY[6] = -600
gPosY[7] = 0
gPosY[8] = 600


-- AI의 초기화, Arcade의 스타일에 맞게 Host가 기억할 변수를 설정
-- 입력변수 : AI : CScriptAIController

function Init()

end

-- 일정시간마다 들어오는 함수. 
-- 입력변수 : UpdateArg( "WAIT_TIME", "AI_ACTOR" )
function Update()

	u32DiffID = Host:GetDifficulty();
	
	-- NPC가 정해진 포지션을 주기적으로 이동하기 위해 사용하는 카운트
	RotateCount = UpdateArg:GetLU32( "U32_1" ); 

	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );

	-- 초기에 NPC에게 포지션을 랜덤으로 지정해 준다.
	if RotateCount == 0 then
		UpdateArg:SetLU32( "U32_1" , math.random( 1, 8 ) );
		RotateCount = UpdateArg:GetLU32( "U32_1" ); 
	elseif RotateCount > 8 then
		RotateCount = 1;
	end
	
	-- NPC의 이동속도와 이동 포지션을 고려하여 지정된 알맞은 이동주기 값을 설정 해주어야 NPC가 부드럽게 이동함
   
	UpdateArg:SetLU32( "WAIT_TIME", 700 );
	
	local myEnemyTarget = Util:GetActorByMinDist( true, AIActor, 0, 30000, false, true );
	
	TargetActor = Util:GetAIActorByName( MOTHER_VIRUS );

	--AttackRate = math.random( 1, 100 );
	
	--보통 난이도
	if u32DiffID == 1 then
		AttackRate = 20;
	--어려움 난이도
	elseif u32DiffID == 2 then
		AttackRate = 30;
	--에스퍼 난이도
	elseif u32DiffID == 3 then
		AttackRate = 40;
	end
	
	RandomAttackRate = math.random( 1, 100 );
	
	-- 적군이 있을때만 회복
	if myEnemyTarget ~= nil then
	
		if (TargetActor ~= nil) and ( RotateCount ~= 0 ) then
			
			if Util:GetDist( AIActor, TargetActor) < 900 then

				if AttackRate > RandomAttackRate then
					UpdateArg:SetLU32( "WAIT_TIME", 1500 );
					Command_Attack( AIActor, TargetActor, "AATYPE_1", false, 0 );
				elseif AttackRate <= RandomAttackRate then
					UpdateArg:SetLU32( "WAIT_TIME", 700 );
					Command_Move_ToActor( AIActor, 1700, TargetActor, gPosX[RotateCount], gPosY[RotateCount] );
					UpdateArg:SetLU32( "U32_1" , RotateCount +1 );
				end
			
			elseif Util:GetDist( AIActor, TargetActor) > 900 then
				UpdateArg:SetLU32( "WAIT_TIME", 700 );
				Command_Move_ToActor( AIActor, 1700, TargetActor, gPosX[RotateCount], gPosY[RotateCount] );
				UpdateArg:SetLU32( "U32_1" , RotateCount +1 );
			end
			
		else
		
			TargetActor = Util:GetActorByMinDist( true, AIActor, 4000, 30000, false, true );

			if (TargetActor ~= nil) then		
				UpdateArg:SetLU32( "WAIT_TIME", 700 );
				Command_Move_ToActor( AIActor, 1400, TargetActor, 0, 0 );
			end
		
		end
	-- 적군이 없을 때 회복을 멈춘다
	else
	
		if (TargetActor ~= nil) and ( RotateCount ~= 0 ) then
			
			if Util:GetDist( AIActor, TargetActor) < 900 then

				if AttackRate > RandomAttackRate   then
					UpdateArg:SetLU32( "WAIT_TIME", 1500 );
					Command_Move_ToActor( AIActor, 1700, TargetActor, gPosX[RotateCount], gPosY[RotateCount] );
				elseif AttackRate <= RandomAttackRate then
					UpdateArg:SetLU32( "WAIT_TIME", 700 );
					Command_Move_ToActor( AIActor, 1700, TargetActor, gPosX[RotateCount], gPosY[RotateCount] );
					UpdateArg:SetLU32( "U32_1" , RotateCount +1 );
				end
			
			elseif Util:GetDist( AIActor, TargetActor) > 900 then
				UpdateArg:SetLU32( "WAIT_TIME", 700 );
				Command_Move_ToActor( AIActor, 1700, TargetActor, gPosX[RotateCount], gPosY[RotateCount] );
				UpdateArg:SetLU32( "U32_1" , RotateCount +1 );
			end
			
		else
		
			TargetActor = Util:GetActorByMinDist( true, AIActor, 4000, 30000, false, true );

			if (TargetActor ~= nil) then		
				UpdateArg:SetLU32( "WAIT_TIME", 700 );
				Command_Move_ToActor( AIActor, 1400, TargetActor, 0, 0 );
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
