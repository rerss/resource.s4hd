
require "Resources/Script/Arcade_Util.lua"

-- ��������
-- Arcade : CArcadeSystem.
HidePos = {}
HidePos[1] = "Arcade_HidePos_05_01"
HidePos[2] = "Arcade_HidePos_05_02"
HidePos[3] = "Arcade_HidePos_05_03"
HidePos[4] = "Arcade_HidePos_05_04"
HidePos[5] = "Arcade_HidePos_05_05"
HidePos[6] = "Arcade_HidePos_05_06"
HidePos[7] = "Arcade_HidePos_05_07"
HidePos[8] = "Arcade_HidePos_05_08"
HidePos[9] = "Arcade_HidePos_05_09"


-- AI�� �ʱ�ȭ, Arcade�� ��Ÿ�Ͽ� �°� Host�� ����� ������ ����
-- �Էº��� : AI : CScriptAIController



function Init()

end

-- �����ð����� ������ �Լ�. 
-- �Էº��� : UpdateArg( "DELTA_TIME", "AI_ACTOR" )
function Update()

--	AccumulateTime	= UpdateArg:GetLU32( "ACCUMULATE_TIME" );
	AIActor			= UpdateArg:GetAIActor( "AI_ACTOR" );
	HidePosition = UpdateArg:GetLU32( "U32_2" );
	PostionCount = UpdateArg:GetLU32( "U32_1" );
	ChaseCount = UpdateArg:GetLU32( "U32_3" );

	-- ����Ʈ ���� false
	InviCheck = UpdateArg:GetLBool( "BOOL_1" ); 

	-- �κ����� ��뿩�θ� üũ�ϱ� ���� ��
    u32InviCount = UpdateArg:GetLU32( "U32_2" );
	
	-- ������ ID �޾ƿ���
	g_u32PhaseCheck = HostArg:GetLU32( "PHASE_ID" );
	
	-- ��ũ�� �÷��̾ ���� �޷��ö� ���� �׾ƾ� �ϴ� ������ ���� �������� �÷��̾�� ���� ����
	local LimitPositionCount = 15;
	-- ��ũ�� �÷��̾ �ڦi�� �ൿ�� �ݺ��� Ƚ���� ���� Ŀ������ �÷��̾ �� �������� ���Ѵ´�
	local LimitChaseCount = 10;

	if u32InviCount == 0 and g_u32PhaseCheck == 5 then
		-- �κ�ī��Ʈ�� 0�̸� �κ������� ����ϰ� �κ�ī��Ʈ�� �÷���
		Command_SkillInvisible( AIActor, true );
		UpdateArg:SetLU32( "U32_2", 1 );
	end

	if ChaseCount >= LimitChaseCount then
		-- ������ ī��Ʈ �ʱ�ȭ
		UpdateArg:SetLU32( "U32_1", 0 );
		-- ���̵� ������ �ʱ�ȭ
		UpdateArg:SetLU32( "U32_2", 0 );
		-- ü�̽� ī��Ʈ �ʱ�ȭ
		UpdateArg:SetLU32( "U32_3", 0 );
	end

	TargetActor = Util:GetActorByMinDist( true, AIActor, 0, 10000, false, true );

	if ( TargetActor ~= nil ) and ( HidePosition == 0 ) then
		FirstPosition ();
		HidePosition = UpdateArg:GetLU32( "U32_2" );

		Command_Move_ToNode( AIActor, 3000, HidePos[HidePosition], 0, 0 );
	end

	if ( TargetActor ~= nil ) and ( PostionCount < LimitPositionCount ) and ( HidePosition ~= 0 ) and ( Util:GetDist( AIActor, TargetActor) > 800 ) then
		SelectPosition ();
		HidePosition = UpdateArg:GetLU32( "U32_2" );
		
		UpdateArg:SetLU32( "WAIT_TIME", 1000 );
		Command_Move_ToNode( AIActor, 3000, HidePos[HidePosition], 0, 0 );
		
		UpdateArg:SetLU32( "U32_1", PostionCount +1 );

	elseif ( TargetActor ~= nil ) and ( PostionCount < LimitPositionCount ) and ( HidePosition ~= 0 ) and ( Util:GetDist( AIActor, TargetActor) < 800 ) then
		-- ������ ī��Ʈ �ʱ�ȭ
		UpdateArg:SetLU32( "U32_1", 0 );
		-- ü�̽� ī��Ʈ �ʱ�ȭ
		UpdateArg:SetLU32( "U32_3", 0 );

		UpdateArg:SetLU32( "WAIT_TIME", 2000 );

		-- ���ݽ� �κ������� �����ϰ� �κ�ī��Ʈ �ʱ�ȭ
		Command_SkillInvisible( AIActor, false );
		UpdateArg:SetLU32( "U32_2", 0 );

		Command_MovingAttack_ToActor( AIActor, 1200, TargetActor, "AATYPE_1", true, math.random(-200, 200), math.random(-200, 200), 0 );
	elseif ( TargetActor ~= nil ) and ( PostionCount < LimitPositionCount ) and ( HidePosition ~= 0 ) and ( Util:GetDist( AIActor, TargetActor) < 800 ) then
		-- ������ ī��Ʈ �ʱ�ȭ
		UpdateArg:SetLU32( "U32_1", 0 );
		-- ü�̽� ī��Ʈ �ʱ�ȭ
		UpdateArg:SetLU32( "U32_3", 0 );
		UpdateArg:SetLU32( "WAIT_TIME", 2000 );

		-- ���ݽ� �κ������� �����ϰ� �κ�ī��Ʈ �ʱ�ȭ
		Command_SkillInvisible( AIActor, false );
		UpdateArg:SetLU32( "U32_2", 0 );

		Command_MovingAttack_ToActor( AIActor, 1200, TargetActor, "AATYPE_1", true, math.random(-200, 200), math.random(-200, 200), 0 );
	elseif ( TargetActor ~= nil ) and ( PostionCount >= LimitPositionCount ) and ( HidePosition ~= 0 ) and ( Util:GetDist( AIActor, TargetActor) > 800 ) and ( ChaseCount < LimitChaseCount ) then
		UpdateArg:SetLU32( "U32_3", ChaseCount +1 );
		UpdateArg:SetLU32( "WAIT_TIME", 500 );
		Command_Move_ToActor( AIActor, 3000, TargetActor, math.random(-200, 200), math.random(-200, 200) );			

	elseif ( TargetActor ~= nil ) and ( PostionCount >= LimitPositionCount ) and ( HidePosition ~= 0 ) and ( Util:GetDist( AIActor, TargetActor) < 400 ) and ( ChaseCount < LimitChaseCount ) then
		-- ������ ī��Ʈ �ʱ�ȭ
		UpdateArg:SetLU32( "U32_1", 0 );
		-- ü�̽� ī��Ʈ �ʱ�ȭ
		UpdateArg:SetLU32( "U32_3", 0 );
		UpdateArg:SetLU32( "WAIT_TIME", 2000 );

		-- ���ݽ� �κ������� �����ϰ� �κ�ī��Ʈ �ʱ�ȭ
		Command_SkillInvisible( AIActor, false );
		UpdateArg:SetLU32( "U32_2", 0 );

		Command_MovingAttack_ToActor( AIActor, 1200, TargetActor, "AATYPE_1", true, math.random(-200, 200), math.random(-200, 200), 0 );
	end
	Arcade:Print( string.format( "���̵������� = %s ������ī��Ʈ = %d ���潺�����ǰŸ� = %d ü�̽�ī��Ʈ=%d", HidePosition,PostionCount, Util:GetDistByDefenseArea( AIActor ), ChaseCount ) );
	
end




function FirstPosition ()

	if Util:GetDistByArea( AIActor, HidePos[1] ) < Util:GetDistByArea( AIActor, HidePos[2] ) then
		minDistPos = 1;
	else
		minDistPos = 2;
	end

	if Util:GetDistByArea( AIActor, HidePos[minDistPos] ) > Util:GetDistByArea( AIActor, HidePos[3] ) then
		minDistPos = 3;
	end

	if Util:GetDistByArea( AIActor, HidePos[minDistPos] ) > Util:GetDistByArea( AIActor, HidePos[4] ) then
		minDistPos = 4;
	end
	
	if Util:GetDistByArea( AIActor, HidePos[minDistPos] ) > Util:GetDistByArea( AIActor, HidePos[5] ) then
		minDistPos = 5;
	end

	if Util:GetDistByArea( AIActor, HidePos[minDistPos] ) > Util:GetDistByArea( AIActor, HidePos[6] ) then
		minDistPos = 6;
	end

	if Util:GetDistByArea( AIActor, HidePos[minDistPos] ) > Util:GetDistByArea( AIActor, HidePos[7] ) then
		minDistPos = 7;
	end

	if Util:GetDistByArea( AIActor, HidePos[minDistPos] ) > Util:GetDistByArea( AIActor, HidePos[8] ) then
		minDistPos = 8;
	end

	if Util:GetDistByArea( AIActor, HidePos[minDistPos] ) > Util:GetDistByArea( AIActor, HidePos[9] ) then
		minDistPos = 9;
	end

	Arcade:Print( string.format( "�۽�Ʈ������ ��� = %d", minDistPos ) );

	UpdateArg:SetLU32( "U32_2" , minDistPos );

end


function SelectPosition ()
	
	crHidePos = UpdateArg:GetLU32( "U32_2" );
	
	directSelector = math.random( -1, 1 );

	UpdateArg:SetLU32( "U32_2" , crHidePos + ( directSelector ) );

	crHidePos = UpdateArg:GetLU32( "U32_2" );

	if ( crHidePos ~= 10 ) and ( crHidePos ~= 0 ) then
		crHidePos = UpdateArg:GetLU32( "U32_2" );
	elseif crHidePos == 10 then
		UpdateArg:SetLU32( "U32_2" , 1 );
		crHidePos = UpdateArg:GetLU32( "U32_2" );
	elseif crHidePos == 0 then
		UpdateArg:SetLU32( "U32_2" , 9 );
		crHidePos = UpdateArg:GetLU32( "U32_2" );
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
