require "Resources/Script/Arcade_Util.lua"

-- ��������
-- Arcade : CArcadeSystem.

-- AI�� �÷��̾ �������� ��ġ�� ���� �� ���Ǵ� ��ǥ ��
-- gPosX�� gPosY�� ���� ���� ������ ���Ǿ�� �Ѵ�.
gPosX = {}
gPosX[1] = 0
gPosX[2] = 500
gPosX[3] = 750
gPosX[4] = 500
gPosX[5] = 0
gPosX[6] = -500
gPosX[7] = -750
gPosX[8] = -500

gPosY = {}
gPosY[1] = 750 
gPosY[2] = 500 
gPosY[3] = 0    
gPosY[4] = -500
gPosY[5] = -750
gPosY[6] = -500
gPosY[7] = 0
gPosY[8] = 500



-- AI�� �ʱ�ȭ, Arcade�� ��Ÿ�Ͽ� �°� Host�� ����� ������ ����
-- �Էº��� : AI : CScriptAIController

function Init()

end

-- �����ð����� ������ �Լ�. 
-- �Էº��� : UpdateArg( "WAIT_TIME", "AI_ACTOR" )
function Update()
	
	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );
	
	-- Ÿ�� ����
	TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 10000, false, true );

	-- ���̵� ������
	u32DiffID = Host:GetDifficulty();
	
	-- ���̵� ���� ���� ���� ����
	local AimRate
	local AttackAfterWaitTime
	
	--���� ���̵�
	if u32DiffID == 1 then
		AimRate = 120;
		AttackAfterWaitTime = 2750;
	--����� ���̵�
	elseif u32DiffID == 2 then
		AimRate = 75;
		AttackAfterWaitTime = 2000;
	--������ ���̵�
	elseif u32DiffID == 3 then
		AimRate = 50;
		AttackAfterWaitTime = 1500;
	end
	
	-- �����ڵ�	
	if (TargetActor ~= nil) and ( Util:GetDistByDefenseArea( AIActor ) >= 50 ) then
		UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300 ) );
		Command_Move_ToDefenseArea( AIActor, 3500, 0, 0 );
	elseif (TargetActor ~= nil) and ( Util:GetDistByDefenseArea( AIActor ) < 50 ) then
		UpdateArg:SetLU32( "WAIT_TIME", AttackAfterWaitTime + math.random( 0, 300 ) );
		Command_Attack( AIActor, TargetActor, "AATYPE_1", true, AimRate )
	else
		TargetActor = Util:GetActorByMinDist( true, AIActor, 10000, 30000, false, true );
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
