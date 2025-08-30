
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

	u32DiffID = Host:GetDifficulty();
	-- 스테이지 판독을 위한 아이디를 가져온다
	g_StageChecker = HostArg:GetLU32( "NOW_STAGE_ID" );
	
	if g_StageChecker == 1 then

		AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );
		
		-- 타겟 설정
		local myTargetActor = Util:GetActorByMinDist( true, AIActor, 0, 3000, false, true );

		-- 스테이지1에서 두마리가 동시에 등장하므로 일치된 AI를 피하기 위해 랜덤 딜레이타임 설정
		local myDiffDelay = math.random( 0, 300 );
			
		UpdateArg:SetLU32( "WAIT_TIME", 500 + myDiffDelay );
		
		if Util:GetHPRate( AIActor ) <= 0.15 then
		
		
			if ( myTargetActor ~= nil ) and ( Util:GetDist( AIActor, myTargetActor ) > 700 ) then
				UpdateArg:SetLU32( "WAIT_TIME", 500 + myDiffDelay );
				Command_Move_ToActor( AIActor, 1000, myTargetActor, 0, 0 );
			elseif ( myTargetActor ~= nil ) and ( Util:GetDist( AIActor, myTargetActor ) < 700 ) then
				UpdateArg:SetLU32( "WAIT_TIME", 2200 + myDiffDelay );
				Command_MovingAttack_ToActor( AIActor, 1000, myTargetActor, "AATYPE_2", true, math.random( -300, 300 ), math.random( -300, 300 ), 0 );
			else
				myTargetActor = Util:GetActorByMinDist( true, AIActor, 3000, 30000, false, true );
				
				if myTargetActor ~= nil then
					UpdateArg:SetLU32( "WAIT_TIME", 500 + myDiffDelay );
					Command_Move_ToActor( AIActor, 1000, myTargetActor, 0, 0 );
				end

			end
		
		elseif Util:GetHPRate( AIActor ) > 0.15 then
		
			if myTargetActor ~= nil then
			
			--local myAttackRate = math.random( 1, 100 );
			--보통 난이도
			if u32DiffID == 1 then
				AttackRate = 30;
				AimRate = math.min( 300, Util:GetDist( AIActor, myTargetActor)/6);
			-- 어려움 난이도
			elseif u32DiffID == 2 then
				AttackRate = 60;
				AimRate = math.min( 100, Util:GetDist( AIActor, myTargetActor)/6);
			--에스퍼 난이도			
			elseif u32DiffID == 3 then
				AttackRate = 90;
				AimRate = 0;
			end
			
				-- 타겟 플레이어와의 거리가 가까울 때
				if Util:GetDist( AIActor, myTargetActor) <= 1500 then
				
				local myRandomAttackRate = math.random( 1, 100 );
					
					-- 공격확률이 높으면 공격하면서 뒤로이동
					if AttackRate > myRandomAttackRate then
						UpdateArg:SetLU32( "WAIT_TIME", 700 +myDiffDelay );
						Command_BackMovingAttack_ToActor( AIActor, 1750, myTargetActor, "AATYPE_1", false, 1000, math.random( -500, 500), math.random( -500, 500), AimRate );

					-- 공격확률이 낮으면 공격안하고 뒤로이동
					elseif AttackRate <= myRandomAttackRate then
						UpdateArg:SetLU32( "WAIT_TIME", 700 + myDiffDelay );
						Command_BackMove_ToActor( AIActor, 1750, myTargetActor, 1000, math.random( -300, 300), math.random( -300, 300) );			
					end

				-- 타겟 플레이어와의 거리가 목표 거리일 때
				elseif ( Util:GetDist( AIActor, myTargetActor) > 1500 ) and ( Util:GetDist( AIActor, myTargetActor) < 2500 )then

						UpdateArg:SetLU32( "WAIT_TIME", 700 + myDiffDelay );
						Command_Attack( AIActor, myTargetActor, "AATYPE_1", false, AimRate );
				
				-- 타겟 플레이어와의 거리가 목표거리보다 멀 때
				elseif Util:GetDist( AIActor, myTargetActor) > 2500 then
					UpdateArg:SetLU32( "WAIT_TIME", 700 + myDiffDelay );
					Command_Move_ToActor( AIActor, 1750, myTargetActor, math.random( -500, 500), math.random( -300, 300) );
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
	
	elseif g_StageChecker == 7 then
		
		AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );
		
		-- 키치와 거리체크를 위해 키치 타겟을 별도로 저장한다.
		g_SpecialTargetActor = Util:GetAIActorByName( KICHI );
		
		-- 키치 공격카운트
		g_KichiAttackCount = UpdateArg:GetLU32( "U32_1" );
		
		-- 타겟 설정
		if ( g_KichiAttackCount >= 1 ) and ( g_SpecialTargetActor ~= nil ) then
		
			myTargetActor = g_SpecialTargetActor;
			
		elseif ( g_KichiAttackCount == 0 ) and ( g_SpecialTargetActor ~= nil ) then
		
			if Util:GetDist( AIActor, g_SpecialTargetActor ) > 3000 then
				myTargetActor = g_SpecialTargetActor;
				UpdateArg:SetLU32( "U32_1", 1 );
			elseif Util:GetDist( AIActor, g_SpecialTargetActor ) <= 3000 then
				Util:LockAIActorByName( KICHI )
				myTargetActor = Util:GetActorByMinDist( true, AIActor, 0, 3000, false, true );
			end
			
		end		
		
		-- 스테이지1에서 두마리가 동시에 등장하므로 일치된 AI를 피하기 위해 랜덤 딜레이타임 설정
		local myDiffDelay = math.random( 0, 300 );
			
		UpdateArg:SetLU32( "WAIT_TIME", 500 + myDiffDelay );
		
		if Util:GetHPRate( AIActor ) <= 0.3 then
		
		
			if ( myTargetActor ~= nil ) and ( Util:GetDist( AIActor, myTargetActor ) > 700 ) then
				UpdateArg:SetLU32( "WAIT_TIME", 500 + myDiffDelay );
				Command_Move_ToActor( AIActor, 1000, myTargetActor, 0, 0 );
			elseif ( myTargetActor ~= nil ) and ( Util:GetDist( AIActor, myTargetActor ) < 700 ) then
				UpdateArg:SetLU32( "U32_1", 0 );
				UpdateArg:SetLU32( "WAIT_TIME", 2200 + myDiffDelay );
				Command_MovingAttack_ToActor( AIActor, 1000, myTargetActor, "AATYPE_2", true, math.random( -300, 300 ), math.random( -300, 300 ), 0 );
			else
				myTargetActor = Util:GetActorByMinDist( true, AIActor, 3000, 30000, false, true );
				
				if myTargetActor ~= nil then
					UpdateArg:SetLU32( "WAIT_TIME", 500 + myDiffDelay );
					Command_Move_ToActor( AIActor, 1000, myTargetActor, 0, 0 );
				end

			end
		
		elseif Util:GetHPRate( AIActor ) > 0.3 then
		
			if myTargetActor ~= nil then
			
			--local myAttackRate = math.random( 1, 100 );
		--보통 난이도
			if u32DiffID == 1 then
				AttackRate = 30;
				AimRate = math.min( 300, Util:GetDist( AIActor, myTargetActor)/6);
			-- 어려움 난이도
			elseif u32DiffID == 2 then
				AttackRate = 60;
				AimRate = math.min( 100, Util:GetDist( AIActor, myTargetActor)/6);
			--에스퍼 난이도			
			elseif u32DiffID == 3 then
				AttackRate = 90;
				AimRate = 0;
			end
				-- 타겟 플레이어와의 거리가 가까울 때
				if Util:GetDist( AIActor, myTargetActor) <= 1500 then
				
				local myRandomAttackRate = math.random( 1, 100 );
					
					-- 공격확률이 높으면 공격하면서 뒤로이동
					if AttackRate > myRandomAttackRate then
						UpdateArg:SetLU32( "U32_1", 0 );
						UpdateArg:SetLU32( "WAIT_TIME", 700 +myDiffDelay );
						Command_BackMovingAttack_ToActor( AIActor, 1750, myTargetActor, "AATYPE_1", false, 1000, math.random( -500, 500), math.random( -500, 500), AimRate );

					-- 공격확률이 낮으면 공격안하고 뒤로이동
					elseif AttackRate <= myRandomAttackRate then
						UpdateArg:SetLU32( "WAIT_TIME", 700 + myDiffDelay );
						Command_BackMove_ToActor( AIActor, 1750, myTargetActor, 1000, math.random( -300, 300), math.random( -300, 300) );			
					end

				-- 타겟 플레이어와의 거리가 목표 거리일 때
				elseif ( Util:GetDist( AIActor, myTargetActor) > 1500 ) and ( Util:GetDist( AIActor, myTargetActor) < 2500 )then
						UpdateArg:SetLU32( "U32_1", 0 );
						UpdateArg:SetLU32( "WAIT_TIME", 700 + myDiffDelay );
						Command_Attack( AIActor, myTargetActor, "AATYPE_1", false, AimRate );
				
				-- 타겟 플레이어와의 거리가 목표거리보다 멀 때
				elseif Util:GetDist( AIActor, myTargetActor) > 2500 then
					UpdateArg:SetLU32( "WAIT_TIME", 700 + myDiffDelay );
					Command_Move_ToActor( AIActor, 1750, myTargetActor, math.random( -500, 500), math.random( -300, 300) );
				end
		
		-- 타겟이 없을 때
			else
			
				-- 타겟을 검색
				local myTargetActor = Util:GetActorByMinDist( true, AIActor, 0, 30000, true, true );

				if myTargetActor ~= nil then
					UpdateArg:SetLU32( "WAIT_TIME", 700 );
					Command_Move_ToActor( AIActor, 1750, myTargetActor, math.random( -500, 500), math.random( -300, 300) );
				end

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
