require "Resources/Script/BTCAI_Constants.lua"

function Initialize( BTCAIActor )
	BTCAIActor:SetAttackTypeInfo( 0, BTCAIACTOR_ATTACK_MELEE,	500.0, 	100, 100, 1 );
	BTCAIActor:SetAttackTypeInfo( 1, BTCAIACTOR_ATTACK_RANGE,	1200.0,	100, 100, 1 );
	BTCAIActor:SetAttackTypeInfo( 2, BTCAIACTOR_ATTACK_RANGE,	2000.0,	100, 100, 1 );
end

function Update( timeDelta, BTCAIActor )
	local FindAttackResult = BTCTDHelper:GetFindAttackActorResult();
	
	if true == BTCTDHelper:FindAttackableEnemyActor( BTCAIActor, FindAttackResult ) then
		Attack( BTCAIActor, FindAttackResult );
	else
		if true == BTCTDHelper:IsBallOwner( BTCAIActor ) then
			MoveToGoal( BTCAIActor );
		elseif true == BTCTDHelper:HasBallAllyTeam( BTCAIActor ) then
			local BallOwnerActor = BTCTDHelper:GetBallOwnerActor();
			MoveToGuardBall( BTCAIActor, BallOwnerActor );
		else
			MoveToBall( BTCAIActor );
		end
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

function Attack( BTCAIActor, FindAttackResult )
	BTCAIActor:SetEnemyAttackInfo( FindAttackResult );
	BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_ATTACK );
end
