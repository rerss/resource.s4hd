require "Resources/Script/BTCAI_Constants.lua"

local StrikerActor = nil;
local BallResetLength = 5000.0;

function Initialize( BTCAIActor )
	BTCAIActor:SetAttackTypeInfo( 0, BTCAIACTOR_ATTACK_MELEE,	500.0,	100, 100, 1 );
	BTCAIActor:SetAttackTypeInfo( 1, BTCAIACTOR_ATTACK_HEAL,	2000.0, 100, 100, 1 );
	BTCAIActor:SetAttackTypeInfo( 2, BTCAIACTOR_ATTACK_RANGE,	1200.0, 100, 100, 1 );
	
	StrikerActor = BTCTDHelper:FindAllyActorByType( BTCAIActor, BTCAIACTOR_TYPE_STRIKER );
end

function Update( timeDelta, BTCAIActor )
	local FindHealResult = BTCTDHelper:GetFindHealActorResult();
	local FindAttackResult = BTCTDHelper:GetFindAttackActorResult();
	
	if true == BTCTDHelper:IsHealableToActor( BTCAIActor, StrikerActor, FindHealResult ) then
		Heal( BTCAIActor, FindHealResult );
	elseif true == BTCTDHelper:FindAttackableEnemyActor( BTCAIActor, FindAttackResult ) then
		Attack( BTCAIActor, FindAttackResult );
	elseif true == BTCTDHelper:IsBallOwner( BTCAIActor ) then
		local MyPosition = BTCTDHelper:GetActorPosition( BTCAIActor );
		local GoalPosition = BTCTDHelper:GetAllyGoalPosition( BTCAIActor );		
		local Length = BTCTDHelper:GetLengthTwoVector( MyPosition, GoalPosition );
		if Length <= BallResetLength then
			MoveToBallReset( BTCAIActor );
		else
			MoveToGoal( BTCAIActor );
		end
	else
		if true == BTCTDHelper:IsBallOwner( StrikerActor ) then
			MoveToStriker( BTCAIActor );
		elseif true == BTCTDHelper:HasBallAllyTeam( BTCAIActor ) then
			local BallOwnerActor = BTCTDHelper:GetBallOwnerActor();
			MoveToGuardBall( BTCAIActor, BallOwnerActor );		
		else
			MoveToBall( BTCAIActor );
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

function MoveToStriker( BTCAIActor )
	local StartPos = BTCTDHelper:GetActorPosition( BTCAIActor );
	local EndPos = BTCTDHelper:GetActorPosition( StrikerActor );
	local Length = BTCTDHelper:GetLengthTwoVector( StartPos, EndPos );
	
	if 200.0 >= Length then
		BTCAIActor:SetTargetPath( StartPos );
		BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_NORMAL );
	else
		BTCAIActor:SetTargetPath( EndPos );
		BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_FASTRUN );	
	end
end

function MoveToGoal( BTCAIActor )
	local GoalPosition = BTCTDHelper:GetEnemyGoalPosition( BTCAIActor );
	BTCAIActor:SetTargetPath( GoalPosition );
	BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_FASTRUN );
end

function MoveToGuardBall( BTCAIActor, BallOwnerActor )
	local StartPos = BTCTDHelper:GetActorPosition( BTCAIActor );
	local EndPos = BTCTDHelper:GetActorPosition( BallOwnerActor );
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