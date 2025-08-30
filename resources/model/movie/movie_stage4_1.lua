LoadStringTable( "Language/Script/Arcade_movie_string_table.x7" );

MOVIE_STAGE_00		= GetString( "MOVIE_STAGE_00" );
MOVIE_STAGE5_01		= GetString( "MOVIE_STAGE5_01" );
MOVIE_STAGE5_02		= GetString( "MOVIE_STAGE5_02" );
MOVIE_STAGE5_03		= GetString( "MOVIE_STAGE5_03" );
MOVIE_STAGE5_04		= GetString( "MOVIE_STAGE5_04" );
MOVIE_STAGE5_05		= GetString( "MOVIE_STAGE5_05" );
MOVIE_STAGE5_06		= GetString( "MOVIE_STAGE5_06" );
MOVIE_STAGE5_07		= GetString( "MOVIE_STAGE5_07" );
MOVIE_STAGE5_08		= GetString( "MOVIE_STAGE5_08" );
MOVIE_STAGE5_09		= GetString( "MOVIE_STAGE5_09" );
MOVIE_STAGE5_10		= GetString( "MOVIE_STAGE5_10" );
MOVIE_STAGE5_11		= GetString( "MOVIE_STAGE5_11" );
MOVIE_STAGE5_12		= GetString( "MOVIE_STAGE5_12" );
MOVIE_STAGE5_13		= GetString( "MOVIE_STAGE5_13" );

ClearStringTable();


TEAM_ALPHA			= 1;
TEAM_BETA			= 2;
SEX_MALE			= 0;
SEX_FEMALE			= 1;


function initialize()

	Movie:Init( 62000 );
	Movie:AddMovieScene( "Resources/Model/Movie/camera_stage5.scn", false); 
	Movie:AddMovieScene( "Resources/Model/Movie/jaco_stage5.scn", true ); 

	Movie:AddSequence( 500, 61500, "Resources/Effects/cinemaline.seq" ); 
	Movie:AddSequence( 6300, 6500, "Resources/Effects/pve_fullscenerendertarget01.seq" );
	Movie:AddSequence( 6301, 6500, "Resources/Effects/cinemaline2.seq" ); 
	Movie:AddSequence( 6600, 6700, "Resources/Effects/pve_fullscenerendertarget01.seq" );
	Movie:AddSequence( 6601, 6700, "Resources/Effects/cinemaline2.seq" ); 

	Movie:AddSequence( 7000, 11650, "Resources/Effects/pve_fullscenerendertarget01.seq" );
	Movie:AddSequence( 7001, 11650, "Resources/Effects/cinemaline2.seq" ); 
	Movie:AddSequence( 12000, 12200, "Resources/Effects/pve_fullscenerendertarget01.seq" );
	Movie:AddSequence( 12001, 12200, "Resources/Effects/cinemaline2.seq" ); 
	Movie:AddSequence( 12300, 12400, "Resources/Effects/pve_fullscenerendertarget01.seq" );
	Movie:AddSequence( 12301, 12400, "Resources/Effects/cinemaline2.seq" ); 
	Movie:AddSequence( 12550, 12650, "Resources/Effects/pve_fullscenerendertarget01.seq" );
	Movie:AddSequence( 12551, 12650, "Resources/Effects/cinemaline2.seq" ); 
	Movie:AddSequence( 25300, 25500, "Resources/Effects/pve_fullscenerendertarget01.seq" );
	Movie:AddSequence( 25301, 25500, "Resources/Effects/cinemaline2.seq" );
	Movie:AddSequence( 32810, 33800, "Resources/Effects/pve_fullscenerendertarget01.seq" );
	Movie:AddSequence( 32811, 33500, "Resources/Effects/cinemaline2.seq" );
	Movie:AddSequence( 57700, 58000, "Resources/Effects/pve_fullscenerendertarget01.seq" );
	Movie:AddSequence( 57701, 58000, "Resources/Effects/cinemaline2.seq" );

        --카메라 파일 불러오기
	Movie:AddSequence( 500, 62000, "Resources/Effects/cinemaline.seq" );
	Movie:AddTMController_Camera( 0, 3216, 60, "B001" );
	Movie:AddTMController_Camera( 3217, 6690, 60, "B002" );
	Movie:AddTMController_Camera( 6700, 11650, 60, "B003" );
	Movie:AddTMController_Camera( 11666, 14666+334+300, 60, "B004" );
	Movie:AddTMController_Camera( 14667+334+300, 21650, 60, "B005" );
	Movie:AddTMController_Camera( 21666, 31434, 60, "B006" );
	Movie:AddTMController_Camera( 31433, 34650, 60, "B007" );
	Movie:AddTMController_Camera( 34651, 50000, 60, "B006" );
	Movie:AddTMController_Camera( 50001, 58333, 60, "B007" );
	Movie:AddTMController_Camera( 58350, 62000, 60, "B008" );
       
        Movie:AddMovieScene( "Resources/Model/Movie/jaco_stage5.scn", true );
	jaco1 = Movie:AddSceneLoader( 0, 62000, "resources/model/monster/jaco1_bip.scn", true, "jaco1" );
	 Movie:AddAnimController_Scene( 0, jaco1, "MC007", 0, true, true, 1.0 );
	 Movie:AddSequence3D_Scene( 0, 5900, "Resources/Effects/pve_jaco.seq", true, jaco1, "" );

	jaco2 = Movie:AddSceneLoader( 0, 62000, "resources/model/monster/jaco_bip.scn", true, "jaco2" );
	 Movie:AddAnimController_Scene( 100, jaco2, "MA005", 0, true, true, 1.0 );
	 Movie:AddSequence3D_Scene( 0, 5900, "Resources/Effects/pve_jaco.seq", true, jaco2, "" );

	jaco3 = Movie:AddSceneLoader( 0, 62000, "resources/model/monster/jaco_bip.scn", true, "jaco3" );
	 Movie:AddAnimController_Scene( 200, jaco3, "MA005", 0, true, true, 1.0 );
	 Movie:AddSequence3D_Scene( 0, 5900, "Resources/Effects/pve_jaco.seq", true, jaco3, "" );

	jaco4 = Movie:AddSceneLoader( 0, 62000, "resources/model/monster/jaco_bip.scn", true, "jaco4" );
	 Movie:AddAnimController_Scene( 300, jaco4, "MA005", 0, true, true, 1.0 );
	 Movie:AddSequence3D_Scene( 0, 5900, "Resources/Effects/pve_jaco.seq", true, jaco4, "" );

        virus01 = Movie:AddSceneLoader( 0, 52216, "resources/model/monster/virus_bip.scn", true, "virus01" );
	 Movie:AddAnimController_Scene( 6000, virus01, "MV007", 0, true, true, 1.6 );
	virus02 = Movie:AddSceneLoader( 0, 52216, "resources/model/monster/virus_bip.scn", true, "virus02" );
	 Movie:AddAnimController_Scene( 8000, virus02, "MV007", 0, true, true, 2.0 );
	virus03 = Movie:AddSceneLoader( 0, 52216, "resources/model/monster/virus_bip.scn", true, "virus03" );
	 Movie:AddAnimController_Scene( 10000, virus03, "MV007", 0, true, true, 1.2 );
	virus04 = Movie:AddSceneLoader( 0, 52216, "resources/model/monster/virus_bip.scn", true, "virus04" );
	 Movie:AddAnimController_Scene( 12000, virus04, "MV007", 0, true, true, 1.0 );
	virus05 = Movie:AddSceneLoader( 0, 52216, "resources/model/monster/virus_bip.scn", true, "virus05" );
	 Movie:AddAnimController_Scene( 14000, virus05, "MV007", 0, true, true, 1.3 );
	virus06 = Movie:AddSceneLoader( 0, 62000, "resources/model/monster/virus_bip.scn", true, "virus06" );
	 Movie:AddAnimController_Scene( 16000, virus06, "MV007", 0, true, true, 1.0 );
	virus07 = Movie:AddSceneLoader( 0, 52216, "resources/model/monster/virus_bip.scn", true, "virus07" );
	 Movie:AddAnimController_Scene( 18000, virus07, "MV007", 0, true, true, 1.0 );
	virus08 = Movie:AddSceneLoader( 0, 52216, "resources/model/monster/virus_bip.scn", true, "virus08" );
	 Movie:AddAnimController_Scene( 20000, virus08, "MV007", 0, true, true, 1.3 );
	virus09 = Movie:AddSceneLoader( 0, 62000, "resources/model/monster/virus_bip.scn", true, "virus09" );
	 Movie:AddAnimController_Scene( 22000, virus09, "MV007", 0, true, true, 1.0 );
	virus10 = Movie:AddSceneLoader( 0, 52216, "resources/model/monster/virus_bip.scn", true, "virus10" );
	 Movie:AddAnimController_Scene( 24000, virus10, "MV007", 0, true, true, 1.0 );
	virus11 = Movie:AddSceneLoader( 0, 62000, "resources/model/monster/virus_bip.scn", true, "virus11" );
	 Movie:AddAnimController_Scene( 26000, virus11, "MV007", 0, true, true, 1.8 );
	virus12 = Movie:AddSceneLoader( 0, 62000, "resources/model/monster/virus_bip.scn", true, "virus12" );
	 Movie:AddAnimController_Scene( 28000, virus12, "MV007", 0, true, true, 1.7 );
	virus13 = Movie:AddSceneLoader( 0, 52216, "resources/model/monster/virus_bip.scn", true, "virus13" );
	 Movie:AddAnimController_Scene( 30000, virus13, "MV007", 0, true, true, 1.1 );
	virus14 = Movie:AddSceneLoader( 0, 52216, "resources/model/monster/virus_bip.scn", true, "virus14" );
	 Movie:AddAnimController_Scene( 32000, virus14, "MV007", 0, true, true, 1.0 );
	virus15 = Movie:AddSceneLoader( 0, 62000, "resources/model/monster/virus_bip.scn", true, "virus15" );
	 Movie:AddAnimController_Scene( 34000, virus15, "MV007", 0, true, true, 1.3 );
	virus16 = Movie:AddSceneLoader( 0, 62000, "resources/model/monster/virus_bip.scn", true, "virus16" );
	 Movie:AddAnimController_Scene( 36000, virus16, "MV007", 0, true, true, 1.0 );
	virus17 = Movie:AddSceneLoader( 0, 62000, "resources/model/monster/virus_bip.scn", true, "virus17" );
	 Movie:AddAnimController_Scene( 38000, virus17, "MV007", 0, true, true, 1.1 );
	virus18 = Movie:AddSceneLoader( 0, 62000, "resources/model/monster/virus_bip.scn", true, "virus18" );
	 Movie:AddAnimController_Scene( 38000, virus18, "MV007", 0, true, true, 1.0 );
	virus19 = Movie:AddSceneLoader( 0, 62000, "resources/model/monster/virus_bip.scn", true, "virus19" );
	 Movie:AddAnimController_Scene( 38000, virus19, "MV007", 0, true, true, 1.0 );
	virus20 = Movie:AddSceneLoader( 0, 62000, "resources/model/monster/virus_bip.scn", true, "virus20" );
	 Movie:AddAnimController_Scene( 38000, virus20, "MV007", 0, true, true, 1.2 );
	virus21 = Movie:AddSceneLoader( 0, 62000, "resources/model/monster/virus_bip.scn", true, "virus21" );
	 Movie:AddAnimController_Scene( 38000, virus21, "MV007", 0, true, true, 1.0 );
	virus22 = Movie:AddSceneLoader( 0, 62000, "resources/model/monster/virus_bip.scn", true, "virus22" );
	 Movie:AddAnimController_Scene( 38000, virus22, "MV007", 0, true, true, 1.5 );
	virus23 = Movie:AddSceneLoader( 0, 4000, "resources/model/monster/virus_bip.scn", true, "virus23" );
	 Movie:AddAnimController_Scene( 0, virus23, "MV005", 0, true, true, 2.7 );
	virus24 = Movie:AddSceneLoader( 0, 4000, "resources/model/monster/virus_bip.scn", true, "virus24" );
	 Movie:AddAnimController_Scene( 0, virus24, "MV005", 0, true, true, 2.9 );
	virus25 = Movie:AddSceneLoader( 0, 4000, "resources/model/monster/virus_bip.scn", true, "virus25" );
	 Movie:AddAnimController_Scene( 0, virus25, "MV005", 0, true, true, 2.8 );
	virus26 = Movie:AddSceneLoader( 0, 4000, "resources/model/monster/virus_bip.scn", true, "virus26" );
	 Movie:AddAnimController_Scene( 0, virus26, "MV005", 0, true, true, 2.5 );
	virus27 = Movie:AddSceneLoader( 0, 4000, "resources/model/monster/virus_bip.scn", true, "virus27" );
	 Movie:AddAnimController_Scene( 0, virus27, "MV005", 0, true, true, 2.5 );


	--카메라 지정



        focus_actor1 = Movie:AddActorPlayerEx2( Movie:GetFocusPC(), TEAM_ALPHA );
	 Movie:SetID( focus_actor1, 1 );
	 Movie:SetActorPlayerExParam( focus_actor1, 3200, 14666+334+300, "Resources/Model/Movie/stage5_1.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 32616, 35000, "Resources/Model/Movie/stage6_9.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 49300, 57980, "Resources/Model/Movie/stage5_7.x7" );


      

        focus_actor2 = Movie:AddActorPlayerEx2( Movie:GetFocusPC(), TEAM_ALPHA );
	 Movie:SetID( focus_actor2, 1 );
	 Movie:SetActorPlayerExParam( focus_actor2, 14000, 50000, "Resources/Model/Movie/stage5_5.x7" );
	 Movie:SetActorPlayerExParam( focus_actor2, 57600, 62000, "Resources/Model/Movie/stage5_8.x7" );

        taejo = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( taejo, 3932161, 786689, 1311233, 1573633, 1049601, 984321, 0 );
		 Movie:SetActorPlayerExParamHair( taejo, 14, 0 );
		 Movie:SetActorPlayerExParamFace( taejo, 17, 0 );
		 Movie:SetActorPlayerExParamCoat( taejo, 33, 0 );
		 Movie:SetActorPlayerExParamPant( taejo, 30, 0 );
		 Movie:SetActorPlayerExParamGlove( taejo, 29, 0 );
		 Movie:SetActorPlayerExParamShoes( taejo, 29, 0 );
		 --Movie:SetActorPlayerExParamAccessary( taejo, 0, 0 );
	 Movie:SetActorPlayerExParam( taejo, 14000, 50000, "Resources/Model/Movie/stage5_3.x7" );

	virus = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 851969, 65793, 786945, 1049345, 66561, 66817, 2688513 );
		 Movie:SetActorPlayerExParamHair( virus, 1, 1 );
		 Movie:SetActorPlayerExParamFace( virus, 3, 0 );
		 Movie:SetActorPlayerExParamCoat( virus, 24, 2 );
		 Movie:SetActorPlayerExParamPant( virus, 21, 2 );
		 Movie:SetActorPlayerExParamGlove( virus, 2, 0 );
		 Movie:SetActorPlayerExParamShoes( virus, 2, 0 );
		 Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 34266, 45000, "Resources/Model/Movie/virus8.x7" );
         Movie:SetActorPlayerExParam( virus, 49800, 58333, "Resources/Model/Movie/virus8.x7" );

	virus = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 851969, 65793, 786945, 1049345, 66561, 66817, 2688513 );
		 Movie:SetActorPlayerExParamHair( virus, 1, 1 );
		 Movie:SetActorPlayerExParamFace( virus, 3, 0 );
		 Movie:SetActorPlayerExParamCoat( virus, 24, 2 );
		 Movie:SetActorPlayerExParamPant( virus, 21, 2 );
		 Movie:SetActorPlayerExParamGlove( virus, 2, 0 );
		 Movie:SetActorPlayerExParamShoes( virus, 2, 0 );
		 Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 33650, 45000, "Resources/Model/Movie/virus9.x7" );
         Movie:SetActorPlayerExParam( virus, 49750, 58333, "Resources/Model/Movie/virus9.x7" );

	virus = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 851969, 65793, 786945, 1049345, 66561, 66817, 2688513 );
		 Movie:SetActorPlayerExParamHair( virus, 1, 1 );
		 Movie:SetActorPlayerExParamFace( virus, 3, 0 );
		 Movie:SetActorPlayerExParamCoat( virus, 24, 2 );
		 Movie:SetActorPlayerExParamPant( virus, 21, 2 );
		 Movie:SetActorPlayerExParamGlove( virus, 2, 0 );
		 Movie:SetActorPlayerExParamShoes( virus, 2, 0 );
		 Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 33300, 45000, "Resources/Model/Movie/virus10.x7" );
         Movie:SetActorPlayerExParam( virus, 49200, 58333, "Resources/Model/Movie/virus10.x7" );

	virus = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 851969, 65793, 786945, 1049345, 66561, 66817, 2688513 );
		 Movie:SetActorPlayerExParamHair( virus, 1, 1 );
		 Movie:SetActorPlayerExParamFace( virus, 3, 0 );
		 Movie:SetActorPlayerExParamCoat( virus, 24, 2 );
		 Movie:SetActorPlayerExParamPant( virus, 21, 2 );
		 Movie:SetActorPlayerExParamGlove( virus, 2, 0 );
		 Movie:SetActorPlayerExParamShoes( virus, 2, 0 );
		 Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 32000, 45000, "Resources/Model/Movie/virus11.x7" );
         Movie:SetActorPlayerExParam( virus, 48800, 58333, "Resources/Model/Movie/virus11.x7" );

	virus = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 851969, 65793, 721409, 1049345, 66561, 66817, 2688513 );
		 Movie:SetActorPlayerExParamHair( virus, 1, 1 );
		 Movie:SetActorPlayerExParamFace( virus, 3, 0 );
		 Movie:SetActorPlayerExParamCoat( virus, 24, 2 );
		 Movie:SetActorPlayerExParamPant( virus, 21, 2 );
		 Movie:SetActorPlayerExParamGlove( virus, 2, 0 );
		 Movie:SetActorPlayerExParamShoes( virus, 2, 0 );
		 Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 33800, 45000, "Resources/Model/Movie/virus12.x7" );
         Movie:SetActorPlayerExParam( virus, 49500, 58333, "Resources/Model/Movie/virus12.x7" );

	virus = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 851969, 65793, 721409, 1049345, 66561, 66817, 2688513 );
		 Movie:SetActorPlayerExParamHair( virus, 1, 1 );
		 Movie:SetActorPlayerExParamFace( virus, 3, 0 );
		 Movie:SetActorPlayerExParamCoat( virus, 24, 2 );
		 Movie:SetActorPlayerExParamPant( virus, 21, 2 );
		 Movie:SetActorPlayerExParamGlove( virus, 2, 0 );
		 Movie:SetActorPlayerExParamShoes( virus, 2, 0 );
		 Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 34000, 45000, "Resources/Model/Movie/virus13.x7" );
         Movie:SetActorPlayerExParam( virus, 50001, 58333, "Resources/Model/Movie/virus13.x7" );

	virus = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 851969, 65793, 721409, 1049345, 66561, 66817, 2688513 );
		 Movie:SetActorPlayerExParamHair( virus, 1, 1 );
		 Movie:SetActorPlayerExParamFace( virus, 3, 0 );
		 Movie:SetActorPlayerExParamCoat( virus, 24, 2 );
		 Movie:SetActorPlayerExParamPant( virus, 21, 2 );
		 Movie:SetActorPlayerExParamGlove( virus, 2, 0 );
		 Movie:SetActorPlayerExParamShoes( virus, 2, 0 );
		 Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 33300, 45000, "Resources/Model/Movie/virus14.x7" );
         Movie:SetActorPlayerExParam( virus, 49700, 58333, "Resources/Model/Movie/virus14.x7" );


	virus = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 851969, 65793, 721409, 1049345, 66561, 66817, 2688513 );
		 Movie:SetActorPlayerExParamHair( virus, 1, 1 );
		 Movie:SetActorPlayerExParamFace( virus, 3, 0 );
		 Movie:SetActorPlayerExParamCoat( virus, 24, 2 );
		 Movie:SetActorPlayerExParamPant( virus, 21, 2 );
		 Movie:SetActorPlayerExParamGlove( virus, 2, 0 );
		 Movie:SetActorPlayerExParamShoes( virus, 2, 0 );
		 Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 42780, 50000, "Resources/Model/Movie/virus15.x7" );

	virus = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 851969, 65793, 721409, 1049345, 66561, 66817, 2688513 );
		 Movie:SetActorPlayerExParamHair( virus, 1, 1 );
		 Movie:SetActorPlayerExParamFace( virus, 3, 0 );
		 Movie:SetActorPlayerExParamCoat( virus, 24, 2 );
		 Movie:SetActorPlayerExParamPant( virus, 21, 2 );
		 Movie:SetActorPlayerExParamGlove( virus, 2, 0 );
		 Movie:SetActorPlayerExParamShoes( virus, 2, 0 );
		 Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 42700, 50000, "Resources/Model/Movie/virus16.x7" );

	virus = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 851969, 65793, 786945, 1049345, 66561, 66817, 2688513 );
		 Movie:SetActorPlayerExParamHair( virus, 1, 1 );
		 Movie:SetActorPlayerExParamFace( virus, 3, 0 );
		 Movie:SetActorPlayerExParamCoat( virus, 24, 2 );
		 Movie:SetActorPlayerExParamPant( virus, 21, 2 );
		 Movie:SetActorPlayerExParamGlove( virus, 2, 0 );
		 Movie:SetActorPlayerExParamShoes( virus, 2, 0 );
		 Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 41800, 50000, "Resources/Model/Movie/virus17.x7" );

	virus = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 851969, 65793, 786945, 1049345, 66561, 66817, 2688513 );
		 Movie:SetActorPlayerExParamHair( virus, 1, 1 );
		 Movie:SetActorPlayerExParamFace( virus, 3, 0 );
		 Movie:SetActorPlayerExParamCoat( virus, 24, 2 );
		 Movie:SetActorPlayerExParamPant( virus, 21, 2 );
		 Movie:SetActorPlayerExParamGlove( virus, 2, 0 );
		 Movie:SetActorPlayerExParamShoes( virus, 2, 0 );
		 Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 42300, 50000, "Resources/Model/Movie/virus18.x7" );

	virus = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 851969, 65793, 721409, 1049345, 66561, 66817, 2688513 );
		 Movie:SetActorPlayerExParamHair( virus, 1, 1 );
		 Movie:SetActorPlayerExParamFace( virus, 3, 0 );
		 Movie:SetActorPlayerExParamCoat( virus, 24, 2 );
		 Movie:SetActorPlayerExParamPant( virus, 21, 2 );
		 Movie:SetActorPlayerExParamGlove( virus, 2, 0 );
		 Movie:SetActorPlayerExParamShoes( virus, 2, 0 );
		 Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 41200, 50000, "Resources/Model/Movie/virus19.x7" );

	virus = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 851969, 65793, 721409, 1049345, 66561, 66817, 2688513 );
		 Movie:SetActorPlayerExParamHair( virus, 1, 1 );
		 Movie:SetActorPlayerExParamFace( virus, 3, 0 );
		 Movie:SetActorPlayerExParamCoat( virus, 24, 2 );
		 Movie:SetActorPlayerExParamPant( virus, 21, 2 );
		 Movie:SetActorPlayerExParamGlove( virus, 2, 0 );
		 Movie:SetActorPlayerExParamShoes( virus, 2, 0 );
		 Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 55000, 58333, "Resources/Model/Movie/viruszombie1.x7" );

	textViewer1 = Movie:AddTextViewer( 2500, 65000, 0, 0, MOVIE_STAGE_00 );
	Movie:SetTextViewerParam( textViewer1, 2, 1, 5, 5 );        
	
	textViewer1 = Movie:AddTextViewer( 3300, 5900, 100, 100, MOVIE_STAGE5_01 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 6000, 11650, 100, 100, MOVIE_STAGE5_02 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 11666, 13500, 100, 100, MOVIE_STAGE5_03 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );
	
	textViewer1 = Movie:AddTextViewer( 13666, 15500, 100, 100, MOVIE_STAGE5_04 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 16666, 20150, 100, 100, MOVIE_STAGE5_05 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 21666, 25333, 100, 100, MOVIE_STAGE5_06 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 25500, 27666-1000, 100, 100, MOVIE_STAGE5_07 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 27700-1000, 32000, 100, 100, MOVIE_STAGE5_08 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 32010, 35000, 100, 100, MOVIE_STAGE5_09 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 35010, 39000, 100, 100, MOVIE_STAGE5_10 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 50016, 55000, 100, 100, MOVIE_STAGE5_11 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 55500, 58000, 100, 100, MOVIE_STAGE5_12 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 58350, 60666, 100, 100, MOVIE_STAGE5_13 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );


	Movie:AddSpecialEffect( 0, 500, 2 );
        Movie:AddSpecialEffect( 14166, 14666+334+300, 3 );
	Movie:AddSpecialEffect( 14666+334+300, 15666+334+300, 4 );
        Movie:AddSpecialEffect( 15666+334+300, 17666+334+300, 2 );
	Movie:AddSpecialEffect( 61500, 62000, 3 );
	Movie:AddSpecialEffect( 62000, 72000, 4 );

	Movie:AddSpecialEffect( 34700, 35000, 1 );
	Movie:AddSpecialEffect( 57700, 58000, 1 );
	Movie:AddSpecialEffect( 60400, 62000, 1 );

	Movie:AddBGM( 0, 72000, "Resources/Bgm/plasticmethod.ogg", false, 50 );

	Movie:AddSound( 0, 2000, "Resources/Sound/Acade/viruscry2.ogg", true, 60 );
	Movie:AddSound( 500, 2500, "Resources/Sound/Acade/viruscry3.ogg", true, 60 );
	Movie:AddSound( 1000, 3000, "Resources/Sound/Acade/viruscry4.ogg", true, 60 );
	Movie:AddSound( 1500, 3000, "Resources/Sound/Acade/viruscry5.ogg", true, 60 );
	Movie:AddSound( 0, 1000, "Resources/Sound/Acade/crazyrobot3.ogg", false, 30 );
	Movie:AddSound( 200, 1200, "Resources/Sound/Acade/crazyrobot4.ogg", false, 40 );
	Movie:AddSound( 800, 1800, "Resources/Sound/Acade/crazyrobot3.ogg", false, 40 );
	Movie:AddSound( 1200, 2200, "Resources/Sound/Acade/crazyrobot4.ogg", false, 40 );
	Movie:AddSound( 1800, 2800, "Resources/Sound/Acade/crazyrobot3.ogg", false, 50 );
	Movie:AddSound( 2200, 3200, "Resources/Sound/Acade/crazyrobot4.ogg", false, 50 );
 
	Movie:AddSound( 35000, 42000, "Resources/Sound/Acade/viruscry2.ogg", true, 70 );
	Movie:AddSound( 39000, 44000, "Resources/Sound/Acade/viruscry3.ogg", true, 70 );
	Movie:AddSound( 40000, 46000, "Resources/Sound/Acade/viruscry4.ogg", true, 60 );
	Movie:AddSound( 42000, 50000, "Resources/Sound/Acade/viruscry5.ogg", true, 60 );
	Movie:AddSound( 55500, 58000, "Resources/Sound/Acade/viruscry2.ogg", true, 50 );
	Movie:AddSound( 56500, 59000, "Resources/Sound/Acade/viruscry3.ogg", true, 30 );

	Movie:AddSound( 6000, 7000, "Resources/Sound/Acade/noise.ogg", true, 50 );
	Movie:AddSound( 8000, 9000, "Resources/Sound/Acade/noise.ogg", true, 50 );
	Movie:AddSound( 9000, 10500, "Resources/Sound/Acade/noise.ogg", true, 50 );
	Movie:AddSound( 10500, 11000, "Resources/Sound/Acade/noise.ogg", true, 50 );
	Movie:AddSound( 11000, 12500, "Resources/Sound/Acade/noise.ogg", true, 50 );
		
	Movie:AddSound( 25000, 26000, "Resources/Sound/Acade/noise3.ogg", true, 70 );
	Movie:AddSound( 33010, 34100, "Resources/Sound/Acade/noise3.ogg", true, 70 );
	Movie:AddSound( 34000, 34800, "Resources/Sound/Acade/down.ogg", true, 80 );

	Movie:AddSound( 3900, 4300, "Resources/Sound/run_ground_1.ogg", true, 30 );
	Movie:AddSound( 4200, 4600, "Resources/Sound/run_ground_2.ogg", true, 30 );
	Movie:AddSound( 4600, 5100, "Resources/Sound/run_ground_1.ogg", true, 40 );
	Movie:AddSound( 4900, 5400, "Resources/Sound/run_ground_2.ogg", true, 40 );

	Movie:AddMovieSpeed( 12000, 15000, 0.7 )
end