
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
   
   -- AI �Ǵ��ֱ� ����
	UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );

	-- Ÿ�� ����
	local myTargetActor = Util:GetActorByMinDist( true, AIActor, 0, 2500, false, true );

	-- ����Ȯ�� ����
	--local myAttackRate = math.random( 1, 100 );

	-- Ÿ���� ���� ��
	if myTargetActor ~= nil then
		
		--���� ���̵�
			if u32DiffID == 1 then
				AttackRate = 30;
				AimRate = math.min( 300, Util:GetDist( AIActor, myTargetActor)/6);
				AimRateA = math.min(300, Util:GetDist( AIActor, myTargetActor)/10);
			-- ����� ���̵�
			elseif u32DiffID == 2 then
				AttackRate = 60;
				AimRate = math.min( 100, Util:GetDist( AIActor, myTargetActor)/6);
				AimRateA = math.min( 100, Util:GetDist( AIActor, myTargetActor)/10);
			--������ ���̵�			
			elseif u32DiffID == 3 then
				AttackRate = 90;
				AimRate = 50;
				AimRateA = 0;
			end
			
			local myRandomAttackRate = math.random( 1, 100 );
			
		-- Ÿ�� �÷��̾���� �Ÿ��� ����� ��
		if Util:GetDist( AIActor, myTargetActor) <= 1500 then
			
			-- ����Ȯ���� ������ �����ϸ鼭 �ڷ��̵�
			if AttackRate > myRandomAttackRate then
				UpdateArg:SetLU32( "WAIT_TIME", 1000 + math.random( 0, 300) );
				Command_BackMovingAttack_ToActor( AIActor, 1750, myTargetActor, "AATYPE_1", false, 1000, math.random( -500, 500), math.random( -500, 500), AimRate );

			-- ����Ȯ���� ������ ���ݾ��ϰ� �ڷ��̵�
			elseif AttackRate <= myRandomAttackRate then
				UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
				Command_BackMove_ToActor( AIActor, 1750, myTargetActor, 1000, math.random( -300, 300), math.random( -300, 300) );			
			end

		-- Ÿ�� �÷��̾���� �Ÿ��� ��ǥ �Ÿ��� ��
		elseif ( Util:GetDist( AIActor, myTargetActor) > 1500 ) and ( Util:GetDist( AIActor, myTargetActor) < 2500 )then
			
			-- Ÿ�ٸ�ǥ���� ���̿� ��ֹ��� �������
			if Util:IsVisible( AIActor, myTargetActor ) == false then
				Command_MovingAttack_ToActor( AIActor, 1750, myTargetActor,  "AATYPE_1", false, math.random( -500, 500), math.random( -500, 500), AimRate );
			-- Ÿ�ٸ�ǥ���� ���̿� ��ֹ��� ���� ���
			else
				UpdateArg:SetLU32( "WAIT_TIME", 1000 + math.random( 0, 300) );
				Command_Attack( AIActor, myTargetActor, "AATYPE_1", false, AimRateA );
			end
		
		-- Ÿ�� �÷��̾���� �Ÿ��� ��ǥ�Ÿ����� �� ��
		elseif Util:GetDist( AIActor, myTargetActor) > 2500 then

			-- ����Ȯ���� ������ �����ϸ鼭 ������ �̵�
			if AttackRate > myRandomAttackRate then
				UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
				Command_MovingAttack_ToActor( AIActor, 1750, myTargetActor,  "AATYPE_1", false, math.random( -500, 500), math.random( -500, 500), AimRate );
			-- ����Ȯ���� ������ ���ݾ��ϰ� ������ �̵�
			elseif AttackRate <= myRandomAttackRate then
				UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
				Command_Move_ToActor( AIActor, 1750, myTargetActor, math.random( -500, 500), math.random( -300, 300) );
			end
		end
	
	-- Ÿ���� ���� ��
	else
		
		-- Ÿ���� �˻�
		local myTargetActor = Util:GetActorByMinDist( true, AIActor, 0, 30000, false, true );

		if myTargetActor ~= nil then
			UpdateArg:SetLU32( "WAIT_TIME", 700 );
			Command_Move_ToActor( AIActor, 1750, myTargetActor, math.random( -500, 500), math.random( -300, 300) );
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