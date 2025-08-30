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


	UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300 ) );
	
	TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 3000, false, true );

	if ( TargetActor ~= nil ) and ( Util:GetDist( AIActor, TargetActor ) > 500 ) then
		Command_Move_ToActor( AIActor, 1000, TargetActor, 0, 0 );

	elseif ( TargetActor ~= nil ) and ( Util:GetDist( AIActor, TargetActor ) < 500 ) then
		Command_MovingAttack_ToActor( AIActor, 1000, TargetActor, "AATYPE_1", true, math.random( -300, 300 ), math.random( -300, 300 ), 0 );

	end
	
	if (TargetActor ~= nil) and (Util:GetDist( AIActor, TargetActor) > 1000 ) then
		--Command_Move_ToActor( AIActor, 300, TargetActor, math.random( -500, 500), math.random( -500, 500) )
		--Command_Stop ( AIActor );

		local myTargetActor = Util:GetAIActorByName( "���峭��107" );

		if (myTargetActor ~= nil) and (Util:GetDist( AIActor, myTargetActor) <= 500) then
			Command_Attack( AIActor, myTargetActor, "AATYPE_1", false, math.min(300, Util:GetDist( AIActor, myTargetActor)/6) );

		elseif (myTargetActor ~= nil) and (Util:GetDist( AIActor, myTargetActor) >= 500) then
			Command_Move_ToActor( AIActor, 5000, myTargetActor, math.random( -300, 300), math.random( -300, 300) );

		--elseif (TargetActor = nil) and (Util:GetDist( AIActor, TargetActor) <= 3000) and ( AttackRate <= 80 ) then
		--	Command_Move_ToActor( AIActor, 1750, TargetActor, math.random( -500, 500), math.random( -300, 300) );
		end
	
	--[[else
		TargetActor = Util:GetActorByMinDist( true, AIActor, 3000, 30000, false, true );
		
		if TargetActor ~= nil then
		Command_Move_ToActor( AIActor, 1000, TargetActor, 0, 0 );
		end]]--

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
