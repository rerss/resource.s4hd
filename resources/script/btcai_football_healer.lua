require "Resources/Script/BTCAI_Constants.lua"

local TankerActor = nil;
local HealActorSearchRange = 5000.0;
local BallResetLength = 5000.0;

function Initialize( BTCAIActor )
	BTCAIActor:SetAttackTypeInfo( 0, BTCAIACTOR_ATTACK_RANGE, 	2000.0, 100, 100, 1 );
	BTCAIActor:SetAttackTypeInfo( 1, BTCAIACTOR_ATTACK_HEAL, 	1800.0, 100, 100, 1 );
	BTCAIActor:SetAttackTypeInfo( 2, BTCAIACTOR_ATTACK_HEAL, 	2000.0, 100, 100, 1 );
	
	TankerActor = BTCTDHelper:FindAllyActorByType( BTCAIActor, BTCAIACTOR_TYPE_TANKER );
end

function Update( timeDelta, BTCAIActor )
	local FindHealResult = BTCTDHelper:GetFindHealActorResult();	
	if true == BTCTDHelper:FindHealableActor( BTCAIActor, FindHealResult, HealActorSearchRange ) then
		Heal( BTCAIActor, FindHealResult );
	else
		local FindAttackResult = BTCTDHelper:GetFindAttackActorResult();
		if true == BTCTDHelper:FindAttackableEnemyActor( BTCAIActor, FindAttackResult ) then
			Attack( BTCAIActor, FindAttackResult );
		elseif nil == BTCTDHelper:GetBallOwnerActor() then
			local BallPosition = BTCTDHelper:GetBallPosition();
			local GoalPosition = BTCTDHelper:GetAllyGoalPosition( BTCAIActor );
			local Length = BTCTDHelper:GetLengthTwoVector( BallPosition, GoalPosition );
			if BallResetLength >= Length then
				MoveToBall( BTCAIActor );
			else
				MoveToTanker( BTCAIActor );
			end
		elseif true == BTCTDHelper:IsBallOwner( BTCAIActor ) then
			local MyPosition = BTCTDHelper:GetActorPosition( BTCAIActor );
			local GoalPosition = BTCTDHelper:GetAllyGoalPosition( BTCAIActor );		
			local Length = BTCTDHelper:GetLengthTwoVector( MyPosition, GoalPosition );
			if Length <= BallResetLength then
				MoveToBallReset( BTCAIActor );
			else
				MoveToGoal( BTCAIActor );
			end
		end
	end
end

function Heal( BTCAIActor, FindHealResult )
	BTCAIActor:SetHealAttackInfo( FindHealResult );
	BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_HEAL );
end

function Attack( BTCAIActor, FindAttackResult )
	BTCAIActor:SetEnemyAttackInfo( FindAttackResult );
	BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_ATTACK );
end

function MoveToTanker( BTCAIActor )
	local StartPos = BTCTDHelper:GetActorPosition( BTCAIActor );
	local EndPos = BTCTDHelper:GetActorPosition( TankerActor );
	local Length = BTCTDHelper:GetLengthTwoVector( StartPos, EndPos );
	
	if 200.0 >= Length then
		BTCAIActor:SetTargetPath( StartPos );
		BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_NORMAL );
	else
		BTCAIActor:SetTargetPath( EndPos );
		BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_FASTRUN );	
	end
end

function MoveToBall( BTCAIActor )
	local BallPosition = BTCTDHelper:GetBallPosition();
	BTCAIActor:SetTargetPath( BallPosition );
	BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_FASTRUN );
end

function MoveToBallReset( BTCAIActor )
	local BallResetPosition = BTCTDHelper:GetBallResetPosition( BTCAIActor );
	BTCAIActor:SetTargetPath( BallResetPosition );
	BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_FASTRUN );
end

function MoveToGoal( BTCAIActor )
	local GoalPosition = BTCTDHelper:GetEnemyGoalPosition( BTCAIActor );
	BTCAIActor:SetTargetPath( GoalPosition );
	BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_FASTRUN );
end