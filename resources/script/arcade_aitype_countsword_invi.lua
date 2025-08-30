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
	
	u32RotateCount = UpdateArg:GetLU32( "U32_1" ); 
	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );

	-- u32RotateCount�� 0�� �Ǹ� AI�� ��ġ�� �缳�� �ϱ� ���� �� ����
	if u32RotateCount == 0 then
		UpdateArg:SetLU32( "U32_1" , math.random( 1, 8 ) );
		u32RotateCount = UpdateArg:GetLU32( "U32_1" ); 
	end
	
	-- �κ����� ��뿩�θ� üũ�ϱ� ���� ��
    u32InviCount = UpdateArg:GetLU32( "U32_2" );

	-- Ÿ�� ���͸� ����
	local myTargetActor = Util:GetActorByMinDist( true, AIActor, 0, 3000, false, true );

	-- ������ �õ��ϴ��� ���θ� �Ǵ��ϱ� ���� ���� �� ����
	local myAttackRate = math.random( 1, 100 );

	-- �⺻ ������Ʈ �ֱ� ����
	UpdateArg:SetLU32( "WAIT_TIME", 800 + math.random(0, 200) );
	
	if u32InviCount == 0 then
		-- �κ�ī��Ʈ�� 0�̸� �κ������� ����ϰ� �κ�ī��Ʈ�� �÷���
		Command_SkillInvisible( AIActor, true );
		UpdateArg:SetLU32( "U32_2", 1 );
	end
	
	if (myTargetActor ~= nil) then
		
		if ( myAttackRate > 75 ) and ( Util:GetDist( AIActor, myTargetActor) <= 900 ) then
			
			UpdateArg:SetLU32( "WAIT_TIME", 3000 );
			
			-- ���ݽ� �κ������� �����ϰ� �κ�ī��Ʈ �ʱ�ȭ
			Command_SkillInvisible( AIActor, false );
			UpdateArg:SetLU32( "U32_2", 0 );

			Command_MovingAttack_ToActor( AIActor, 2250, myTargetActor, "AATYPE_1", true, gPosX[u32RotateCount] + math.random( -200, 200 ), gPosY[u32RotateCount] + math.random( -200, 200 ), 0 );
		elseif ( myAttackRate > 75 ) and ( Util:GetDist( AIActor, myTargetActor) > 900 ) then
			Command_Move_ToActor( AIActor, 2250, myTargetActor, gPosX[u32RotateCount] + math.random( -200, 200 ), gPosY[u32RotateCount] + math.random( -200, 200 ) );
		elseif myAttackRate <= 75 then
			Command_Move_ToActor( AIActor, 2250, myTargetActor, gPosX[u32RotateCount] + math.random( -200, 200 ), gPosY[u32RotateCount] + math.random( -200, 200 ) );
		end

	else		
		myTargetActor = Util:GetActorByMinDist( true, AIActor, 3000, 30000, false, true );

		if (myTargetActor ~= nil) then
			Command_Move_ToActor( AIActor, 1750, myTargetActor, 0, 0 );
		end

	end		
		UpdateArg:SetLU32( "U32_1", u32RotateCount );
	
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
