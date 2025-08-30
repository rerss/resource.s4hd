require "Resources/Script/BTCAI_Constants.lua"

local StealthOnDistance = 5000.0;
local StealthOffMP = 30.0;
local StealthOnMP = 80.0;

function Initialize( BTCAIActor )
	BTCAIActor:SetAttackTypeInfo( 0, BTCAIACTOR_ATTACK_MELEE,	500.0, 	100, 100, 1 );
	BTCAIActor:SetAttackTypeInfo( 1, BTCAIACTOR_ATTACK_RANGE,	1000.0,	100, 100, 1 );
	BTCAIActor:SetAttackTypeInfo( 2, BTCAIACTOR_ATTACK_RANGE,	2000.0,	100, 100, 1 );
	BTCAIActor:SetOnOff( BTCAIACTOR_ONOFF_STEALTH, false, true );
end

function Update( timeDelta, BTCAIActor )
	if StealthOffMP >= BTCAIActor:GetMP() and true == BTCAIActor:GetOnOff( BTCAIACTOR_ONOFF_STEALTH ) then
		BTCAIActor:SetOnOff( BTCAIACTOR_ONOFF_STEALTH, false, true );
	end
	
	local StartPos = BTCTDHelper:GetActorPosition( BTCAIActor );
	local TargetActor = BTCTDHelper:FindNearestEnemyActor( BTCAIActor, StartPos, -1.0 );		
	local FindAttackResult = BTCTDHelper:GetFindAttackActorResult();
	
	local IsAttacking = BTCTDHelper:FindAttackableEnemyActor( BTCAIActor, FindAttackResult );
	if true == IsAttacking then
		Attack( BTCAIActor, FindAttackResult );
	elseif true == BTCTDHelper:IsBallOwner( BTCAIActor ) then
		MoveToGoal( BTCAIActor );
	else
		MoveToActor( BTCAIActor, TargetActor );
	end
	
	if false == IsAttacking and true == UsableStealth( BTCAIActor, TargetActor ) then
		Stealth( BTCAIActor );
	end
end

function Attack( BTCAIActor, FindAttackResult )
	if true == BTCAIActor:GetOnOff( BTCAIACTOR_ONOFF_STEALTH ) then
		local AttackWeaponIndex = BTCTDHelper:GetFindAttackActorResultWeaponIndex( FindAttackResult );
		local AttackActor = BTCTDHelper:GetFindAttackActorResultActor( FindAttackResult );
		
		local StartPos = BTCTDHelper:GetActorPosition( BTCAIActor );
		local EndPos = BTCTDHelper:GetActorPosition( AttackActor );
		local Length = BTCTDHelper:GetLengthTwoVector( StartPos, EndPos );
		
		if true == BTCTDHelper:IsValidWeapon( BTCAIActor, AttackWeaponIndex, Length ) and 2 == AttackWeaponIndex then
			return;
		end
	end
		
	BTCAIActor:SetEnemyAttackInfo( FindAttackResult );
	BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_ATTACK );
end

function UsableStealth( BTCAIActor, NearestActor )
	local StartPos = BTCTDHelper:GetActorPosition( BTCAIActor );
	local EndPos = BTCTDHelper:GetActorPosition( NearestActor );
	local Length = BTCTDHelper:GetLengthTwoVector( StartPos, EndPos );
	
	if StealthOnDistance < Length then
		return false;
	elseif true == BTCAIActor:GetOnOff( BTCAIACTOR_ONOFF_STEALTH ) then
		return false;
	elseif StealthOnMP > BTCAIActor:GetMP() then
		return false;
	end
	
	return true;
end

function Stealth( BTCAIActor )
	BTCAIActor:SetOnOff( BTCAIACTOR_ONOFF_STEALTH, true );
end

function MoveToGoal( BTCAIActor )
	local GoalPosition = BTCTDHelper:GetEnemyGoalPosition( BTCAIActor );
	BTCAIActor:SetTargetPath( GoalPosition );
	BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_FASTRUN );
end

function MoveToActor( BTCAIActor, TargetActor )
	local TargetPosition = BTCTDHelper:GetActorPosition( TargetActor );
	BTCAIActor:SetTargetPath( TargetPosition );
	BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_RUN );
end
