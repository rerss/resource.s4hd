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
	
	u32RotateCount = UpdateArg:GetLU32( "U32_1" ); 
	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );

	-- u32RotateCount가 0이 되면 AI의 위치를 재설정 하기 위한 값 생성
	if u32RotateCount == 0 then
		UpdateArg:SetLU32( "U32_1" , math.random( 1, 8 ) );
		u32RotateCount = UpdateArg:GetLU32( "U32_1" ); 
	end
	
	-- 인비저블 사용여부를 체크하기 위한 값
    u32InviCount = UpdateArg:GetLU32( "U32_2" );

	-- 타겟 액터를 지정
	local myTargetActor = Util:GetActorByMinDist( true, AIActor, 0, 3000, false, true );

	-- 공격을 시도하는지 여부를 판단하기 위한 랜덤 값 생성
	local myAttackRate = math.random( 1, 100 );

	-- 기본 업데이트 주기 설정
	UpdateArg:SetLU32( "WAIT_TIME", 800 + math.random(0, 200) );
	
	if u32InviCount == 0 then
		-- 인비카운트가 0이면 인비저블을 사용하고 인비카운트를 올려줌
		Command_SkillInvisible( AIActor, true );
		UpdateArg:SetLU32( "U32_2", 1 );
	end
	
	if (myTargetActor ~= nil) then
		
		if ( myAttackRate > 75 ) and ( Util:GetDist( AIActor, myTargetActor) <= 900 ) then
			
			UpdateArg:SetLU32( "WAIT_TIME", 3000 );
			
			-- 공격시 인비저블을 해제하고 인비카운트 초기화
			Command_SkillInvisible( AIActor, false );
			UpdateArg:SetLU32( "U32_2", 0 );

			Command_MovingAttack_ToActor( AIActor, 2250, myTargetActor, "AATYPE_1", true, gPosX[u32RotateCount] + math.random( -200, 200 ), gPosY[u32RotateCount] + math.random( -200, 200 ), 0 );
		elseif ( myAttackRate > 75 ) and ( Util:GetDist( AIActor, myTargetActor) > 900 ) then
			Command_Move_ToActor( AIActor, 2250, myTargetActor, gPosX[u32RotateCount] + math.random( -200, 200 ), gPosY[u32RotateCount] + math.random( -200, 200 ) );
		elseif myAttackRate <= 75 then
			Command_Move_ToActor( AIActor, 2250, myTargetActor, gPosX[u32RotateCount] + math.random( -200, 200 ), gPosY[u32RotateCount] + math.random( -200, 200 ) );
		end

	else		
		myTargetActor = Util:GetActorByMinDist( true, AIActor, 3000, 30000, false, true );

		if (myTargetActor ~= nil) then
			Command_Move_ToActor( AIActor, 1750, myTargetActor, 0, 0 );
		end

	end		
		UpdateArg:SetLU32( "U32_1", u32RotateCount );
	
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
