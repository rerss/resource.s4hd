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


	UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300 ) );
	
	-- 타겟설정
	--myKichi = Util:GetAIActorByName( KICHI );
	myTargetPlayer = Util:GetActorByMinDist( true, AIActor, 0, 30000, false, true );
	
	--[[if myKichi == nil then
		myKichi = myTargetPlayer;
	end--]]
	
	-- 자폭카운트
	g_u32BoomCount = UpdateArg:GetLU32( "U32_1" );

	-- 랜덤루트 범위설정
	--local myDistValue = Util:GetDist( AIActor, myKichi );
	local myTargetPlayerDistValue = Util:GetDist( AIActor, myTargetPlayer );
	
	
	-- AI 패턴 시작
	
	if g_u32BoomCount ~= 1 then
	
		if Util:GetHPRate( AIActor ) > 0.1 then
		
			if myTargetPlayerDistValue < 500 then
				UpdateArg:SetLU32( "WAIT_TIME", 1100 );
				Command_Attack( AIActor, myTargetPlayer, "AATYPE_1", false, 0 );				
		--[[		else

				if myKichi ~= nil then
				
					if myDistValue > 700 then
						UpdateArg:SetLU32( "WAIT_TIME", 700 );
						Command_Move_ToActor( AIActor, 1000, myKichi, math.random( 0, 500 ), math.random( 0, 500 ) );
					elseif myDistValue <= 700 then
						UpdateArg:SetLU32( "WAIT_TIME", 1100 );
						UpdateArg:SetLU32( "U32_1", 1 );
						Command_Attack( AIActor, myKichi, "AATYPE_3", false, 0 );
					end
				
				else
					myKichi = Util:GetActorByMinDist( true, AIActor, 0, 30000, false, true );
					UpdateArg:SetLU32( "WAIT_TIME", 700 );
					Command_Move_ToActor( AIActor, 1000, myKichi, math.random( 0, 500 ), math.random( 0, 500 ) );
				end
				--]]
			end
			
		elseif Util:GetHPRate( AIActor ) < 0.1 then
			UpdateArg:SetLU32( "WAIT_TIME", 1100 );
			UpdateArg:SetLU32( "U32_1", 1 );
			Command_Attack( AIActor, myTargetPlayer, "AATYPE_3", false, 0 );
			--Command_Attack( AIActor, myKichi, "AATYPE_3", false, 0 );
		end
		
	elseif g_u32BoomCount == 1 then
		Command_Death( AIActor );
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
