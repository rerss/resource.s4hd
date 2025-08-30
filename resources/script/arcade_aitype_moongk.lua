
require "Resources/Script/Arcade_Util.lua"

-- 전역변수
-- Arcade : CArcadeSystem.
HidePos = {}
HidePos[1] = "Arcade_HidePos_05_01"
HidePos[2] = "Arcade_HidePos_05_02"
HidePos[3] = "Arcade_HidePos_05_03"
HidePos[4] = "Arcade_HidePos_05_04"
HidePos[5] = "Arcade_HidePos_05_05"
HidePos[6] = "Arcade_HidePos_05_06"
HidePos[7] = "Arcade_HidePos_05_07"
HidePos[8] = "Arcade_HidePos_05_08"
HidePos[9] = "Arcade_HidePos_05_09"


-- AI의 초기화, Arcade의 스타일에 맞게 Host가 기억할 변수를 설정
-- 입력변수 : AI : CScriptAIController



function Init()

end

-- 일정시간마다 들어오는 함수. 
-- 입력변수 : UpdateArg( "DELTA_TIME", "AI_ACTOR" )
function Update()

--	AccumulateTime	= UpdateArg:GetLU32( "ACCUMULATE_TIME" );
	AIActor			= UpdateArg:GetAIActor( "AI_ACTOR" );
	HidePosition = UpdateArg:GetLU32( "U32_2" );
	PostionCount = UpdateArg:GetLU32( "U32_1" );
	ChaseCount = UpdateArg:GetLU32( "U32_3" );

	-- 디폴트 값이 false
	InviCheck = UpdateArg:GetLBool( "BOOL_1" ); 

	-- 인비저블 사용여부를 체크하기 위한 값
    u32InviCount = UpdateArg:GetLU32( "U32_2" );
	
	-- 페이즈 ID 받아오기
	g_u32PhaseCheck = HostArg:GetLU32( "PHASE_ID" );
	
	-- 뭉크가 플레이어를 향해 달려올때 까지 쌓아야 하는 값으로 값이 적을수록 플레이어에게 자주 노출
	local LimitPositionCount = 15;
	-- 뭉크가 플레이어를 뒤쫒는 행동을 반복할 횟수로 값이 커질수록 플레이어를 더 오랫동안 뒤쫓는다
	local LimitChaseCount = 10;

	if u32InviCount == 0 and g_u32PhaseCheck == 5 then
		-- 인비카운트가 0이면 인비저블을 사용하고 인비카운트를 올려줌
		Command_SkillInvisible( AIActor, true );
		UpdateArg:SetLU32( "U32_2", 1 );
	end

	if ChaseCount >= LimitChaseCount then
		-- 포지션 카운트 초기화
		UpdateArg:SetLU32( "U32_1", 0 );
		-- 하이드 포지션 초기화
		UpdateArg:SetLU32( "U32_2", 0 );
		-- 체이스 카운트 초기화
		UpdateArg:SetLU32( "U32_3", 0 );
	end

	TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 10000, false, true );

	if ( TargetActor ~= nil ) and ( HidePosition == 0 ) then
		FirstPosition ();
		HidePosition = UpdateArg:GetLU32( "U32_2" );

		Command_Move_ToNode( AIActor, 3000, HidePos[HidePosition], 0, 0 );
	end

	if ( TargetActor ~= nil ) and ( PostionCount < LimitPositionCount ) and ( HidePosition ~= 0 ) and ( Util:GetDist( AIActor, TargetActor) > 800 ) then
		SelectPosition ();
		HidePosition = UpdateArg:GetLU32( "U32_2" );
		
		UpdateArg:SetLU32( "WAIT_TIME", 1000 );
		Command_Move_ToNode( AIActor, 3000, HidePos[HidePosition], 0, 0 );
		
		UpdateArg:SetLU32( "U32_1", PostionCount +1 );

	elseif ( TargetActor ~= nil ) and ( PostionCount < LimitPositionCount ) and ( HidePosition ~= 0 ) and ( Util:GetDist( AIActor, TargetActor) < 800 ) then
		-- 포지션 카운트 초기화
		UpdateArg:SetLU32( "U32_1", 0 );
		-- 체이스 카운트 초기화
		UpdateArg:SetLU32( "U32_3", 0 );

		UpdateArg:SetLU32( "WAIT_TIME", 2000 );

		-- 공격시 인비저블을 해제하고 인비카운트 초기화
		Command_SkillInvisible( AIActor, false );
		UpdateArg:SetLU32( "U32_2", 0 );

		Command_MovingAttack_ToActor( AIActor, 1200, TargetActor, "AATYPE_1", true, math.random(-200, 200), math.random(-200, 200), 0 );
	elseif ( TargetActor ~= nil ) and ( PostionCount < LimitPositionCount ) and ( HidePosition ~= 0 ) and ( Util:GetDist( AIActor, TargetActor) < 800 ) then
		-- 포지션 카운트 초기화
		UpdateArg:SetLU32( "U32_1", 0 );
		-- 체이스 카운트 초기화
		UpdateArg:SetLU32( "U32_3", 0 );
		UpdateArg:SetLU32( "WAIT_TIME", 2000 );

		-- 공격시 인비저블을 해제하고 인비카운트 초기화
		Command_SkillInvisible( AIActor, false );
		UpdateArg:SetLU32( "U32_2", 0 );

		Command_MovingAttack_ToActor( AIActor, 1200, TargetActor, "AATYPE_1", true, math.random(-200, 200), math.random(-200, 200), 0 );
	elseif ( TargetActor ~= nil ) and ( PostionCount >= LimitPositionCount ) and ( HidePosition ~= 0 ) and ( Util:GetDist( AIActor, TargetActor) > 800 ) and ( ChaseCount < LimitChaseCount ) then
		UpdateArg:SetLU32( "U32_3", ChaseCount +1 );
		UpdateArg:SetLU32( "WAIT_TIME", 500 );
		Command_Move_ToActor( AIActor, 3000, TargetActor, math.random(-200, 200), math.random(-200, 200) );			

	elseif ( TargetActor ~= nil ) and ( PostionCount >= LimitPositionCount ) and ( HidePosition ~= 0 ) and ( Util:GetDist( AIActor, TargetActor) < 400 ) and ( ChaseCount < LimitChaseCount ) then
		-- 포지션 카운트 초기화
		UpdateArg:SetLU32( "U32_1", 0 );
		-- 체이스 카운트 초기화
		UpdateArg:SetLU32( "U32_3", 0 );
		UpdateArg:SetLU32( "WAIT_TIME", 2000 );

		-- 공격시 인비저블을 해제하고 인비카운트 초기화
		Command_SkillInvisible( AIActor, false );
		UpdateArg:SetLU32( "U32_2", 0 );

		Command_MovingAttack_ToActor( AIActor, 1200, TargetActor, "AATYPE_1", true, math.random(-200, 200), math.random(-200, 200), 0 );
	end
	Arcade:Print( string.format( "하이드포지션 = %s 포지션카운트 = %d 디펜스포지션거리 = %d 체이스카운트=%d", HidePosition,PostionCount, Util:GetDistByDefenseArea( AIActor ), ChaseCount ) );
	
end




function FirstPosition ()

	if Util:GetDistByArea( AIActor, HidePos[1] ) < Util:GetDistByArea( AIActor, HidePos[2] ) then
		minDistPos = 1;
	else
		minDistPos = 2;
	end

	if Util:GetDistByArea( AIActor, HidePos[minDistPos] ) > Util:GetDistByArea( AIActor, HidePos[3] ) then
		minDistPos = 3;
	end

	if Util:GetDistByArea( AIActor, HidePos[minDistPos] ) > Util:GetDistByArea( AIActor, HidePos[4] ) then
		minDistPos = 4;
	end
	
	if Util:GetDistByArea( AIActor, HidePos[minDistPos] ) > Util:GetDistByArea( AIActor, HidePos[5] ) then
		minDistPos = 5;
	end

	if Util:GetDistByArea( AIActor, HidePos[minDistPos] ) > Util:GetDistByArea( AIActor, HidePos[6] ) then
		minDistPos = 6;
	end

	if Util:GetDistByArea( AIActor, HidePos[minDistPos] ) > Util:GetDistByArea( AIActor, HidePos[7] ) then
		minDistPos = 7;
	end

	if Util:GetDistByArea( AIActor, HidePos[minDistPos] ) > Util:GetDistByArea( AIActor, HidePos[8] ) then
		minDistPos = 8;
	end

	if Util:GetDistByArea( AIActor, HidePos[minDistPos] ) > Util:GetDistByArea( AIActor, HidePos[9] ) then
		minDistPos = 9;
	end

	Arcade:Print( string.format( "퍼스트포지션 결과 = %d", minDistPos ) );

	UpdateArg:SetLU32( "U32_2" , minDistPos );

end


function SelectPosition ()
	
	crHidePos = UpdateArg:GetLU32( "U32_2" );
	
	directSelector = math.random( -1, 1 );

	UpdateArg:SetLU32( "U32_2" , crHidePos + ( directSelector ) );

	crHidePos = UpdateArg:GetLU32( "U32_2" );

	if ( crHidePos ~= 10 ) and ( crHidePos ~= 0 ) then
		crHidePos = UpdateArg:GetLU32( "U32_2" );
	elseif crHidePos == 10 then
		UpdateArg:SetLU32( "U32_2" , 1 );
		crHidePos = UpdateArg:GetLU32( "U32_2" );
	elseif crHidePos == 0 then
		UpdateArg:SetLU32( "U32_2" , 9 );
		crHidePos = UpdateArg:GetLU32( "U32_2" );
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
