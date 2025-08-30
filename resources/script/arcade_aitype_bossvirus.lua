
require "Resources/Script/Arcade_Util.lua"

-- ��������
-- Arcade : CArcadeSystem.

gMoveCount = 0

g_TeleportPosition = {}
g_TeleportPosition[1] = "arcade_teleport_stage09_03"
g_TeleportPosition[2] = "arcade_teleport_stage09_03"
g_TeleportPosition[3] = "arcade_teleport_stage09_04"
g_TeleportPosition[4] = "arcade_teleport_stage09_04"
g_TeleportPosition[5] = "arcade_teleport_stage09_06"
g_TeleportPosition[6] = "arcade_teleport_stage09_06"

-- AI�� �ʱ�ȭ, Arcade�� ��Ÿ�Ͽ� �°� Host�� ����� ������ ����
-- �Էº��� : AI : CScriptAIController
function Init()

end

-- �����ð����� ������ �Լ�. 
-- �Էº��� : UpdateArg( "WAIT_TIME", "AI_ACTOR" )
function Update()

	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );
	
	-- ���������� ��ȭ��Ű�� ���� ī��Ʈ�� �޾ƿ´�
	u32AttackCount = UpdateArg:GetLU32( "U32_1" );
	u32DarkGasCount = UpdateArg:GetLU32( "U32_2" );
	g_u32SpawnCountVirus = UpdateArg:GetLU32( "U32_3" );
	g_u32SpawnCountHealer = UpdateArg:GetLU32( "U32_4" );
	g_u32TeleportCount = UpdateArg:GetLU32( "U32_5" );
	
	-- ������ �������� �� ų���� �޾ƿ´�.
	u32VirusHealer = HostArg:GetLU32( "INFECTED_HEALER" );
	g_u32Virus = HostArg:GetLU32( "VIRUS" );
	
	-- ������ ������ �ٲ�� HP ����
	local myChangePattern = 0.4;
		
	-- Ÿ���� ã�´�
	TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 5000, false, true );

	if Util:GetHPRate( AIActor ) > myChangePattern then
	
		-- �ڷ���Ʈ �ϴ� ����
		local myTeleportChance = 15;

		if TargetActor ~= nil then
			
			if g_u32TeleportCount >= myTeleportChance then
				TeleportCount( -1 );
				UpdateArg:SetLU32( "WAIT_TIME", 500 );
				Command_Teleport_ToNode( AIActor, g_TeleportPosition[math.random(1,6)] );
				Arcade:Print( string.format( "�����̵�" ) );
			
			elseif g_u32TeleportCount < myTeleportChance then
			
				if u32AttackCount <= 10 then

					if Util:GetDist( AIActor, TargetActor) > 1000 then
						-- ���� ī��Ʈ�� �÷��ش�
						AttackCountUP( 1 );
						TeleportCount( 1 );
						UpdateArg:SetLU32( "WAIT_TIME", 500 );
						Command_Move_ToActor( AIActor, 750, TargetActor, math.random( -500, 500), math.random( -500, 500) );
						Arcade:Print( string.format( "�Ϲ��̵�" ) );
					
					elseif Util:GetDist( AIActor, TargetActor) < 1000 then
						-- ���� �Ⱥ��� ��� ���� ���� �ٽ� �̵��Ѵ�.
						if Util:IsVisible( AIActor, TargetActor ) == false then
							UpdateArg:SetLU32( "WAIT_TIME", 1000 + math.random(1,500));
							Command_Move_ToActor( AIActor, 750, TargetActor, math.random( -1000, 1000), math.random( -1000, 1000) );
						elseif Util:IsVisible( AIActor, TargetActor ) == true then
							-- ���� ī��Ʈ�� �÷��ش�
							AttackCountUP( 4 );
							TeleportCount( -1 );
							UpdateArg:SetLU32( "WAIT_TIME", 1550 );
							Command_Attack( AIActor, TargetActor, "AATYPE_1", true, 0 );
							Arcade:Print( string.format( "�Ϲݰ���" ) );
						end
						
					end

				elseif u32AttackCount > 10 then
					
					-- ���� Ȯ�� �޾ƿ´�
					local myAttackRate = math.random( 1, 100 );
					Arcade:Print( string.format( "����Ȯ��=%d", myAttackRate ) );

					if ( myAttackRate <= 30 ) and ( g_u32SpawnCountVirus - g_u32Virus == 0 ) then
						AttackCountUP( -1 );
						SpawnCountUP( 1, 6 );
						UpdateArg:SetLU32( "WAIT_TIME", 2050 );
						Command_Attack( AIActor, TargetActor, "AATYPE_7", false, 0 );
						Arcade:Print( string.format( "��ȯ" ) );
					elseif ( myAttackRate > 30 ) and ( myAttackRate <= 80 ) then		
						AttackCountUP( -1 );
						UpdateArg:SetLU32( "WAIT_TIME", 5050 );
						Command_Attack( AIActor, TargetActor, "AATYPE_3", false, 0 );
						Arcade:Print( string.format( "����" ) );
					elseif myAttackRate > 80 then
						
						if Util:GetDist( AIActor, TargetActor) > 1000 then
							AttackCountUP( -1 );
							UpdateArg:SetLU32( "WAIT_TIME", 500 );
							Command_Move_ToActor( AIActor, 750, TargetActor, math.random( -500, 500), math.random( -500, 500) );
							Arcade:Print( string.format( "������ �ѱ�" ) );
						elseif Util:GetDist( AIActor, TargetActor) < 1000 then
							AttackCountUP( -1 );
							TeleportCount( -1 );
							UpdateArg:SetLU32( "WAIT_TIME", 1550 );
							Command_Attack( AIActor, TargetActor, "AATYPE_1", true, 0 );
							Arcade:Print( string.format( "������ ����" ) );
						end

					end
					
				end
			
			end

		else

			TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 10000, false, true );
			
			if TargetActor ~= nil then
				AttackCountUP( 1 );
				UpdateArg:SetLU32( "WAIT_TIME", 500 );
				Command_Move_ToActor( AIActor, 750, TargetActor, math.random( -500, 500), math.random( -500, 500) );
				Arcade:Print( string.format( "���Ÿ� �̵�" ) );
			end

		end
	
	elseif Util:GetHPRate( AIActor ) <= myChangePattern then
	
		-- �ڷ���Ʈ �ϴ� ����
		local myTeleportChance = 15;
		
		if TargetActor ~= nil then
		
			if g_u32TeleportCount >= myTeleportChance then
				TeleportCount( -1 );
				UpdateArg:SetLU32( "WAIT_TIME", 500 );
				Command_Teleport_ToNode( AIActor, g_TeleportPosition[math.random(1,6)] );
				Arcade:Print( string.format( "�����̵�" ) );
			
			elseif g_u32TeleportCount < myTeleportChance then
			
				-- ��ũ���� ī��Ʈ�� 0 �϶�
				if u32DarkGasCount == 0 then

					if u32AttackCount <= 10 then

						if Util:GetDist( AIActor, TargetActor) > 1000 then
							-- ���� ī��Ʈ�� �÷��ش�
							AttackCountUP( 1 );
							TeleportCount( 1 );
							UpdateArg:SetLU32( "WAIT_TIME", 500 );
							Command_Move_ToActor( AIActor, 750, TargetActor, math.random( -500, 500), math.random( -500, 500) );
							Arcade:Print( string.format( "�Ϲ��̵�" ) );
						
						elseif Util:GetDist( AIActor, TargetActor) < 1000 then
							-- ���� �Ⱥ��� ��� ���� ���� �ٽ� �̵��Ѵ�.
							if Util:IsVisible( AIActor, TargetActor ) == false then
								UpdateArg:SetLU32( "WAIT_TIME", 1000 + math.random(1,500));
								Command_Move_ToActor( AIActor, 750, TargetActor, math.random( -1000, 1000), math.random( -1000, 1000) );
							elseif Util:IsVisible( AIActor, TargetActor ) == true then
								-- ���� ī��Ʈ�� �÷��ش�
								AttackCountUP( 4 );
								TeleportCount( -1 );
								UpdateArg:SetLU32( "WAIT_TIME", 1550 );
								Command_Attack( AIActor, TargetActor, "AATYPE_1", true, 0 );
								Arcade:Print( string.format( "�Ϲݰ���" ) );
							end
							
						end

					elseif u32AttackCount > 10 then
						
						-- ���� Ȯ�� �޾ƿ´�
						local myAttackRate = math.random( 0, 100 );
						Arcade:Print( string.format( "����Ȯ��=%d", myAttackRate ) );

						if ( myAttackRate <= 40 ) and ( g_u32SpawnCountHealer - u32VirusHealer == 0 ) then
							AttackCountUP( -1 );
							SpawnCountUP( 2, 3 );
							UpdateArg:SetLU32( "WAIT_TIME", 2050 );
							Command_Attack( AIActor, TargetActor, "AATYPE_6", false, 0 );
							Arcade:Print( string.format( "��ȯ" ) );

						elseif ( myAttackRate > 40 ) and ( myAttackRate <= 80 ) then		
							AttackCountUP( -1 );
							DarkGasCountUP( 1 );
							UpdateArg:SetLU32( "WAIT_TIME", 5050 );
							Command_Attack( AIActor, TargetActor, "AATYPE_3", false, 0 );
							Arcade:Print( string.format( "����" ) );

						elseif myAttackRate > 80 then
							
							if Util:GetDist( AIActor, TargetActor) > 1000 then
								AttackCountUP( -1 );
								UpdateArg:SetLU32( "WAIT_TIME", 500 );
								Command_Move_ToActor( AIActor, 750, TargetActor, math.random( -500, 500), math.random( -500, 500) );
								Arcade:Print( string.format( "������ �ѱ�" ) );
							elseif Util:GetDist( AIActor, TargetActor) < 1000 then
								AttackCountUP( -1 );
								TeleportCount( -1 );
								UpdateArg:SetLU32( "WAIT_TIME", 1550 );
								Command_Attack( AIActor, TargetActor, "AATYPE_2", true, 0 );
								Arcade:Print( string.format( "������ ����" ) );
							end

						end
						
					end
				
				-- ��ũ���� ī��Ʈ�� 1�̻��� ��
				elseif u32DarkGasCount >= 1 then
					
					-- ���� �Ⱥ��� ��� ���� ���� �ٽ� �̵��Ѵ�.
					if Util:IsVisible( AIActor, TargetActor ) == false then
						TeleportCount( 2 );
						UpdateArg:SetLU32( "WAIT_TIME", 1000 + math.random(1,500));
						Command_Move_ToActor( AIActor, 750, TargetActor, math.random( -1000, 1000), math.random( -1000, 1000) );
					elseif Util:IsVisible( AIActor, TargetActor ) == true then
						AttackCountUP( -1 );
						DarkGasCountUP( -1 );
						UpdateArg:SetLU32( "WAIT_TIME", 4550 );
						Command_Attack( AIActor, TargetActor, "AATYPE_4", false, 0 );
						Arcade:Print( string.format( "������ �� ����" ) );
					end
					
					--[[ 5��Ÿ ������ ��ȿ���� �������� �켱 �ּ�ó��
					local mySkillSelect = math.random( 0, 100 );

					if mySkillSelect <= 30 then
						AttackCountUP( -1 );
						DarkGasCountUP( -1 );
						UpdateArg:SetLU32( "WAIT_TIME", 4550 );
						Command_Attack( AIActor, TargetActor, "AATYPE_4", false, 0 );
						Arcade:Print( string.format( "������ �� ����" ) );

					elseif mySkillSelect > 30 then

						if Util:GetDist( AIActor, TargetActor) < 1000 then
							AttackCountUP( -1 );
							DarkGasCountUP( -1 );
							UpdateArg:SetLU32( "WAIT_TIME", 5000 );
							Command_Attack( AIActor, TargetActor, "AATYPE_3", false, 0 );
							Arcade:Print( string.format( "5��Ÿ����" ) );
						elseif Util:GetDist( AIActor, TargetActor) > 1000 then
							UpdateArg:SetLU32( "WAIT_TIME", 500 );
							Command_Move_ToActor( AIActor, 750, TargetActor, math.random( -500, 500), math.random( -500, 500) );
							Arcade:Print( string.format( "5��Ÿ �̵�" ) );
						end

					end
					--]]
					
				end
			
			end

		else

			TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 10000, false, true );
			
			if TargetActor ~= nil then
				AttackCountUP( 1 );
				UpdateArg:SetLU32( "WAIT_TIME", 500 );
				Command_Move_ToActor( AIActor, 750, TargetActor, math.random( -500, 500), math.random( -500, 500) );
				Arcade:Print( string.format( "���Ÿ� �̵�" ) );
			end

		end

	end
	
	Arcade:Print( string.format( "u32AttackCount=%d ���̷�����ȯī��Ʈ=%d,������ȯī��Ʈ=%d, �ڷ���Ʈ ī��Ʈ=%d", u32AttackCount, g_u32SpawnCountVirus - g_u32Virus, g_u32SpawnCountHealer - u32VirusHealer, g_u32TeleportCount ) );
	
end


-- ������ �������� ��ȭ�� ���� ���� ī��Ʈ�� �÷��� �� ȣ���ϴ� �Լ�
function AttackCountUP( CountPoint )
	
	-- �ʱ�ȭ
	if CountPoint == -1 then
		UpdateArg:SetLU32( "U32_1", 0 );

	-- �Էµ� ����ŭ ī��Ʈ �÷���
	else
		local myCurrentCount = 0
		myCurrentCount = UpdateArg:GetLU32( "U32_1" );
		UpdateArg:SetLU32( "U32_1", myCurrentCount +CountPoint );
	end
end

-- ������ �������� ��ȭ�� ���� ���� ī��Ʈ�� �÷��� �� ȣ���ϴ� �Լ�
function DarkGasCountUP( GasPoint )
	
	-- �ʱ�ȭ
	if GasPoint == -1 then
		UpdateArg:SetLU32( "U32_2", 0 );

	-- �Էµ� ����ŭ ī��Ʈ �÷���
	else
		local myCurrentGasCount = 0
		myCurrentGasCount = UpdateArg:GetLU32( "U32_2" );
		UpdateArg:SetLU32( "U32_2", myCurrentGasCount + GasPoint );
	end
end

-- ��ȯ Ƚ���� �����ϱ� ���� ī��Ʈ�� �״� �Լ�
function SpawnCountUP( SpawnKind, SpawnPoint )
	
	-- �ʱ�ȭ
	if SpawnKind == 1 then
	
		if SpawnPoint == -1 then
			UpdateArg:SetLU32( "U32_3", 0 );

		-- �Էµ� ����ŭ ī��Ʈ �÷���
		else
			local myCurrentSpawnPoint = 0
			myCurrentSpawnPoint = UpdateArg:GetLU32( "U32_3" );
			UpdateArg:SetLU32( "U32_3", myCurrentSpawnPoint +SpawnPoint );
		end
		
	elseif SpawnKind == 2 then	
	
		if SpawnPoint == -1 then
			UpdateArg:SetLU32( "U32_4", 0 );

		-- �Էµ� ����ŭ ī��Ʈ �÷���
		else
			local myCurrentSpawnPoint = 0
			myCurrentSpawnPoint = UpdateArg:GetLU32( "U32_4" );
			UpdateArg:SetLU32( "U32_4", myCurrentSpawnPoint +SpawnPoint );
		end
		
	end

end

-- �����̵� ���θ�  �Ǵ��ϱ� ���� ī��Ʈ�� �״� �Լ�
function TeleportCount( TeleportCount )

	-- �ʱ�ȭ
	if TeleportCount == -1 then
		UpdateArg:SetLU32( "U32_5", 0 );

	-- �Էµ� ����ŭ ī��Ʈ �÷���
	else
		local myTeleportCount = 0
		myTeleportCount = UpdateArg:GetLU32( "U32_5" );
		UpdateArg:SetLU32( "U32_5", myTeleportCount + TeleportCount );
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
