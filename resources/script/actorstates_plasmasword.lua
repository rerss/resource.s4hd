require "Resources/Script/ActorStates_Constants.lua"


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_WEAK,	WEAPONTYPE_PLASMA_SWORD	
-------------------------------------------------------------------------------------------------------------
function SwordAtkWeakState_PlasmaSword( state )

	state:AddGhostTrail( "GhostTrail_two_hand_sword_01", 50, 350 );

	local index = 0;
	local ANIMPARAMLIST_FIRST		= index; index = index + 1;
	local ANIMPARAMLIST_SECOND		= index; index = index + 1;
	local ANIMPARAMLIST_THIRD		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FIRST						):SetAnim( "A0002",		600,	200,	300,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SECOND					):SetAnim( "A0003",		600,	200,	300,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_THIRD						):SetAnim( "A0004",		600,	200,	300,	LOOP_FALSE,	1.0, RESET_TRUE		);

	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "A0024", 0,	500, 300,	LOOP_TRUE, 1.0, RESET_TRUE );

end


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_STRONG,	WEAPONTYPE_PLASMA_SWORD	
-------------------------------------------------------------------------------------------------------------
function SwordAtkStrongState_PlasmaSword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 2500 );
	
	state:AddGhostTrail( "GhostTrail_two_hand_sword_01", 50, 350 );

	local index = 0;
	local ANIMPARAMLIST_FIRST		= index; index = index + 1;
	local ANIMPARAMLIST_SECOND		= index; index = index + 1;
	local ANIMPARAMLIST_THIRD		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FIRST						):SetAnim( "A0000",		900,	200,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SECOND					):SetAnim( "A0000",		900,	200,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_THIRD						):SetAnim( "A0000",		900,	200,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);

	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "A0024",  0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

end


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_JUMPATK_WEAK,	WEAPONTYPE_PLASMA_SWORD	
-------------------------------------------------------------------------------------------------------------
function SwordJumpAtkWeakState_PlasmaSword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 2500 );
	state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 2500 );

	state:AddGhostTrail( "GhostTrail_two_hand_sword_01", 300, 500 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "A0015",		0,	200,	0,	LOOP_FALSE,	0.85, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "A0016",		0,	50,		0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	
end


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_JUMPATK,	WEAPONTYPE_PLASMA_SWORD	
-------------------------------------------------------------------------------------------------------------
function SwordJumpAtkState_PlasmaSword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );

	state:AddGhostTrail( "GhostTrail_two_hand_sword_01", 50, 350 );
       --state:AddSequence( 0, "Resources/Effects/skill_swordman_strike.seq", "Resources/Sound/sword_power.ogg", 500 ); 

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "A0018",		300,	200,	1000,	LOOP_FALSE,	0.85, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "A0019",		1000,	50,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);

end


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_STRONG1,	WEAPONTYPE_PLASMA_SWORD	
-------------------------------------------------------------------------------------------------------------
function SwordAtkStrong1State_PlasmaSword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 2500 );

	state:AddGhostTrail( "GhostTrail_two_hand_sword_01", 50, 350 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "A0000",		900,	200,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "",			0,	50,		0,	LOOP_FALSE,	1.0, RESET_TRUE		);

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON2,	WEAPONTYPE_PLASMA_SWORD	
-------------------------------------------------------------------------------------------------------------
function UseWeapon2State_PlasmaSword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
       state:AddSequence( 2, "Resources/Effects/skill_swordman_battack.seq", "Resources/Sound/sword_stance.ogg", 500 ); 

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "B0000",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "B0001",		800,	0,		1000,	LOOP_FALSE,	1.0, RESET_TRUE		);
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_JUMPATK,	WEAPONTYPE_PLASMA_SWORD	
-------------------------------------------------------------------------------------------------------------
function SwordJumpAtkState_PlasmaSword_fish( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );

	state:AddGhostTrail( "GhostTrail_two_hand_sword_01", 50, 350 );
    state:AddSequence( 0, "Resources/Effects/122_weapon.seq", "Resources/Sound/sword_power.ogg", 500 ); 

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "A0018",		300,	200,	1000,	LOOP_FALSE,	0.85, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "A0019",		1000,	50,	500,	LOOP_FALSE,	1.0, RESET_TRUE		);

end