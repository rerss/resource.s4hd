
require "Resources/Script/Arcade_Util.lua"
require "Resources/Script/Arcade_Localize.lua"

-- ��������
-- Arcade : CArcadeSystem.

gPunch = {};
gPunch[1] = "AATYPE_1"
gPunch[2] = "AATYPE_2"

-- AI�� �ʱ�ȭ, Arcade�� ��Ÿ�Ͽ� �°� Host�� ����� ������ ����
-- �Էº��� : AI : CScriptAIController
function Init()
end

-- �����ð����� ������ �Լ�. 
-- �Էº��� : UpdateArg( "WAIT_TIME", "AI_ACTOR" )
function Update()

	u32DiffID = Host:GetDifficulty();

	AIActor = UpdateArg:GetAIActor( "AI_ACTOR" );
	
	UpdateArg:SetLU32( "WAIT_TIME", 700 );
	
	-- Űġ�� �������� �ʴ´�.
	Util:LockAIActorByName( KICHI );
	
	-- �Ѱ� �̵�ī��Ʈ : ������ ���� �ʰ��ϸ� ���� �õ��� ���� ����
	local myLimitPathCount = 10;
	
	
	-- ���� ���� Ÿ���� �޾ƿ´�.
	u32CurrentAttackType = UpdateArg:GetLU32( "U32_1" );

	-- ���� ����Ÿ������Ʈ�� �޾ƿ´�.
	u32CurrentTypePoint = UpdateArg:GetLU32( "U32_2" );
	
	-- �ɸ� ������ ���� �̵��ϱ� ���� ī��Ʈ�� �����Ѵ�
	u32CurrentPathCount = UpdateArg:GetLU32( "U32_3" );

	-- Ÿ���ĺ�
	local myMinDistTargetActor = Util:GetActorByMinDist( true, AIActor, 0, 30000, false, true );
	local myMaxHPTargetActor = Util:GetActorByMaxHP( true, AIActor, 0, 30000, false, true );

	Arcade:Print( string.format( "�������Ÿ��=%d",u32CurrentAttackType ) );

	--���� ���̵�
	if u32DiffID == 1 then
		AttackRate = 50;
	--����� ���̵�
	elseif u32DiffID == 2 then
		AttackRate = 80;
	--������ ���̵�
	elseif u32DiffID ==3 then
		AttackRate =100;
	end
	
	-- ��������
	if u32CurrentAttackType == 0 then

		if myMinDistTargetActor ~= nil then
			if Util:GetDist( AIActor, myMinDistTargetActor) < 1000 then
				AttackTypePointUP( 3 );
				UpdateArg:SetLU32( "WAIT_TIME", 1600 );				
				Command_Attack( AIActor, myMinDistTargetActor, gPunch[math.random( 1, 2 )], true, 0 );
				Arcade:Print( string.format( "��������" ) );
			elseif Util:GetDist( AIActor, myMinDistTargetActor) > 1000 then
				
				-- �̵�ī��Ʈ�� Ŭ ��� �������� �ٷ� �õ�
				if u32CurrentPathCount > myLimitPathCount then
					-- �̵� ī��Ʈ�� �ʱ�ȭ
					AttackTypePointUP( 3 );
					PathCountUP( -1 );		
					UpdateArg:SetLU32( "WAIT_TIME", 1600 );				
					Command_Attack( AIActor, myMinDistTargetActor, gPunch[math.random( 1, 2 )], true, 0 );
					Arcade:Print( string.format( "��������" ) );
				
				-- �̵�ī��Ʈ�� ���� ��� Ÿ���� ����
				elseif u32CurrentPathCount <= myLimitPathCount then
					UpdateArg:SetLU32( "WAIT_TIME", 650 );

					-- �̵� ī��Ʈ �÷���
					PathCountUP( 1 );					
					
					Command_Move_ToActor( AIActor, 750, myMinDistTargetActor, math.random( -500, 500), math.random( -500, 500) );
					Arcade:Print( string.format( "���������������̵�" ) );
				end
				
			end
		else

			myMinDistTargetActor = Util:GetActorByMinDist( true, AIActor, 0, 10000, false, true );

			if myMinDistTargetActor ~= nil then
				UpdateArg:SetLU32( "WAIT_TIME", 650 );				
				Command_Move_ToActor( AIActor, 750, myMinDistTargetActor, math.random( -500, 500), math.random( -500, 500) );
				Arcade:Print( string.format( "�������������� ��Ÿ� �̵�" ) );
			end
		end

	-- ��������
	elseif u32CurrentAttackType == 1 then

		if myMinDistTargetActor ~= nil then
			if Util:GetDist( AIActor, myMinDistTargetActor) < 3000 then
				AttackTypePointUP( 3 );
				UpdateArg:SetLU32( "WAIT_TIME", 4000 );				
				Command_Attack( AIActor, myMinDistTargetActor, "AATYPE_3", false, 0 );
				Arcade:Print( string.format( "��������" ) );
			elseif Util:GetDist( AIActor, myMinDistTargetActor) > 3000 then
				
				-- �̵�ī��Ʈ�� Ŭ ��� �������� �ٷ� �õ�
				if u32CurrentPathCount > myLimitPathCount then
					-- �̵� ī��Ʈ�� �ʱ�ȭ
					AttackTypePointUP( 3 );
					PathCountUP( -1 );		
					UpdateArg:SetLU32( "WAIT_TIME", 1600 );				
					Command_Attack( AIActor, myMinDistTargetActor, gPunch[math.random( 1, 2 )], true, 0 );
					Arcade:Print( string.format( "��������" ) );
				
				-- �̵�ī��Ʈ�� ���� ��� Ÿ���� ����
				elseif u32CurrentPathCount <= myLimitPathCount then
					UpdateArg:SetLU32( "WAIT_TIME", 650 );

					-- �̵� ī��Ʈ �÷���
					PathCountUP( 1 );					
					
					Command_Move_ToActor( AIActor, 750, myMinDistTargetActor, math.random( -500, 500), math.random( -500, 500) );
					Arcade:Print( string.format( "���������������̵�" ) );
				end
				
			end
		else

			myMinDistTargetActor = Util:GetActorByMinDist( true, AIActor, 0, 10000, false, true );

			if myMinDistTargetActor ~= nil then
				UpdateArg:SetLU32( "WAIT_TIME", 650 );				
				Command_Move_ToActor( AIActor, 750, myMinDistTargetActor, math.random( -500, 500), math.random( -500, 500) );
				Arcade:Print( string.format( "�������������� ��Ÿ� �̵�" ) );
			end
		end		

	-- ����������
	elseif u32CurrentAttackType == 2 then

		if myMaxHPTargetActor ~= nil then
			AttackTypePointUP( -1 );
			UpdateArg:SetLU32( "WAIT_TIME", 5050 );			
			Command_Attack( AIActor, myMaxHPTargetActor, "AATYPE_4", true, 0 );
			Arcade:Print( string.format( "����������" ) );
		end
		--[[�� �� ���� ���׷� �ּ�ó��
		else
			myMaxHPTargetActor = Util:GetActorByMaxHP( true, AiActor, 0, 10000, false, true );
			AttackTypePointUP( -1 );
			UpdateArg:SetLU32( "WAIT_TIME", 5050 );
			Command_Attack( AIActor, myMaxHPTargetActor, "AATYPE_4", true, 0 );
			Arcade:Print( string.format( "����������" ) );
		end
		--]]

	end
	Arcade:Print( string.format( "����Ʈ=%d", u32CurrentTypePoint) );

end



-- ����Ÿ�� �����Լ�
function AttackTypePointUP( TypePoint )
	
	if TypePoint == -1 then

		UpdateArg:SetLU32( "U32_2",0 );

		u32CurrentTypePoint = UpdateArg:GetLU32( "U32_2" );

	else
		local myCurrentTypePoint = 0
		myCurrentTypePoint = UpdateArg:GetLU32( "U32_2" );
		UpdateArg:SetLU32( "U32_2",myCurrentTypePoint + TypePoint );

		u32CurrentTypePoint = UpdateArg:GetLU32( "U32_2" );
	end

	if u32CurrentTypePoint <= 10 then
		UpdateArg:SetLU32( "U32_1",math.random( 0, 1 ) );
	elseif u32CurrentTypePoint > 10 then
		UpdateArg:SetLU32( "U32_1",2 );
	end

end

function PathCountUP( PathPoint )
	
	if PathPoint == -1 then
		
		UpdateArg:SetLU32( "U32_3",0 );
		u32CurrentPathCount = UpdateArg:GetLU32( "U32_3" );
	
	else
		local myCurrentPathCount
		myCurrentPathCount = UpdateArg:GetLU32( "U32_3" );
		UpdateArg:SetLU32( "U32_3",myCurrentPathCount + PathPoint );
		
		myCurrentPathCount = UpdateArg:GetLU32( "U32_3" );
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
