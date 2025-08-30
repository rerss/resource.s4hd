
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

	-- AI 스크립트 다시 읽기 까지의 딜레이 설정
	UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
	
	-- 타겟 액터 설정
	g_TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 30000, false, true );
	
	-- 디펜스카운트
	g_u32DefenceCount = UpdateArg:GetLU32( "U32_1" );
	
	-- 타겟 액터가 있을 때
	if g_TargetActor ~= nil then
		
			--보통 난이도
			if u32DiffID == 1 then
				AimRate = math.min( 300, Util:GetDist( AIActor, g_TargetActor)/6);
				AimRateA = math.min(300, Util:GetDist( AIActor, g_TargetActor)/10);
			-- 어려움 난이도
			elseif u32DiffID == 2 then
				AimRate = math.min( 100, Util:GetDist( AIActor, g_TargetActor)/6);
				AimRateA = math.min( 100, Util:GetDist( AIActor, g_TargetActor)/10);
			--에스퍼 난이도			
			elseif u32DiffID == 3 then
				AimRate = 50;
				AimRateA = 0;
			end
			
		-- 대상과의 거리가 많이 떨어져 있을 경우
		if Util:GetDist( AIActor, g_TargetActor) > 5000 then
			Arcade:Print( string.format( "멀리있는 대상 쫓기" ) );
			UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
			Command_MovingAttack_ToActor( AIActor, 1750, g_TargetActor,  "AATYPE_1", true, math.random( -500, 500), math.random( -500, 500), AimRate );

		-- 대상과의 거리가 일정 거리를 유지할 경우
		elseif ( Util:GetDist( AIActor, g_TargetActor) > 2000 ) and ( Util:GetDist( AIActor, g_TargetActor) <= 5000 ) then
		
			-- 대상이 보일 경우
			if Util:IsVisible( AIActor, g_TargetActor ) == true then
				Arcade:Print( string.format( "대상이 보이기 때문에 쏜다" ) );
				UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
				Command_Attack( AIActor, g_TargetActor, "AATYPE_1", true, AimRateA );
			
			-- 대상이 보이지 않을 경우
			elseif Util:IsVisible( AIActor, g_TargetActor ) == false then
				Arcade:Print( string.format( "대상이 보이지 않아서 이동하면서 쏜다" ) );
				UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
				Command_MovingAttack_ToActor( AIActor, 1750, g_TargetActor,  "AATYPE_1", true, math.random( -500, 500), math.random( -500, 500), AimRate );
			end
		
		-- 대상과의 거리가 어느정도 가까울 경우
		elseif ( Util:GetDist( AIActor, g_TargetActor) > 1000 ) and ( Util:GetDist( AIActor, g_TargetActor) <= 2000 ) then
			
			-- 디펜스 포지션과 멀경우
			if ( Util:GetDistByDefenseArea( AIActor ) > 100 ) and ( g_u32DefenceCount == 0 ) then
				Arcade:Print( string.format( "대상과의 거리가 가까워 져서 디펜스 포지션으로 이동" ) );
				UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
				Command_Move_ToDefenseArea( AIActor, 1750, 0, 0 );
				
			-- 디펜스 포지션과 가까울 경우
			elseif Util:GetDistByDefenseArea( AIActor ) < 100 then
			
				-- 대상이 보일 경우
				if Util:IsVisible( AIActor, g_TargetActor ) == true then
					Arcade:Print( string.format( "디펜스포지션과 가깝지만 대상이 보이기 때문에 쏜다" ) );
					UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
					Command_Attack( AIActor, g_TargetActor, "AATYPE_1", true, AimRateA );
				
				-- 대상이 보이지 않을 경우
				elseif Util:IsVisible( AIActor, g_TargetActor ) == false then
					Arcade:Print( string.format( "숨었지만 대상이 보이지 않아서 어택포지션으로 이동" ) );
					-- 디펜스카운트 업
					UpdateArg:SetLU32( "U32_1", g_u32DefenceCount + 1 );
					UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
					Command_Move_ToAttackArea( AIActor, 1750, 0, 0 );
				end
			
			elseif g_u32DefenceCount >= 1 then
			
				-- 공격위치와 가까울 경우
				if Util:GetDistByAttackArea( AIActor ) < 100 then
					Arcade:Print( string.format( "어택위치이기 때문에 쏜다" ) );
					UpdateArg:SetLU32( "U32_1", 0 );
					UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
					Command_Attack( AIActor, g_TargetActor, "AATYPE_1", true, AimRateA );
				
				-- 공격위치와 멀 경우
				elseif Util:GetDistByAttackArea( AIActor ) > 100 then
					Arcade:Print( string.format( "어택위치가 아니라 계속 이동" ) );
					UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
					Command_Move_ToAttackArea( AIActor, 1750, 0, 0 );
				end
			
			end

		-- 대상과의 거리가 아주 가까울 경우
		elseif Util:GetDist( AIActor, g_TargetActor) <= 1000 then
			Arcade:Print( string.format( "대상과의 거리가 지나치게 가까워서 대상과 멀어지면서 공격" ) );
			UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
			Command_BackMovingAttack_ToActor( AIActor, 1750, g_TargetActor, "AATYPE_1", true, 1000, math.random( -500, 500), math.random( -500, 500), AimRate );
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
