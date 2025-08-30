require "Resources/Script/BTCAI_Constants.lua"

function Initialize( BTCAIActor )
	BTCAIActor:SetupAttackTypeInfo( 100, 100, 1 );
end

function Update( TimeDelta, BTCAIActor )
	if true == BTCDMHelper:HasSentryGun( BTCAIActor ) then
		ProcessHasSentryGun( BTCAIActor );
	elseif true == BTCDMHelper:HasHealWeapon( BTCAIActor ) then
		ProcessHealWeapon( BTCAIActor );
	else
		ProcessNormal( BTCAIActor );
	end
end

function ProcessHasSentryGun( BTCAIActor )
	local FindAttackResult = BTCDMHelper:GetFindAttackActorResult();
	local IsFindAttackableEnemyActor = BTCDMHelper:FindAttackableEnemyActor( BTCAIActor, FindAttackResult );
		
	if true == BTCDMHelper:IsInstallableSentryGun( BTCAIActor ) then
		if true == IsFindAttackableEnemyActor then
			Attack( BTCAIActor, FindAttackResult );
		else
			MoveToInstallSentryGun( BTCAIActor );
		end
	else
		if true == IsFindAttackableEnemyActor then
			Attack( BTCAIActor, FindAttackResult );
		else
			BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_WAYPOINT );
		end	
	end
end

function ProcessHealWeapon( BTCAIActor )
	local FindHealResult = BTCDMHelper:GetFindHealActorResult();
	local IsFindHealableActor = BTCDMHelper:FindHealableActor( BTCAIActor, FindHealResult );
	
	if true == IsFindHealableActor then
		Heal( BTCAIActor, FindHealResult );
	else
		ProcessNormal( BTCAIActor );
	end
end

function ProcessNormal( BTCAIActor )
	local FindAttackResult = BTCDMHelper:GetFindAttackActorResult();
	local IsFindAttackableEnemyActor = BTCDMHelper:FindAttackableEnemyActor( BTCAIActor, FindAttackResult );
		
	if true == IsFindAttackableEnemyActor then
		Attack( BTCAIActor, FindAttackResult );
	else
		BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_WAYPOINT );
	end
end

function MoveToInstallSentryGun( BTCAIActor )
	local SentryGunInstallPos = BTCDMHelper:FindNearestSentryGunInstallPos( BTCAIActor );
	local MyPosition = BTCDMHelper:GetActorPosition( BTCAIActor );
	local Length = BTCDMHelper:GetLengthTwoVector( SentryGunInstallPos, MyPosition );
	if 100.0 >= Length then
		BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_SENTRY_GUN );
	else
		BTCAIActor:SetTargetPath( SentryGunInstallPos );
		BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_FASTRUN );	
	end
end

function Attack( BTCAIActor, FindAttackResult )
	BTCAIActor:SetEnemyAttackInfo( FindAttackResult );
	BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_ATTACK );
end

function Heal( BTCAIActor, FindHealResult )
	BTCAIActor:SetHealAttackInfo( FindHealResult );
	BTCAIActor:ChangeAIState( BTCAIACTOR_STATE_HEAL );
end