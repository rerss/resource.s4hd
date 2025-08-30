require "Resources/Script/BTCAI_Constants.lua"

local BallResetLength = 5000.0;
local SearchRange = 10000.0;
local MetalicOnHP = 50;
local MetalicOnMP = 30;

function Initialize( BTCAIActor )
	BTCAIActor:SetAttackTypeInfo( 0, BTCAIACTOR_ATTACK_MELEE,	500.0,	100, 100, 1 );
	BTCAIActor:SetAttackTypeInfo( 1, BTCAIACTOR_ATTACK_RANGE,	2000.0, 100, 100, 1 );
	BTCAIActor:SetAttackTypeInfo( 2, BTCAIACTOR_ATTACK_AIMSHOT,	6000.0, 100, 100, 1 );
end

function Update( timeDelta, BTCAIActor )
	local FindAttackResult = BTCTDHelper:GetFindAttackActorResult();
	local HP = BTCAIActor:GetHP();
	local MP = BTCAIActor:GetMP();
	if HP <= MetalicOnHP and MP >= MetalicOnMP then
		BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_METALIC );
	elseif true == BTCTDHelper:FindAttackableEnemyActor( BTCAIActor, FindAttackResult ) then
		Attack( BTCAIActor, FindAttackResult );
	elseif true == BTCTDHelper:IsBallOwner( BTCAIActor ) then
		MoveToBallReset( BTCAIActor );
	else
		if nil ~= BTCTDHelper:GetBallOwnerActor() then
			if false == BTCTDHelper:HasBallAllyTeam( BTCAIActor ) then
				MoveToGoalAround( BTCAIActor );
			else
				MoveToEnemyActor( BTCAIActor );
			end
		else
			local BallPosition = BTCTDHelper:GetBallPosition();
			local GoalPosition = BTCTDHelper:GetAllyGoalPosition( BTCAIActor );		
			local Length = BTCTDHelper:GetLengthTwoVector( BallPosition, GoalPosition );
			if Length <= BallResetLength then
				MoveToBallReset( BTCAIActor );
			else
				MoveToEnemyActor( BTCAIActor );
			end		
		end
	end
end

function Attack( BTCAIActor, FindAttackResult )
	BTCAIActor:SetEnemyAttackInfo( FindAttackResult );
	BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_ATTACK );
end

function MoveToEnemyActor( BTCAIActor )
	local MyPosition = BTCTDHelper:GetActorPosition( BTCAIActor );
	local GoalPosition = BTCTDHelper:GetAllyGoalPosition( BTCAIActor );
	local SearchEnemy = BTCTDHelper:FindNearestEnemyActor( BTCAIActor, GoalPosition, SearchRange );
	if nil ~= SearchEnemy then
		TargetPos = BTCTDHelper:GetActorPosition( SearchEnemy );	
		BTCAIActor:SetTargetPath( TargetPos );
		BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_RUN );
	else
		MoveToGoalAround( BTCAIActor );
	end
end

function MoveToGoalAround( BTCAIActor )
	local GoalPosition = BTCTDHelper:GetAllyGoalPosition( BTCAIActor );
	local MyPosition = BTCTDHelper:GetActorPosition( BTCAIActor );
	local Length = BTCTDHelper:GetLengthTwoVector( GoalPosition, MyPosition );
	
	if 750.0 >= Length then
		BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_NORMAL );
	else
		BTCAIActor:SetTargetPath( GoalPosition );
		BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_RUN );
	end
end

function MoveToBallReset( BTCAIActor )
	local BallResetPosition = BTCTDHelper:GetBallResetPosition( BTCAIActor );
	BTCAIActor:SetTargetPath( BallResetPosition );
	BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_FASTRUN );
end