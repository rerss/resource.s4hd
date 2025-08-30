
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

gStrTarget = 0

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

	-- NPC가 바인드를 사용할 수 있도록 카운트를 센다
	u32BindCount = UpdateArg:GetLU32( "U32_2" );

	-- 초기에 NPC에게 포지션을 랜덤으로 지정해 준다.
	if RotateCount == 0 then
		UpdateArg:SetLU32( "U32_1" , math.random( 1, 8 ) );
		RotateCount = UpdateArg:GetLU32( "U32_1" ); 
	elseif RotateCount > 8 then
		RotateCount = 1;
	end
	
	-- NPC의 이동속도와 이동 포지션을 고려하여 지정된 알맞은 이동주기 값을 설정 해주어야 NPC가 부드럽게 이동함
   
	UpdateArg:SetLU32( "WAIT_TIME", 700 );

	-- 타겟을 지정한다.
	local myTargetAI = Util:GetAIActorByName( INFECTED_TEAJO );
	local myTargetMinPlayer = Util:GetActorByMinDist( true, AIActor, 0, 30000, false, true );

	AttackRate = math.random( 1, 100 );
	
	if (myTargetAI ~= nil) and (myTargetMinPlayer ~= nil) and ( RotateCount ~= 0 ) then
		
		-- 타겟 플레이어가 일정거리 안에 있을 경우
		if Util:GetDist( AIActor, myTargetAI ) < 1500 then

			if Util:GetDist( AIActor, myTargetMinPlayer ) < 1500 then
				if u32BindCount > 10 then
					UpdateArg:SetLU32( "WAIT_TIME", 700 );
					BindCountUP( -1 );
					Command_Attack( AIActor, myTargetMinPlayer, "AATYPE_1", true, 0 );
				elseif u32BindCount <= 10 then
					UpdateArg:SetLU32( "WAIT_TIME", 700 );
					BindCountUP( 1 );
					Command_Move_ToActor( AIActor, 1700, myTargetAI, gPosX[RotateCount], gPosY[RotateCount] );
					UpdateArg:SetLU32( "U32_1" , RotateCount +1 );
				end
			else
				UpdateArg:SetLU32( "WAIT_TIME", 700 );
				BindCountUP( 1 );
				Command_Move_ToActor( AIActor, 1700, myTargetAI, gPosX[RotateCount], gPosY[RotateCount] );
				UpdateArg:SetLU32( "U32_1" , RotateCount +1 );
			end

		-- 타겟 플레이어가 일정거리 이상 떨어져 있을 경우
		elseif Util:GetDist( AIActor, myTargetAI) > 1500 then
			UpdateArg:SetLU32( "WAIT_TIME", 700 );
			BindCountUP( 1 );
			Command_Move_ToActor( AIActor, 1700, myTargetAI, gPosX[RotateCount], gPosY[RotateCount] );
			UpdateArg:SetLU32( "U32_1" , RotateCount +1 );
		end
		
	else
	
		myTargetAI = Util:GetAIActorByName( INFECTED_TEAJO );

		if ( myTargetMinPlayer ~= nil ) and ( myTargetAI ~= nil ) then		
			UpdateArg:SetLU32( "WAIT_TIME", 700 );
			BindCountUP( 1 );
			Command_Move_ToActor( AIActor, 1700, myTargetAI, gPosX[RotateCount], gPosY[RotateCount] );
			UpdateArg:SetLU32( "U32_1" , RotateCount +1 );
		end
	
	end
	
end


-------------------------------------------------------------------
-- 바인드 사용 카운트 업 함수
-- 입력변수 bindcount
-------------------------------------------------------------------
function BindCountUP( bindcount )
	
	if bindcount == -1 then
		-- 바인드카운터로 사용하는 컨테이터 값을 초기화
		UpdateArg:SetLU32( "U32_2", 0 );
	else
		-- 입력된 bindcount 값을 가져와 컨테이너 데이터에 누적
		local myCurrentBindCount = UpdateArg:GetLU32( "U32_2" );
		UpdateArg:SetLU32( "U32_2", myCurrentBindCount + bindcount );
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
