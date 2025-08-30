require "Resources/Script/BTCAI_Constants.lua"

function Initialize( BTCAIActor )
	BTCAIActor:SetAttackTypeInfo( 0, BTCAIACTOR_ATTACK_MELEE,	500.0, 	100, 100, 1 );
	BTCAIActor:SetAttackTypeInfo( 1, BTCAIACTOR_ATTACK_AIMSHOT,	1200.0, 100, 100, 1 );
	BTCAIActor:SetAttackTypeInfo( 2, BTCAIACTOR_ATTACK_RANGE,	2000.0, 100, 100, 1 );
end

function Update( timeDelta, BTCAIActor )	
	local FindAttackResult = BTCTDHelper:GetFindAttackActorResult();
	if true == BTCTDHelper:FindAttackableEnemyActor( BTCAIActor, FindAttackResult ) then
		Attack( BTCAIActor, FindAttackResult );
	else
		local BallOwnerActor = BTCTDHelper:GetBallOwnerActor();
		if nil == BallOwnerActor then
			local MyPosition = BTCTDHelper:GetActorPosition( BTCAIActor );
			local NearestActor = BTCTDHelper:FindNearestEnemyActor( BTCAIActor, MyPosition, -1.0 );
			MoveToActor( BTCAIActor, NearestActor );
		else
			if true == BTCTDHelper:IsBallOwner( BTCAIActor ) then
				MoveToGoal( BTCAIActor );
			elseif false == BTCTDHelper:HasBallAllyTeam( BTCAIActor ) then
				if true == BTCTDHelper:IsAttackableToActor( BTCAIActor, BallOwnerActor, FindAttackResult ) then
					Attack( BTCAIActor, FindAttackResult );
				else
					MoveToActor( BTCAIActor, BallOwnerActor );
				end
			else
				MoveToActor( BTCAIActor, BallOwnerActor );
			end
		end
	end
end

function Attack( BTCAIActor, FindAttackResult )
	BTCAIActor:SetEnemyAttackInfo( FindAttackResult );
	BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_ATTACK );
end

function MoveToActor( BTCAIActor, TargetActor )
	local TargetPosition = BTCTDHelper:GetActorPosition( TargetActor );
	local MyPosition = BTCTDHelper:GetActorPosition( BTCAIActor );
	local Length = BTCTDHelper:GetLengthTwoVector( TargetPosition, MyPosition );
	
	if 200.0 < Length then
		BTCAIActor:SetTargetPath( TargetPosition );
		BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_FASTRUN );
	else
		BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_NORMAL );
	end
end

function MoveToGoal( BTCAIActor )
	local GoalPosition = BTCTDHelper:GetEnemyGoalPosition( BTCAIActor );
	BTCAIActor:SetTargetPath( GoalPosition );
	BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_FASTRUN );
end