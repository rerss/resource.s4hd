require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------------------------
-- STATE_FIRST_BASIC_ATTACK_DEATH_SCYTHE, WEAPONTYPE_DEATH_SCYTHE (��ų� - ù��° ����)       --
-------------------------------------------------------------------------------------------------
function FirstBasicAttack_DEATHSCYTHE( state )

    state:AddSoundBySex( "Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 0, 2500 );

	state:AddGhostTrail( "", 50, 600 );
	state:AddSequenceBySex( 0, "Resources/Effects/deathscythe_1_att.seq", "Resources/Effects/deathscythe_1_att.seq", "", 0, 5000 );
	state:AddSequence( 0, "", "Resources/Sound/deathside_cut01.ogg",200, 700 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "GR001",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "GR003",		0,	800,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end

-------------------------------------------------------------------------------------------------
-- STATE_SECOND_BASIC_ATTACK_DEATH_SCYTHE, WEAPONTYPE_DEATH_SCYTHE (��ų� - �̾� �ι�° ����) --
-------------------------------------------------------------------------------------------------
function SecondBasicAttack_DEATHSCYTHE( state )

    state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 2500 );

	state:AddGhostTrail( "", 50, 600 );
	state:AddSequenceBySex( 0, "Resources/Effects/deathscythe_2_att.seq", "Resources/Effects/deathscythe_2_att.seq", "", 0, 5000 );
	state:AddSequence( 0, "", "Resources/Sound/deathside_cut02.ogg",0, 1000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "GR002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "GR004",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);
	
end

-------------------------------------------------------------------------------------------------
-- STATE_UPPER_CUT_DEATH_SCYTHE, WEAPONTYPE_DEATH_SCYTHE (��ų� - �̾� ����° ���� )          --
-------------------------------------------------------------------------------------------------
function ThirdBasicAttack_DEATHSCYTHE( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_4.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	
	state:AddGhostTrail( "GhostTrail_Death_Scythe_01", 50, 600 );
	state:AddSequenceBySex( 0, "Resources/Effects/deathscythe_3_att.seq", "Resources/Effects/deathscythe_3_att.seq", "", 0, 5000 );
	state:AddSequence( 0, "", "Resources/Sound/deathside_smash.ogg",0, 1000 );
 
	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "GR021",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "GR022",		0,	700,	300,	LOOP_FALSE,	1.0, RESET_TRUE	);

end

-------------------------------------------------------------------------------------------------
-- STATE_UPPER_CUT_DEATH_SCYTHE, WEAPONTYPE_DEATH_SCYTHE (��ų� �÷�ġ��)                     --
-------------------------------------------------------------------------------------------------
function StrongUpperCutAttack_DEATHSCYTHE( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_4.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	
	state:AddGhostTrail( "GhostTrail_Death_Scythe_01", 50, 600 );
	state:AddSequenceBySex( 0, "Resources/Effects/weapon_deathscythe_strong_att.seq", "Resources/Effects/weapon_deathscythe_strong_att.seq", "", 0, 5000 );
	state:AddSequence( 0, "", "Resources/Sound/deathside_jump.ogg",0, 1000 );
 
	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "GR004_1",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "GR006",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end

-------------------------------------------------------------------------------------------------
-- STATE_JUMP_ATTACK_DEATH_SCYTHE, WEAPONTYPE_DEATH_SCYTHE (��ų� ���� ���¿��� ����)         --
-------------------------------------------------------------------------------------------------
function JumpAttack_DEATHSCYTHE( state )

    state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0 , 5000 );

	state:AddGhostTrail( "", 50, 300 );
	state:AddSequence( 0, "", "Resources/Sound/deathside_smash.ogg", 300, 1000 );
	state:AddSequenceBySex( 0, "Resources/Effects/deathscythe_4_att.seq", "Resources/Effects/deathscythe_4_att.seq", "", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL	= index; index = index + 1;
	local ANIMPARAMLIST_DELAY	= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL	):SetAnim( "GR011", 0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );
	state:GetAnimParam( ANIMPARAMLIST_DELAY	    ):SetAnim( "GR012",	0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );

end

-------------------------------------------------------------------------------------------------
-- STATE_SPECIAL_ATTACK_DEATH_SCYTHE, WEAPONTYPE_DEATH_SCYTHE (��ų� ��Ŭ���� Ư�� ����)      --
-------------------------------------------------------------------------------------------------
function SpecialAttack_DEATHSCYTHE( state )

    state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0 , 5000 );

	state:AddGhostTrail( "", 50, 300 );
	state:AddSequence( 0, "", "Resources/Sound/deathside_jump.ogg", 0, 5000 );
	
	-- ��ų����� �ִ� Ư���� ��Ȳ...
	-- ù��° ������ ������ ��... ���� ����Ʈ...
	state:AddSequenceBySex( 0, "Resources/Effects/deathscythe_ex_att_eff.seq", "Resources/Effects/deathscythe_ex_att_eff.seq", "", 0, 5000 );
	
	-- �Ʒ��� ����� AddSequence, AddSequenceBySex�� �ݵ�� ��� AddSequence, AddSequenceBySex ���� �Ʒ��� �־�� �մϴ�.
	-- ù��° ������ �����ϰ� �ι�° ���ݿ��� ���� ����Ʈ�� ����
	state:AddSequence( 0, "", "Resources/Sound/deathside_Special_laughing.ogg", 1000, 2000 ); -- �� ����� �� ����� �߰��ϼ���.
	                                                                    -- ���� 1000 �̶�� �Ǿ� �ִ� ������ �ݵ�� 0���� ū ���� ���� �մϴ�. ��� 100 �̻� (��ų����� �ִ� Ư���� ���)
	state:AddSequenceBySex( 0, "Resources/Effects/deathscythe_ex2_att_eff.seq", "Resources/Effects/deathscythe_ex2_att_eff.seq", "", 500, 5000 );
	-- ���� �ڷ�... AddSequence �� AddSequenceBySex ���� ������.

	local index = 0;
	local ANIMPARAMLIST_FIRST_ATTACK	    = index; index = index + 1;
	local ANIMPARAMLIST_FINISH_ATTACK	    = index; index = index + 1;
	local ANIMPARAMLIST_FIRST_ATTACK_DELAY  = index; index = index + 1;
	local ANIMPARAMLIST_FINISH_ATTACK_DELAY = index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_FIRST_ATTACK	        ):SetAnim( "GR007", 0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );    -- ù��° ����
	state:GetAnimParam( ANIMPARAMLIST_FINISH_ATTACK	        ):SetAnim( "GR009",	0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );    -- �ι�° Ư�� �ڵ� ����
    state:GetAnimParam( ANIMPARAMLIST_FIRST_ATTACK_DELAY	):SetAnim( "GR008",	0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );	-- ù��° ���� ��, Delay
    state:GetAnimParam( ANIMPARAMLIST_FINISH_ATTACK_DELAY	):SetAnim( "GR010",	0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );    -- �ι�° ���� ��, Delay

end

----------------------------------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------
-- STATE_FIRST_BASIC_ATTACK_DEATH_SCYTHE, WEAPONTYPE_DEATH_SCYTHE ( ��ų� ����ũ - ù��° ���� )       --
-------------------------------------------------------------------------------------------------
function FirstBasicAttack_DEATHSCYTHE_Unique( state )

    state:AddSoundBySex( "Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 0, 2500 );

	state:AddGhostTrail( "", 50, 600 );
	state:AddSequenceBySex( 0, "Resources/Effects/deathscythe_1_att.seq", "Resources/Effects/deathscythe_1_att.seq", "", 0, 5000 );
	state:AddSequence( 0, "", "Resources/Sound/deathside_cut01.ogg",200, 700 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "GR001",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "GR003",		0,	800,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end

-------------------------------------------------------------------------------------------------
-- STATE_SECOND_BASIC_ATTACK_DEATH_SCYTHE, WEAPONTYPE_DEATH_SCYTHE ( ��ų� ����ũ - �̾� �ι�° ����) --
-------------------------------------------------------------------------------------------------
function SecondBasicAttack_DEATHSCYTHE_Unique( state )

    state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 2500 );

	state:AddGhostTrail( "", 50, 600 );
	state:AddSequenceBySex( 0, "Resources/Effects/deathscythe_2_att.seq", "Resources/Effects/deathscythe_2_att.seq", "", 0, 5000 );
	state:AddSequence( 0, "", "Resources/Sound/deathside_cut02.ogg",0, 1000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "GR002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "GR004",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);
	
end

-------------------------------------------------------------------------------------------------
-- STATE_UPPER_CUT_DEATH_SCYTHE, WEAPONTYPE_DEATH_SCYTHE ( ��ų� ����ũ - �̾� ����° ���� )          --
-------------------------------------------------------------------------------------------------
function ThirdBasicAttack_DEATHSCYTHE_Unique( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_4.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	
	state:AddGhostTrail( "GhostTrail_Death_Scythe_01", 50, 600 );
	state:AddSequenceBySex( 0, "Resources/Effects/deathscythe_3_att.seq", "Resources/Effects/deathscythe_3_att.seq", "", 0, 5000 );
	state:AddSequence( 0, "", "Resources/Sound/deathside_smash.ogg",0, 1000 );
 
	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "GR021",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "GR022",		0,	700,	300,	LOOP_FALSE,	1.0, RESET_TRUE	);

end

-------------------------------------------------------------------------------------------------
-- STATE_UPPER_CUT_DEATH_SCYTHE, WEAPONTYPE_DEATH_SCYTHE ( ��ų� ����ũ �÷�ġ�� )                     --
-------------------------------------------------------------------------------------------------
function StrongUpperCutAttack_DEATHSCYTHE_Unique( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_4.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	
	state:AddGhostTrail( "GhostTrail_Death_Scythe_01", 50, 600 );
	state:AddSequenceBySex( 0, "Resources/Effects/weapon_deathscythe_tod_strong_att.seq", "Resources/Effects/weapon_deathscythe_tod_strong_att.seq", "", 0, 5000 );
	state:AddSequence( 0, "", "Resources/Sound/deathside_jump.ogg",0, 1000 );
 
	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "GR004_1",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "GR006",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end

-------------------------------------------------------------------------------------------------
-- STATE_JUMP_ATTACK_DEATH_SCYTHE, WEAPONTYPE_DEATH_SCYTHE ( ��ų� ����ũ ���� ���¿��� ����)         --
-------------------------------------------------------------------------------------------------
function JumpAttack_DEATHSCYTHE_Unique( state )

    state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0 , 5000 );

	state:AddGhostTrail( "", 50, 300 );
	state:AddSequence( 0, "", "Resources/Sound/deathside_smash.ogg", 300, 1000 );
	state:AddSequenceBySex( 0, "Resources/Effects/deathscythe_4_att.seq", "Resources/Effects/deathscythe_4_att.seq", "", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL	= index; index = index + 1;
	local ANIMPARAMLIST_DELAY	= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL	):SetAnim( "GR011", 0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );
	state:GetAnimParam( ANIMPARAMLIST_DELAY	    ):SetAnim( "GR012",	0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );

end

-------------------------------------------------------------------------------------------------
-- STATE_SPECIAL_ATTACK_DEATH_SCYTHE, WEAPONTYPE_DEATH_SCYTHE ( ��ų� ����ũ ��Ŭ���� Ư�� ���� )      --
-------------------------------------------------------------------------------------------------
function SpecialAttack_DEATHSCYTHE_Unique( state )

    state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0 , 5000 );

	state:AddGhostTrail( "", 50, 300 );
	state:AddSequence( 0, "", "Resources/Sound/deathside_jump.ogg", 0, 5000 );
	
	-- ��ų����� �ִ� Ư���� ��Ȳ...
	-- ù��° ������ ������ ��... ���� ����Ʈ...
	state:AddSequenceBySex( 0, "Resources/Effects/deathscythe_ex_att_eff.seq", "Resources/Effects/deathscythe_ex_att_eff.seq", "", 0, 5000 );
	
	-- �Ʒ��� ����� AddSequence, AddSequenceBySex�� �ݵ�� ��� AddSequence, AddSequenceBySex ���� �Ʒ��� �־�� �մϴ�.
	-- ù��° ������ �����ϰ� �ι�° ���ݿ��� ���� ����Ʈ�� ����
	state:AddSequence( 0, "", "Resources/Sound/deathside_Special_laughing.ogg", 1000, 2000 ); -- �� ����� �� ����� �߰��ϼ���.
	                                                                    -- ���� 1000 �̶�� �Ǿ� �ִ� ������ �ݵ�� 0���� ū ���� ���� �մϴ�. ��� 100 �̻� (��ų����� �ִ� Ư���� ���)
	state:AddSequenceBySex( 0, "Resources/Effects/deathscythe_ex2_att_eff.seq", "Resources/Effects/deathscythe_ex2_att_eff.seq", "", 500, 5000 );
	-- ���� �ڷ�... AddSequence �� AddSequenceBySex ���� ������.

	local index = 0;
	local ANIMPARAMLIST_FIRST_ATTACK	    = index; index = index + 1;
	local ANIMPARAMLIST_FINISH_ATTACK	    = index; index = index + 1;
	local ANIMPARAMLIST_FIRST_ATTACK_DELAY  = index; index = index + 1;
	local ANIMPARAMLIST_FINISH_ATTACK_DELAY = index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_FIRST_ATTACK	        ):SetAnim( "GR007", 0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );    -- ù��° ����
	state:GetAnimParam( ANIMPARAMLIST_FINISH_ATTACK	        ):SetAnim( "GR009",	0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );    -- �ι�° Ư�� �ڵ� ����
    state:GetAnimParam( ANIMPARAMLIST_FIRST_ATTACK_DELAY	):SetAnim( "GR008",	0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );	-- ù��° ���� ��, Delay
    state:GetAnimParam( ANIMPARAMLIST_FINISH_ATTACK_DELAY	):SetAnim( "GR010",	0, 50, 0, LOOP_FALSE, 1.0, RESET_TRUE );    -- �ι�° ���� ��, Delay

end