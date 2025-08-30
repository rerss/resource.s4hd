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
	
	u32DiffID = Host:GetDifficulty();
	--Print( string.format( "���̵� ����!!! : %d" , u32DiffID ) );
	
	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );
	
	-- Ư�������� �� ���� ī��Ʈ�� ��´�
	g_u32AttackCount = UpdateArg:GetLU32( "U32_2");

	-- �Լ��� �ٽ� ���� �� ������ �ð��� ����
	UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );

	-- Ÿ�� �� ������ ����� ����
	Util:LockAIActorByName( INJURYED_TEAJO );
	
	-- Ÿ�� ���͸� ����
	g_MinHPActor = Util:GetActorByMinHP( true, AIActor, 0, 4000, false, true );
	g_MaxHPActor = Util:GetActorByMaxHP( true, AIActor, 0, 4000, false, true );
	g_MinDistActor = Util:GetActorByMinDist( true, AIActor, 0, 4000, false, true );
	g_MaxDistActor = Util:GetActorByMaxDist( true, AIActor, 0, 4000, false, true );
	

	-- ���� Ȯ���� ����
	--AttackRate = math.random( 1, 100 );
	--���� ���̵� ���߷�
	if g_MinDistActor ~= nil then
		if u32DiffID == 1 then
			DIstAimRate = math.min(300, Util:GetDist( AIActor, g_MinDistActor)/10);
			MaxHPAimRate = math.min(300, Util:GetDist( AIActor, g_MaxHPActor)/20);
			MinHPAimRate = math.min(300, Util:GetDist( AIActor, g_MinHPActor)/20);
			MaxDistAimRate = math.min(300, Util:GetDist( AIActor, g_MaxDistActor)/20);
			MinDistAimRate = math.min(300, Util:GetDist( AIActor, g_MinDistActor)/20);
		--����� ���̵� ���߷�
		elseif u32DiffID == 2 then
			DistAimRate = math.min(100, Util:GetDist( AIActor, g_MinDistActor)/10);
			MaxHPAimRate = math.min(100, Util:GetDist( AIActor, g_MaxHPActor)/20);
			MinHPAimRate = math.min(100, Util:GetDist( AIActor, g_MinHPActor)/20);
			MaxDistAimRate = math.min(100, Util:GetDist( AIActor, g_MaxDistActor)/20);
			MinDistAimRate = math.min(100, Util:GetDist( AIActor, g_MinDistActor)/20);
		--������ ���̵� ���߷�
		elseif u32DiffID ==3 then
			DistAimRate = 50;
			MaxHPAimRate = 0;
			MinHPAimRate = 0;
			MaxDistAimRate = 0;
			MinDistAimRate = 0;
		end	
	end
		
	-- ���� ����� �Ÿ��� Ÿ���� ���� ��
	if g_MinDistActor ~= nil then
	
		if g_u32AttackCount <=5 then
		
			if Util:IsVisible( AIActor, g_MinDistActor ) == false then
				
				Arcade:Print( string.format( "I cnat see my TARGET!!")  );
				UpdateArg:SetLU32( "WAIT_TIME", 1000 + math.random( 0, 500) );
				Command_Move_ToActor( AIActor, 1750, g_MinDistActor, 0, 0 );
				
			elseif Util:IsVisible( AIActor, g_MinDistActor ) == true then
				-- Ÿ�ٰ��� �Ÿ��� ����� ��
				if Util:GetDist( AIActor, g_MinDistActor) <= 1500 then
				
					Arcade:Print( string.format( "�ڷ� �̵��ϸ鼭 ����")  );
					-- �ڷ� �̵��ϸ鼭 ����
					UpdateArg:SetLU32( "WAIT_TIME", 4500 + math.random( 0, 300) );
					SpecialAttackCountUP( 1 );
					Command_BackMovingAttack_ToActor( AIActor, 1750, g_MinDistActor, "AATYPE_1", true, 1000, math.random( -500, 500), math.random( -500, 500), AimRate );
				
				-- Ÿ�ٰ��� �Ÿ��� �� ��
				elseif Util:GetDist( AIActor, g_MinDistActor) > 1500 then
					
					Arcade:Print( string.format( "Ÿ������ �̵��ϸ� ����")  );
					-- Ÿ������ �̵��ϸ� ����
					UpdateArg:SetLU32( "WAIT_TIME", 4500 + math.random( 0, 300) );
					SpecialAttackCountUP( 1 );
					Command_MovingAttack_ToActor( AIActor, 1750, g_MinDistActor,  "AATYPE_1", true, math.random( -500, 500), math.random( -500, 500), AimRate );
					
				end
				
			end
			
		-- ����ī��Ʈ�� 6���� ũ�� ���� ���� HP�� �÷��̾ ���� ����
		elseif g_u32AttackCount == 6 then
			Arcade:Print( string.format( "First Strike")  );
			UpdateArg:SetLU32( "WAIT_TIME", 4500 );
			SpecialAttackCountUP( 1 );
			Command_Attack( AIActor, g_MaxHPActor, "AATYPE_1", true, MaxHPAimRate );
		
		-- ����ī��Ʈ�� 7�̸� ���� ���� HP�� �÷��̾ ���� ����
		elseif g_u32AttackCount == 7 then
			Arcade:Print( string.format( "Second Strike")  );
			UpdateArg:SetLU32( "WAIT_TIME", 4500 );
			SpecialAttackCountUP( 1 );
			Command_Attack( AIActor, g_MinHPActor, "AATYPE_1", true, MinHPAimRate );
			
		-- ����ī��Ʈ�� 8�̸� ���� �� �÷��̾ ���� ����
		elseif g_u32AttackCount == 8 then
			Arcade:Print( string.format( "Third Strike")  );
			UpdateArg:SetLU32( "WAIT_TIME", 4500 );
			SpecialAttackCountUP( 1 );
			Command_Attack( AIActor, g_MaxDistActor, "AATYPE_1", true, MaxDistAimRate );
			
		-- ����ī��Ʈ�� 9�� ���� ����� �÷��̾ ���� ����
		elseif g_u32AttackCount == 9 then
			Arcade:Print( string.format( "Fourth Strike")  );
			UpdateArg:SetLU32( "WAIT_TIME", 3000 );
			SpecialAttackCountUP( -1 );
			Command_Attack( AIActor, g_MinDistActor, "AATYPE_1", true, MinDistAimRate );
		
		end
	
	else
		g_MinDistActor = Util:GetActorByMinDist( true, AIActor, 3000, 30000, false, true );
	
		if g_MinDistActor ~= nil then
			Arcade:Print( string.format( "Move Move")  );
			UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
			Command_Move_ToActor( AIActor, 1750, g_MinDistActor, 0, 0 );
		end
	
	end
	
	

end
	
	
function SpecialAttackCountUP( myattackCount )  
	
	if myattackCount == -1 then
		UpdateArg:SetLU32( "U32_2", 0 );
		g_u32AttackCount = UpdateArg:GetLU32( "U32_2" );
	
	else
		g_u32AttackCount = UpdateArg:GetLU32( "U32_2" );
		UpdateArg:SetLU32( "U32_2", g_u32AttackCount + myattackCount );
		g_u32AttackCount = UpdateArg:GetLU32( "U32_2" );		
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
