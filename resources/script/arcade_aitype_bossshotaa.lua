
require "Resources/Script/Arcade_Util.lua"

-- 전역변수
-- Arcade : CArcadeSystem.

gPunch = {};
gPunch[1] = "AATYPE_1"
gPunch[2] = "AATYPE_2"


-- AI의 초기화, Arcade의 스타일에 맞게 Host가 기억할 변수를 설정
-- 입력변수 : AI : CScriptAIController
function Init()
end

-- 일정시간마다 들어오는 함수. 
-- 입력변수 : UpdateArg( "WAIT_TIME", "AI_ACTOR" )
function Update()

	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );
	
	UpdateArg:SetLU32( "WAIT_TIME", 500 );
		
	-- 현재 공격 타입을 받아온다.
	u32CurrentAttackType = UpdateArg:GetLU32( "U32_1" );

	-- 현재 공격타입포인트를 받아온다.
	u32CurrentTypePoint = UpdateArg:GetLU32( "U32_2" );
	
	-- HP카운트
	HPCount = UpdateArg:GetLU32( "U32_3" );

	-- 타겟후보
	local myMinDistTargetActor = Util:GetActorByMinDist( true, AIActor, 0, 3000, false, true );
	local myMaxHPTargetActor = Util:GetActorByMaxHP( true, AIActor, 0, 3000, false, true );

	Arcade:Print( string.format( "현재어택타입=%d",u32CurrentAttackType ) );
	--Arcade:Print( string.format( "팜 카운트=%d", gCount ) );

	-- 급접공격
--	if u32CurrentAttackType == 0 then


	if HPCount == 0 then
      Command_ChangeHP( AIActor, 0.6 );
	  UpdateArg:SetLU32( "U32_3", 1 );
	end
	
	if myMinDistTargetActor ~= nil then
	   if Util:GetDist( AIActor, myMinDistTargetActor) < 500 then
			UpdateArg:SetLU32( "WAIT_TIME", 3000 + math.random(0, 2000 ) );				
			Command_Attack( AIActor, myMinDistTargetActor, gPunch[math.random( 1, 2 )], true, 0 );
			Arcade:Print( string.format( "근접공격" ) );
		end
	end

	Arcade:Print( string.format( "포인트=%d", u32CurrentTypePoint) );
	
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
