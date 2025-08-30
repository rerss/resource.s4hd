
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

	-- AI ��ũ��Ʈ �ٽ� �б� ������ ������ ����
	UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
	
	-- Ÿ�� ���� ����
	g_TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 30000, false, true );
	
	-- ���潺ī��Ʈ
	g_u32DefenceCount = UpdateArg:GetLU32( "U32_1" );
	
	-- Ÿ�� ���Ͱ� ���� ��
	if g_TargetActor ~= nil then
		
			--���� ���̵�
			if u32DiffID == 1 then
				AimRate = math.min( 300, Util:GetDist( AIActor, g_TargetActor)/6);
				AimRateA = math.min(300, Util:GetDist( AIActor, g_TargetActor)/10);
			-- ����� ���̵�
			elseif u32DiffID == 2 then
				AimRate = math.min( 100, Util:GetDist( AIActor, g_TargetActor)/6);
				AimRateA = math.min( 100, Util:GetDist( AIActor, g_TargetActor)/10);
			--������ ���̵�			
			elseif u32DiffID == 3 then
				AimRate = 50;
				AimRateA = 0;
			end
			
		-- ������ �Ÿ��� ���� ������ ���� ���
		if Util:GetDist( AIActor, g_TargetActor) > 5000 then
			Arcade:Print( string.format( "�ָ��ִ� ��� �ѱ�" ) );
			UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
			Command_MovingAttack_ToActor( AIActor, 1750, g_TargetActor,  "AATYPE_1", true, math.random( -500, 500), math.random( -500, 500), AimRate );

		-- ������ �Ÿ��� ���� �Ÿ��� ������ ���
		elseif ( Util:GetDist( AIActor, g_TargetActor) > 2000 ) and ( Util:GetDist( AIActor, g_TargetActor) <= 5000 ) then
		
			-- ����� ���� ���
			if Util:IsVisible( AIActor, g_TargetActor ) == true then
				Arcade:Print( string.format( "����� ���̱� ������ ���" ) );
				UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
				Command_Attack( AIActor, g_TargetActor, "AATYPE_1", true, AimRateA );
			
			-- ����� ������ ���� ���
			elseif Util:IsVisible( AIActor, g_TargetActor ) == false then
				Arcade:Print( string.format( "����� ������ �ʾƼ� �̵��ϸ鼭 ���" ) );
				UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
				Command_MovingAttack_ToActor( AIActor, 1750, g_TargetActor,  "AATYPE_1", true, math.random( -500, 500), math.random( -500, 500), AimRate );
			end
		
		-- ������ �Ÿ��� ������� ����� ���
		elseif ( Util:GetDist( AIActor, g_TargetActor) > 1000 ) and ( Util:GetDist( AIActor, g_TargetActor) <= 2000 ) then
			
			-- ���潺 �����ǰ� �ְ��
			if ( Util:GetDistByDefenseArea( AIActor ) > 100 ) and ( g_u32DefenceCount == 0 ) then
				Arcade:Print( string.format( "������ �Ÿ��� ����� ���� ���潺 ���������� �̵�" ) );
				UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
				Command_Move_ToDefenseArea( AIActor, 1750, 0, 0 );
				
			-- ���潺 �����ǰ� ����� ���
			elseif Util:GetDistByDefenseArea( AIActor ) < 100 then
			
				-- ����� ���� ���
				if Util:IsVisible( AIActor, g_TargetActor ) == true then
					Arcade:Print( string.format( "���潺�����ǰ� �������� ����� ���̱� ������ ���" ) );
					UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
					Command_Attack( AIActor, g_TargetActor, "AATYPE_1", true, AimRateA );
				
				-- ����� ������ ���� ���
				elseif Util:IsVisible( AIActor, g_TargetActor ) == false then
					Arcade:Print( string.format( "�������� ����� ������ �ʾƼ� �������������� �̵�" ) );
					-- ���潺ī��Ʈ ��
					UpdateArg:SetLU32( "U32_1", g_u32DefenceCount + 1 );
					UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
					Command_Move_ToAttackArea( AIActor, 1750, 0, 0 );
				end
			
			elseif g_u32DefenceCount >= 1 then
			
				-- ������ġ�� ����� ���
				if Util:GetDistByAttackArea( AIActor ) < 100 then
					Arcade:Print( string.format( "������ġ�̱� ������ ���" ) );
					UpdateArg:SetLU32( "U32_1", 0 );
					UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
					Command_Attack( AIActor, g_TargetActor, "AATYPE_1", true, AimRateA );
				
				-- ������ġ�� �� ���
				elseif Util:GetDistByAttackArea( AIActor ) > 100 then
					Arcade:Print( string.format( "������ġ�� �ƴ϶� ��� �̵�" ) );
					UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
					Command_Move_ToAttackArea( AIActor, 1750, 0, 0 );
				end
			
			end

		-- ������ �Ÿ��� ���� ����� ���
		elseif Util:GetDist( AIActor, g_TargetActor) <= 1000 then
			Arcade:Print( string.format( "������ �Ÿ��� ����ġ�� ������� ���� �־����鼭 ����" ) );
			UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300) );
			Command_BackMovingAttack_ToActor( AIActor, 1750, g_TargetActor, "AATYPE_1", true, 1000, math.random( -500, 500), math.random( -500, 500), AimRate );
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
