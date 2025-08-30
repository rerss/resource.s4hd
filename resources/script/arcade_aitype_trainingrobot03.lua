
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
	
	-- NPC�� ������ �������� �ֱ������� �̵��ϱ� ���� ����ϴ� ī��Ʈ
	RotateCount = UpdateArg:GetLU32( "U32_1" ); 
	PostionCount = UpdateArg:GetLU32( "U32_2" );
	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );

	-- �ʱ⿡ NPC���� �������� �������� ������ �ش�.
	if RotateCount == 0 then
		UpdateArg:SetLU32( "U32_1" , math.random( 1, 8 ) );
		RotateCount = UpdateArg:GetLU32( "U32_1" ); 
	elseif RotateCount > 8 then
		RotateCount = 1;
	end
	
	local AttackLimitCount = math.random( 2, 5 );
	
	-- NPC�� �̵��ӵ��� �̵� �������� ����Ͽ� ������ �˸��� �̵��ֱ� ���� ���� ���־�� NPC�� �ε巴�� �̵���   
	UpdateArg:SetLU32( "WAIT_TIME", 1000 );

	TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 3000, false, true );

	if (TargetActor ~= nil) and ( PostionCount < AttackLimitCount ) and ( RotateCount ~= 0 ) and ( Util:GetDist( AIActor, TargetActor) > 900 ) then
		Command_Move_ToActor( AIActor, 2700, TargetActor, gPosX[RotateCount], gPosY[RotateCount] );
		UpdateArg:SetLU32( "U32_1" , RotateCount +1 );
		UpdateArg:SetLU32( "U32_2", PostionCount +1 );

		Arcade:Print( string.format( "����1") ); 
		Arcade:Print( string.format( "%d", PostionCount) ); 

	elseif (TargetActor ~= nil) and ( PostionCount < AttackLimitCount ) and ( RotateCount ~= 0 ) and ( Util:GetDist( AIActor, TargetActor) <= 900 ) then
			Command_Move_ToActor( AIActor, 2700, TargetActor, gPosX[RotateCount], gPosY[RotateCount] );
			UpdateArg:SetLU32( "U32_1" , RotateCount +1 );
			UpdateArg:SetLU32( "U32_2", PostionCount +1 );
	
		Arcade:Print( string.format( "����2") ); 
		Arcade:Print( string.format( "%d", PostionCount) ); 

	elseif (TargetActor ~= nil) and ( PostionCount >= AttackLimitCount ) and ( RotateCount ~= 0 ) and ( Util:GetDist( AIActor, TargetActor) > 900 ) then
			Command_Move_ToActor( AIActor, 2700, TargetActor, gPosX[RotateCount], gPosY[RotateCount] );
			UpdateArg:SetLU32( "U32_1" , RotateCount +1 );

		Arcade:Print( string.format( "����3") ); 
		Arcade:Print( string.format( "%d", PostionCount) ); 

	elseif (TargetActor ~= nil) and ( PostionCount >= AttackLimitCount ) and ( RotateCount ~= 0 ) and ( Util:GetDist( AIActor, TargetActor) <= 900 ) then
			--Command_Move_ToActor( AIActor, 2700, TargetActor, gPosX[RotateCount], gPosY[RotateCount] );
			Command_MovingAttack_ToActor( AIActor, 1700, TargetActor, "AATYPE_1", true, gPosX[RotateCount], gPosY[RotateCount], 0 );
			UpdateArg:SetLU32( "U32_1" , RotateCount +1 );
			UpdateArg:SetLU32( "U32_2", 0 );
	
		Arcade:Print( string.format( "����4") ); 
		Arcade:Print( string.format( "%d", PostionCount) ); 
	end

		TargetActor = Util:GetActorByMinDist( true, AIActor, 3000, 30000, false, true );

		if (TargetActor ~= nil) then		
			Command_Move_ToActor( AIActor, 1700, TargetActor, 0, 0 );
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
