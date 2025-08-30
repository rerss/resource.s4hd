
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
gPosY[1] = 900 
gPosY[2] = 600 
gPosY[3] = 0    
gPosY[4] = -600
gPosY[5] = -900
gPosY[6] = -600
gPosY[7] = 0
gPosY[8] = 600

gStrTarget = 0

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

	-- NPC�� ���ε带 ����� �� �ֵ��� ī��Ʈ�� ����
	u32BindCount = UpdateArg:GetLU32( "U32_2" );

	-- �ʱ⿡ NPC���� �������� �������� ������ �ش�.
	if RotateCount == 0 then
		UpdateArg:SetLU32( "U32_1" , math.random( 1, 8 ) );
		RotateCount = UpdateArg:GetLU32( "U32_1" ); 
	elseif RotateCount > 8 then
		RotateCount = 1;
	end
	
	-- NPC�� �̵��ӵ��� �̵� �������� ����Ͽ� ������ �˸��� �̵��ֱ� ���� ���� ���־�� NPC�� �ε巴�� �̵���
   
	UpdateArg:SetLU32( "WAIT_TIME", 700 );

	-- Ÿ���� �����Ѵ�.
	local myTargetAI = Util:GetAIActorByName( INFECTED_TEAJO );
	local myTargetMinPlayer = Util:GetActorByMinDist( true, AIActor, 0, 30000, false, true );

	AttackRate = math.random( 1, 100 );
	
	if (myTargetAI ~= nil) and (myTargetMinPlayer ~= nil) and ( RotateCount ~= 0 ) then
		
		-- Ÿ�� �÷��̾ �����Ÿ� �ȿ� ���� ���
		if Util:GetDist( AIActor, myTargetAI ) < 1500 then

			if Util:GetDist( AIActor, myTargetMinPlayer ) < 1500 then
				if u32BindCount > 10 then
					UpdateArg:SetLU32( "WAIT_TIME", 700 );
					BindCountUP( -1 );
					Command_Attack( AIActor, myTargetMinPlayer, "AATYPE_1", true, 0 );
				elseif u32BindCount <= 10 then
					UpdateArg:SetLU32( "WAIT_TIME", 700 );
					BindCountUP( 1 );
					Command_Move_ToActor( AIActor, 1700, myTargetAI, gPosX[RotateCount], gPosY[RotateCount] );
					UpdateArg:SetLU32( "U32_1" , RotateCount +1 );
				end
			else
				UpdateArg:SetLU32( "WAIT_TIME", 700 );
				BindCountUP( 1 );
				Command_Move_ToActor( AIActor, 1700, myTargetAI, gPosX[RotateCount], gPosY[RotateCount] );
				UpdateArg:SetLU32( "U32_1" , RotateCount +1 );
			end

		-- Ÿ�� �÷��̾ �����Ÿ� �̻� ������ ���� ���
		elseif Util:GetDist( AIActor, myTargetAI) > 1500 then
			UpdateArg:SetLU32( "WAIT_TIME", 700 );
			BindCountUP( 1 );
			Command_Move_ToActor( AIActor, 1700, myTargetAI, gPosX[RotateCount], gPosY[RotateCount] );
			UpdateArg:SetLU32( "U32_1" , RotateCount +1 );
		end
		
	else
	
		myTargetAI = Util:GetAIActorByName( INFECTED_TEAJO );

		if ( myTargetMinPlayer ~= nil ) and ( myTargetAI ~= nil ) then		
			UpdateArg:SetLU32( "WAIT_TIME", 700 );
			BindCountUP( 1 );
			Command_Move_ToActor( AIActor, 1700, myTargetAI, gPosX[RotateCount], gPosY[RotateCount] );
			UpdateArg:SetLU32( "U32_1" , RotateCount +1 );
		end
	
	end
	
end


-------------------------------------------------------------------
-- ���ε� ��� ī��Ʈ �� �Լ�
-- �Էº��� bindcount
-------------------------------------------------------------------
function BindCountUP( bindcount )
	
	if bindcount == -1 then
		-- ���ε�ī���ͷ� ����ϴ� �������� ���� �ʱ�ȭ
		UpdateArg:SetLU32( "U32_2", 0 );
	else
		-- �Էµ� bindcount ���� ������ �����̳� �����Ϳ� ����
		local myCurrentBindCount = UpdateArg:GetLU32( "U32_2" );
		UpdateArg:SetLU32( "U32_2", myCurrentBindCount + bindcount );
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
