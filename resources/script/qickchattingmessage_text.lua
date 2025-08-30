
LoadStringTable( "Language/Script/quick_chatting_string_table.x7" );

AttacktMessageList			= GetString( "ATTACK_MESSAGE_LIST" )
DefenseMessageList			= GetString( "DEFENSE_MESSAGE_LIST" )
DefenseModeMessageList		= GetString( "DEFENSE_MODE_MESSAGE_LIST" )


AttackQickChat1				= GetString( "ATTACK_MESAGE1" )
AttackQickChat2				= GetString( "ATTACK_MESAGE2" )
AttackQickChat3				= GetString( "ATTACK_MESAGE3" )
AttackQickChat4				= GetString( "ATTACK_MESAGE4" )
AttackQickChat5				= GetString( "ATTACK_MESAGE5" )
AttackQickChat6				= GetString( "ATTACK_MESAGE6" )
AttackQickChat7				= GetString( "ATTACK_MESAGE7" )
AttackQickChat8				= GetString( "ATTACK_MESAGE8" )
AttackQickChat9				= GetString( "ATTACK_MESAGE9" )


DefenseQickChat1			= GetString( "DEFENSE_MESAGE1" )
DefenseQickChat2			= GetString( "DEFENSE_MESAGE2" )
DefenseQickChat3			= GetString( "DEFENSE_MESAGE3" )
DefenseQickChat4			= GetString( "DEFENSE_MESAGE4" )
DefenseQickChat5			= GetString( "DEFENSE_MESAGE5" )
DefenseQickChat6			= GetString( "DEFENSE_MESAGE6" )
DefenseQickChat7			= GetString( "DEFENSE_MESAGE7" )
DefenseQickChat8			= GetString( "DEFENSE_MESAGE8" )
DefenseQickChat9			= GetString( "DEFENSE_MESAGE9" )

DefenseModeQickChat1			= GetString( "DEFENSE_MODE_MESAGE1" )
DefenseModeQickChat2			= GetString( "DEFENSE_MODE_MESAGE2" )
DefenseModeQickChat3			= GetString( "DEFENSE_MODE_MESAGE3" )
DefenseModeQickChat4			= GetString( "DEFENSE_MODE_MESAGE4" )
DefenseModeQickChat5			= GetString( "DEFENSE_MODE_MESAGE5" )
DefenseModeQickChat6			= GetString( "DEFENSE_MODE_MESAGE6" )
DefenseModeQickChat7			= GetString( "DEFENSE_MODE_MESAGE7" )
DefenseModeQickChat8			= GetString( "DEFENSE_MODE_MESAGE8" )
DefenseModeQickChat9			= GetString( "DEFENSE_MODE_MESAGE9" )


AttackQickSound1_male		= "Resources\\Sound\\quickchat\\_rc_attack1_male_chance.ogg"
AttackQickSound2_male		= "Resources\\Sound\\quickchat\\_rc_attack2_male_rollback.ogg"
AttackQickSound3_male		= "Resources\\Sound\\quickchat\\_rc_attack9_male_nice.ogg"
AttackQickSound4_male		= "Resources\\Sound\\quickchat\\_rc_attack5_male_assist.ogg"
AttackQickSound5_male		= "Resources\\Sound\\quickchat\\_rc_attack6_male_sorry.ogg"
AttackQickSound6_male		= "Resources\\Sound\\quickchat\\_rc_attack3_male_reset.ogg"
AttackQickSound7_male		= "Resources\\Sound\\quickchat\\_rc_attack4_male_heal.ogg"
AttackQickSound8_male		= "Resources\\Sound\\quickchat\\_rc_attack7_male_snipe.ogg"
AttackQickSound9_male		= "Resources\\Sound\\quickchat\\_rc_attack8_male_go.ogg"


AttackQickSound1_female		= "Resources\\Sound\\quickchat\\_rc_attack1_female_chance.ogg"
AttackQickSound2_female		= "Resources\\Sound\\quickchat\\_rc_attack2_female_rollback.ogg"
AttackQickSound3_female		= "Resources\\Sound\\quickchat\\_rc_attack9_female_nice.ogg"
AttackQickSound4_female		= "Resources\\Sound\\quickchat\\_rc_attack5_female_assist.ogg"
AttackQickSound5_female		= "Resources\\Sound\\quickchat\\_rc_attack6_female_sorry.ogg"
AttackQickSound6_female		= "Resources\\Sound\\quickchat\\_rc_attack3_female_reset.ogg"
AttackQickSound7_female		= "Resources\\Sound\\quickchat\\_rc_attack4_female_heal.ogg"
AttackQickSound8_female		= "Resources\\Sound\\quickchat\\_rc_attack7_female_snipe.ogg"
AttackQickSound9_female		= "Resources\\Sound\\quickchat\\_rc_attack8_female_go.ogg"


DefenseQickSound1_male		= ""
DefenseQickSound2_male		= ""
DefenseQickSound3_male		= ""
DefenseQickSound4_male		= ""
DefenseQickSound5_male		= ""
DefenseQickSound6_male		= ""
DefenseQickSound7_male		= ""
DefenseQickSound8_male		= ""
DefenseQickSound9_male		= ""


DefenseQickSound1_female	= ""
DefenseQickSound2_female	= ""
DefenseQickSound3_female	= ""
DefenseQickSound4_female	= ""
DefenseQickSound5_female	= ""
DefenseQickSound6_female	= ""
DefenseQickSound7_female	= ""
DefenseQickSound8_female	= ""
DefenseQickSound9_female	= ""




index = 0;

MESSAGETYPE_NON				= index; index = index + 1;
MESSAGETYPE_ATTACK			= index; index = index + 1;
MESSAGETYPE_DEFENSE			= index; index = index + 1;

MESSAGETYPE_TEXT			= index; index = index + 1;
MESSAGETYPE_MALE_SOUND		= index; index = index + 1;
MESSAGETYPE_FEMALE_SOUND	= index; index = index + 1;

ClearStringTable();




function SetQickChattingMessage()
	
	QickChattingMessage:SetAttackMessageGUIText	( AttacktMessageList );
	QickChattingMessage:SetDefenseMessageGUIText( DefenseMessageList );
	
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_TEXT, 1, AttackQickChat1 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_TEXT, 2, AttackQickChat2 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_TEXT, 3, AttackQickChat3 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_TEXT, 4, AttackQickChat4 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_TEXT, 5, AttackQickChat5 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_TEXT, 6, AttackQickChat6 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_TEXT, 7, AttackQickChat7 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_TEXT, 8, AttackQickChat8 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_TEXT, 9, AttackQickChat9 );
	
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_TEXT, 1, DefenseQickChat1 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_TEXT, 2, DefenseQickChat2 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_TEXT, 3, DefenseQickChat3 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_TEXT, 4, DefenseQickChat4 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_TEXT, 5, DefenseQickChat5 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_TEXT, 6, DefenseQickChat6 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_TEXT, 7, DefenseQickChat7 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_TEXT, 8, DefenseQickChat8 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_TEXT, 9, DefenseQickChat9 );
	
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_MALE_SOUND, 1, AttackQickSound1_male );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_MALE_SOUND, 2, AttackQickSound2_male );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_MALE_SOUND, 3, AttackQickSound3_male );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_MALE_SOUND, 4, AttackQickSound4_male );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_MALE_SOUND, 5, AttackQickSound5_male );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_MALE_SOUND, 6, AttackQickSound6_male );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_MALE_SOUND, 7, AttackQickSound7_male );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_MALE_SOUND, 8, AttackQickSound8_male );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_MALE_SOUND, 9, AttackQickSound9_male );
	
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_FEMALE_SOUND, 1, AttackQickSound1_female );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_FEMALE_SOUND, 2, AttackQickSound2_female );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_FEMALE_SOUND, 3, AttackQickSound3_female );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_FEMALE_SOUND, 4, AttackQickSound4_female );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_FEMALE_SOUND, 5, AttackQickSound5_female );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_FEMALE_SOUND, 6, AttackQickSound6_female );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_FEMALE_SOUND, 7, AttackQickSound7_female );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_FEMALE_SOUND, 8, AttackQickSound8_female );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_FEMALE_SOUND, 9, AttackQickSound9_female );
	
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_MALE_SOUND, 1, DefenseQickSound1_male );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_MALE_SOUND, 2, DefenseQickSound2_male );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_MALE_SOUND, 3, DefenseQickSound3_male );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_MALE_SOUND, 4, DefenseQickSound4_male );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_MALE_SOUND, 5, DefenseQickSound5_male );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_MALE_SOUND, 6, DefenseQickSound6_male );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_MALE_SOUND, 7, DefenseQickSound7_male );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_MALE_SOUND, 8, DefenseQickSound8_male );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_MALE_SOUND, 9, DefenseQickSound9_male );
	
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_FEMALE_SOUND, 1, DefenseQickSound1_female );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_FEMALE_SOUND, 2, DefenseQickSound2_female );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_FEMALE_SOUND, 3, DefenseQickSound3_female );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_FEMALE_SOUND, 4, DefenseQickSound4_female );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_FEMALE_SOUND, 5, DefenseQickSound5_female );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_FEMALE_SOUND, 6, DefenseQickSound6_female );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_FEMALE_SOUND, 7, DefenseQickSound7_female );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_FEMALE_SOUND, 8, DefenseQickSound8_female );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_FEMALE_SOUND, 9, DefenseQickSound9_female );

end



function SetHordeQickChattingMessage()
	
	QickChattingMessage:SetAttackMessageGUIText	( DefenseModeMessageList );
	QickChattingMessage:SetDefenseMessageGUIText( DefenseMessageList );
	
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_TEXT, 1, DefenseModeQickChat1 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_TEXT, 2, DefenseModeQickChat2 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_TEXT, 3, DefenseModeQickChat3 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_TEXT, 4, DefenseModeQickChat4 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_TEXT, 5, DefenseModeQickChat5 );
--	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_TEXT, 6, DefenseModeQickChat6 );
--	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_TEXT, 7, DefenseModeQickChat7 );
--	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_TEXT, 8, DefenseModeQickChat8 );
--	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_TEXT, 9, DefenseModeQickChat9 );
	
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_TEXT, 1, DefenseQickChat1 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_TEXT, 2, DefenseQickChat2 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_TEXT, 3, DefenseQickChat3 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_TEXT, 4, DefenseQickChat4 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_TEXT, 5, DefenseQickChat5 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_TEXT, 6, DefenseQickChat6 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_TEXT, 7, DefenseQickChat7 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_TEXT, 8, DefenseQickChat8 );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_TEXT, 9, DefenseQickChat9 );
	
--	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_MALE_SOUND, 1, AttackQickSound1_male );
--	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_MALE_SOUND, 2, AttackQickSound2_male );
--	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_MALE_SOUND, 3, AttackQickSound3_male );
--	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_MALE_SOUND, 4, AttackQickSound4_male );
--	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_MALE_SOUND, 5, AttackQickSound5_male );
--	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_MALE_SOUND, 6, AttackQickSound6_male );
--	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_MALE_SOUND, 7, AttackQickSound7_male );
--	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_MALE_SOUND, 8, AttackQickSound8_male );
--	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_MALE_SOUND, 9, AttackQickSound9_male );
	
--	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_FEMALE_SOUND, 1, AttackQickSound1_female );
--	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_FEMALE_SOUND, 2, AttackQickSound2_female );
--	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_FEMALE_SOUND, 3, AttackQickSound3_female );
--	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_FEMALE_SOUND, 4, AttackQickSound4_female );
--	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_FEMALE_SOUND, 5, AttackQickSound5_female );
--	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_FEMALE_SOUND, 6, AttackQickSound6_female );
--	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_FEMALE_SOUND, 7, AttackQickSound7_female );
--	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_FEMALE_SOUND, 8, AttackQickSound8_female );
--	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_ATTACK, MESSAGETYPE_FEMALE_SOUND, 9, AttackQickSound9_female );
	
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_MALE_SOUND, 1, DefenseQickSound1_male );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_MALE_SOUND, 2, DefenseQickSound2_male );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_MALE_SOUND, 3, DefenseQickSound3_male );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_MALE_SOUND, 4, DefenseQickSound4_male );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_MALE_SOUND, 5, DefenseQickSound5_male );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_MALE_SOUND, 6, DefenseQickSound6_male );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_MALE_SOUND, 7, DefenseQickSound7_male );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_MALE_SOUND, 8, DefenseQickSound8_male );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_MALE_SOUND, 9, DefenseQickSound9_male );
	
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_FEMALE_SOUND, 1, DefenseQickSound1_female );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_FEMALE_SOUND, 2, DefenseQickSound2_female );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_FEMALE_SOUND, 3, DefenseQickSound3_female );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_FEMALE_SOUND, 4, DefenseQickSound4_female );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_FEMALE_SOUND, 5, DefenseQickSound5_female );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_FEMALE_SOUND, 6, DefenseQickSound6_female );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_FEMALE_SOUND, 7, DefenseQickSound7_female );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_FEMALE_SOUND, 8, DefenseQickSound8_female );
	QickChattingMessage:RegistQickMessage		( MESSAGETYPE_DEFENSE, MESSAGETYPE_FEMALE_SOUND, 9, DefenseQickSound9_female );

end