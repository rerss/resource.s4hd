LoadStringTable( "Language/Script/Arcade_movie_string_table.x7" );

MOVIE_STAGE_00		= GetString( "MOVIE_STAGE_00" );
MOVIE_STAGE8_17		= GetString( "MOVIE_STAGE8_17" );
MOVIE_STAGE8_18		= GetString( "MOVIE_STAGE8_18" );
MOVIE_STAGE8_19		= GetString( "MOVIE_STAGE8_19" );
MOVIE_STAGE8_20		= GetString( "MOVIE_STAGE8_20" );
MOVIE_STAGE8_21		= GetString( "MOVIE_STAGE8_21" );
MOVIE_STAGE8_22		= GetString( "MOVIE_STAGE8_22" );
MOVIE_STAGE8_23		= GetString( "MOVIE_STAGE8_23" );

ClearStringTable();

TEAM_ALPHA			= 1;
TEAM_BETA			= 2;
SEX_MALE			= 0;
SEX_FEMALE			= 1;


function initialize()

	Movie:Init( 34833+2000 );
	Movie:AddMovieScene( "Resources/Model/Movie/camera_stage8_1.scn", false); 
	Movie:AddMovieScene( "Resources/Model/Movie/pam_stage8_1.scn", true );
	
	Movie:AddSequence( 500, 34333+2000, "Resources/Effects/cinemaline.seq" );   
	Movie:AddSequence( 2000, 3000, "Resources/Effects/pve_fullscenerendertarget01.seq" );
	Movie:AddSequence( 2001, 36833, "Resources/Effects/cinemaline2.seq" ); 
     
	--카메라 파일 불러오기
	Movie:AddTMController_Camera(0, 4233, 60, "O003" );
	Movie:AddTMController_Camera(4234, 6000, 60, "O001" );
        Movie:AddTMController_Camera(6001, 10000, 60, "O002" );
        Movie:AddTMController_Camera(10001, 11666, 60, "O001" );
	Movie:AddTMController_Camera(11667, 13432, 60, "O002" );
	Movie:AddTMController_Camera(13433, 14550, 60, "O003" );
	Movie:AddTMController_Camera(14551, 15000, 60, "O002" );
        Movie:AddTMController_Camera(15001, 16332, 60, "O001" );
	Movie:AddTMController_Camera(16333, 17982-300, 60, "O003" );
        Movie:AddTMController_Camera(17983-300, 22500, 60, "O002" );
	Movie:AddTMController_Camera(22500, 26133, 60, "O001" );
	Movie:AddTMController_Camera(25834+300, 28650, 60, "O002" );
	Movie:AddTMController_Camera(28651, 31666, 60, "O001" );
        Movie:AddTMController_Camera(31667, 33799, 60, "O002" );
	Movie:AddTMController_Camera(33800, 36833, 60, "O003" );
	
	pam1 = Movie:AddSceneLoader( 0, 34833, "resources/model/monster/pam_bip.scn", true, "pam1" );
	 Movie:AddAnimController_Scene( 0, pam1, "MB008", 0, true, true, 1.0 );
	 Movie:AddAnimController_Scene( 3000, pam1, "MB007", 500, true, true, 1.0 );
	pam2 = Movie:AddSceneLoader( 0, 34833, "resources/model/monster/pam_bip.scn", true, "pam2" );
	 Movie:AddAnimController_Scene( 6016+200+500, pam2, "MB001", 0, true, true, 1.0 );
	 Movie:AddAnimController_Scene( 6850+200+500, pam2, "MB002", 500, true, true, 1.0 );
	 Movie:AddAnimController_Scene( 6850+200+500+800, pam2, "MB009", 500, true, true, 1.0 );
 	 Movie:AddAnimController_Scene( 7684+700+800, pam2, "MB005", 500, true, true, 1.0 );
	pam3 = Movie:AddSceneLoader( 0, 34833, "resources/model/monster/pam_bip.scn", true, "pam3" );
	 Movie:AddAnimController_Scene( 11683, pam3, "MB005", 0, true, true, 1.0 );
	 Movie:AddAnimController_Scene( 11800, pam3, "MB008", 500, true, true, 1.0 );
	 Movie:AddSequence3D( 11000, 15000, "Resources/Effects/bat_whirlwind1.seq", true, "pam3" );
	 Movie:AddSequence3D( 14700, 17000, "Resources/Effects/bat_whirlwind1.seq", true, "pam3" );

	pam4 = Movie:AddSceneLoader( 0, 26133, "resources/model/monster/pam_bip.scn", true, "pam4" );
	 Movie:AddAnimController_Scene( 21683, pam4, "MB001", 0, true, true, 1.0 );
	 Movie:AddAnimController_Scene( 22517, pam4, "MB007", 500, true, false, 1.0 );
	pam5 = Movie:AddSceneLoader( 0, 34833, "resources/model/monster/pam_bip.scn", true, "pam5" );
	 Movie:AddAnimController_Scene( 25850+900-2600, pam5, "MB007", 0, true, false, 1.0 );
	pam6 = Movie:AddSceneLoader( 0, 34833, "resources/model/monster/pam_bip.scn", true, "pam6" );
	 Movie:AddAnimController_Scene( 27000, pam6, "MB008", 0, true, true, 1.0 );
	 Movie:AddSequence3D( 29000, 36333, "Resources/Effects/bat_whirlwind1.seq", true, "pam6" );
	 Movie:AddSequence3D( 30000, 36333, "Resources/Effects/bat_whirlwind1.seq", true, "pam6" );
	 Movie:AddSequence3D( 31000, 36333, "Resources/Effects/bat_whirlwind1.seq", true, "pam6" );

	virus_co01 = Movie:AddSceneLoader( 10001, 13000, "resources/model/monster/virus_bip.scn", true, "virus_co01" );
	 Movie:AddAnimController_Scene( 10001, virus_co01, "MV005", 0, true, true, 3.7 );
	virus_co02 = Movie:AddSceneLoader( 10001, 13000, "resources/model/monster/virus_bip.scn", true, "virus_co02" );
	 Movie:AddAnimController_Scene( 10001, virus_co02, "MV005", 0, true, true, 3.8 );
	virus_co03 = Movie:AddSceneLoader( 10001, 13000, "resources/model/monster/virus_bip.scn", true, "virus_co03" );
	 Movie:AddAnimController_Scene( 10001, virus_co03, "MV005", 0, true, true, 3.2 );
	virus_co04 = Movie:AddSceneLoader( 10001, 13000, "resources/model/monster/virus_bip.scn", true, "virus_co04" );
	 Movie:AddAnimController_Scene( 10001, virus_co04, "MV005", 0, true, true, 3.4 );
	virus_co05 = Movie:AddSceneLoader( 10001, 13000, "resources/model/monster/virus_bip.scn", true, "virus_co05" );
	 Movie:AddAnimController_Scene( 10001, virus_co05, "MV005", 0, true, true, 3.3 );
	virus_co06 = Movie:AddSceneLoader( 10001, 13000, "resources/model/monster/virus_bip.scn", true, "virus_co06" );
	 Movie:AddAnimController_Scene( 10001, virus_co06, "MV005", 0, true, true, 3.3 );

	virus_co07 = Movie:AddSceneLoader( 4970+200+500, 8333+1668, "resources/model/monster/virus_bip.scn", true, "virus_co07" );
	 Movie:AddAnimController_Scene( 4970+200+500+700, virus_co07, "MV007", 0, true, true, 1.4 );
	 Movie:AddAnimController_Scene( 6216+300, virus_co07, "MV002", 500, true, true, 1.0 );
	 Movie:AddAnimController_Scene( 6716+700+500, virus_co07, "MV003", 300, true, false, 1.0 );
	 Movie:AddSequence3D( 6716+700+500, 9000+700+500, "Resources/Effects/backattack_sword_s.seq", true, "virus_co07" );
	 Movie:AddSequence3D( 6816+700+500, 9000+700+500, "Resources/Effects/dead_eff.seq", true, "virus_co07" );

	virus_co09 = Movie:AddSceneLoader( 4970+200+500, 8333+1668, "resources/model/monster/virus_bip.scn", true, "virus_co09" );
	 Movie:AddAnimController_Scene( 4970+200+500+700, virus_co09, "MV005", 0, true, true, 1.8 );
	 Movie:AddAnimController_Scene( 6216+300, virus_co09, "MV002", 500, true, true, 1.0 );
	 Movie:AddAnimController_Scene( 6716+700+500, virus_co09, "MV003", 300, true, false, 1.0 );
	 Movie:AddSequence3D( 6716+700+500, 9000+700+500, "Resources/Effects/backattack_sword_s.seq", true, "virus_co09" );
	 Movie:AddSequence3D( 6816+700+500, 9000+700+500, "Resources/Effects/dead_eff.seq", true, "virus_co09" );

	virus_co08 = Movie:AddSceneLoader( 4970+200+500, 8333+1668, "resources/model/monster/virus_bip.scn", true, "virus_co08" );
	 Movie:AddAnimController_Scene( 4970+200+500, virus_co08, "MV005", 0, true, true, 1.8 );
	 Movie:AddAnimController_Scene( 6216, virus_co08, "MV002", 500, true, true, 1.0 );
	 Movie:AddAnimController_Scene( 6716+500, virus_co08, "MV003", 300, true, false, 1.0 );
	 Movie:AddSequence3D( 6716+500, 9000+500, "Resources/Effects/backattack_sword_s.seq", true, "virus_co08" );
	 Movie:AddSequence3D( 6816+500, 9000+500, "Resources/Effects/dead_eff.seq", true, "virus_co08" );

	virus_co10 = Movie:AddSceneLoader( 4970+200+500, 8333+1668, "resources/model/monster/virus_bip.scn", true, "virus_co10" );
	 Movie:AddAnimController_Scene( 4970+200+500, virus_co10, "MV005", 0, true, true, 1.8 );
	 Movie:AddAnimController_Scene( 6216, virus_co10, "MV002", 500, true, true, 1.0 );
	 Movie:AddAnimController_Scene( 6716+500, virus_co10, "MV003", 300, true, false, 1.0 );
	 Movie:AddSequence3D( 6716+500, 9000+500, "Resources/Effects/backattack_sword_s.seq", true, "virus_co10" );
	 Movie:AddSequence3D( 6816+500, 9000+500, "Resources/Effects/dead_eff.seq", true, "virus_co10" );



	 Movie:AddSequence3D_Scene( 0, 36333, "Resources/Effects/pve_shota_01.seq", true, pam1, "" );
	 Movie:AddSequence3D_Scene( 0, 36333, "Resources/Effects/pve_shota_01.seq", true, pam2, "" );
	 Movie:AddSequence3D_Scene( 0, 36333, "Resources/Effects/pve_shota_01.seq", true, pam3, "" );
	 Movie:AddSequence3D_Scene( 11800, 26133, "Resources/Effects/pve_shota_beam.seq", true, pam3, "" );
	 Movie:AddSequence3D_Scene( 0, 36333, "Resources/Effects/pve_shota_01.seq", true, pam4, "" );
	 Movie:AddSequence3D_Scene( 0, 36333, "Resources/Effects/pve_shota_01.seq", true, pam5, "" );
	 Movie:AddSequence3D_Scene( 0, 36333, "Resources/Effects/pve_shota_01.seq", true, pam6, "" );
	 Movie:AddSequence3D( 23500, 26000, "Resources/Effects/gun_hit4_kid.seq", false, "effect2" );
	 Movie:AddSequence3D( 23500, 26000, "Resources/Effects/backattack_sword_s.seq", false, "effect2" );
	 Movie:AddSequence3D( 23800, 26000, "Resources/Effects/gun_hit4_kid.seq", false, "effect2" );
	 Movie:AddSequence3D( 23800, 26000, "Resources/Effects/backattack_sword_s.seq", false, "effect2" );
	 Movie:AddSequence3D( 24000, 26000, "Resources/Effects/gun_hit4_kid.seq", false, "effect2" );
	 Movie:AddSequence3D( 24000, 26000, "Resources/Effects/backattack_sword_s.seq", false, "effect2" );

	 Movie:AddSequence3D( 15000, 20000, "Resources/Effects/backattack_sword_s.seq", false, "effect" );
	 Movie:AddSequence3D( 23400, 24500, "Resources/Effects/skill_gunner_chargeshot_hit_max.seq", false, "effect1" );
	 Movie:AddSequence3D( 24500, 30000, "Resources/Effects/backattack_sword_s.seq", false, "effect1" );



       --카메라 지정

        focus_actor1 = Movie:AddActorPlayerEx2( Movie:GetFocusPC(), TEAM_ALPHA );
	 Movie:SetID( focus_actor1, 1 );
	 Movie:SetActorPlayerExParam( focus_actor1, 11683, 15000, "Resources/Model/Movie/joint.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 14000, 18366-300, "Resources/Model/Movie/why.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 22500, 24916, "Resources/Model/Movie/male_fall.x7" );
 	 Movie:SetActorPlayerExParam( focus_actor1, 28000, 31682, "Resources/Model/Movie/stage8_you.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 31683, 34833+2000, "Resources/Model/Movie/stage8_me.x7" );
	 Movie:AddSequence3D( 15000, 20000, "Resources/Effects/weapon_canon_hit.seq", false, "effect" );
	 Movie:AddSequence3D( 7100, 8100, "Resources/Effects/skill_gunner_chargeshot_hit_max_wall.seq", false, "effect" );
	 Movie:AddSequence3D( 7100, 8100, "Resources/Effects/backattack_sword_s.seq", false, "effect" );
	 Movie:AddSequence3D( 8000, 9000, "Resources/Effects/skill_gunner_chargeshot_hit_max_wall.seq", false, "effect" );
	 Movie:AddSequence3D( 8000, 9000, "Resources/Effects/backattack_sword_s.seq", false, "effect" );
	 Movie:AddSequence3D( 24500, 30000, "Resources/Effects/skill_gunner_electronic_bomb_3.seq", false, "effect1" );

        NBranger = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( NBranger, 851969, 1114369, 72548865, 72483585, 68486145, 69928193, 0 );
		 --Movie:SetActorPlayerExParamHair( NBranger, 1, 1 );
		 --Movie:SetActorPlayerExParamFace( NBranger, 0, 0 );
		 Movie:SetActorPlayerExParamCoat( NBranger, 42, 0 );
		 Movie:SetActorPlayerExParamPant( NBranger, 40, 0 );
		 Movie:SetActorPlayerExParamGlove( NBranger, 39, 0 );
		 Movie:SetActorPlayerExParamShoes( NBranger, 39, 0 );
		 Movie:SetActorPlayerExParamAccessary( NBranger, 53, 0 );
		Movie:SetActorPlayerExParam( NBranger, 9167, 12483, "Resources/Model/Movie/stage6_1mb.x7" );
         Movie:SetActorPlayerExParam( NBranger, 12484, 18166, "Resources/Model/Movie/stage6_1mb.x7" );

	Kitchi = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( Kitchi, 4456449, 1310977, 72745473, 72680193, 68682753, 70124801, 0 );
		 		 Movie:SetActorPlayerExParamHair( Kitchi, 9, 0 );
		Movie:SetActorPlayerExParamFace( Kitchi, 12, 0 );
		Movie:SetActorPlayerExParamCoat( Kitchi, 21, 0 );
		Movie:SetActorPlayerExParamPant( Kitchi, 20, 0 );
		Movie:SetActorPlayerExParamGlove( Kitchi, 20, 0 );
		Movie:SetActorPlayerExParamShoes( Kitchi, 20, 0 );
	 Movie:SetActorPlayerExParam( Kitchi, 18000-500, 22500, "Resources/Model/Movie/stage8_11.x7" );
	 Movie:SetActorPlayerExParam( Kitchi, 26134, 28650, "Resources/Model/Movie/female_fall.x7" );
	 Movie:SetActorPlayerExParam( Kitchi, 29707-3000, 36833, "Resources/Model/Movie/stage8_you2.x7" );
	
	virus = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 851969, 65793, 67043841, 75825921, 66126849, 66127105, 2688513 );
		 		 Movie:SetActorPlayerExParamHair( virus, 1, 1 );
		 Movie:SetActorPlayerExParamFace( virus, 3, 0 );
		 Movie:SetActorPlayerExParamCoat( virus, 24, 2 );
		 Movie:SetActorPlayerExParamPant( virus, 21, 2 );
		 Movie:SetActorPlayerExParamGlove( virus, 2, 0 );
		 Movie:SetActorPlayerExParamShoes( virus, 2, 0 );
		 Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 5070+200+500, 8333+1668, "Resources/Model/Movie/virus2.x7" );

	virus = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 851969, 65793, 67043841, 75825921, 66126849, 66127105, 2688513 );
		 		 Movie:SetActorPlayerExParamHair( virus, 1, 1 );
		 Movie:SetActorPlayerExParamFace( virus, 3, 0 );
		 Movie:SetActorPlayerExParamCoat( virus, 24, 2 );
		 Movie:SetActorPlayerExParamPant( virus, 21, 2 );
		 Movie:SetActorPlayerExParamGlove( virus, 2, 0 );
		 Movie:SetActorPlayerExParamShoes( virus, 2, 0 );
		 Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 5470+200+500, 8333+1668, "Resources/Model/Movie/virus3.x7" );

	virus = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 851969, 65793, 67043841, 75825921, 66126849, 66127105, 2688513 );
		 		 Movie:SetActorPlayerExParamHair( virus, 1, 1 );
		 Movie:SetActorPlayerExParamFace( virus, 3, 0 );
		 Movie:SetActorPlayerExParamCoat( virus, 24, 2 );
		 Movie:SetActorPlayerExParamPant( virus, 21, 2 );
		 Movie:SetActorPlayerExParamGlove( virus, 2, 0 );
		 Movie:SetActorPlayerExParamShoes( virus, 2, 0 );
		 Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 5550+200+500, 8333+1668, "Resources/Model/Movie/virus4.x7" );
	


	virusrun = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
        -- Movie:SetActorPlayerExParam1( virusrun, 851969, 65793, 67043841, 75825921, 66126849, 66127105, 2688513 );
		 		 Movie:SetActorPlayerExParamHair( virusrun, 1, 1 );
		 Movie:SetActorPlayerExParamFace( virusrun, 3, 0 );
		 Movie:SetActorPlayerExParamCoat( virusrun, 24, 2 );
		 Movie:SetActorPlayerExParamPant( virusrun, 21, 2 );
		 Movie:SetActorPlayerExParamGlove( virusrun, 2, 0 );
		 Movie:SetActorPlayerExParamShoes( virusrun, 2, 0 );
		 Movie:SetActorPlayerExParamAccessary( virusrun, 0, 0 );
	 Movie:SetActorPlayerExParam( virusrun, 10001,13000, "Resources/Model/Movie/virusrun1.x7" );

	virusrun1 = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virusrun1, 851969, 65793, 67043841, 75825921, 66126849, 66127105, 2688513 );
		  Movie:SetActorPlayerExParamHair( virusrun1, 1, 1 );
		 Movie:SetActorPlayerExParamFace( virusrun1, 3, 0 );
		 Movie:SetActorPlayerExParamCoat( virusrun1, 24, 2 );
		 Movie:SetActorPlayerExParamPant( virusrun1, 21, 2 );
		 Movie:SetActorPlayerExParamGlove( virusrun1, 2, 0 );
		 Movie:SetActorPlayerExParamShoes( virusrun1, 2, 0 );
		 Movie:SetActorPlayerExParamAccessary( virusrun1, 0, 0 );
         Movie:SetActorPlayerExParam( virusrun1, 10001,13000, "Resources/Model/Movie/virusrun2.x7" );

	virusrun2 = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virusrun2, 851969, 65793, 67043841, 75825921, 66126849, 66127105, 2688513 );
		 Movie:SetActorPlayerExParamHair( virusrun2, 1, 1 );
		 Movie:SetActorPlayerExParamFace( virusrun2, 3, 0 );
		 Movie:SetActorPlayerExParamCoat( virusrun2, 24, 2 );
		 Movie:SetActorPlayerExParamPant( virusrun2, 21, 2 );
		 Movie:SetActorPlayerExParamGlove( virusrun2, 2, 0 );
		 Movie:SetActorPlayerExParamShoes( virusrun2, 2, 0 );
		 Movie:SetActorPlayerExParamAccessary( virusrun2, 0, 0 );
         Movie:SetActorPlayerExParam( virusrun2, 10001,13000, "Resources/Model/Movie/virusrun3.x7" );

	virusrun3 = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virusrun3, 851969, 65793, 67043841, 75825921, 66126849, 66127105, 2688513 );
		 Movie:SetActorPlayerExParamHair( virusrun3, 1, 1 );
		 Movie:SetActorPlayerExParamFace( virusrun3, 3, 0 );
		 Movie:SetActorPlayerExParamCoat( virusrun3, 24, 2 );
		 Movie:SetActorPlayerExParamPant( virusrun3, 21, 2 );
		 Movie:SetActorPlayerExParamGlove( virusrun3, 2, 0 );
		 Movie:SetActorPlayerExParamShoes( virusrun3, 2, 0 );
		 Movie:SetActorPlayerExParamAccessary( virusrun3, 0, 0 );
         Movie:SetActorPlayerExParam( virusrun3, 10001,13000, "Resources/Model/Movie/virusrun4.x7" );

	textViewer1 = Movie:AddTextViewer( 2500, 30000, 0, 0, MOVIE_STAGE_00 );
	Movie:SetTextViewerParam( textViewer1, 2, 1, 5, 5 );

	textViewer1 = Movie:AddTextViewer( 16000, 17000, 0, 0, MOVIE_STAGE8_17 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 17000, 18500-300, 0, 0, MOVIE_STAGE8_18 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 18500-300, 20500, 0, 0, MOVIE_STAGE8_19 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 20500, 22800, 0, 0, MOVIE_STAGE8_20 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );
	
	textViewer1 = Movie:AddTextViewer( 23400, 25800, 0, 0, MOVIE_STAGE8_21 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );
	
	textViewer1 = Movie:AddTextViewer( 25800, 28800, 0, 0, MOVIE_STAGE8_22 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 32000, 35000, 0, 0, MOVIE_STAGE8_23 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	Movie:AddSpecialEffect( 0, 500, 2 );
	Movie:AddSpecialEffect(25649, 28649, 3 );
	Movie:AddSpecialEffect(28650, 29650, 2 );

	Movie:AddSpecialEffect(33333+2000, 34833+2000, 3 );
	Movie:AddSpecialEffect(34833+2000, 44833+2000, 4 );

	Movie:AddSpecialEffect(1000, 3000, 1 );
	Movie:AddSpecialEffect(12367, 15000, 1 );
	Movie:AddSpecialEffect(25834+300, 28650, 1 );
	Movie:AddSpecialEffect(28951, 30100, 1 );
	Movie:AddSpecialEffect(35233, 36833, 1 );

	Movie:AddMovieSpeed( 17000, 19000, 0.7 )
	Movie:AddMovieSpeed( 19000, 22000, 0.7 )

	Movie:AddBGM( 0, 35000, "Resources/Bgm/Minus.ogg", true, 30 )
	Movie:AddSound( 500, 4000, "Resources/Sound/Acade/pam_angry.ogg", false, 100 );
	Movie:AddSound( 3000, 7000, "Resources/Sound/Acade/pam_dashattack.ogg", false, 100 );
   Movie:AddSound( 7000, 8000, "Resources/Sound/Acade/pam_leftattack.ogg", false, 100 );
   Movie:AddSound( 7000, 8000, "Resources/Sound/wall_destroy_steel.ogg", false, 100 );
   Movie:AddSound( 7000, 8000, "Resources/Sound/Acade/virusdead.ogg", false, 100 );
	Movie:AddSound( 8000, 9000, "Resources/Sound/Acade/pam_rightattack.ogg", false, 100 );
	Movie:AddSound( 8000, 9000, "Resources/Sound/Acade/wall_destroy_steel.ogg", false, 100 );
	Movie:AddSound( 8000, 9000, "Resources/Sound/Acade/virusdead.ogg", false, 100 );
	Movie:AddSound( 12000, 18000, "Resources/Sound/Acade/pam_laserattack.ogg", false, 100 );
	Movie:AddSound( 15000, 16000, "Resources/Sound/wall_destroy_steel.ogg", false, 100 );
	
	Movie:AddSound( 22800, 23800, "Resources/Sound/Acade/pam_damage.ogg", false, 100 );
	
	Movie:AddSound( 22800, 23800, "Resources/Sound/sword_attack.ogg", false, 100 );
	Movie:AddSound( 23000, 24000, "Resources/Sound/sword_attack.ogg", false, 100 );
	Movie:AddSound( 23200, 24200, "Resources/Sound/sword_attack.ogg", false, 100 );
	Movie:AddSound( 23400, 24400, "Resources/Sound/sword_attack.ogg", false, 100 );
	Movie:AddSound( 23600, 24600, "Resources/Sound/sword_attack.ogg", false, 100 );
	
	Movie:AddSound( 24400, 25800, "Resources/Sound/Acade/pam_damage.ogg", false, 100 );
	Movie:AddSound( 24400, 25800, "Resources/Sound/card_hit.ogg", false, 100 );
	
	Movie:AddSound( 29000, 34000, "Resources/Sound/Acade/pam_angry.ogg", false, 100 );
	Movie:AddSound( 29000, 34000, "Resources/Sound/Acade/pam_destroy.ogg", false, 100 );
	
end