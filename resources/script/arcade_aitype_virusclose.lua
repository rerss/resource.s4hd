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

	-- ���̵� �� ��������
	u32DiffID = Host:GetDifficulty();
	--Print( string.format( "���̵� ����!!! : %d" , u32DiffID ) );
	
	local AttackAfterWaitTime
	
	--���� ���̵�
	if u32DiffID == 1 then
		AttackAfterWaitTime = 1500;
	--����� ���̵�
	elseif u32DiffID == 2 then
		AttackAfterWaitTime = 1100;
	--������ ���̵�
	elseif u32DiffID ==3 then
		AttackAfterWaitTime =700;
	end
	
	
	-- Ÿ�� ����
	TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 3000, false, true );

	if ( TargetActor ~= nil ) and ( Util:GetDist( AIActor, TargetActor ) > 500 ) then
		UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300 ) );
		Command_Move_ToActor( AIActor, 1000, TargetActor, 0, 0 );
		
	elseif ( TargetActor ~= nil ) and ( Util:GetDist( AIActor, TargetActor ) < 500 ) then
		-- ���̵��� ���� ���� �� ������ ���� �����Ѵ�.
		UpdateArg:SetLU32( "WAIT_TIME", AttackAfterWaitTime + math.random( 0, 300 ) );
		Command_MovingAttack_ToActor( AIActor, 1000, TargetActor, "AATYPE_1", true, math.random( -300, 300 ), math.random( -300, 300 ), 0 );
		
	else
		TargetActor = Util:GetActorByMinDist( true, AIActor, 3000, 30000, false, true );
		
		if TargetActor ~= nil then
		UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300 ) );
		Command_Move_ToActor( AIActor, 1000, TargetActor, 0, 0 );
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
