require "Resources/Script/Arcade_Util.lua"

-- ��������
-- Arcade : CArcadeSystem.

-- AI�� �ʱ�ȭ, Arcade�� ��Ÿ�Ͽ� �°� Host�� ����� ������ ����
-- �Էº��� : AI : CScriptAIController
function Init()

end

-- �����ð����� ������ �Լ�. 
-- �Էº��� : UpdateArg( "WAIT_TIME", "AI_ACTOR" )
function Update()

	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );

   
	UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
	

	TargetActor = Util:GetActorByMinHP( true, AIActor, 0, 3000 - math.random( 1, 2000), true, true );

	AttackRate = math.random( 1, 100 );

	if  (TargetActor ~= nil)  and (Util:GetDist( AIActor, TargetActor) <= 1500)  then
		Command_BackMovingAttack_ToActor( AIActor, 1750, TargetActor, "AATYPE_1", true, 1000, math.random( -500, 500), math.random( -500, 500), math.min(300, Util:GetDist( AIActor, TargetActor)/17) );

	elseif (TargetActor ~= nil) and (Util:GetDist( AIActor, TargetActor) > 1500 ) then
		Command_Attack( AIActor, TargetActor, "AATYPE_1", true, math.min(50, Util:GetDist( AIActor, TargetActor)/6) );

	else
	
		TargetActor = Util:GetActorByMinDist( true, AIActor, 3000, 10000, false, true );
			
		if TargetActor ~= nil then
			-- ��Ʈ��ũ ���������� 250 ���� ���Ѵ�.
			Command_Move_ToActor( AIActor, 1750, TargetActor, 0, 0 );
	
		end		
		
	end
	
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
