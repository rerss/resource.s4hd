require "Resources/Script/ActorStates_Constants.lua"


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH1,	WEAPONTYPE_DOUBLE_SWORD	
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash1State_DoubleSword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 0, 2500 );
	
	state:AddGhostTrail( "GhostTrail_Double_sword_01", 50, 600 );
	state:AddGhostTrail( "GhostTrail_Double_sword_02", 50, 600 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "SG000",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "SG026",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end	


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH3,	WEAPONTYPE_DOUBLE_SWORD	
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash3State_DoubleSword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );

	state:AddGhostTrail( "GhostTrail_Double_sword_01", 50, 600 );
	state:AddGhostTrail( "GhostTrail_Double_sword_02", 50, 600 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "SG002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "SG028",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end	

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH4,	WEAPONTYPE_DOUBLE_SWORD	
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash4State_DoubleSword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );
	state:AddSequence( 0, "Resources/Effects/skill_doublesword_strike.seq", "", 500, 5000 );
	state:AddSequence( 0, "Resources/Effects/chain.seq", "", 0, 800 );
	state:AddSequence( 0, "", "Resources/Sound/twinsword_wide.ogg", 0, 0 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "SG014",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "SG015",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end	

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH4,	WEAPONTYPE_DOUBLE_SWORD	
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash4State_DoubleSword_Unique( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );
	state:AddSequence( 0, "Resources/Effects/skill_doublesword_strike.seq", "", 500, 5000 );
	state:AddSequence( 0, "Resources/Effects/weapon_twin_sp_atk01.seq", "", 0, 800 );
	state:AddSequence( 0, "", "Resources/Sound/twinsword_wide.ogg", 0, 0 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "SG014",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "SG015",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end	

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH5,	WEAPONTYPE_DOUBLE_SWORD	
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash5State_DoubleSword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );
--	state:AddSequence( 0, "Resources/Effects/skill_doublesword_strike.seq", "Resources/Sound/sword_power.ogg", 500, 5000 );


	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "SG017",		0,	200,	0,	LOOP_TRUE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "SG017",		0,	1000,	1000,	LOOP_TRUE,	1.0, RESET_TRUE	);

	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "SG018", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT			):SetAnim( "SG019", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "SG020", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT		):SetAnim( "SG021", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "SG022", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "SG023", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK			):SetAnim( "SG024", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK			):SetAnim( "SG025", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "SG017", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );	

end	

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_JUMPATK,	WEAPONTYPE_DOUBLE_SWORD	
-------------------------------------------------------------------------------------------------------------
function SwordJumpAtkState_DoubleSword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSequence( 0, "Resources/Effects/chain_12.seq", "", 0, 800 );
	state:AddSequence( 0, "", "Resources/Sound/twinsword_jump.ogg", 0, 0 );

	local index = 0;
	local ANIMPARAMLIST_BEGIN		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_BEGIN					):SetAnim( "SG012",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY					):SetAnim( "SG013",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);

end	

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_JUMPATK,	WEAPONTYPE_DOUBLE_SWORD	
-------------------------------------------------------------------------------------------------------------
function SwordJumpAtkState_DoubleSword_Unique( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSequence( 0, "Resources/Effects/weapon_twin_jump_atk01.seq", "", 0, 800 );
	state:AddSequence( 0, "", "Resources/Sound/twinsword_jump.ogg", 0, 0 );

	local index = 0;
	local ANIMPARAMLIST_BEGIN		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_BEGIN					):SetAnim( "SG012",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY					):SetAnim( "SG013",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);

end	

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON2,	WEAPONTYPE_DOUBLE_SWORD	
-------------------------------------------------------------------------------------------------------------
function UseWeapon2State_Double( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );
--	state:AddSequence( 0, "Resources/Effects/skill_doublesword_strike.seq", "Resources/Sound/sword_power.ogg", 500, 5000 );


	local index = 0;

	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "SG016",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
--	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "SG016",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "SG018", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT			):SetAnim( "SG019", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "SG020", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT		):SetAnim( "SG021", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "SG022", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "SG023", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK			):SetAnim( "SG024", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK			):SetAnim( "SG025", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "SG016", 0,	500, 0,	LOOP_FALSE, 1.0, RESET_TRUE );
end

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH4,	WEAPONTYPE_DOUBLE_SWORD
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash4State_DoubleSword_Glitch( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );
	state:AddSequence( 0, "Resources/Effects/skill_twin_glitch_strike.seq", "", 500, 5000 );
	state:AddSequence( 0, "Resources/Effects/weapon_twin_glitch_sp_atk01.seq", "", 0, 800 );
	state:AddSequence( 0, "Resources/Effects/skill_twin_glitch_strike_02.seq", "", 0, 800 );
	state:AddSequence( 0, "Resources/Effects/skill_twin_glitch_strike_03.seq", "", 0, 800 );
	state:AddSequence( 0, "", "Resources/Sound/twinsword_wide.ogg", 0, 0 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "SG014",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "SG015",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end	

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_JUMPATK,	WEAPONTYPE_DOUBLE_SWORD
-------------------------------------------------------------------------------------------------------------
function SwordJumpAtkState_DoubleSword_Glitch( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSequence( 0, "Resources/Effects/weapon_twin_glitch_jump_atk01.seq", "", 0, 800 );
	state:AddSequence( 0, "", "Resources/Sound/twinsword_jump.ogg", 0, 0 );

	local index = 0;
	local ANIMPARAMLIST_BEGIN		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_BEGIN					):SetAnim( "SG012",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY					):SetAnim( "SG013",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);

end	


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH4,	부채 트윈 블레이드
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash4State_DoubleSword_fan( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );
	state:AddSequence( 0, "Resources/Effects/skill_doublesword_strike.seq", "", 500, 5000 );
	state:AddSequence( 0, "Resources/Effects/116_weapon_SP_effect.seq", "", 0, 800 );
	state:AddSequence( 0, "", "Resources/Sound/twinsword_wide.ogg", 0, 0 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "SG014",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "SG015",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end	

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_JUMPATK,	WEAPONTYPE_DOUBLE_SWORD
-------------------------------------------------------------------------------------------------------------
function SwordJumpAtkState_DoubleSword_fan( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSequence( 0, "Resources/Effects/116_weapon_jump_effect.seq", "", 0, 800 );
	state:AddSequence( 0, "", "Resources/Sound/twinsword_jump.ogg", 0, 0 );

	local index = 0;
	local ANIMPARAMLIST_BEGIN		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_BEGIN					):SetAnim( "SG012",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY					):SetAnim( "SG013",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);

end	