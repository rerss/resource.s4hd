
require "Resources/Script/Arcade_Util.lua"

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
gPosY[1] = 900 
gPosY[2] = 600 
gPosY[3] = 0    
gPosY[4] = -600
gPosY[5] = -900
gPosY[6] = -600
gPosY[7] = 0
gPosY[8] = 600


-- AI�� �ʱ�ȭ, Arcade�� ��Ÿ�Ͽ� �°� Host�� ����� ������ ����
-- �Էº��� : AI : CScriptAIController

function Init()

end

-- �����ð����� ������ �Լ�. 
-- �Էº��� : UpdateArg( "WAIT_TIME", "AI_ACTOR" )
function Update()
	
	-- NPC�� ������ �������� �ֱ������� �̵��ϱ� ���� ����ϴ� ī��Ʈ
	RotateCount = UpdateArg:GetLU32( "U32_1" ); 

	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );

	-- �ʱ⿡ NPC���� �������� �������� ������ �ش�.
	if RotateCount == 0 then
		UpdateArg:SetLU32( "U32_1" , math.random( 1, 8 ) );
		RotateCount = UpdateArg:GetLU32( "U32_1" ); 
	elseif RotateCount > 8 then
		RotateCount = 1;
	end	

	--TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 4000, false, true );
	TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 6000, false, true );

	-- ���̵��� ���� ���̵� ���� ���� ����
	local AimRate
	local AttackAfterWaitTime
	
	-- ���̵� �޾ƿ�
	u32DiffID = Host:GetDifficulty();
	if TargetActor ~= nil then
		--���� ���̵�	
		if u32DiffID == 1 then
			AttackRate = 50;
			AttackAfterWaitTime = 2000;
			AimRate = math.min( 300, Util:GetDist( AIActor, TargetActor)/7);
		--����� ���̵�
		elseif u32DiffID == 2 then
			AttackRate = 65;
			AttackAfterWaitTime = 1500;
			AimRate = math.min( 100, Util:GetDist( AIActor, TargetActor)/10);
		--������ ���̵�
		elseif u32DiffID == 3 then
			AttackRate = 80;
			AttackAfterWaitTime = 1000;
			AimRate = 0;
		end
		
	-- Ÿ���� ���� �ȵȰ�� Ÿ���� ����ش�
	else
		TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 30000, false, true );
	end
	
	RandomAttackRate = math.random( 1, 100 );
	
	if (TargetActor ~= nil) and ( RotateCount ~= 0 ) then
		
		if (AttackRate > RandomAttackRate) and ( Util:GetDist( AIActor, TargetActor) <= 4000 ) then
			UpdateArg:SetLU32( "WAIT_TIME", AttackAfterWaitTime + math.random( 0, 300 ) );
			Command_MovingAttack_ToActor( AIActor, 1700, TargetActor, "AATYPE_1", false, gPosX[RotateCount], gPosY[RotateCount], AimRate );
			
		elseif (AttackRate > RandomAttackRate) and ( Util:GetDist( AIActor, TargetActor) > 4000 ) then
			UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300 ) );
			Command_Move_ToActor( AIActor, 1700, TargetActor, gPosX[RotateCount], gPosY[RotateCount] );
			UpdateArg:SetLU32( "U32_1" , RotateCount +1 );
			
		elseif AttackRate <= RandomAttackRate then
			UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300 ) );
			Command_Move_ToActor( AIActor, 1700, TargetActor, gPosX[RotateCount], gPosY[RotateCount] );
			UpdateArg:SetLU32( "U32_1" , RotateCount +1 );

		end	
	else
		TargetActor = Util:GetActorByMinDist( true, AIActor, 6000, 30000, false, true );
		
		if (TargetActor ~= nil) then	
			UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300 ) );
			Command_Move_ToActor( AIActor, 1400, TargetActor, 0, 0 );
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