LoadStringTable( "Language/Script/Arcade_movie_string_table.x7" );

MOVIE_STAGE_00		= GetString( "MOVIE_STAGE_00" );
MOVIE_STAGE8_01		= GetString( "MOVIE_STAGE8_01" );
MOVIE_STAGE8_02		= GetString( "MOVIE_STAGE8_02" );
MOVIE_STAGE8_03		= GetString( "MOVIE_STAGE8_03" );
MOVIE_STAGE8_04		= GetString( "MOVIE_STAGE8_04" );
MOVIE_STAGE8_05		= GetString( "MOVIE_STAGE8_05" );
MOVIE_STAGE8_06		= GetString( "MOVIE_STAGE8_06" );
MOVIE_STAGE8_07		= GetString( "MOVIE_STAGE8_07" );
MOVIE_STAGE8_08		= GetString( "MOVIE_STAGE8_08" );
MOVIE_STAGE8_09		= GetString( "MOVIE_STAGE8_09" );
MOVIE_STAGE8_10		= GetString( "MOVIE_STAGE8_10" );
MOVIE_STAGE8_11		= GetString( "MOVIE_STAGE8_11" );
MOVIE_STAGE8_12		= GetString( "MOVIE_STAGE8_12" );
MOVIE_STAGE8_13		= GetString( "MOVIE_STAGE8_13" );
MOVIE_STAGE8_14		= GetString( "MOVIE_STAGE8_14" );
MOVIE_STAGE8_15		= GetString( "MOVIE_STAGE8_15" );
MOVIE_STAGE8_16		= GetString( "MOVIE_STAGE8_16" );

ClearStringTable();


TEAM_ALPHA			= 1;
TEAM_BETA			= 2;
SEX_MALE			= 0;
SEX_FEMALE			= 1;


function initialize()

	Movie:Init( 63400 );
	Movie:AddMovieScene( "Resources/Model/Movie/camera_stage8.scn", false);
	Movie:AddMovieScene( "Resources/Model/Movie/pam_stage8.scn", true );
 
	Movie:AddSequence( 500, 62900, "Resources/Effects/cinemaline.seq" );        
	--카메라 파일 불러오기
	Movie:AddTMController_Camera( 0, 6666, 60, "N001" );
   Movie:AddTMController_Camera( 6667, 8266, 60, "N003" );
   Movie:AddTMController_Camera( 8267, 13333, 60, "N002" );
   Movie:AddTMController_Camera(13334, 16316, 60, "N001" );
	Movie:AddTMController_Camera(16317, 21616, 60, "N002" );
   Movie:AddTMController_Camera(21617, 25750, 60, "N001" );
   Movie:AddTMController_Camera(25751, 30600, 60, "N002" );
   Movie:AddTMController_Camera(30601, 39033, 60, "N001" );
	Movie:AddTMController_Camera(39034, 48600-1200, 60, "N002" );
	Movie:AddTMController_Camera(48601-1200, 51800, 60, "N001" );
	Movie:AddTMController_Camera(51801, 57033-300, 60, "N003" );
	Movie:AddTMController_Camera(57034-300-400, 58999, 60, "N002" );
	Movie:AddTMController_Camera(59000, 63400, 60, "N003" );

	pam = Movie:AddSceneLoader( 0, 63400, "resources/model/monster/pam_bip.scn", true, "pam" );
	 Movie:AddAnimController_Scene( 0, pam, "MB008", 0, true, true, 1.0 );
	 Movie:AddAnimController_Scene( 18290, pam, "MB005", 500, true, true, 1.0 );
	 Movie:AddAnimController_Scene( 20751, pam, "MB008", 0, true, true, 1.0 );
	 Movie:AddAnimController_Scene( 22000, pam, "MB005", 500, true, true, 1.0 );
	 Movie:AddAnimController_Scene( 37000, pam, "MB008", 0, true, true, 1.0 );
	 Movie:AddAnimController_Scene( 42000, pam, "MB005", 500, true, true, 1.0 );
	 Movie:AddSequence3D_Scene( 0, 63400, "Resources/Effects/pve_shota_01.seq", true, pam, "" );
	 Movie:AddSequence3D( 6667, 13333, "Resources/Effects/skill_hacker_mindenergy_enemy.seq", true, "pam01" );
	 Movie:AddSequence3D( 16290, 21616, "Resources/Effects/skill_hacker_mindenergy_enemy.seq", true, "pam01" );
	 Movie:AddSequence3D( 25751, 30600, "Resources/Effects/skill_hacker_mindenergy_enemy.seq", true, "pam01" );
	 Movie:AddSequence3D( 39034, 48600-1200, "Resources/Effects/skill_hacker_mindenergy_enemy.seq", true, "pam01" );
	 Movie:AddSequence3D( 57034-400-400, 63400, "Resources/Effects/skill_hacker_mindenergy_enemy.seq", true, "pam01" );

	 Movie:AddSequence3D( 6667, 13333, "Resources/Effects/skill_hacker_mindenergy_enemy.seq", true, "pam02" );
	 Movie:AddSequence3D( 16290, 21616, "Resources/Effects/skill_hacker_mindenergy_enemy.seq", true, "pam02" );
	 Movie:AddSequence3D( 25751, 30600, "Resources/Effects/skill_hacker_mindenergy_enemy.seq", true, "pam02" );
	 Movie:AddSequence3D( 39034, 48600-1200, "Resources/Effects/skill_hacker_mindenergy_enemy.seq", true, "pam02" );
	 Movie:AddSequence3D( 57034-400-400, 63400, "Resources/Effects/skill_hacker_mindenergy_enemy.seq", true, "pam02" );

	 Movie:AddSequence3D( 6667, 13333, "Resources/Effects/skill_hacker_mindenergy_enemy.seq", true, "pam03" );
	 Movie:AddSequence3D( 16290, 21616, "Resources/Effects/skill_hacker_mindenergy_enemy.seq", true, "pam03" );
	 Movie:AddSequence3D( 25751, 30600, "Resources/Effects/skill_hacker_mindenergy_enemy.seq", true, "pam03" );
	 Movie:AddSequence3D( 39034, 48600-1200, "Resources/Effects/skill_hacker_mindenergy_enemy.seq", true, "pam03" );
	 Movie:AddSequence3D( 57034-400-400, 63400, "Resources/Effects/skill_hacker_mindenergy_enemy.seq", true, "pam03" );


	 Movie:AddSequence3D( 6667, 13333, "Resources/Effects/pve_chain.seq", false, "pam04" );
	 Movie:AddSequence3D( 16290, 21616, "Resources/Effects/pve_chain.seq", false, "pam04" );
	 Movie:AddSequence3D( 25751, 30600, "Resources/Effects/pve_chain.seq", false, "pam04" );
	 Movie:AddSequence3D( 39034, 48600-1200, "Resources/Effects/pve_chain.seq", false, "pam04" );
	 Movie:AddSequence3D( 57034-400-400, 63400, "Resources/Effects/pve_chain.seq", false, "pam04" );

	 Movie:AddSequence3D( 6667, 13333, "Resources/Effects/pve_chain.seq", false, "pam05" );
	 Movie:AddSequence3D( 16290, 21616, "Resources/Effects/pve_chain.seq", false, "pam05" );
	 Movie:AddSequence3D( 25751, 30600, "Resources/Effects/pve_chain.seq", false, "pam05" );
	 Movie:AddSequence3D( 39034, 48600-1200, "Resources/Effects/pve_chain.seq", false, "pam05" );
	 Movie:AddSequence3D( 57034-400-400, 63400, "Resources/Effects/pve_chain.seq", false, "pam05" );

	 Movie:AddSequence3D( 7040, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 7250, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 7300, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 7600, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 7960, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 8000, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 8270, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 8400, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 8940, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 9100, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 9800, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 10030, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 10320, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 10540, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 10970, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 11080, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 11150, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 11670, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 11940, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 12060, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 12230, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 12550, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 13160, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 13200, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );

	 Movie:AddSequence3D( 16290, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 16390, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 16590, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 17270, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 17850, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 18200, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 19030, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 19100, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 19230, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 19500, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 19820, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 20400, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 20730, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 20920, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 21030, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 21430, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 21610, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );

	 Movie:AddSequence3D( 25750, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 25920, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 26130, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 26200, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 26330, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 26500, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );

	 Movie:AddSequence3D( 27000, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 27130, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 27340, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 27500, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 27630, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 28140, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 28220, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 28440, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 28700, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 28800, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 29000, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 29150, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 29300, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 29840, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 30100, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 30220, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 30530, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 30100, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 30040, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 30250, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 30600, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );

	 Movie:AddSequence3D( 39034, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 39150, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 39240, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 39600, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 40040, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 40100, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 40480, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 40500, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 40670, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 41000, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 41160, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 41250, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 41400, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 41530, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 41700, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 41840, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 42000, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 42170, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 42360, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 42500, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 43040, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 43100, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 43240, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 43500, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 43600, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 43880, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 44000, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 44170, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 44300, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 44460, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 44600, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 44850, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 45000, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 45120, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 45630, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 45750, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 45830, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 46000, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 46100, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 46200, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 46430, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 46500, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 46840, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 47000, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 47160, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 47340, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 47500, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 47800, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 48000, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 48150, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 48200, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 48430, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 48530, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 48640, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );

	 Movie:AddSequence3D( 56234, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 56364, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 56534, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 56854, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 57034, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 57234, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 57134, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 57454, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 57634, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 57834, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 58074, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 58134, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 58234, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 58334, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 58664, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 58734, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 58864, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 59034, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 59134, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 59264, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 59334, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 59534, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 59734, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 59834, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 60044, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 60134, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 60334, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 60474, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 60634, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 60934, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 61254, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 61834, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 62034, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 62324, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 62634, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 62754, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 62834, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 63034, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 63344, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );
	 Movie:AddSequence3D( 63380, 63400, "Resources/Effects/weapon_mindshock_body.seq", false, "pam_if" );


        --카메라 지정

        focus_actor1 = Movie:AddActorPlayerEx2( Movie:GetFocusPC(), TEAM_ALPHA );
	 Movie:SetID( focus_actor1, 1 );
	 Movie:SetActorPlayerExParam( focus_actor1, 0, 6666, "Resources/Model/Movie/stage8_1.x7" );

        focus_actor2 = Movie:AddActorPlayerEx2( Movie:GetFocusPC(), TEAM_ALPHA );
	 Movie:SetID( focus_actor2, 1 );
	 Movie:SetActorPlayerExParam( focus_actor2, 6667, 13333, "Resources/Model/Movie/stage8_1_1.x7" );
	 Movie:SetActorPlayerExParam( focus_actor2, 13334, 16316, "Resources/Model/Movie/stage8_2.x7" );
	 Movie:SetActorPlayerExParam( focus_actor2, 21617, 25750, "Resources/Model/Movie/stage8_4.x7" );
	 Movie:SetActorPlayerExParam( focus_actor2, 30601, 39033, "Resources/Model/Movie/stage8_6.x7" );
	 Movie:SetActorPlayerExParam( focus_actor2, 48590-1200, 57033-300-400, "Resources/Model/Movie/stage8_8.x7" );


        Kitchi = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
     --Movie:SetActorPlayerExParam1( Kitchi, 4456449, 1310977, 72745473, 72680193, 68682753, 70124801, 0 );
	 Movie:SetActorPlayerExParamHair( Kitchi, 9, 0 );
	Movie:SetActorPlayerExParamFace( Kitchi, 12, 0 );
	Movie:SetActorPlayerExParamCoat( Kitchi, 21, 0 );
	Movie:SetActorPlayerExParamPant( Kitchi, 20, 0 );
	Movie:SetActorPlayerExParamGlove( Kitchi, 20, 0 );
	Movie:SetActorPlayerExParamShoes( Kitchi, 20,0 );
	 Movie:SetActorPlayerExParam( Kitchi, 6667, 13333, "Resources/Model/Movie/idle3.x7" );
	 Movie:SetActorPlayerExParam( Kitchi, 16290, 21616, "Resources/Model/Movie/stage8_3.x7" );
	 Movie:SetActorPlayerExParam( Kitchi, 25751, 30600, "Resources/Model/Movie/stage8_5.x7" );
	 Movie:SetActorPlayerExParam( Kitchi, 39034, 48600-1200, "Resources/Model/Movie/stage8_7.x7" );
	 Movie:SetActorPlayerExParam( Kitchi, 57034-400-400, 63400, "Resources/Model/Movie/stage8_9.x7" );

	virus = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 851969, 65793, 786945, 1049345, 66561, 66817, 2688513 );
		 		 Movie:SetActorPlayerExParamHair( virus, 1, 1 );
		 Movie:SetActorPlayerExParamFace( virus, 3, 0 );
		 Movie:SetActorPlayerExParamCoat( virus, 24, 2 );
		 Movie:SetActorPlayerExParamPant( virus, 21, 2 );
		 Movie:SetActorPlayerExParamGlove( virus, 2, 0 );
		 Movie:SetActorPlayerExParamShoes( virus, 2, 0 );
		 Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 6667-3000, 13333, "Resources/Model/Movie/virus5.x7" );
         Movie:SetActorPlayerExParam( virus, 16290-3000, 21616, "Resources/Model/Movie/virus5.x7" );
         Movie:SetActorPlayerExParam( virus, 25751-3000, 30600, "Resources/Model/Movie/virus5.x7" );
         Movie:SetActorPlayerExParam( virus, 39034-3000, 48600, "Resources/Model/Movie/virus5.x7" );
         Movie:SetActorPlayerExParam( virus, 57034-400-400-3000, 63400, "Resources/Model/Movie/virus5.x7" );

	virus = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 851969, 65793, 786945, 1049345, 66561, 66817, 2688513 );
		 		 Movie:SetActorPlayerExParamHair( virus, 1, 1 );
		 Movie:SetActorPlayerExParamFace( virus, 3, 0 );
		 Movie:SetActorPlayerExParamCoat( virus, 24, 2 );
		 Movie:SetActorPlayerExParamPant( virus, 21, 2 );
		 Movie:SetActorPlayerExParamGlove( virus, 2, 0 );
		 Movie:SetActorPlayerExParamShoes( virus, 2, 0 );
		 Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 6667-3000, 13333, "Resources/Model/Movie/virus6.x7" );
         Movie:SetActorPlayerExParam( virus, 16290-3000, 21616, "Resources/Model/Movie/virus6.x7" );
         Movie:SetActorPlayerExParam( virus, 25751-3000, 30600, "Resources/Model/Movie/virus6.x7" );
         Movie:SetActorPlayerExParam( virus, 39034-3000, 48600, "Resources/Model/Movie/virus6.x7" );
         Movie:SetActorPlayerExParam( virus, 57034-400-400-3000, 63400, "Resources/Model/Movie/virus6.x7" );

	virus = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 851969, 65793, 786945, 1049345, 66561, 66817, 2688513 );
		 		 Movie:SetActorPlayerExParamHair( virus, 1, 1 );
		 Movie:SetActorPlayerExParamFace( virus, 3, 0 );
		 Movie:SetActorPlayerExParamCoat( virus, 24, 2 );
		 Movie:SetActorPlayerExParamPant( virus, 21, 2 );
		 Movie:SetActorPlayerExParamGlove( virus, 2, 0 );
		 Movie:SetActorPlayerExParamShoes( virus, 2, 0 );
		 Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 6667-3000, 13333, "Resources/Model/Movie/virus7.x7" );
         Movie:SetActorPlayerExParam( virus, 16290-3000, 21616, "Resources/Model/Movie/virus7.x7" );
         Movie:SetActorPlayerExParam( virus, 25751-3000, 30600, "Resources/Model/Movie/virus7.x7" );
         Movie:SetActorPlayerExParam( virus, 39034+2000-3000, 48600, "Resources/Model/Movie/virus7.x7" );
         Movie:SetActorPlayerExParam( virus, 57034-400-400-3000, 63400, "Resources/Model/Movie/virus7.x7" );

	textViewer1 = Movie:AddTextViewer( 1500, 63000, 0, 0, MOVIE_STAGE_00 );
	Movie:SetTextViewerParam( textViewer1, 2, 1, 5, 5 );  
	
	textViewer1 = Movie:AddTextViewer( 0, 3500, 0, 0, MOVIE_STAGE8_01 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 3500, 6667, 0, 0, MOVIE_STAGE8_02 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 12000, 16000, 0, 0, MOVIE_STAGE8_03 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 16000, 18000, 0, 0, MOVIE_STAGE8_04 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 18000, 22000, 0, 0, MOVIE_STAGE8_05 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 22000, 26000, 0, 0, MOVIE_STAGE8_06 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );
	
	textViewer1 = Movie:AddTextViewer( 26000, 31000, 0, 0, MOVIE_STAGE8_07 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 31000, 34400, 0, 0, MOVIE_STAGE8_08 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 34400, 39033, 0, 0, MOVIE_STAGE8_09 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 39033, 42000, 0, 0, MOVIE_STAGE8_10 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );
	
	textViewer1 = Movie:AddTextViewer( 42000, 46000, 0, 0, MOVIE_STAGE8_11 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 46000, 48600-1200, 0, 0, MOVIE_STAGE8_12 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 48600-1200, 52200, 0, 0, MOVIE_STAGE8_13 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 52200, 57033-300-400, 0, 0, MOVIE_STAGE8_14 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 57033-300-400, 60000, 0, 0, MOVIE_STAGE8_15 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );
	
	textViewer1 = Movie:AddTextViewer( 60000, 63400, 0, 0, MOVIE_STAGE8_16 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	Movie:AddSpecialEffect( 0, 500, 2 );
	Movie:AddSpecialEffect(5001, 6667, 3 );
   Movie:AddSpecialEffect(6667, 8000, 2 );
	Movie:AddSpecialEffect(62900, 63400, 3 );
	Movie:AddSpecialEffect(63400, 73400, 4 );

	Movie:AddSpecialEffect(9000, 9800, 1 );
	Movie:AddSpecialEffect(62600, 63400, 1 );

	Movie:AddMovieSpeed( 0, 7000, 0.6 )
	
	Movie:AddBGM( 0, 70000, "Resources/Bgm/plasticmethod.ogg", false, 50 )
	Movie:AddSound( 9000, 13800, "Resources/Sound/Acade/mindahock_enemy.ogg", false, 40 );
	Movie:AddSound( 9000, 10000, "Resources/Sound/Acade/pam_destroy.ogg", false, 40 );
	Movie:AddSound( 16000, 22000, "Resources/Sound/Acade/mindahock_enemy.ogg", false, 70 );
	Movie:AddSound( 20000, 21000, "Resources/Sound/Acade/pam_destroy.ogg", false, 40 );
	Movie:AddSound( 25900, 31000, "Resources/Sound/Acade/mindahock_enemy.ogg", false, 70 );
	Movie:AddSound( 39033, 52000-1200, "Resources/Sound/Acade/mindahock_enemy.ogg", false, 70 );
	Movie:AddSound( 39033, 40033, "Resources/Sound/Acade/pam_destroy.ogg", false, 70 );
	Movie:AddSound( 57033-300-400, 60000, "Resources/Sound/Acade/mindahock_enemy.ogg", false, 50 );
	Movie:AddSound( 60033-300-400, 63400, "Resources/Sound/Acade/mindahock_enemy.ogg", false, 70 );
end