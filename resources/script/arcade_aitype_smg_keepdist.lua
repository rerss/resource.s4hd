
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
   
   -- AI 판단주기 설정
	UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );

	-- 타겟 선정
	local myTargetActor = Util:GetActorByMinDist( true, AIActor, 0, 2500, false, true );

	-- 공격확률 선정
	--local myAttackRate = math.random( 1, 100 );

	-- 타겟이 있을 때
	if myTargetActor ~= nil then
		
		--보통 난이도
			if u32DiffID == 1 then
				AttackRate = 30;
				AimRate = math.min( 300, Util:GetDist( AIActor, myTargetActor)/6);
				AimRateA = math.min(300, Util:GetDist( AIActor, myTargetActor)/10);
			-- 어려움 난이도
			elseif u32DiffID == 2 then
				AttackRate = 60;
				AimRate = math.min( 100, Util:GetDist( AIActor, myTargetActor)/6);
				AimRateA = math.min( 100, Util:GetDist( AIActor, myTargetActor)/10);
			--에스퍼 난이도			
			elseif u32DiffID == 3 then
				AttackRate = 90;
				AimRate = 50;
				AimRateA = 0;
			end
			
			local myRandomAttackRate = math.random( 1, 100 );
			
		-- 타겟 플레이어와의 거리가 가까울 때
		if Util:GetDist( AIActor, myTargetActor) <= 1500 then
			
			-- 공격확률이 높으면 공격하면서 뒤로이동
			if AttackRate > myRandomAttackRate then
				UpdateArg:SetLU32( "WAIT_TIME", 1000 + math.random( 0, 300) );
				Command_BackMovingAttack_ToActor( AIActor, 1750, myTargetActor, "AATYPE_1", false, 1000, math.random( -500, 500), math.random( -500, 500), AimRate );

			-- 공격확률이 낮으면 공격안하고 뒤로이동
			elseif AttackRate <= myRandomAttackRate then
				UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
				Command_BackMove_ToActor( AIActor, 1750, myTargetActor, 1000, math.random( -300, 300), math.random( -300, 300) );			
			end

		-- 타겟 플레이어와의 거리가 목표 거리일 때
		elseif ( Util:GetDist( AIActor, myTargetActor) > 1500 ) and ( Util:GetDist( AIActor, myTargetActor) < 2500 )then
			
			-- 타겟목표와의 사이에 장애물이 있을경우
			if Util:IsVisible( AIActor, myTargetActor ) == false then
				Command_MovingAttack_ToActor( AIActor, 1750, myTargetActor,  "AATYPE_1", false, math.random( -500, 500), math.random( -500, 500), AimRate );
			-- 타겟목표와의 사이에 장애물이 없을 경우
			else
				UpdateArg:SetLU32( "WAIT_TIME", 1000 + math.random( 0, 300) );
				Command_Attack( AIActor, myTargetActor, "AATYPE_1", false, AimRateA );
			end
		
		-- 타겟 플레이어와의 거리가 목표거리보다 멀 때
		elseif Util:GetDist( AIActor, myTargetActor) > 2500 then

			-- 공격확률이 높으면 공격하면서 앞으로 이동
			if AttackRate > myRandomAttackRate then
				UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
				Command_MovingAttack_ToActor( AIActor, 1750, myTargetActor,  "AATYPE_1", false, math.random( -500, 500), math.random( -500, 500), AimRate );
			-- 공격확률이 낮으면 공격안하고 앞으로 이동
			elseif AttackRate <= myRandomAttackRate then
				UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
				Command_Move_ToActor( AIActor, 1750, myTargetActor, math.random( -500, 500), math.random( -300, 300) );
			end
		end
	
	-- 타겟이 없을 때
	else
		
		-- 타겟을 검색
		local myTargetActor = Util:GetActorByMinDist( true, AIActor, 0, 30000, false, true );

		if myTargetActor ~= nil then
			UpdateArg:SetLU32( "WAIT_TIME", 700 );
			Command_Move_ToActor( AIActor, 1750, myTargetActor, math.random( -500, 500), math.random( -300, 300) );
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
