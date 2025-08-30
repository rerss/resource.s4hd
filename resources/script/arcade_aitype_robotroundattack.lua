
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

	--TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 4000, false, true );
	TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 6000, false, true );

	-- 난이도에 따른 난이도 조절 변수 설정
	local AimRate
	local AttackAfterWaitTime
	
	-- 난이도 받아옴
	u32DiffID = Host:GetDifficulty();
	if TargetActor ~= nil then
		--보통 난이도	
		if u32DiffID == 1 then
			AttackRate = 50;
			AttackAfterWaitTime = 2000;
			AimRate = math.min( 300, Util:GetDist( AIActor, TargetActor)/7);
		--어려움 난이도
		elseif u32DiffID == 2 then
			AttackRate = 65;
			AttackAfterWaitTime = 1500;
			AimRate = math.min( 100, Util:GetDist( AIActor, TargetActor)/10);
		--에스퍼 난이도
		elseif u32DiffID == 3 then
			AttackRate = 80;
			AttackAfterWaitTime = 1000;
			AimRate = 0;
		end
		
	-- 타겟이 설정 안된경우 타겟을 잡아준다
	else
		TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 30000, false, true );		
		--보통 난이도	
		if u32DiffID == 1 then
			AttackRate = 50;			
		--어려움 난이도
		elseif u32DiffID == 2 then
			AttackRate = 65;			
		--에스퍼 난이도
		elseif u32DiffID == 3 then
			AttackRate = 80;			
		end		
	end
	
	RandomAttackRate = math.random( 1, 100 );
	
	if (TargetActor ~= nil) and ( RotateCount ~= 0 ) then
		
		if (AttackRate > RandomAttackRate) and ( Util:GetDist( AIActor, TargetActor) <= 4000 ) then
			UpdateArg:SetLU32( "WAIT_TIME", AttackAfterWaitTime + math.random( 0, 300 ) );
			Command_MovingAttack_ToActor( AIActor, 1700, TargetActor, "AATYPE_1", false, gPosX[RotateCount], gPosY[RotateCount], AimRate );
			
		elseif (AttackRate > RandomAttackRate) and ( Util:GetDist( AIActor, TargetActor) > 4000 ) then
			UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300 ) );
			Command_Move_ToActor( AIActor, 1700, TargetActor, gPosX[RotateCount], gPosY[RotateCount] );
			UpdateArg:SetLU32( "U32_1" , RotateCount +1 );
			
		elseif AttackRate <= RandomAttackRate then
			UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300 ) );
			Command_Move_ToActor( AIActor, 1700, TargetActor, gPosX[RotateCount], gPosY[RotateCount] );
			UpdateArg:SetLU32( "U32_1" , RotateCount +1 );

		end	
	else
		TargetActor = Util:GetActorByMinDist( true, AIActor, 6000, 30000, false, true );
		
		if (TargetActor ~= nil) then	
			UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300 ) );
			Command_Move_ToActor( AIActor, 1400, TargetActor, 0, 0 );
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
