require "Resources/Script/AIDef.lua"


function Common_AddJumpAIActorState()

	local state = StateFactory:GetJumpAIActorState();

	AIActor:AddAIActorState( AASTATE_JUMP, state );

	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_BLOW, AASTATE_BLOW );
	state:SetNextStateID( AAINPUT_DAMAGE, AASTATE_DAMAGE );
	state:SetNextStateID( AAINPUT_COUNTERATTACK_DAMAGE, AASTATE_COUNTERATTACK_DAMAGE );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );
	state:SetNextStateID( AAINPUT_ATTACK1, AASTATE_ATTACK1 );
	state:SetNextStateID( AAINPUT_STUN, AASTATE_STUN );

	local index = 0;
	ANIMPARAMLIST_DELAY_BEFORE_JUMP				= index; index = index + 1;	
	ANIMPARAMLIST_JUMP_RISE						= index; index = index + 1;	
	ANIMPARAMLIST_JUMP_MOVE_RISE				= index; index = index + 1;	
	ANIMPARAMLIST_LANDING						= index; index = index + 1;	
	ANIMPARAMLIST_LANDING_MOVE					= index; index = index + 1;	
	ANIMPARAMLIST_FALL							= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00000", 0, 500, 1000, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_DELAY_BEFORE_JUMP, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00001", 0, 500, 0, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_JUMP_RISE, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00004", 600, 100, 300, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_JUMP_MOVE_RISE, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00003", 500, 200, 500, false, 0.8, true );
	state:RegisterAnimParam( ANIMPARAMLIST_LANDING, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00000", 0, 100, 0, false, 0.8, true );
	state:RegisterAnimParam( ANIMPARAMLIST_LANDING_MOVE, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00002", 0, 1000, 0, true, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_FALL, animParam );

end


function Common_AddFallAIActorState()

	local state = StateFactory:GetFallAIActorState();

	AIActor:AddAIActorState( AASTATE_FALL, state );

	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_DAMAGE, AASTATE_DAMAGE );
	state:SetNextStateID( AAINPUT_COUNTERATTACK_DAMAGE, AASTATE_COUNTERATTACK_DAMAGE );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );
	state:SetNextStateID( AAINPUT_ATTACK1, AASTATE_ATTACK1 );
	state:SetNextStateID( AAINPUT_STUN, AASTATE_STUN );
	state:SetNextStateID( AAINPUT_BLOW, AASTATE_BLOW );


	local index = 0;
	ANIMPARAMLIST_FALLING						= index; index = index + 1;	
	ANIMPARAMLIST_LANDING						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00002", 0, 1000, 0, true, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_FALLING, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00003", 380, 200, 300, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_LANDING, animParam );

end


function Common_AddDownAIActorState()

	local state = StateFactory:GetDownAIActorState();

	AIActor:AddAIActorState( AASTATE_DOWN, state );

	state:SetNextStateID( AAINPUT_STAND_UP, AASTATE_STAND_UP );
	state:SetNextStateID( AAINPUT_BLOW, AASTATE_BLOW );
	state:SetNextStateID( AAINPUT_DAMAGE, AASTATE_DOWN_DAMAGE );
	state:SetNextStateID( AAINPUT_COUNTERATTACK_DAMAGE, AASTATE_COUNTERATTACK_DAMAGE );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );
	state:SetNextStateID( AAINPUT_STUN, AASTATE_STUN );


	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	
	
	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00021", 0, 1000, 0, true, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );
	
end


function Common_AddStandUpAIActorState()

	local state = StateFactory:GetStandUpAIActorState();

	AIActor:AddAIActorState( AASTATE_STAND_UP, state );

	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_BLOW, AASTATE_BLOW );
	state:SetNextStateID( AAINPUT_DAMAGE, AASTATE_DAMAGE );
	state:SetNextStateID( AAINPUT_COUNTERATTACK_DAMAGE, AASTATE_COUNTERATTACK_DAMAGE );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );
	state:SetNextStateID( AAINPUT_STUN, AASTATE_STUN );
	state:SetNextStateID( AAINPUT_BLOW, AASTATE_BLOW );

	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00035", 0, 1000, 0, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );

end


function Common_AddBlowAIActorState()
	
	local state = StateFactory:GetBlowAIActorState();

	AIActor:AddAIActorState( AASTATE_BLOW, state );
	
	state:SetNextStateID( AAINPUT_DOWN, AASTATE_DOWN );
	state:SetNextStateID( AAINPUT_BLOW, AASTATE_BLOW );
	state:SetNextStateID( AAINPUT_BOUND_BLOW, AASTATE_BOUND_BLOW );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );
	state:SetNextStateID( AAINPUT_STUN, AASTATE_STUN );


	local index = 0;
	ANIMPARAMLIST_BEGIN							= index; index = index + 1;	
	ANIMPARAMLIST_MIDDLE						= index; index = index + 1;	
	ANIMPARAMLIST_END							= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00027", 0, 0, 0, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_BEGIN, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00026", 0, 200, 0, true, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_MIDDLE, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00024", 0, 400, 0, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_END, animParam );
	
end
	
	
function Common_AddBoundBlowAIActorState()

	local state = StateFactory:GetBoundBlowAIActorState();

	AIActor:AddAIActorState( AASTATE_BOUND_BLOW, state );

	state:SetNextStateID( AAINPUT_DOWN, AASTATE_DOWN );
	state:SetNextStateID( AAINPUT_BLOW, AASTATE_BLOW );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );
	state:SetNextStateID( AAINPUT_STUN, AASTATE_STUN );
	state:SetNextStateID( AAINPUT_BLOW, AASTATE_BLOW );

	local index = 0;
	ANIMPARAMLIST_BEGIN							= index; index = index + 1;	
	ANIMPARAMLIST_MIDDLE						= index; index = index + 1;	
	ANIMPARAMLIST_END							= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00070", 0, 100, 0, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_BEGIN, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00071", 0, 100, 0, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_MIDDLE, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00072", 0, 200, 0, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_END, animParam );
	
end


function Common_AddDownDamageAIActorState()

	local state = StateFactory:GetDownDamageAIActorState();

	AIActor:AddAIActorState( AASTATE_DOWN_DAMAGE, state );

	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_DOWN );
	state:SetNextStateID( AAINPUT_DAMAGE, AASTATE_DOWN_DAMAGE );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );
	state:SetNextStateID( AAINPUT_STUN, AASTATE_STUN );


	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00023", 0, 100, 0, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );
	
end


function Common_AddDefaultAILowerStates( state )

	Common_AddNormalLowerState( state );
	Common_AddRunLowerState( state );
	Common_AddJumpLowerState( state );

end


function Common_AddNormalLowerState( state )

	local lowerState = StateFactory:GetNormalAILowerState();

	state:AddLowerState( ALSTATE_NORMAL, lowerState );

	lowerState:SetNextStateID( ALINPUT_RUN, ALSTATE_RUN );
	lowerState:SetNextStateID( ALINPUT_JUMP, ALSTATE_JUMP );


	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00029", 0, 500, 0, true, 1.0, true );
	lowerState:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );

end


function Common_AddRunLowerState( state )

	local lowerState = StateFactory:GetNormalAILowerState();

	state:AddLowerState( ALSTATE_RUN, lowerState );

	lowerState:SetNextStateID( ALINPUT_NORMAL, ALSTATE_NORMAL );
	lowerState:SetNextStateID( ALINPUT_JUMP, ALSTATE_JUMP );


	local index = 0;
	ANIMPARAMLIST_FRONT								= index; index = index + 1;	
	ANIMPARAMLIST_LEFT_FRONT						= index; index = index + 1;	
	ANIMPARAMLIST_LEFT								= index; index = index + 1;	
	ANIMPARAMLIST_LEFT_BACK							= index; index = index + 1;	
	ANIMPARAMLIST_RIGHT_FRONT						= index; index = index + 1;	
	ANIMPARAMLIST_RIGHT								= index; index = index + 1;	
	ANIMPARAMLIST_RIGHT_BACK						= index; index = index + 1;	
	ANIMPARAMLIST_BACK								= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL								= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00008", 0, 500, 0, true, 1.0, true );
	lowerState:RegisterAnimParam( ANIMPARAMLIST_FRONT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00009", 0, 500, 0, true, 1.0, true );
	lowerState:RegisterAnimParam( ANIMPARAMLIST_LEFT_FRONT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00010", 0, 500, 0, true, 1.0, true );
	lowerState:RegisterAnimParam( ANIMPARAMLIST_LEFT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00014", 0, 500, 0, true, 1.0, true );
	lowerState:RegisterAnimParam( ANIMPARAMLIST_LEFT_BACK, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00011", 0, 500, 0, true, 1.0, true );
	lowerState:RegisterAnimParam( ANIMPARAMLIST_RIGHT_FRONT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00012", 0, 500, 0, true, 1.0, true );
	lowerState:RegisterAnimParam( ANIMPARAMLIST_RIGHT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00015", 0, 500, 0, true, 1.0, true );
	lowerState:RegisterAnimParam( ANIMPARAMLIST_RIGHT_BACK, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00013", 0, 500, 0, true, 1.0, true );
	lowerState:RegisterAnimParam( ANIMPARAMLIST_BACK, animParam );

end


function Common_AddJumpLowerState( state )

	local lowerState = StateFactory:GetJumpAILowerState();

	state:AddLowerState( ALSTATE_JUMP, lowerState );

	lowerState:SetNextStateID( ALINPUT_RUN, ALSTATE_RUN );
	lowerState:SetNextStateID( ALINPUT_JUMP, ALSTATE_JUMP );


	local index = 0;
	ANIMPARAMLIST_DELAY_BEFORE_JUMP				= index; index = index + 1;	
	ANIMPARAMLIST_JUMP_RISE						= index; index = index + 1;	
	ANIMPARAMLIST_JUMP_FALL						= index; index = index + 1;	
	ANIMPARAMLIST_LANDING						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00000", 0, 500, 0, false, 1.0, true );
	lowerState:RegisterAnimParam( ANIMPARAMLIST_DELAY_BEFORE_JUMP, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00001", 0, 200, 0, false, 1.0, true );
	lowerState:RegisterAnimParam( SUBSTATE_JUMP_RISE, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00002", 0, 1000, 0, true, 1.0, true );
	lowerState:RegisterAnimParam( SUBSTATE_JUMP_FALL, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00003", 0, 200, 0, false, 1.0, true );
	lowerState:RegisterAnimParam( SUBSTATE_LANDING, animParam );

end


function Common_AddStunAIActorState()

	local state = StateFactory:GetStunAIActorState();

	state:InitStunAIActorState( 0 );
	state:RegisterSequence( 1, "Resources/Effects/stun.seq", "Resources/Sound/stun.ogg", 1, 2500 );

	AIActor:AddAIActorState( AASTATE_STUN, state );
	
	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_STUN, AASTATE_STUN );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );
	state:SetNextStateID( AAINPUT_DAMAGE, AASTATE_DAMAGE );
	state:SetNextStateID( AAINPUT_BLOW, AASTATE_BLOW );

	local index = 0;
	ANIMPARAMLIST_PRECEDING						= index; index = index + 1;	
	ANIMPARAMLIST_STUN							= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00006", 0, 0, 0, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_PRECEDING, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00007", 0, 1000, 0, true, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_STUN, animParam );
	
end


function Common_AddCounterAttackDamage()

	local state = StateFactory:GetStunAIActorState();

	state:InitStunAIActorState( 700 );
	state:RegisterSequence( 1, "Resources/Effects/stun.seq", "Resources/Sound/stun.ogg", 1, 2500 );

	AIActor:AddAIActorState( AASTATE_COUNTERATTACK_DAMAGE, state );
	
	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_STUN, AASTATE_STUN );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );
	state:SetNextStateID( AAINPUT_DAMAGE, AASTATE_DAMAGE );
	state:SetNextStateID( AAINPUT_BLOW, AASTATE_BLOW );
	
	local index = 0;
	ANIMPARAMLIST_PRECEDING						= index; index = index + 1;	
	ANIMPARAMLIST_STUN							= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00006", 0, 0, 0, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_PRECEDING, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00007", 0, 1000, 0, true, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_STUN, animParam );
	
end


function Common_AddIdleState()

	local state = StateFactory:GetIdleAIActorState();

	AIActor:AddAIActorState( AASTATE_IDLE, state );
	
end


function Common_AddDodgeLeftAIActorState()
	
	local state = StateFactory:GetDodgeAIActorState();

	-------------- EDodgeDir 상수 정의 ----------------
	local index = 0;

	DIR_LEFT							= index; index = index + 1;
	DIR_RIGHT							= index; index = index + 1;
	

	state:InitDodgeAIActorState( DIR_LEFT );
	
	AIActor:AddAIActorState( AASTATE_DODGE_LEFT, state );
	
	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_STUN, AASTATE_STUN );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );
	state:SetNextStateID( AAINPUT_DAMAGE, AASTATE_DAMAGE );
	state:SetNextStateID( AAINPUT_BLOW, AASTATE_BLOW );

	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00005", 0, 300, 700, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );
	
end


function Common_AddDodgeRightAIActorState()

	local state = StateFactory:GetDodgeAIActorState();

	-------------- EDodgeDir 상수 정의 ----------------
	local index = 0;

	DIR_LEFT							= index; index = index + 1;
	DIR_RIGHT							= index; index = index + 1;
	

	state:InitDodgeAIActorState( DIR_RIGHT );
	
	AIActor:AddAIActorState( AASTATE_DODGE_RIGHT, state );
	
	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_STUN, AASTATE_STUN );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );
	state:SetNextStateID( AAINPUT_DAMAGE, AASTATE_DAMAGE );
	state:SetNextStateID( AAINPUT_BLOW, AASTATE_BLOW );

	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00056", 0, 300, 700, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );

end
