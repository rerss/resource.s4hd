
require "Resources/Script/Arcade_Util.lua"

-- ��������
-- Arcade : CArcadeSystem.

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

--gCount = 0

-- AI�� �ʱ�ȭ, Arcade�� ��Ÿ�Ͽ� �°� Host�� ����� ������ ����
-- �Էº��� : AI : CScriptAIController

function Init()

end

-- �����ð����� ������ �Լ�. 
-- �Էº��� : UpdateArg( "WAIT_TIME", "AI_ACTOR" )
function Update()
	
	u32DiffID = Host:GetDifficulty();
	
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
	
	
	
	TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 3000, false, true );
	
	--���� ���̵�
	if u32DiffID == 1 then
		AttackLimitCount = 5;
	-- ����� ���̵�
	elseif u32DiffID == 2 then
			AttackLimitCount = 3;
	--������ ���̵�			
	elseif u32DiffID == 3 then
			AttackLimitCount = 2;
	end
	
	if TargetActor ~= nil then	
	
		if ( PostionCount <AttackLimitCount ) and ( RotateCount ~= 0 ) and ( Util:GetDist( AIActor, TargetActor) > 750 ) then
			-- NPC�� �̵��ӵ��� �̵� �������� ����Ͽ� ������ �˸��� �̵��ֱ� ���� ���� ���־�� NPC�� �ε巴�� �̵���
			UpdateArg:SetLU32( "WAIT_TIME", 800 );
			
			Command_Move_ToActor( AIActor, 1700, TargetActor, gPosX[RotateCount], gPosY[RotateCount] );
			UpdateArg:SetLU32( "U32_1" , RotateCount +1 );
			UpdateArg:SetLU32( "U32_2", PostionCount +1 );

			Arcade:Print( string.format( "����1") ); 
			Arcade:Print( string.format( "%d", PostionCount) ); 

		elseif ( PostionCount < AttackLimitCount ) and ( RotateCount ~= 0 ) and ( Util:GetDist( AIActor, TargetActor) <= 750 ) then
			-- NPC�� �̵��ӵ��� �̵� �������� ����Ͽ� ������ �˸��� �̵��ֱ� ���� ���� ���־�� NPC�� �ε巴�� �̵���
			UpdateArg:SetLU32( "WAIT_TIME", 800 );
			
			Command_Move_ToActor( AIActor, 1700, TargetActor, gPosX[RotateCount], gPosY[RotateCount] );
			UpdateArg:SetLU32( "U32_1" , RotateCount +1 );
			UpdateArg:SetLU32( "U32_2", PostionCount +1 );
	
			Arcade:Print( string.format( "����2") ); 
			Arcade:Print( string.format( "%d", PostionCount) ); 

		elseif ( PostionCount >= AttackLimitCount ) and ( RotateCount ~= 0 ) and ( Util:GetDist( AIActor, TargetActor) > 750 ) then
			-- NPC�� �̵��ӵ��� �̵� �������� ����Ͽ� ������ �˸��� �̵��ֱ� ���� ���� ���־�� NPC�� �ε巴�� �̵���
			UpdateArg:SetLU32( "WAIT_TIME", 800 );
			
			Command_Move_ToActor( AIActor, 1700, TargetActor, gPosX[RotateCount], gPosY[RotateCount] );
			UpdateArg:SetLU32( "U32_1" , RotateCount +1 );

			Arcade:Print( string.format( "����3") ); 
			Arcade:Print( string.format( "%d", PostionCount) ); 

		elseif ( PostionCount >= AttackLimitCount ) and ( RotateCount ~= 0 ) and ( Util:GetDist( AIActor, TargetActor) <= 750 ) then
			-- NPC�� ���ݼӵ��� �̵� �������� ����Ͽ� ������ �˸��� �̵��ֱ� ���� ���� ���־�� NPC�� �ε巴�� �̵���
			UpdateArg:SetLU32( "WAIT_TIME", 1700 );
		
			--Command_Move_ToActor( AIActor, 1700, TargetActor, gPosX[RotateCount], gPosY[RotateCount] );
			Command_MovingAttack_ToActor( AIActor, 1700, TargetActor, "AATYPE_1", true, gPosX[RotateCount], gPosY[RotateCount], 0 );
			UpdateArg:SetLU32( "U32_1" , RotateCount +1 );
			UpdateArg:SetLU32( "U32_2", 0 );
		
			Arcade:Print( string.format( "����4") ); 
			Arcade:Print( string.format( "%d", PostionCount) ); 
			
		end
			
	else

		TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 30000, false, true );

		if (TargetActor ~= nil) then		
			-- NPC�� �̵��ӵ��� �̵� �������� ����Ͽ� ������ �˸��� �̵��ֱ� ���� ���� ���־�� NPC�� �ε巴�� �̵���
			UpdateArg:SetLU32( "WAIT_TIME", 800 );
			
			Command_Move_ToActor( AIActor, 1700, TargetActor, math.random(500,1000), math.random(500,1000) );
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
