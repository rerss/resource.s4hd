require "Resources/Script/Arcade_Util.lua"
require "Resources/Script/Arcade_Localize.lua"

-- ��������
-- Arcade : CArcadeSystem.

-- AI�� �ʱ�ȭ, Arcade�� ��Ÿ�Ͽ� �°� Host�� ����� ������ ����
-- �Էº��� : AI : CScriptAIController
function Init()

end

-- �����ð����� ������ �Լ�. 
-- �Էº��� : UpdateArg( "WAIT_TIME", "AI_ACTOR" )
function Update()

	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );


	UpdateArg:SetLU32( "WAIT_TIME", 700 + math.random( 0, 300 ) );
	
	-- Ÿ�ټ���
	myKichi = Util:GetAIActorByName( KICHI );
	myTargetPlayer = Util:GetActorByMinDist( true, AIActor, 0, 30000, false, true );
	
	if myKichi == nil then
		myKichi = myTargetPlayer;
	end
	
	-- ����ī��Ʈ
	g_u32BoomCount = UpdateArg:GetLU32( "U32_1" );

	-- ������Ʈ ��������
	local myDistValue = Util:GetDist( AIActor, myKichi );
	local myTargetPlayerDistValue = Util:GetDist( AIActor, myTargetPlayer );
	
	
	-- AI ���� ����
	
	if g_u32BoomCount ~= 1 then
	
		if Util:GetHPRate( AIActor ) > 0.1 then
		
			if myTargetPlayerDistValue < 500 then
				UpdateArg:SetLU32( "WAIT_TIME", 1100 );
				Command_Attack( AIActor, myTargetPlayer, "AATYPE_1", false, 0 );				
			else
	
				if myKichi ~= nil then
				
					if myDistValue > 700 then
						UpdateArg:SetLU32( "WAIT_TIME", 700 );
						Command_Move_ToActor( AIActor, 1000, myKichi, math.random( 0, 500 ), math.random( 0, 500 ) );
					elseif myDistValue <= 700 then
						UpdateArg:SetLU32( "WAIT_TIME", 1100 );
						UpdateArg:SetLU32( "U32_1", 1 );
						Command_Attack( AIActor, myKichi, "AATYPE_3", false, 0 );
					end
				
				else
					myKichi = Util:GetActorByMinDist( true, AIActor, 0, 30000, false, true );
					UpdateArg:SetLU32( "WAIT_TIME", 700 );
					Command_Move_ToActor( AIActor, 1000, myKichi, math.random( 0, 500 ), math.random( 0, 500 ) );
				end
				
			end
			
		elseif Util:GetHPRate( AIActor ) < 0.1 then
			UpdateArg:SetLU32( "WAIT_TIME", 1100 );
			UpdateArg:SetLU32( "U32_1", 1 );
			Command_Attack( AIActor, myKichi, "AATYPE_3", false, 0 );
		end
		
	elseif g_u32BoomCount == 1 then
		Command_Death( AIActor );
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
