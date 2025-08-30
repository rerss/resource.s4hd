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

gCount = 0

-- AI�� �ʱ�ȭ, Arcade�� ��Ÿ�Ͽ� �°� Host�� ����� ������ ����
-- �Էº��� : AI : CScriptAIController

function Init()

end

-- �����ð����� ������ �Լ�. 
-- �Էº��� : UpdateArg( "WAIT_TIME", "AI_ACTOR" )
function Update() 
		
	RotateCount = UpdateArg:GetLU32( "U32_1" ); 
	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );

	-- RotateCount�� 0�� �Ǹ� AI�� ��ġ�� �缳�� �ϱ� ���� �� ����
	if RotateCount == 0 then
		UpdateArg:SetLU32( "U32_1" , math.random( 1, 8 ) );
		RotateCount = UpdateArg:GetLU32( "U32_1" ); 
	end
	
	
	UpdateArg:SetLU32( "WAIT_TIME" , 800 + math.random( 0, 200 ) );	
	
	
	TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 30000, false, true );


	if  ( TargetActor ~= nil ) and ( gCount == 10 ) then
		Command_MovingAttack_ToActor( AIActor, 2250, TargetActor, "AATYPE_1", true, gPosX[RotateCount] + math.random( -200, 200 ), gPosY[RotateCount] + math.random( -200, 200 ), 0 );
--			gCount = 0;
		
	end

	if ( TargetActor ~= nil ) and ( gCount < 10 ) then
		Command_Move_ToActor( AIActor, 2250, TargetActor, gPosX[RotateCount] + math.random( -200, 200 ), gPosY[RotateCount] + math.random( -200, 200 ) );
		
	else
		TargetActor = Util:GetActorByMinDist( AIActor, 3000, 30000, false, true );
		
		if TargetActor ~= nil then
		Command_Move_ToActor( AIActor, 2250, TargetActor, gPosX[RotateCount] + math.random( -200, 200 ), gPosY[RotateCount] + math.random( -200, 200 ) );
		
		end
	end
	
	-- AI�� ĳ������ �����Ÿ��� ������ ��� 10�� �� AI ����
	if ( TargetActor ~= nil ) and ( Util:GetDist( AIActor, TargetActor) <= 3000 ) and ( gCount < 10 ) then
		gCount = gCount +1;
		
--		elseif ( TargetActor ~= nil ) and ( Util:GetDist( AIActor, TargetActor) <= 2000 ) and ( gCount >= 10 ) then
--			Command_Attack( AIActor, TargetActor, "AATYPE_1", true, math.min(300, Util:GetDist( AIActor, TargetActor)/17) );
			
	end
	
end

--]]

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
