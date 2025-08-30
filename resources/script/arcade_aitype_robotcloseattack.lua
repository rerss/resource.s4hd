require "Resources/Script/Arcade_Util.lua"
require "Resources/Script/Arcade_Localize.lua"

-- ��������
-- Arcade : CArcadeSystem.

-- AI�� �ʱ�ȭ, Arcade�� ��Ÿ�Ͽ� �°� Host�� ����� ������ ����
-- �Էº��� : AI : CScriptAIController
function Init()

end

-- �����ð����� ������ �Լ�. 
-- �Էº��� : UpdateArg( "WAIT_TIME", "AI_ACTOR" )
function Update()
	
	-- Űġ�� �������� �ʵ��� ����
	Util:LockAIActorByName( KICHI )
		
	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );	
	
	-- ���̵� üũ (1:���� / 2:����� / 3:������)
	u32DiffID = Host:GetDifficulty();
	
	-- Ÿ�� ����
	TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 3000, false, true );
	
	-- �ൿ ������ ���� ���� ��
	local Random_delay = math.random( 0, 200 );
	
	-- �̵��ݰ� ���� ���� ��
	local Random_MoveDistance = math.random( -500, 500 );

	-- ����Ȯ�� ���� ���� ��
	local Random_AttackRate = math.random( 0, 100 );
	
	--���̵��� ���� ���� Ȯ�� �� ����
	if u32DiffID == 1 then
		AttackRate = 30;
		
	-- ����� ���̵�
	elseif u32DiffID == 2 then
		AttackRate = 40;
		
	--������ ���̵�			
	elseif u32DiffID == 3 then
		AttackRate = 50;
		
	end
	
	
	-- ���� �ڵ� ����
	if TargetActor ~= nil then
	
	
		if Util:GetDist( AIActor, TargetActor ) > 500 then
			UpdateArg:SetLU32( "WAIT_TIME", 800 + Random_delay );	
			Command_Move_ToActor( AIActor, 1000, TargetActor, Random_MoveDistance, Random_MoveDistance );
		
		elseif Util:GetDist( AIActor, TargetActor ) < 500 then
		
			if AttackRate > Random_AttackRate then
				UpdateArg:SetLU32( "WAIT_TIME", 800 + Random_delay );	
				Command_Move_ToActor( AIActor, 1000, TargetActor, Random_MoveDistance, Random_MoveDistance );
				
			elseif AttackRate < Random_AttackRate then
				UpdateArg:SetLU32( "WAIT_TIME", 1800 );
				Command_MovingAttack_ToActor( AIActor, 1000, TargetActor, "AATYPE_1", true, Random_MoveDistance, Random_MoveDistance, 0 );
				
			end
			
		end
	
	else
		TargetActor = Util:GetActorByMinDist( true, AIActor, 3000, 30000, false, true );
		
		if TargetActor ~= nil then
			UpdateArg:SetLU32( "WAIT_TIME", 800 + Random_delay );	
			Command_Move_ToActor( AIActor, 1000, TargetActor, Random_MoveDistance, Random_MoveDistance );
		end

	end
	-- �����ڵ� ����
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
