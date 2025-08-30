
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

	u32DiffID = Host:GetDifficulty();
	
	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );
    
	UpdateArg:SetLU32( "WAIT_TIME", 700 );

	TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 500, true, true );

	--AttackRate = math.random(1, 100);
	--���� ���̵�
	if u32DiffID == 1 then
		AttackRate = 50;
	--����� ���̵�
	elseif u32DiffID == 2 then
		AttackRate = 80;
	--������ ���̵�
	elseif u32DiffID ==3 then
		AttackRate =100;
	end
	
	RandomAttackRate = math.random(1, 100);
	
	if (TargetActor ~= nil) and (AttackRate > RandomAttackRate) then
	
		Command_MovingAttack_ToActor( AIActor, 1750, TargetActor, "AATYPE_1", true, math.random(-500, 500),  math.random(-500, 500), 0 );
	
	else
			
		TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 1000, true, true );
			
		if TargetActor ~= nil then
	
			Command_Move_ToActor( AIActor, 1200, TargetActor, math.random(-500, 500), math.random(-500, 500) );
			
		else
			
			TargetActor = Util:GetActorByMinDist( true, AIActor, 1000, 20000, false, true );
			
			if TargetActor ~= nil then
		
				Command_Move_ToActor( AIActor, 1750, TargetActor, math.random(-500, 500), math.random(-500, 500) );
				
			end
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