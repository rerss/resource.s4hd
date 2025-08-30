
require "Resources/Script/Arcade_Util.lua"

-- ��������
-- Arcade : CArcadeSystem.

gMoveCount = 0

-- AI�� �ʱ�ȭ, Arcade�� ��Ÿ�Ͽ� �°� Host�� ����� ������ ����
-- �Էº��� : AI : CScriptAIController
function Init()

end

-- �����ð����� ������ �Լ�. 
-- �Էº��� : UpdateArg( "WAIT_TIME", "AI_ACTOR" )
function Update()

	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );
	PhaseCheck = HostArg:GetLU32( "PHASE_ID" );
	g_StageCheck = HostArg:GetLU32( "NOW_STAGE_ID" );

	UpdateArg:SetLU32( "WAIT_TIME", 750 );

	if g_StageCheck == 6 then
	
	
	elseif g_StageCheck == 7 then
	
		if PhaseCheck == 1 then
			--������ �����ġ�� �̵�
			Command_Move_ToNode( AIActor, 1000, "arcade_spawn_m01", 0, 0 );
		elseif PhaseCheck == 2 then
			Command_Move_ToNode( AIActor, 1000, "arcade_spawn_m02", 0, 0 );
		elseif (PhaseCheck >=3) and (PhaseCheck <=8 ) then
			Command_Move_ToNode( AIActor, 1000, "arcade_spawn_m03", 0, 0 );
		elseif PhaseCheck == 9 then
			Command_Move_ToNode( AIActor, 1000, "arcade_spawn_m04", 0, 0 );
		elseif (PhaseCheck >=10) and (PhaseCheck <=15 ) then
			Command_Move_ToNode( AIActor, 1000, "arcade_spawn_m05", 0, 0 );
		elseif PhaseCheck == 16 then
			Command_Move_ToNode( AIActor, 1000, "arcade_spawn_m06", 0, 0 );
		elseif PhaseCheck == 17 then
			Command_Move_ToNode( AIActor, 1000, "arcade_spawn_m07", 0, 0 );
		elseif (PhaseCheck >=18) and (PhaseCheck <=23 ) then
			Command_Move_ToNode( AIActor, 1000, "arcade_spawn_m08", 0, 0 );
		elseif PhaseCheck == 24 then
			Command_Move_ToNode( AIActor, 1000, "arcade_spawn_m09", 0, 0 );
		elseif PhaseCheck == 25 then
			Command_Move_ToNode( AIActor, 1000, "arcade_spawn_m10", 0, 0 );
		elseif (PhaseCheck >=26) and (PhaseCheck <=30 ) then
			Command_Move_ToNode( AIActor, 1000, "arcade_spawn_m11", 0, 0 );
		elseif PhaseCheck == 31 then
			Command_Move_ToNode( AIActor, 1000, "arcade_spawn_m12", 0, 0 );
		elseif PhaseCheck == 32 then
			Command_Move_ToNode( AIActor, 1000, "arcade_spawn_m13", 0, 0 );
		elseif (PhaseCheck >=33) and (PhaseCheck <=37 ) then
			Command_Move_ToNode( AIActor, 1000, "arcade_spawn_m14", 0, 0 );
		elseif PhaseCheck == 38 then
			Command_Move_ToNode( AIActor, 1000, "arcade_spawn_m15", 0, 0 );
		elseif (PhaseCheck >=39) and (PhaseCheck <=99 ) then
			Command_Move_ToNode( AIActor, 1000, "arcade_spawn_m15", 0, 0 );
		end
		
	end
	
	
--[[�����丵��
	
	if ( PhaseCheck >= 1 ) and ( PhaseCheck < 8 ) then
		Command_Move_ToPos( AIActor, 1000, 13320, -1582, -337, 0, 0 );
	elseif ( PhaseCheck == 9 ) then
		Command_Move_ToPos( AIActor, 1000, 13331, -1642, 4646, 0, 0 );
	elseif ( PhaseCheck >= 10 ) and ( PhaseCheck < 18 ) then
		Command_Move_ToPos( AIActor, 1000, 9304, -1150, 10238, 0, 0 );
	elseif ( PhaseCheck >= 18 ) and ( PhaseCheck < 24 ) then
		Command_Move_ToPos( AIActor, 1000, 807, -40, 12377, 0, 0 );
	elseif ( PhaseCheck >= 24 ) and ( PhaseCheck < 33 ) then
		Command_Move_ToPos( AIActor, 1000, -3820, 811, 12800, 0, 0 );
	end
--]]

--[[	

	TargetActor = Util:GetActorByMinDist( false, AIActor, 0, 500, true, true );
	
	if TargetActor ~= nil then
		Command_Move_ToActor( AIActor, 1000, TargetActor, 200, -200 );
	else
		TargetActor = Util:GetActorByMinDist( false, AIActor, 500, 2000, false, true );		
		if TargetActor ~= nil then
			Command_Move_ToActor( AIActor, 1000, TargetActor, 200, -200 );
		end
	end
--]]

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
