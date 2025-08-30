
require "Resources/Script/Arcade_Util.lua"

-- 전역변수
-- Arcade : CArcadeSystem.

-- AI의 초기화, Arcade의 스타일에 맞게 Host가 기억할 변수를 설정
-- 입력변수 : AI : CScriptAIController


gAttackCount = 0


function Init()

end

-- 일정시간마다 들어오는 함수. 
-- 입력변수 : UpdateArg( "WAIT_TIME", "AI_ACTOR" )
function Update()

	u32DiffID = Host:GetDifficulty();
	
	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );
	

	UpdateArg:SetLU32( "WAIT_TIME", 1000 + math.random( 0, 300) );
	
	
	TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 10000, false, true );

	--보통 난이도
	if u32DiffID == 1 then
		--AimRate = math.min(300, Util:GetDist( AIActor, TargetActor)/7);
		AimRate = 300;
	--어려움 난이도
	elseif u32DiffID == 2 then
		--AimRate = math.min(100, Util:GetDist( AIActor, TargetActor)/7);
		AimRate = 150;
	--에스퍼 난이도
	elseif u32DiffID == 3 then
		AimRate = 0;
	end
	
	if (TargetActor ~= nil) and ( Util:GetDist( AIActor, TargetActor) > 0 ) then	
		Command_Move_ToDefenseArea( AIActor, 1750, 0, 0 );
	end

	if (TargetActor ~= nil) and ( Util:GetDist( AIActor, TargetActor) > 0 ) and ( Util:GetDistByDefenseArea( AIActor ) < 100 ) and ( Util:IsVisible( AIActor, TargetActor ) == false ) and ( gAttackCount == 0 ) then
		Command_Move_ToAttackArea( AIActor, 1750, 0, 0 );
	elseif (TargetActor ~= nil) and ( Util:GetDist( AIActor, TargetActor) > 0 ) and ( Util:GetDistByDefenseArea( AIActor ) < 100 ) and ( Util:IsVisible( AIActor, TargetActor ) == false ) and ( gAttackCount == 1 ) then
		Command_Move_ToAttackArea( AIActor, 1750, 0, 0 );
	elseif (TargetActor ~= nil) and ( Util:GetDist( AIActor, TargetActor) > 0 ) and ( Util:GetDistByDefenseArea( AIActor ) < 100 ) and ( Util:IsVisible( AIActor, TargetActor ) == true ) then
		Command_Attack( AIActor, TargetActor, "AATYPE_1", false, AimRate );
	elseif (TargetActor ~= nil) and ( Util:GetDist( AIActor, TargetActor) > 0 ) and ( Util:GetDistByAttackArea( AIActor ) < 100 ) and ( Util:IsVisible( AIActor, TargetActor ) == true ) and ( gAttackCount == 0 ) then
		Command_Move_ToDefenseArea( AIActor, 1750, 0, 0 );
		gAttackCount = gAttackCount +1;
	elseif (TargetActor ~= nil) and ( Util:GetDist( AIActor, TargetActor) > 0 ) and ( Util:GetDistByAttackArea( AIActor ) < 100 ) and ( Util:IsVisible( AIActor, TargetActor ) == true ) and ( gAttackCount >= 1 ) then
		Command_Attack( AIActor, TargetActor, "AATYPE_1", true, AimRate );
		gAttackCount = math.random( 0, 1);
	end
	
	Arcade:Print( string.format( "디펜스포지션거리%f, 어택포지션거리 %f, 어택카운트 = %d", Util:GetDistByDefenseArea( AIActor ),Util:GetDistByAttackArea( AIActor ),gAttackCount ) );

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
