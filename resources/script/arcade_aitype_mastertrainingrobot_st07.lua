
require "Resources/Script/Arcade_Util.lua"
require "Resources/Script/Arcade_Localize.lua"

-- ��������
-- Arcade : CArcadeSystem.

gPosX = {}
gPosX[1] = 0
gPosX[2] = 600
gPosX[3] = 900
gPosX[4] = 600
gPosX[5] = 0
gPosX[6] = -600
gPosX[7] = -900
gPosX[8] = -600

gPosY = {}
gPosY[1] = -900 
gPosY[2] = -600 
gPosY[3] = 0    
gPosY[4] = 600
gPosY[5] = 900
gPosY[6] = 600
gPosY[7] = 0
gPosY[8] = -600

--gCount = 0

-- AI�� �ʱ�ȭ, Arcade�� ��Ÿ�Ͽ� �°� Host�� ����� ������ ����
-- �Էº��� : AI : CScriptAIController

function Init()

end

-- �����ð����� ������ �Լ�. 
-- �Էº��� : UpdateArg( "WAIT_TIME", "AI_ACTOR" )

function Update()

	u32DiffID = Host:GetDifficulty();
	-- �������� �ǵ��� ���� ���̵� �����´�
	g_StageChecker = HostArg:GetLU32( "NOW_STAGE_ID" );
	
	if g_StageChecker == 1 then

		AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );
		
		-- Ÿ�� ����
		local myTargetActor = Util:GetActorByMinDist( true, AIActor, 0, 3000, false, true );

		-- ��������1���� �θ����� ���ÿ� �����ϹǷ� ��ġ�� AI�� ���ϱ� ���� ���� ������Ÿ�� ����
		local myDiffDelay = math.random( 0, 300 );
			
		UpdateArg:SetLU32( "WAIT_TIME", 500 + myDiffDelay );
		
		if Util:GetHPRate( AIActor ) <= 0.3 then
		
		
			if ( myTargetActor ~= nil ) and ( Util:GetDist( AIActor, myTargetActor ) > 700 ) then
				UpdateArg:SetLU32( "WAIT_TIME", 500 + myDiffDelay );
				Command_Move_ToActor( AIActor, 1000, myTargetActor, 0, 0 );
			elseif ( myTargetActor ~= nil ) and ( Util:GetDist( AIActor, myTargetActor ) < 700 ) then
				UpdateArg:SetLU32( "WAIT_TIME", 2200 + myDiffDelay );
				Command_MovingAttack_ToActor( AIActor, 1000, myTargetActor, "AATYPE_2", true, math.random( -300, 300 ), math.random( -300, 300 ), 0 );
			else
				myTargetActor = Util:GetActorByMinDist( true, AIActor, 3000, 30000, false, true );
				
				if myTargetActor ~= nil then
					UpdateArg:SetLU32( "WAIT_TIME", 500 + myDiffDelay );
					Command_Move_ToActor( AIActor, 1000, myTargetActor, 0, 0 );
				end

			end
		
		elseif Util:GetHPRate( AIActor ) > 0.3 then
		
			if myTargetActor ~= nil then
			
			--local myAttackRate = math.random( 1, 100 );
			--���� ���̵�
			if u32DiffID == 1 then
				AttackRate = 30;
				AimRate = math.min( 300, Util:GetDist( AIActor, myTargetActor)/6);
			-- ����� ���̵�
			elseif u32DiffID == 2 then
				AttackRate = 60;
				AimRate = math.min( 100, Util:GetDist( AIActor, myTargetActor)/6);
			--������ ���̵�			
			elseif u32DiffID == 3 then
				AttackRate = 90;
				AimRate = 0;
			end
			
				-- Ÿ�� �÷��̾���� �Ÿ��� ����� ��
				if Util:GetDist( AIActor, myTargetActor) <= 1500 then
				
				local myRandomAttackRate = math.random( 1, 100 );
					
					-- ����Ȯ���� ������ �����ϸ鼭 �ڷ��̵�
					if AttackRate > myRandomAttackRate then
						UpdateArg:SetLU32( "WAIT_TIME", 700 +myDiffDelay );
						Command_BackMovingAttack_ToActor( AIActor, 1750, myTargetActor, "AATYPE_1", false, 1000, math.random( -500, 500), math.random( -500, 500), AimRate );

					-- ����Ȯ���� ������ ���ݾ��ϰ� �ڷ��̵�
					elseif AttackRate <= myRandomAttackRate then
						UpdateArg:SetLU32( "WAIT_TIME", 700 + myDiffDelay );
						Command_BackMove_ToActor( AIActor, 1750, myTargetActor, 1000, math.random( -300, 300), math.random( -300, 300) );			
					end

				-- Ÿ�� �÷��̾���� �Ÿ��� ��ǥ �Ÿ��� ��
				elseif ( Util:GetDist( AIActor, myTargetActor) > 1500 ) and ( Util:GetDist( AIActor, myTargetActor) < 2500 )then

						UpdateArg:SetLU32( "WAIT_TIME", 700 + myDiffDelay );
						Command_Attack( AIActor, myTargetActor, "AATYPE_1", false, AimRate );
				
				-- Ÿ�� �÷��̾���� �Ÿ��� ��ǥ�Ÿ����� �� ��
				elseif Util:GetDist( AIActor, myTargetActor) > 2500 then
					UpdateArg:SetLU32( "WAIT_TIME", 700 + myDiffDelay );
					Command_Move_ToActor( AIActor, 1750, myTargetActor, math.random( -500, 500), math.random( -300, 300) );
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
	
	elseif g_StageChecker == 7 then
		
		AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );
		
		-- Űġ�� �Ÿ�üũ�� ���� Űġ Ÿ���� ������ �����Ѵ�.
		g_SpecialTargetActor = Util:GetAIActorByName( KICHI );
		
		-- Űġ ����ī��Ʈ
		g_KichiAttackCount = UpdateArg:GetLU32( "U32_1" );
		
		-- Ÿ�� ����
		if ( g_KichiAttackCount >= 1 ) and ( g_SpecialTargetActor ~= nil ) then
		
			myTargetActor = g_SpecialTargetActor;
			
		elseif ( g_KichiAttackCount == 0 ) and ( g_SpecialTargetActor ~= nil ) then
		
			if Util:GetDist( AIActor, g_SpecialTargetActor ) > 3000 then
				myTargetActor = g_SpecialTargetActor;
				UpdateArg:SetLU32( "U32_1", 1 );
			elseif Util:GetDist( AIActor, g_SpecialTargetActor ) <= 3000 then
				Util:LockAIActorByName( KICHI )
				myTargetActor = Util:GetActorByMinDist( true, AIActor, 0, 3000, false, true );
			end
			
		end		
		
		-- ��������1���� �θ����� ���ÿ� �����ϹǷ� ��ġ�� AI�� ���ϱ� ���� ���� ������Ÿ�� ����
		local myDiffDelay = math.random( 0, 300 );
			
		UpdateArg:SetLU32( "WAIT_TIME", 500 + myDiffDelay );
		
		if Util:GetHPRate( AIActor ) <= 0.3 then
		
		
			if ( myTargetActor ~= nil ) and ( Util:GetDist( AIActor, myTargetActor ) > 700 ) then
				UpdateArg:SetLU32( "WAIT_TIME", 500 + myDiffDelay );
				Command_Move_ToActor( AIActor, 1000, myTargetActor, 0, 0 );
			elseif ( myTargetActor ~= nil ) and ( Util:GetDist( AIActor, myTargetActor ) < 700 ) then
				UpdateArg:SetLU32( "U32_1", 0 );
				UpdateArg:SetLU32( "WAIT_TIME", 2200 + myDiffDelay );
				Command_MovingAttack_ToActor( AIActor, 1000, myTargetActor, "AATYPE_2", true, math.random( -300, 300 ), math.random( -300, 300 ), 0 );
			else
				myTargetActor = Util:GetActorByMinDist( true, AIActor, 3000, 30000, false, true );
				
				if myTargetActor ~= nil then
					UpdateArg:SetLU32( "WAIT_TIME", 500 + myDiffDelay );
					Command_Move_ToActor( AIActor, 1000, myTargetActor, 0, 0 );
				end

			end
		
		elseif Util:GetHPRate( AIActor ) > 0.3 then
		
			if myTargetActor ~= nil then
			
			--local myAttackRate = math.random( 1, 100 );
		--���� ���̵�
			if u32DiffID == 1 then
				AttackRate = 30;
				AimRate = math.min( 300, Util:GetDist( AIActor, myTargetActor)/6);
			-- ����� ���̵�
			elseif u32DiffID == 2 then
				AttackRate = 60;
				AimRate = math.min( 100, Util:GetDist( AIActor, myTargetActor)/6);
			--������ ���̵�			
			elseif u32DiffID == 3 then
				AttackRate = 90;
				AimRate = 0;
			end
				-- Ÿ�� �÷��̾���� �Ÿ��� ����� ��
				if Util:GetDist( AIActor, myTargetActor) <= 1500 then
				
				local myRandomAttackRate = math.random( 1, 100 );
					
					-- ����Ȯ���� ������ �����ϸ鼭 �ڷ��̵�
					if AttackRate > myRandomAttackRate then
						UpdateArg:SetLU32( "U32_1", 0 );
						UpdateArg:SetLU32( "WAIT_TIME", 700 +myDiffDelay );
						Command_BackMovingAttack_ToActor( AIActor, 1750, myTargetActor, "AATYPE_1", false, 1000, math.random( -500, 500), math.random( -500, 500), AimRate );

					-- ����Ȯ���� ������ ���ݾ��ϰ� �ڷ��̵�
					elseif AttackRate <= myRandomAttackRate then
						UpdateArg:SetLU32( "WAIT_TIME", 700 + myDiffDelay );
						Command_BackMove_ToActor( AIActor, 1750, myTargetActor, 1000, math.random( -300, 300), math.random( -300, 300) );			
					end

				-- Ÿ�� �÷��̾���� �Ÿ��� ��ǥ �Ÿ��� ��
				elseif ( Util:GetDist( AIActor, myTargetActor) > 1500 ) and ( Util:GetDist( AIActor, myTargetActor) < 2500 )then
						UpdateArg:SetLU32( "U32_1", 0 );
						UpdateArg:SetLU32( "WAIT_TIME", 700 + myDiffDelay );
						Command_Attack( AIActor, myTargetActor, "AATYPE_1", false, AimRate );
				
				-- Ÿ�� �÷��̾���� �Ÿ��� ��ǥ�Ÿ����� �� ��
				elseif Util:GetDist( AIActor, myTargetActor) > 2500 then
					UpdateArg:SetLU32( "WAIT_TIME", 700 + myDiffDelay );
					Command_Move_ToActor( AIActor, 1750, myTargetActor, math.random( -500, 500), math.random( -300, 300) );
				end
		
		-- Ÿ���� ���� ��
			else
			
				-- Ÿ���� �˻�
				local myTargetActor = Util:GetActorByMinDist( true, AIActor, 0, 30000, true, true );

				if myTargetActor ~= nil then
					UpdateArg:SetLU32( "WAIT_TIME", 700 );
					Command_Move_ToActor( AIActor, 1750, myTargetActor, math.random( -500, 500), math.random( -300, 300) );
				end

			end	
		
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
