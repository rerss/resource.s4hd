
require "Resources/Script/Arcade_Util.lua"

-- ��������
-- Arcade : CArcadeSystem.

-- AI�� �ʱ�ȭ, Arcade�� ��Ÿ�Ͽ� �°� Host�� ����� ������ ����
-- �Էº��� : AI : CScriptAIController


gAttackCount = 0


function Init()

end

-- �����ð����� ������ �Լ�. 
-- �Էº��� : UpdateArg( "WAIT_TIME", "AI_ACTOR" )
function Update()

	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );
	

	UpdateArg:SetLU32( "WAIT_TIME", 1000 + math.random( 0, 300) );
	
	
	TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 10000, false, true );

	if (TargetActor ~= nil) and ( Util:GetDist( AIActor, TargetActor) > 0 ) then	
		Command_Move_ToDefenseArea( AIActor, 1750, 0, 0 );
	end

	if (TargetActor ~= nil) and ( Util:GetDist( AIActor, TargetActor) > 0 ) and ( Util:GetDistByDefenseArea( AIActor ) < 100 ) and ( Util:IsVisible( AIActor, TargetActor ) == false ) and ( gAttackCount == 0 ) then
		Command_Move_ToAttackArea( AIActor, 1750, 0, 0 );
	elseif (TargetActor ~= nil) and ( Util:GetDist( AIActor, TargetActor) > 0 ) and ( Util:GetDistByDefenseArea( AIActor ) < 100 ) and ( Util:IsVisible( AIActor, TargetActor ) == false ) and ( gAttackCount == 1 ) then
		Command_Move_ToAttackArea( AIActor, 1750, 0, 0 );
	elseif (TargetActor ~= nil) and ( Util:GetDist( AIActor, TargetActor) > 0 ) and ( Util:GetDistByDefenseArea( AIActor ) < 100 ) and ( Util:IsVisible( AIActor, TargetActor ) == true ) then
		Command_Attack( AIActor, TargetActor, "AATYPE_1", false, math.min(300, Util:GetDist( AIActor, TargetActor)/7) );
	elseif (TargetActor ~= nil) and ( Util:GetDist( AIActor, TargetActor) > 0 ) and ( Util:GetDistByAttackArea( AIActor ) < 100 ) and ( Util:IsVisible( AIActor, TargetActor ) == true ) and ( gAttackCount == 0 ) then
		Command_Move_ToDefenseArea( AIActor, 1750, 0, 0 );
		gAttackCount = gAttackCount +1;
	elseif (TargetActor ~= nil) and ( Util:GetDist( AIActor, TargetActor) > 0 ) and ( Util:GetDistByAttackArea( AIActor ) < 100 ) and ( Util:IsVisible( AIActor, TargetActor ) == true ) and ( gAttackCount >= 1 ) then
		Command_Attack( AIActor, TargetActor, "AATYPE_1", true, math.min(300, Util:GetDist( AIActor, TargetActor)/7) );
		gAttackCount = math.random( 0, 1);
	end
	
	Arcade:Print( string.format( "���潺�����ǰŸ�%f, ���������ǰŸ� %f, ����ī��Ʈ = %d", Util:GetDistByDefenseArea( AIActor ),Util:GetDistByAttackArea( AIActor ),gAttackCount ) );

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
