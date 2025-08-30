
require "Resources/Script/Arcade_Util.lua"

-- 전역변수
-- Arcade : CArcadeSystem.

gMoveCount = 0

g_TeleportPosition = {}
g_TeleportPosition[1] = "arcade_teleport_stage09_03"
g_TeleportPosition[2] = "arcade_teleport_stage09_03"
g_TeleportPosition[3] = "arcade_teleport_stage09_04"
g_TeleportPosition[4] = "arcade_teleport_stage09_04"
g_TeleportPosition[5] = "arcade_teleport_stage09_06"
g_TeleportPosition[6] = "arcade_teleport_stage09_06"

-- AI의 초기화, Arcade의 스타일에 맞게 Host가 기억할 변수를 설정
-- 입력변수 : AI : CScriptAIController
function Init()

end

-- 일정시간마다 들어오는 함수. 
-- 입력변수 : UpdateArg( "WAIT_TIME", "AI_ACTOR" )
function Update()

	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );
	
	-- 공격패턴을 변화시키기 위한 카운트를 받아온다
	u32AttackCount = UpdateArg:GetLU32( "U32_1" );
	u32DarkGasCount = UpdateArg:GetLU32( "U32_2" );
	g_u32SpawnCountVirus = UpdateArg:GetLU32( "U32_3" );
	g_u32SpawnCountHealer = UpdateArg:GetLU32( "U32_4" );
	g_u32TeleportCount = UpdateArg:GetLU32( "U32_5" );
	
	-- 감염된 힐러스의 총 킬수를 받아온다.
	u32VirusHealer = HostArg:GetLU32( "INFECTED_HEALER" );
	g_u32Virus = HostArg:GetLU32( "VIRUS" );
	
	-- 보스의 패턴이 바뀌는 HP 비율
	local myChangePattern = 0.4;
		
	-- 타겟을 찾는다
	TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 5000, false, true );

	if Util:GetHPRate( AIActor ) > myChangePattern then
	
		-- 텔레포트 하는 시점
		local myTeleportChance = 15;

		if TargetActor ~= nil then
			
			if g_u32TeleportCount >= myTeleportChance then
				TeleportCount( -1 );
				UpdateArg:SetLU32( "WAIT_TIME", 500 );
				Command_Teleport_ToNode( AIActor, g_TeleportPosition[math.random(1,6)] );
				Arcade:Print( string.format( "순간이동" ) );
			
			elseif g_u32TeleportCount < myTeleportChance then
			
				if u32AttackCount <= 10 then

					if Util:GetDist( AIActor, TargetActor) > 1000 then
						-- 어택 카운트를 올려준다
						AttackCountUP( 1 );
						TeleportCount( 1 );
						UpdateArg:SetLU32( "WAIT_TIME", 500 );
						Command_Move_ToActor( AIActor, 750, TargetActor, math.random( -500, 500), math.random( -500, 500) );
						Arcade:Print( string.format( "일반이동" ) );
					
					elseif Util:GetDist( AIActor, TargetActor) < 1000 then
						-- 적이 안보일 경우 적을 향해 다시 이동한다.
						if Util:IsVisible( AIActor, TargetActor ) == false then
							UpdateArg:SetLU32( "WAIT_TIME", 1000 + math.random(1,500));
							Command_Move_ToActor( AIActor, 750, TargetActor, math.random( -1000, 1000), math.random( -1000, 1000) );
						elseif Util:IsVisible( AIActor, TargetActor ) == true then
							-- 어택 카운트를 올려준다
							AttackCountUP( 4 );
							TeleportCount( -1 );
							UpdateArg:SetLU32( "WAIT_TIME", 1550 );
							Command_Attack( AIActor, TargetActor, "AATYPE_1", true, 0 );
							Arcade:Print( string.format( "일반공격" ) );
						end
						
					end

				elseif u32AttackCount > 10 then
					
					-- 어택 확률 받아온다
					local myAttackRate = math.random( 1, 100 );
					Arcade:Print( string.format( "어택확률=%d", myAttackRate ) );

					if ( myAttackRate <= 30 ) and ( g_u32SpawnCountVirus - g_u32Virus == 0 ) then
						AttackCountUP( -1 );
						SpawnCountUP( 1, 6 );
						UpdateArg:SetLU32( "WAIT_TIME", 2050 );
						Command_Attack( AIActor, TargetActor, "AATYPE_7", false, 0 );
						Arcade:Print( string.format( "소환" ) );
					elseif ( myAttackRate > 30 ) and ( myAttackRate <= 80 ) then		
						AttackCountUP( -1 );
						UpdateArg:SetLU32( "WAIT_TIME", 5050 );
						Command_Attack( AIActor, TargetActor, "AATYPE_3", false, 0 );
						Arcade:Print( string.format( "연기" ) );
					elseif myAttackRate > 80 then
						
						if Util:GetDist( AIActor, TargetActor) > 1000 then
							AttackCountUP( -1 );
							UpdateArg:SetLU32( "WAIT_TIME", 500 );
							Command_Move_ToActor( AIActor, 750, TargetActor, math.random( -500, 500), math.random( -500, 500) );
							Arcade:Print( string.format( "운좋게 쫓기" ) );
						elseif Util:GetDist( AIActor, TargetActor) < 1000 then
							AttackCountUP( -1 );
							TeleportCount( -1 );
							UpdateArg:SetLU32( "WAIT_TIME", 1550 );
							Command_Attack( AIActor, TargetActor, "AATYPE_1", true, 0 );
							Arcade:Print( string.format( "운좋게 공격" ) );
						end

					end
					
				end
			
			end

		else

			TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 10000, false, true );
			
			if TargetActor ~= nil then
				AttackCountUP( 1 );
				UpdateArg:SetLU32( "WAIT_TIME", 500 );
				Command_Move_ToActor( AIActor, 750, TargetActor, math.random( -500, 500), math.random( -500, 500) );
				Arcade:Print( string.format( "원거리 이동" ) );
			end

		end
	
	elseif Util:GetHPRate( AIActor ) <= myChangePattern then
	
		-- 텔레포트 하는 시점
		local myTeleportChance = 15;
		
		if TargetActor ~= nil then
		
			if g_u32TeleportCount >= myTeleportChance then
				TeleportCount( -1 );
				UpdateArg:SetLU32( "WAIT_TIME", 500 );
				Command_Teleport_ToNode( AIActor, g_TeleportPosition[math.random(1,6)] );
				Arcade:Print( string.format( "순간이동" ) );
			
			elseif g_u32TeleportCount < myTeleportChance then
			
				-- 다크가스 카운트가 0 일때
				if u32DarkGasCount == 0 then

					if u32AttackCount <= 10 then

						if Util:GetDist( AIActor, TargetActor) > 1000 then
							-- 어택 카운트를 올려준다
							AttackCountUP( 1 );
							TeleportCount( 1 );
							UpdateArg:SetLU32( "WAIT_TIME", 500 );
							Command_Move_ToActor( AIActor, 750, TargetActor, math.random( -500, 500), math.random( -500, 500) );
							Arcade:Print( string.format( "일반이동" ) );
						
						elseif Util:GetDist( AIActor, TargetActor) < 1000 then
							-- 적이 안보일 경우 적을 향해 다시 이동한다.
							if Util:IsVisible( AIActor, TargetActor ) == false then
								UpdateArg:SetLU32( "WAIT_TIME", 1000 + math.random(1,500));
								Command_Move_ToActor( AIActor, 750, TargetActor, math.random( -1000, 1000), math.random( -1000, 1000) );
							elseif Util:IsVisible( AIActor, TargetActor ) == true then
								-- 어택 카운트를 올려준다
								AttackCountUP( 4 );
								TeleportCount( -1 );
								UpdateArg:SetLU32( "WAIT_TIME", 1550 );
								Command_Attack( AIActor, TargetActor, "AATYPE_1", true, 0 );
								Arcade:Print( string.format( "일반공격" ) );
							end
							
						end

					elseif u32AttackCount > 10 then
						
						-- 어택 확률 받아온다
						local myAttackRate = math.random( 0, 100 );
						Arcade:Print( string.format( "어택확률=%d", myAttackRate ) );

						if ( myAttackRate <= 40 ) and ( g_u32SpawnCountHealer - u32VirusHealer == 0 ) then
							AttackCountUP( -1 );
							SpawnCountUP( 2, 3 );
							UpdateArg:SetLU32( "WAIT_TIME", 2050 );
							Command_Attack( AIActor, TargetActor, "AATYPE_6", false, 0 );
							Arcade:Print( string.format( "소환" ) );

						elseif ( myAttackRate > 40 ) and ( myAttackRate <= 80 ) then		
							AttackCountUP( -1 );
							DarkGasCountUP( 1 );
							UpdateArg:SetLU32( "WAIT_TIME", 5050 );
							Command_Attack( AIActor, TargetActor, "AATYPE_3", false, 0 );
							Arcade:Print( string.format( "연기" ) );

						elseif myAttackRate > 80 then
							
							if Util:GetDist( AIActor, TargetActor) > 1000 then
								AttackCountUP( -1 );
								UpdateArg:SetLU32( "WAIT_TIME", 500 );
								Command_Move_ToActor( AIActor, 750, TargetActor, math.random( -500, 500), math.random( -500, 500) );
								Arcade:Print( string.format( "운좋게 쫓기" ) );
							elseif Util:GetDist( AIActor, TargetActor) < 1000 then
								AttackCountUP( -1 );
								TeleportCount( -1 );
								UpdateArg:SetLU32( "WAIT_TIME", 1550 );
								Command_Attack( AIActor, TargetActor, "AATYPE_2", true, 0 );
								Arcade:Print( string.format( "운좋게 공격" ) );
							end

						end
						
					end
				
				-- 다크가스 카운트가 1이상일 때
				elseif u32DarkGasCount >= 1 then
					
					-- 적이 안보일 경우 적을 향해 다시 이동한다.
					if Util:IsVisible( AIActor, TargetActor ) == false then
						TeleportCount( 2 );
						UpdateArg:SetLU32( "WAIT_TIME", 1000 + math.random(1,500));
						Command_Move_ToActor( AIActor, 750, TargetActor, math.random( -1000, 1000), math.random( -1000, 1000) );
					elseif Util:IsVisible( AIActor, TargetActor ) == true then
						AttackCountUP( -1 );
						DarkGasCountUP( -1 );
						UpdateArg:SetLU32( "WAIT_TIME", 4550 );
						Command_Attack( AIActor, TargetActor, "AATYPE_4", false, 0 );
						Arcade:Print( string.format( "끌어댕긴 후 폭파" ) );
					end
					
					--[[ 5연타 공격이 실효성이 떨어져서 우선 주석처리
					local mySkillSelect = math.random( 0, 100 );

					if mySkillSelect <= 30 then
						AttackCountUP( -1 );
						DarkGasCountUP( -1 );
						UpdateArg:SetLU32( "WAIT_TIME", 4550 );
						Command_Attack( AIActor, TargetActor, "AATYPE_4", false, 0 );
						Arcade:Print( string.format( "끌어댕긴 후 폭파" ) );

					elseif mySkillSelect > 30 then

						if Util:GetDist( AIActor, TargetActor) < 1000 then
							AttackCountUP( -1 );
							DarkGasCountUP( -1 );
							UpdateArg:SetLU32( "WAIT_TIME", 5000 );
							Command_Attack( AIActor, TargetActor, "AATYPE_3", false, 0 );
							Arcade:Print( string.format( "5연타공격" ) );
						elseif Util:GetDist( AIActor, TargetActor) > 1000 then
							UpdateArg:SetLU32( "WAIT_TIME", 500 );
							Command_Move_ToActor( AIActor, 750, TargetActor, math.random( -500, 500), math.random( -500, 500) );
							Arcade:Print( string.format( "5연타 이동" ) );
						end

					end
					--]]
					
				end
			
			end

		else

			TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 10000, false, true );
			
			if TargetActor ~= nil then
				AttackCountUP( 1 );
				UpdateArg:SetLU32( "WAIT_TIME", 500 );
				Command_Move_ToActor( AIActor, 750, TargetActor, math.random( -500, 500), math.random( -500, 500) );
				Arcade:Print( string.format( "원거리 이동" ) );
			end

		end

	end
	
	Arcade:Print( string.format( "u32AttackCount=%d 바이러스소환카운트=%d,힐러소환카운트=%d, 텔레포트 카운트=%d", u32AttackCount, g_u32SpawnCountVirus - g_u32Virus, g_u32SpawnCountHealer - u32VirusHealer, g_u32TeleportCount ) );
	
end


-- 보스의 공격패턴 변화를 위한 어택 카운트를 올려줄 때 호출하는 함수
function AttackCountUP( CountPoint )
	
	-- 초기화
	if CountPoint == -1 then
		UpdateArg:SetLU32( "U32_1", 0 );

	-- 입력된 값만큼 카운트 올려줌
	else
		local myCurrentCount = 0
		myCurrentCount = UpdateArg:GetLU32( "U32_1" );
		UpdateArg:SetLU32( "U32_1", myCurrentCount +CountPoint );
	end
end

-- 보스의 공격패턴 변화를 위한 어택 카운트를 올려줄 때 호출하는 함수
function DarkGasCountUP( GasPoint )
	
	-- 초기화
	if GasPoint == -1 then
		UpdateArg:SetLU32( "U32_2", 0 );

	-- 입력된 값만큼 카운트 올려줌
	else
		local myCurrentGasCount = 0
		myCurrentGasCount = UpdateArg:GetLU32( "U32_2" );
		UpdateArg:SetLU32( "U32_2", myCurrentGasCount + GasPoint );
	end
end

-- 소환 횟수를 조절하기 위해 카운트를 쌓는 함수
function SpawnCountUP( SpawnKind, SpawnPoint )
	
	-- 초기화
	if SpawnKind == 1 then
	
		if SpawnPoint == -1 then
			UpdateArg:SetLU32( "U32_3", 0 );

		-- 입력된 값만큼 카운트 올려줌
		else
			local myCurrentSpawnPoint = 0
			myCurrentSpawnPoint = UpdateArg:GetLU32( "U32_3" );
			UpdateArg:SetLU32( "U32_3", myCurrentSpawnPoint +SpawnPoint );
		end
		
	elseif SpawnKind == 2 then	
	
		if SpawnPoint == -1 then
			UpdateArg:SetLU32( "U32_4", 0 );

		-- 입력된 값만큼 카운트 올려줌
		else
			local myCurrentSpawnPoint = 0
			myCurrentSpawnPoint = UpdateArg:GetLU32( "U32_4" );
			UpdateArg:SetLU32( "U32_4", myCurrentSpawnPoint +SpawnPoint );
		end
		
	end

end

-- 순간이동 여부를  판단하기 위해 카운트를 쌓는 함수
function TeleportCount( TeleportCount )

	-- 초기화
	if TeleportCount == -1 then
		UpdateArg:SetLU32( "U32_5", 0 );

	-- 입력된 값만큼 카운트 올려줌
	else
		local myTeleportCount = 0
		myTeleportCount = UpdateArg:GetLU32( "U32_5" );
		UpdateArg:SetLU32( "U32_5", myTeleportCount + TeleportCount );
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
