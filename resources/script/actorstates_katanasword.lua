require "Resources/Script/ActorStates_Constants.lua"


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_JUMPATK,	WEAPONTYPE_KATANA_SWORD	
-------------------------------------------------------------------------------------------------------------
function SwordJumpAtkState_KatanaSword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );

	state:AddGhostTrail( "GhostTrail_katana_sword_01", 50, 100 );

	state:AddSequence( 0, "Resources/Effects/skill_swordman_strike.seq", "Resources/Sound/sword_power.ogg", 300, 5000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "X0013",		0,	200,	0,	LOOP_FALSE,	0.85, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "X0014",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1,	WEAPONTYPE_KATANA_SWORD	
-------------------------------------------------------------------------------------------------------------
function UseWeapon1State_KatanaSword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 0, 2500 );
--	state:AddGhostTrail( "GhostTrail_katana_sword_01", 150, 200 );
	state:AddSequence( 0, "Resources/Effects/katana_ilsum_hit.seq", "", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_FIRST		= index; index = index + 1;
	local ANIMPARAMLIST_SECOND		= index; index = index + 1;
	local ANIMPARAMLIST_THIRD		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FIRST						):SetAnim( "X0000",		900,	200,	300,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SECOND					):SetAnim( "X0000",		900,	200,	300,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_THIRD						):SetAnim( "X0000",		900,	200,	300,	LOOP_FALSE,	1.0, RESET_TRUE		);
	
	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "G0018", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT			):SetAnim( "G0019", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "G0020", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT		):SetAnim( "G0021", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "G0022", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "G0023", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK			):SetAnim( "G0024", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK			):SetAnim( "G0025", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "X0015",  0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );	
	
end	

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_ATTACK2,	WEAPONTYPE_KATANA_SWORD	
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash2State_KatanaSword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 0, 2500 );
--	state:AddGhostTrail( "GhostTrail_katana_sword_01", 50, 350 );
	state:AddSequence( 0, "Resources/Effects/katana_ilsum_hit.seq", "", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "X0024",		900,	200,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "",			0,	50,		0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	
end	

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON2,	WEAPONTYPE_KATANA_SWORD	
-------------------------------------------------------------------------------------------------------------
function UseWeapon2State_KatanaSword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 0, 2500 );
--	state:AddSequence( 0, "Resources/Effects/skill_swordman_battack.seq", "Resources/Sound/sword_stance.ogg", 0, 5000 );
--	state:AddGhostTrail( "GhostTrail_katana_sword_01", 150, 300 );

	local index = 0;
	local ANIMPARAMLIST_WAIT		= index; index = index + 1;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_WAIT					):SetAnim( "X0003",		0,  	0,		0,	LOOP_TRUE,	1.0, RESET_TRUE	);			
	state:GetAnimParam( ANIMPARAMLIST_NORMAL				):SetAnim( "X0001",		0,  	200,		500,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY					):SetAnim( "X0002",		0,	500,		1000,	LOOP_FALSE,	1.0, RESET_TRUE	);
	
	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "X0016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT			):SetAnim( "X0017", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "R0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT		):SetAnim( "X0019", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "R0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "X0021", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK			):SetAnim( "X0022", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK			):SetAnim( "X0023", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "X0015", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );	

end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_ATTACK4,	WEAPONTYPE_KATANA_SWORD	
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash4State_KatanaSword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 0, 2500 );
--	state:AddGhostTrail( "GhostTrail_katana_sword_01", 150, 200 );
	state:AddSequence( 0, "Resources/Effects/ilsum_one.seq", "", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "X0001",		900,	200,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "",			0,	50,		0,	LOOP_FALSE,	1.0, RESET_TRUE		);	
end	

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_ATTACK3,	WEAPONTYPE_KATANA_SWORD	
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash3State_KatanaSword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 0, 2500 );
--	state:AddGhostTrail( "GhostTrail_katana_sword_01", 150, 200 );
	state:AddSequence( 0, "Resources/Effects/katana_ilsum_hit.seq", "", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_FIRST		= index; index = index + 1;
	local ANIMPARAMLIST_SECOND		= index; index = index + 1;
	local ANIMPARAMLIST_THIRD		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FIRST						):SetAnim( "X0025",		900,	200,	300,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SECOND					):SetAnim( "X0025",		900,	200,	300,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_THIRD						):SetAnim( "X0025",		900,	200,	300,	LOOP_FALSE,	1.0, RESET_TRUE		);
	
	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "G0018", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT			):SetAnim( "G0019", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "G0020", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT		):SetAnim( "G0021", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "G0022", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "G0023", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK			):SetAnim( "G0024", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK			):SetAnim( "G0025", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "X0015",  0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );	
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_ATTACK5,	WEAPONTYPE_KATANA_SWORD	
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash5State_KatanaSword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 0, 2500 );
	state:AddSequence( 0, "Resources/Effects/skill_swordman_battack.seq", "Resources/Sound/sword_stance.ogg", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_WAIT						):SetAnim( "X0026",		900,	200,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "",			0,	50,		0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	
end	