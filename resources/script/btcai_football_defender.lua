require "Resources/Script/BTCAI_Constants.lua"

local BallSearchRange = 5000.0;

function Initialize( BTCAIActor )
	BTCAIActor:SetAttackTypeInfo( 0, BTCAIACTOR_ATTACK_MELEE,		500.0, 	100, 100, 1 );
	BTCAIActor:SetAttackTypeInfo( 1, BTCAIACTOR_ATTACK_SENTRY_GUN,	0.0, 	100, 100, 1 );
	BTCAIActor:SetAttackTypeInfo( 2, BTCAIACTOR_ATTACK_AIMSHOT,		4000.0, 100, 100, 1 );
end

function Update( timeDelta, BTCAIActor )	
	if true == BTCTDHelper:IsInstallableSentryGun( BTCAIActor ) then
		InstallSentryGun( BTCAIActor );
	elseif true == BTCTDHelper:IsBallOwner( BTCAIActor ) then
		MoveToBallReset( BTCAIActor );
	else
		local FindAttackResult = BTCTDHelper:GetFindAttackActorResult();
		if true == BTCTDHelper:FindAttackableEnemyActor( BTCAIActor, FindAttackResult ) then
			Attack( BTCAIActor, FindAttackResult );
		else
			local BallPosition = BTCTDHelper:GetBallPosition();
			local GoalPosition = BTCTDHelper:GetAllyGoalPosition( BTCAIActor );
			local Length = BTCTDHelper:GetLengthTwoVector( BallPosition, GoalPosition );
			if BallSearchRange >= Length then
				MoveToBall( BTCAIActor );
			else
				MoveToGoal( BTCAIActor );
			end
		end		
	end
end

function InstallSentryGun( BTCAIActor )
	local GoalPosition = BTCTDHelper:GetAllyGoalPosition( BTCAIActor );
	local MyPosition = BTCTDHelper:GetActorPosition( BTCAIActor );
	local Length = BTCTDHelper:GetLengthTwoVector( GoalPosition, MyPosition );
	
	if 500.0 >= Length then
		BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_SENTRY_GUN );
	else
		BTCAIActor:SetTargetPath( GoalPosition );
		BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_FASTRUN );
	end
end

function Attack( BTCAIActor, FindAttackResult )
	BTCAIActor:SetEnemyAttackInfo( FindAttackResult );
	BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_ATTACK );
end

function MoveToBallReset( BTCAIActor )
	local BallResetPosition = BTCTDHelper:GetBallResetPosition( BTCAIActor );
	BTCAIActor:SetTargetPath( BallResetPosition );
	BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_FASTRUN );
end

function MoveToBall( BTCAIActor )
	local BallPosition = BTCTDHelper:GetBallPosition();
	BTCAIActor:SetTargetPath( BallPosition );
	BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_FASTRUN );
end

function MoveToGoal( BTCAIActor )
	local GoalPosition = BTCTDHelper:GetAllyGoalPosition( BTCAIActor );
	local MyPosition = BTCTDHelper:GetActorPosition( BTCAIActor );
	local Length = BTCTDHelper:GetLengthTwoVector( GoalPosition, MyPosition );
	
	if 500.0 < Length then
		BTCAIActor:SetTargetPath( GoalPosition );
		BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_FASTRUN );
	else
		BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_NORMAL );
	end
end