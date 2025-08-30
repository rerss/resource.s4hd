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
	
	-- ���̵� üũ (1:���� / 2:����� / 3:������)
	u32DiffID = Host:GetDifficulty();
	
	RotateCount = UpdateArg:GetLU32( "U32_1" ); 
	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );

	-- RotateCount�� 0�� �Ǹ� AI�� ��ġ�� �缳�� �ϱ� ���� �� ����
	if RotateCount == 0 then
		UpdateArg:SetLU32( "U32_1" , math.random( 1, 8 ) );
		RotateCount = UpdateArg:GetLU32( "U32_1" ); 
	end
	
	-- Ÿ�� ����
	TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 3000, false, true );
	
	-- �ൿ ������ ���� ���� ��
	local Random_delay = math.random( 0, 200 );

	-- ������ �õ��ϴ��� ���θ� �Ǵ��ϱ� ���� ���� �� ����
	-- ���� : �ϴܿ� ������ �������� %�� �̿������ �ǻ������ ���� ª�� ������ ��ġ�� ������� �پ�� �� �ִ�.
	RandomAttackRate = math.random( 1, 100 );
	
	--���� ���̵�
	if u32DiffID == 1 then
		AttackRate = 40;
		
	-- ����� ���̵�
	elseif u32DiffID == 2 then
		AttackRate = 50;
		
	--������ ���̵�			
	elseif u32DiffID == 3 then
		AttackRate = 60;
		
	end
			
	-- ���� �ڵ�
	
	-- ���õ� ���� ���� ��
	if (TargetActor ~= nil) then
		
		-- �����ص� �Ǵ� Ȯ�� ���̰� �Ÿ��� ������ �̳���� ����
		if ( AttackRate > RandomAttackRate ) and ( Util:GetDist( AIActor, TargetActor) <= 750 ) then
			UpdateArg:SetLU32( "WAIT_TIME", 800 + Random_delay );
			Command_MovingAttack_ToActor( AIActor, 2250, TargetActor, "AATYPE_1", true, gPosX[RotateCount] + math.random( -200, 200 ), gPosY[RotateCount] + math.random( -200, 200 ), 0 );
		
		-- �����ص� �Ǵ� Ȯ�� ���̰� �Ÿ��� ������ ���� �ִٸ� ����� ���� �̵�
		elseif ( AttackRate > RandomAttackRate ) and ( Util:GetDist( AIActor, TargetActor) > 750 ) then
			UpdateArg:SetLU32( "WAIT_TIME", 800 + Random_delay );
			Command_Move_ToActor( AIActor, 2250, TargetActor, gPosX[RotateCount] + math.random( -200, 200 ), gPosY[RotateCount] + math.random( -200, 200 ) );
		
		-- �����ϸ� �ȵǴ� Ȯ�� ���̶�� ����� ���� �̵�
		elseif AttackRate <= RandomAttackRate then
			UpdateArg:SetLU32( "WAIT_TIME", 800 + Random_delay );
			Command_Move_ToActor( AIActor, 2250, TargetActor, gPosX[RotateCount] + math.random( -200, 200 ), gPosY[RotateCount] + math.random( -200, 200 ) );
		end
	
	-- ���õ� ���� ���ٸ�
	else		
		TargetActor = Util:GetActorByMinDist( true, AIActor, 3000, 30000, false, true );

		if (TargetActor ~= nil) then
			UpdateArg:SetLU32( "WAIT_TIME", 800 + Random_delay );
			Command_Move_ToActor( AIActor, 1750, TargetActor, 0, 0 );
		end

	end		
		UpdateArg:SetLU32( "U32_1", RotateCount );	
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
