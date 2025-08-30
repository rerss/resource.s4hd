
require "Resources/Script/Arcade_Util.lua"

-- ��������
-- Arcade : CArcadeSystem.

gPunch = {};
gPunch[1] = "AATYPE_1"
gPunch[2] = "AATYPE_2"


-- AI�� �ʱ�ȭ, Arcade�� ��Ÿ�Ͽ� �°� Host�� ����� ������ ����
-- �Էº��� : AI : CScriptAIController
function Init()
end

-- �����ð����� ������ �Լ�. 
-- �Էº��� : UpdateArg( "WAIT_TIME", "AI_ACTOR" )
function Update()

	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );
	
	UpdateArg:SetLU32( "WAIT_TIME", 500 );
		
	-- ���� ���� Ÿ���� �޾ƿ´�.
	u32CurrentAttackType = UpdateArg:GetLU32( "U32_1" );

	-- ���� ����Ÿ������Ʈ�� �޾ƿ´�.
	u32CurrentTypePoint = UpdateArg:GetLU32( "U32_2" );
	
	-- HPī��Ʈ
	HPCount = UpdateArg:GetLU32( "U32_3" );

	-- Ÿ���ĺ�
	local myMinDistTargetActor = Util:GetActorByMinDist( true, AIActor, 0, 3000, false, true );
	local myMaxHPTargetActor = Util:GetActorByMaxHP( true, AIActor, 0, 3000, false, true );

	Arcade:Print( string.format( "�������Ÿ��=%d",u32CurrentAttackType ) );
	--Arcade:Print( string.format( "�� ī��Ʈ=%d", gCount ) );

	-- ��������
--	if u32CurrentAttackType == 0 then


	if HPCount == 0 then
      Command_ChangeHP( AIActor, 0.6 );
	  UpdateArg:SetLU32( "U32_3", 1 );
	end
	
	if myMinDistTargetActor ~= nil then
	   if Util:GetDist( AIActor, myMinDistTargetActor) < 500 then
			UpdateArg:SetLU32( "WAIT_TIME", 3000 + math.random(0, 2000 ) );				
			Command_Attack( AIActor, myMinDistTargetActor, gPunch[math.random( 1, 2 )], true, 0 );
			Arcade:Print( string.format( "��������" ) );
		end
	end

	Arcade:Print( string.format( "����Ʈ=%d", u32CurrentTypePoint) );
	
end


-- AiActor�� State�� ����ɶ� ������ �Լ�.
-- �Էº��� : StateChangeArg( "NOW_STATE", "PREV_STATE" )
function StateChange()
    
end

-- AiActor�� ���������� ������ ������ �Լ�.
-- �Էº��� : AttackEndArg( "AI_ACTOR" )
function AttackEnd()

end

-- AiActor�� Ÿ���� �׿����� ������ �Լ�.
-- �Էº��� : KillTargetArg( "AI_ACTOR", "TARGET_ACTOR" )
function KillTarget()
end

-- AiActor�� Ÿ���� �Ҿ� ��������쿡 ������ �Լ�
-- �Էº��� : LostTargetArg( "AI_ACTOR", "TARGET_ACTOR" )
function LostTarget()
end

-- AiActor�� Ÿ���� ���ݼ��� ������ ������ �Լ�
-- �Էº��� : HitTargetArg( "AI_ACTOR", "TARGET_ACTOR" )
function HitTarget()
end

-- AiActor�� ������  �޾����� ������ �Լ�.
-- �Էº��� : HitMeArg( "AI_ACTOR", "ATTACK_ACTOR" )
function HitMe()
end

-- AiActor�� Hp�� ����Ǿ����� ������ �Լ�
-- �Էº��� : ChangeHpArg( "AI_ACTOR" )
function ChangeHp()
end

-- TriggerSystem���� �߻��� NotifyID�� ���´�.
-- �Էº��� : TriggerArg( "NOTIFY_ID" )
function TriggerNotifyID()
end
