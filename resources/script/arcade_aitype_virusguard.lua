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
	
	u32DiffID = Host:GetDifficulty();
	--Print( string.format( "난이도 관련!!! : %d" , u32DiffID ) );
	
	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );
	
	-- 특수공격을 할 어택 카운트를 담는다
	g_u32AttackCount = UpdateArg:GetLU32( "U32_2");

	-- 함수를 다시 읽을 떄 까지의 시간을 설정
	UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );

	-- 타겟 중 제외할 대상을 지정
	Util:LockAIActorByName( INJURYED_TEAJO );
	
	-- 타겟 엑터를 지정
	g_MinHPActor = Util:GetActorByMinHP( true, AIActor, 0, 4000, false, true );
	g_MaxHPActor = Util:GetActorByMaxHP( true, AIActor, 0, 4000, false, true );
	g_MinDistActor = Util:GetActorByMinDist( true, AIActor, 0, 4000, false, true );
	g_MaxDistActor = Util:GetActorByMaxDist( true, AIActor, 0, 4000, false, true );
	

	-- 공격 확률을 지정
	--AttackRate = math.random( 1, 100 );
	--보통 난이도 명중률
	if g_MinDistActor ~= nil then
		if u32DiffID == 1 then
			DIstAimRate = math.min(300, Util:GetDist( AIActor, g_MinDistActor)/10);
			MaxHPAimRate = math.min(300, Util:GetDist( AIActor, g_MaxHPActor)/20);
			MinHPAimRate = math.min(300, Util:GetDist( AIActor, g_MinHPActor)/20);
			MaxDistAimRate = math.min(300, Util:GetDist( AIActor, g_MaxDistActor)/20);
			MinDistAimRate = math.min(300, Util:GetDist( AIActor, g_MinDistActor)/20);
		--어려움 난이도 명중률
		elseif u32DiffID == 2 then
			DistAimRate = math.min(100, Util:GetDist( AIActor, g_MinDistActor)/10);
			MaxHPAimRate = math.min(100, Util:GetDist( AIActor, g_MaxHPActor)/20);
			MinHPAimRate = math.min(100, Util:GetDist( AIActor, g_MinHPActor)/20);
			MaxDistAimRate = math.min(100, Util:GetDist( AIActor, g_MaxDistActor)/20);
			MinDistAimRate = math.min(100, Util:GetDist( AIActor, g_MinDistActor)/20);
		--에스퍼 난이도 명중률
		elseif u32DiffID ==3 then
			DistAimRate = 50;
			MaxHPAimRate = 0;
			MinHPAimRate = 0;
			MaxDistAimRate = 0;
			MinDistAimRate = 0;
		end	
	end
		
	-- 가장 가까운 거리의 타겟이 있을 때
	if g_MinDistActor ~= nil then
	
		if g_u32AttackCount <=5 then
		
			if Util:IsVisible( AIActor, g_MinDistActor ) == false then
				
				Arcade:Print( string.format( "I cnat see my TARGET!!")  );
				UpdateArg:SetLU32( "WAIT_TIME", 1000 + math.random( 0, 500) );
				Command_Move_ToActor( AIActor, 1750, g_MinDistActor, 0, 0 );
				
			elseif Util:IsVisible( AIActor, g_MinDistActor ) == true then
				-- 타겟과의 거리가 가까울 때
				if Util:GetDist( AIActor, g_MinDistActor) <= 1500 then
				
					Arcade:Print( string.format( "뒤로 이동하면서 공격")  );
					-- 뒤로 이동하면서 공격
					UpdateArg:SetLU32( "WAIT_TIME", 4500 + math.random( 0, 300) );
					SpecialAttackCountUP( 1 );
					Command_BackMovingAttack_ToActor( AIActor, 1750, g_MinDistActor, "AATYPE_1", true, 1000, math.random( -500, 500), math.random( -500, 500), AimRate );
				
				-- 타겟과의 거리가 멀 때
				elseif Util:GetDist( AIActor, g_MinDistActor) > 1500 then
					
					Arcade:Print( string.format( "타겟으로 이동하면 공격")  );
					-- 타겟으로 이동하면 공격
					UpdateArg:SetLU32( "WAIT_TIME", 4500 + math.random( 0, 300) );
					SpecialAttackCountUP( 1 );
					Command_MovingAttack_ToActor( AIActor, 1750, g_MinDistActor,  "AATYPE_1", true, math.random( -500, 500), math.random( -500, 500), AimRate );
					
				end
				
			end
			
		-- 어택카운트가 6보다 크면 가장 높은 HP의 플레이어를 서서 공격
		elseif g_u32AttackCount == 6 then
			Arcade:Print( string.format( "First Strike")  );
			UpdateArg:SetLU32( "WAIT_TIME", 4500 );
			SpecialAttackCountUP( 1 );
			Command_Attack( AIActor, g_MaxHPActor, "AATYPE_1", true, MaxHPAimRate );
		
		-- 어택카운트가 7이면 가장 낮은 HP의 플레이어를 서서 공격
		elseif g_u32AttackCount == 7 then
			Arcade:Print( string.format( "Second Strike")  );
			UpdateArg:SetLU32( "WAIT_TIME", 4500 );
			SpecialAttackCountUP( 1 );
			Command_Attack( AIActor, g_MinHPActor, "AATYPE_1", true, MinHPAimRate );
			
		-- 어택카운트가 8이면 가장 먼 플레이어를 서서 공격
		elseif g_u32AttackCount == 8 then
			Arcade:Print( string.format( "Third Strike")  );
			UpdateArg:SetLU32( "WAIT_TIME", 4500 );
			SpecialAttackCountUP( 1 );
			Command_Attack( AIActor, g_MaxDistActor, "AATYPE_1", true, MaxDistAimRate );
			
		-- 어택카운트가 9면 가장 가까운 플레이어를 서서 공격
		elseif g_u32AttackCount == 9 then
			Arcade:Print( string.format( "Fourth Strike")  );
			UpdateArg:SetLU32( "WAIT_TIME", 3000 );
			SpecialAttackCountUP( -1 );
			Command_Attack( AIActor, g_MinDistActor, "AATYPE_1", true, MinDistAimRate );
		
		end
	
	else
		g_MinDistActor = Util:GetActorByMinDist( true, AIActor, 3000, 30000, false, true );
	
		if g_MinDistActor ~= nil then
			Arcade:Print( string.format( "Move Move")  );
			UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
			Command_Move_ToActor( AIActor, 1750, g_MinDistActor, 0, 0 );
		end
	
	end
	
	

end
	
	
function SpecialAttackCountUP( myattackCount )  
	
	if myattackCount == -1 then
		UpdateArg:SetLU32( "U32_2", 0 );
		g_u32AttackCount = UpdateArg:GetLU32( "U32_2" );
	
	else
		g_u32AttackCount = UpdateArg:GetLU32( "U32_2" );
		UpdateArg:SetLU32( "U32_2", g_u32AttackCount + myattackCount );
		g_u32AttackCount = UpdateArg:GetLU32( "U32_2" );		
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
