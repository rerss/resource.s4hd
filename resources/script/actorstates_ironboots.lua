require "Resources/Script/ActorStates_Constants.lua"

--//--
function ANI_IRONBOOTS_Dash_Kick_Attack( state )
-- �����̵� ���� �ִ�
    state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0 , 5000 );
	--state:AddGhostTrail( "GhostTrail_IronBoots_1", 50, 350 );
	state:AddSequence( 0, "Resources/Effects/ironboots_dashatk_01.seq", "", 0, 5000 );
	
	local index = 0;
	local ANIMPARAMLIST_NORMAL	= index; index = index + 1;
	local ANIMPARAMLIST_DELAY	= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL	):SetAnim( "IB005",	0,	50  ,	0   , LOOP_FALSE, 1.0, RESET_TRUE );
	state:GetAnimParam( ANIMPARAMLIST_DELAY		):SetAnim( "IB006",	0,	0   ,	100 , LOOP_FALSE, 1.0, RESET_TRUE );
end
--//--
--//--
function ANI_IRONBOOTS_First_Kick_Attack( state )
-- ù��° ���� �ִ�
    state:AddSoundBySex( "Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 0, 2500 );
	state:AddGhostTrail( "GhostTrail_IronBoots_Tachyon_1", 50, 900 );
	--state:AddGhostTrail( "GhostTrail_IronBoots_Tachyon_2", 600, 600 );
	state:AddSequence( 0, "Resources/Effects/ironboots_1atk_01.seq", "Resources/Sound/bsword_counter.ogg", 450, 600 );
	state:SetSpendSPValue_Guard( 80.0 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL  = index; index = index + 1;
	local ANIMPARAMLIST_DELAY	= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL    ):SetAnim( "IB001", 0,  200,	0,      LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY	    ):SetAnim( "IB021", 0,  1000,	1000,   LOOP_FALSE,	1.0, RESET_TRUE	);
end
--//--
--//--
function ANI_IRONBOOTS_Upper_Kick_Attack( state )
-- �÷����� ���� �ִ�
    state:AddSoundBySex( "Resources/Sound/voice_man_attack_4.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	--state:AddGhostTrail( "GhostTrail_IronBoots_Tachyon_1", 50, 600 );
	state:AddGhostTrail( "GhostTrail_IronBoots_Tachyon_2", 50, 600 );
	state:AddSequenceBySex( 0, "Resources/Effects/weapon_ironboots_strong_01.seq", "Resources/Effects/weapon_ironboots_strong_01.seq", "", 0, 5000 );
	state:AddSequence( 0, "", "Resources/Sound/deathside_jump.ogg",0, 1000 );
    state:SetSpendSPValue_Guard( 80.0 );
	
	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL	):SetAnim( "IB019",   0,	200,	0,      LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY		):SetAnim( "IB020",     0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);
end
--//--
--//--
function ANI_IRONBOOTS_Jump_Smash_Kick_Attack( state )
-- ���� ������� ���� �ִ�
    state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSequence( 0, "Resources/Effects/weapon_counter_upper01.seq", "Resources/Sound/bsword_counter.ogg", 500, 5000 );
    state:SetSpendSPValue_Guard( 80.0 );
	
	local index = 0;
	local ANIMPARAMLIST_BEGIN		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_BEGIN					):SetAnim( "IB017",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY					):SetAnim( "IB018",		0,	500,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
end
--//--
--//--
function ANI_IRONBOOTS_Second_Kick_Attack( state )
-- �ι�° ���� �ִ�
    state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 2500 );
	--state:AddGhostTrail( "GhostTrail_IronBoots_Tachyon_1", 50, 900 );
	--state:AddGhostTrail( "GhostTrail_IronBoots_Tachyon_2", 50, 900 );
	state:AddSequence( 0, "Resources/Effects/ironboots_2atk_01.seq", "Resources/Sound/bsword_counter.ogg", 500, 800 );
    state:SetSpendSPValue_Guard( 80.0 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL	= index; index = index + 1;
	local ANIMPARAMLIST_DELAY	= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL    ):SetAnim( "IB002",		0,	200,	0,	    LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY		):SetAnim( "IB022",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);
end
--//--
--//--
function ANI_IRONBOOTS_Third_Kick_Attack( state )
-- ����° ���� �ִ�
    state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );
	--state:AddGhostTrail( "GhostTrail_IronBoots_Tachyon_1", 200, 800 );
	--state:AddGhostTrail( "GhostTrail_IronBoots_Tachyon_2", 200, 800 );
	state:AddSequence( 0, "Resources/Effects/ironboots_3atk_01.seq", "Resources/Sound/bsword_counter.ogg", 120, 500 );
    state:SetSpendSPValue_Guard( 80.0 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL	= index; index = index + 1;
	local ANIMPARAMLIST_DELAY	= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL	):SetAnim( "IB003",		0,	200,	0,	    LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY		):SetAnim( "IB023",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);
end
--//--
--//--
--function ANI_IRONBOOTS_Fourth_Kick_Attack( state )
-- �׹�° ���� �ִ�
    --state:AddSoundBySex( "Resources/Sound/voice_man_attack_6.ogg", "Resources/Sound/voice_girl_attack_4.ogg", "Bip01", 0, 2500 );
	--state:AddGhostTrail( "GhostTrail_IronBoots_Tachyon_1", 150, 1100 );
	--state:AddGhostTrail( "GhostTrail_IronBoots_Tachyon_2", 150, 1100 );
	--state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
       --state:AddSequence( 2, "Resources/Effects/skill_swordman_battack.seq", "Resources/Sound/sword_stance.ogg", 500 ); 

	--local index = 0;
	--local ANIMPARAMLIST_NORMAL	= index; index = index + 1;
	--local ANIMPARAMLIST_DELAY	= index; index = index + 1;
				
	--state:GetAnimParam( ANIMPARAMLIST_NORMAL	):SetAnim( "IB004",		0,	200,	0,	    LOOP_FALSE,	1.0, RESET_TRUE	);
	--state:GetAnimParam( ANIMPARAMLIST_DELAY		):SetAnim( "IB024",		0,	500,	500,	LOOP_FALSE,	1.0, RESET_TRUE	);
--end
--//--
--//--
function ANI_IRONBOOTS_Boost_Dash_Attack( state )
-- �ν�Ʈ ���۽� ������ �ִ�
    state:AddSoundBySex( "Resources/Sound/voice_man_fastrun.ogg", "Resources/Sound/voice_girl_fastrun.ogg", "Bip01", 0, 2500 );
	state:AddSoundTransBySex( "Resources/Sound/voice_man_fastrun.ogg", "Resources/Sound/voice_girl_fastrun.ogg", "Bip01", 0, 2500 );

    -- ���̾� ���� �ӽ� ��� ����Ʈ �ϱ� ���� ��
	-- ���� : 1. ����Ʈ�� ���� SceneNodeName, 2. ����Ʈ ����, 3. ���� ����, 4. ����Ʈ ���۽ð�, 5. ����Ʈ ����ð�
	state:AddInstantEffect( "L_boo_Dummy01", "Resources/Effects/ironboots_booster_01.seq", "", 50, 2500 );
	state:AddInstantEffect( "L_boo_Dummy02", "Resources/Effects/ironboots_booster_00.seq", "", 50, 2500 );
	state:AddInstantEffect( "L_boo_Dummy03", "Resources/Effects/ironboots_booster_00.seq", "", 50, 2500 );
	
	state:AddInstantEffect( "R_boo_Dummy01", "Resources/Effects/ironboots_booster_01.seq", "", 50, 2500 );
	state:AddInstantEffect( "R_boo_Dummy02", "Resources/Effects/ironboots_booster_00.seq", "", 50, 2500 );
	state:AddInstantEffect( "R_boo_Dummy03", "Resources/Effects/ironboots_booster_00.seq", "", 50, 2500 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL  = index; index = index + 1;
	local ANIMPARAMLIST_DELAY   = index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL	):SetAnim( "IB016", 0, 200, 0, LOOP_TRUE, 1.0, RESET_TRUE );
	state:GetAnimParam( ANIMPARAMLIST_DELAY     ):SetAnim( "R0033", 0, 200, 0, LOOP_TRUE, 1.0, RESET_TRUE );
end
--//--

-------------------------------------------------------------------------------------
-- ��� ���� ����
-------------------------------------------------------------------------------------
function ANI_IRONBOOTS_First_Kick_Attack_Normal( state )
-- ù��° ���� �ִ�
    state:AddSoundBySex( "Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 0, 2500 );
	state:AddGhostTrail( "GhostTrail_IronBoots_1", 50, 900 );
	--state:AddGhostTrail( "GhostTrail_IronBoots_2", 600, 600 );
	state:AddSequence( 0, "Resources/Effects/ironboots_n_1atk_01.seq", "Resources/Sound/bsword_counter.ogg", 450, 600 );
	state:SetSpendSPValue_Guard( 30.0 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL  = index; index = index + 1;
	local ANIMPARAMLIST_DELAY	= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL    ):SetAnim( "IB001", 0,  200,	0,      LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY	    ):SetAnim( "IB021", 0,  1000,	1000,   LOOP_FALSE,	1.0, RESET_TRUE	);
end

function ANI_IRONBOOTS_Upper_Kick_Attack_Normal( state )
-- �÷����� ���� �ִ�
    state:AddSoundBySex( "Resources/Sound/voice_man_attack_4.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddGhostTrail( "GhostTrail_IronBoots_1", 50, 600 );
	--state:AddGhostTrail( "GhostTrail_IronBoots_2", 50, 600 );
	state:AddSequenceBySex( 0, "Resources/Effects/weapon_ironboots_n_strong_01.seq", "Resources/Effects/weapon_ironboots_strong_01.seq", "", 0, 5000 );
	state:AddSequence( 0, "", "Resources/Sound/deathside_jump.ogg",0, 1000 );
    state:SetSpendSPValue_Guard( 30.0 );
	
	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL	):SetAnim( "IB019",   0,	200,	0,      LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY		):SetAnim( "IB020",     0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);
end

function ANI_IRONBOOTS_Second_Kick_Attack_Normal( state )
-- �ι�° ���� �ִ�
    state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 2500 );
	--state:AddGhostTrail( "GhostTrail_IronBoots_1", 50, 900 );
	--state:AddGhostTrail( "GhostTrail_IronBoots_2", 50, 900 );
	state:AddSequence( 0, "Resources/Effects/ironboots_n_2atk_01.seq", "Resources/Sound/bsword_counter.ogg", 500, 800 );
    state:SetSpendSPValue_Guard( 10.0 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL	= index; index = index + 1;
	local ANIMPARAMLIST_DELAY	= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL    ):SetAnim( "IB002",		0,	200,	0,	    LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY		):SetAnim( "IB022",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);
end

function ANI_IRONBOOTS_Third_Kick_Attack_Normal( state )
-- ����° ���� �ִ�
    state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );
	--state:AddGhostTrail( "GhostTrail_IronBoots_1", 50, 600 );
	--state:AddGhostTrail( "GhostTrail_IronBoots_2", 50, 600 );
	state:AddSequence( 0, "Resources/Effects/ironboots_n_3atk_01.seq", "Resources/Sound/bsword_counter.ogg", 120, 500 );
    state:SetSpendSPValue_Guard( 10.0 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL	= index; index = index + 1;
	local ANIMPARAMLIST_DELAY	= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL	):SetAnim( "IB003",		0,	200,	0,	    LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_DELAY		):SetAnim( "IB023",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);
end

--function ANI_IRONBOOTS_Fourth_Kick_Attack_Normal( state )
-- �׹�° ���� �ִ�
    --state:AddSoundBySex( "Resources/Sound/voice_man_attack_6.ogg", "Resources/Sound/voice_girl_attack_4.ogg", "Bip01", 0, 2500 );
	--state:AddGhostTrail( "GhostTrail_IronBoots_1", 150, 1100 );
	--state:AddGhostTrail( "GhostTrail_IronBoots_2", 150, 1100 );
	--state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
       --state:AddSequence( 2, "Resources/Effects/skill_swordman_battack.seq", "Resources/Sound/sword_stance.ogg", 500 ); 

	--local index = 0;
	--local ANIMPARAMLIST_NORMAL	= index; index = index + 1;
	--local ANIMPARAMLIST_DELAY	= index; index = index + 1;
				
	--state:GetAnimParam( ANIMPARAMLIST_NORMAL	):SetAnim( "IB004",		0,	200,	0,	    LOOP_FALSE,	1.0, RESET_TRUE	);
	--state:GetAnimParam( ANIMPARAMLIST_DELAY		):SetAnim( "IB024",		0,	500,	500,	LOOP_FALSE,	1.0, RESET_TRUE	);
--end

function ANI_IRONBOOTS_Boost_Dash_Attack_Normal( state )
-- �ν�Ʈ ���۽� ������ �ִ�
    state:AddSoundBySex( "Resources/Sound/voice_man_fastrun.ogg", "Resources/Sound/voice_girl_fastrun.ogg", "Bip01", 0, 2500 );
	state:AddSoundTransBySex( "Resources/Sound/voice_man_fastrun.ogg", "Resources/Sound/voice_girl_fastrun.ogg", "Bip01", 0, 2500 );

    -- ���̾� ���� �ӽ� ��� ����Ʈ �ϱ� ���� ��
	-- ���� : 1. ����Ʈ�� ���� SceneNodeName, 2. ����Ʈ ����, 3. ���� ����, 4. ����Ʈ ���۽ð�, 5. ����Ʈ ����ð�
	state:AddInstantEffect( "L_boo_Dummy01", "Resources/Effects/ironboots_n_booster_01.seq", "", 50, 2500 );
	state:AddInstantEffect( "L_boo_Dummy02", "Resources/Effects/ironboots_n_booster_00.seq", "", 50, 2500 );
	
	state:AddInstantEffect( "R_boo_Dummy01", "Resources/Effects/ironboots_n_booster_01.seq", "", 50, 2500 );
	state:AddInstantEffect( "R_boo_Dummy02", "Resources/Effects/ironboots_n_booster_00.seq", "", 50, 2500 );


	local index = 0;
	local ANIMPARAMLIST_NORMAL  = index; index = index + 1;
	local ANIMPARAMLIST_DELAY   = index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL	):SetAnim( "IB016", 0, 200, 0, LOOP_TRUE, 1.0, RESET_TRUE );
	state:GetAnimParam( ANIMPARAMLIST_DELAY     ):SetAnim( "R0033", 0, 200, 0, LOOP_TRUE, 1.0, RESET_TRUE );
end
-------------------------------------------------------------------------------------