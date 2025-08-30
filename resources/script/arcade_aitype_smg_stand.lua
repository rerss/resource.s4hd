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
	
	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );
	
	-- 타겟 설정
	TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 10000, false, true );

	-- 난이도 가져옴
	u32DiffID = Host:GetDifficulty();
	
	-- 난이도 설정 관련 변수 생성
	local AimRate
	local AttackAfterWaitTime
	
	--보통 난이도
	if u32DiffID == 1 then
		AimRate = 120;
		AttackAfterWaitTime = 2750;
	--어려움 난이도
	elseif u32DiffID == 2 then
		AimRate = 75;
		AttackAfterWaitTime = 2000;
	--에스퍼 난이도
	elseif u32DiffID == 3 then
		AimRate = 50;
		AttackAfterWaitTime = 1500;
	end
	
	-- 패턴코드	
	if (TargetActor ~= nil) and ( Util:GetDistByDefenseArea( AIActor ) >= 50 ) then
		UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300 ) );
		Command_Move_ToDefenseArea( AIActor, 3500, 0, 0 );
	elseif (TargetActor ~= nil) and ( Util:GetDistByDefenseArea( AIActor ) < 50 ) then
		UpdateArg:SetLU32( "WAIT_TIME", AttackAfterWaitTime + math.random( 0, 300 ) );
		Command_Attack( AIActor, TargetActor, "AATYPE_1", true, AimRate )
	else
		TargetActor = Util:GetActorByMinDist( true, AIActor, 10000, 30000, false, true );
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
