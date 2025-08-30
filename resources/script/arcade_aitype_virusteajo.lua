
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

	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );

	-- ȸ�� ī��Ʈ
	g_u32dodgeCount = UpdateArg:GetLU32( "U32_1" );
	
	-- Űġ�� �Ÿ�üũ�� ���� Űġ Ÿ���� ������ �����Ѵ�.
	g_SpecialTargetActor = Util:GetAIActorByName( KICHI );
		
	-- Űġ ����ī��Ʈ
	g_KichiAttackCount = UpdateArg:GetLU32( "U32_2" );
	
	-- Ÿ�� ����
	if g_KichiAttackCount >= 1 then
	
		g_myTargetActor = g_SpecialTargetActor;
		
	elseif ( g_KichiAttackCount == 0 ) and ( g_SpecialTargetActor ~= nil ) then
	
		if Util:GetDist( AIActor, g_SpecialTargetActor ) > 3000 then
			g_myTargetActor = g_SpecialTargetActor;
			UpdateArg:SetLU32( "U32_2", 1 );
		elseif Util:GetDist( AIActor, g_SpecialTargetActor ) <= 3000 then
			Util:LockAIActorByName( KICHI )
			g_myTargetActor = Util:GetActorByMinDist( true, AIActor, 0, 3000, false, true );
		end
		
	end	
	
    
	UpdateArg:SetLU32( "WAIT_TIME", 700 );
	
	-- ����Ȯ�� ���ϱ�
	AttackRate = math.random(1, 100);
	
	-- Ÿ���� ���� ��
	if g_myTargetActor ~= nil then
	
		-- �Ÿ��� ����� ��
		if Util:GetDist( AIActor, g_myTargetActor) <= 700 then
			-- ����
			UpdateArg:SetLU32( "WAIT_TIME", 700 );
			-- ŰġŸ�� �ʱ�ȭ
			UpdateArg:SetLU32( "U32_2", 0 );
			Command_MovingAttack_ToActor( AIActor, 1750, g_myTargetActor, "AATYPE_1", true, 0, 0, 0 );			

		-- �Ÿ��� �� ��
		elseif Util:GetDist( AIActor, g_myTargetActor) > 700 then
			-- �̵�
			UpdateArg:SetLU32( "WAIT_TIME", 700 );
			Command_Move_ToActor( AIActor, 1200, g_myTargetActor, math.random(-700, 700), math.random(-700, 700) );
		end
	
	-- Ÿ���� ���� ��
	else
		g_myTargetActor = Util:GetActorByMinDist( true, AIActor, 3000, 30000, false, true );
		if g_myTargetActor ~= nil then
			-- �̵�
			UpdateArg:SetLU32( "WAIT_TIME", 700 );
			Command_Move_ToActor( AIActor, 1200, g_myTargetActor, math.random(-700, 700), math.random(-700, 700) );
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
	-- ����ī��Ʈ�� �����´�
	g_u32dodgeCount = UpdateArg:GetLU32( "U32_1" );
	
	-- ȸ�� �ڵ�	
	if g_u32dodgeCount >= 3 then
		-- ���ݹ����� ȸ���� ���� ����
		local myDodgeDirection = math.random( 1, 3);
		
		if myDodgeDirection == 1 then
			
			Arcade:Print( string.format( "�������� ȸ��") );
			
			UpdateArg:SetLU32( "U32_1", 0 );
			-- �������� ȸ��
			Command_Dodge_ToActor( AIActor, g_myTargetActor, true );
		elseif myDodgeDirection == 2 then 
			
			Arcade:Print( string.format( "���������� ȸ��") );
			-- ȸ��ī��Ʈ �ʱ�ȭ
			UpdateArg:SetLU32( "U32_1", 0 );
			-- ���������� ȸ��
			Command_Dodge_ToActor( AIActor, g_myTargetActor, false );
		end
		
	else
		-- ����ī��Ʈ ��
		g_u32dodgeCount = UpdateArg:GetLU32( "U32_1" );
		UpdateArg:SetLU32( "U32_1", g_u32dodgeCount + 1 );
	end
	
end

-- AiActor�� Hp�� ����Ǿ����� ������ �Լ�
-- �Էº��� : ChangeHpArg( "AI_ACTOR" )
function ChangeHp()
end

-- TriggerSystem���� �߻��� NotifyID�� ���´�.
-- �Էº��� : TriggerArg( "NOTIFY_ID" )
function TriggerNotifyID()

end
