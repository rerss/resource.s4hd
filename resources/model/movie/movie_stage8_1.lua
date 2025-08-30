LoadStringTable( "Language/Script/Arcade_movie_string_table.x7" );

MOVIE_STAGE_00		= GetString( "MOVIE_STAGE_00" );
MOVIE_STAGE10_01		= GetString( "MOVIE_STAGE10_01" );
MOVIE_STAGE10_02		= GetString( "MOVIE_STAGE10_02" );
MOVIE_STAGE10_03		= GetString( "MOVIE_STAGE10_03" );
MOVIE_STAGE10_04		= GetString( "MOVIE_STAGE10_04" );
MOVIE_STAGE10_05		= GetString( "MOVIE_STAGE10_05" );
MOVIE_STAGE10_06		= GetString( "MOVIE_STAGE10_06" );
MOVIE_STAGE10_07		= GetString( "MOVIE_STAGE10_07" );
MOVIE_STAGE10_08		= GetString( "MOVIE_STAGE10_08" );
MOVIE_STAGE10_09	   = GetString( "MOVIE_STAGE10_09" );
MOVIE_STAGE10_10		= GetString( "MOVIE_STAGE10_10" );
MOVIE_STAGE10_11		= GetString( "MOVIE_STAGE10_11" );
MOVIE_STAGE10_12		= GetString( "MOVIE_STAGE10_12" );
MOVIE_STAGE10_13		= GetString( "MOVIE_STAGE10_13" );
MOVIE_STAGE10_14		= GetString( "MOVIE_STAGE10_14" );
MOVIE_STAGE10_15		= GetString( "MOVIE_STAGE10_15" );

ClearStringTable();

TEAM_ALPHA			= 1;
TEAM_BETA			= 2;
SEX_MALE			= 0;
SEX_FEMALE			= 1;


function initialize()

	Movie:Init( 33166 );
	Movie:AddMovieScene( "Resources/Model/Movie/camera_stage10_1.scn", false); 
	Movie:AddMovieScene( "Resources/Model/Movie/boss_stage10_1.scn", true );

	Movie:AddSequence( 500, 32666, "Resources/Effects/cinemaline.seq" ); 

	Movie:AddSequence( 15100, 15300, "Resources/Effects/pve_fullscenerendertarget01.seq" );  
	Movie:AddSequence( 15101, 15300, "Resources/Effects/cinemaline.seq" );   
	Movie:AddSequence( 15500, 15570, "Resources/Effects/pve_fullscenerendertarget01.seq" );  
	Movie:AddSequence( 15501, 15570, "Resources/Effects/cinemaline.seq" );   
	Movie:AddSequence( 16000, 16200, "Resources/Effects/pve_fullscenerendertarget01.seq" );  
	Movie:AddSequence( 16001, 16200, "Resources/Effects/cinemaline.seq" );   
	Movie:AddSequence( 16700, 16800, "Resources/Effects/pve_fullscenerendertarget01.seq" );  
	Movie:AddSequence( 16701, 16800, "Resources/Effects/cinemaline.seq" );   
	Movie:AddSequence( 30500, 30520, "Resources/Effects/pve_fullscenerendertarget01.seq" );  
	Movie:AddSequence( 30501, 30520, "Resources/Effects/cinemaline.seq" ); 
	Movie:AddSequence( 30620, 30680, "Resources/Effects/pve_fullscenerendertarget01.seq" );  
	Movie:AddSequence( 30621, 30680, "Resources/Effects/cinemaline.seq" ); 
	Movie:AddSequence( 31200, 31240, "Resources/Effects/pve_fullscenerendertarget01.seq" );  
	Movie:AddSequence( 31201, 31240, "Resources/Effects/cinemaline.seq" ); 
	Movie:AddSequence( 31400, 31430, "Resources/Effects/pve_fullscenerendertarget01.seq" );  
	Movie:AddSequence( 31401, 31430, "Resources/Effects/cinemaline.seq" ); 

	--카메라 파일 불러오기
	Movie:AddTMController_Camera( 0, 1500, 60, "I001" );
        Movie:AddTMController_Camera( 1500, 4983, 60, "I002" );
        Movie:AddTMController_Camera( 4984, 14166-300, 60, "I001" );
        Movie:AddTMController_Camera( 8800, 11983-1300, 60, "I002" );
        Movie:AddTMController_Camera( 11984-1300, 14166-300, 60, "I001" );
	Movie:AddTMController_Camera(14167-300, 16983, 60, "I002" );
        Movie:AddTMController_Camera(16984, 21000, 60, "I001" );
        Movie:AddTMController_Camera(21001, 23150, 60, "I002" );
	Movie:AddTMController_Camera(23151, 25933, 60, "I001" );
        Movie:AddTMController_Camera(25934, 27515, 60, "I002" );
        Movie:AddTMController_Camera(27516, 29150, 60, "I003" );
        Movie:AddTMController_Camera(29151, 33166, 60, "I001" );

	Movie:AddSequence3D( 0, 4983, "Resources/Effects/skill_hacker_mindenergy_enemy.seq", false, "if2" );
	Movie:AddSequence3D( 1700, 4983, "Resources/Effects/skill_hacker_mindenergy_enemy.seq", false, "if" );
	Movie:AddSequence3D( 4000, 4983, "Resources/Effects/skill_hacker_mindenergy_enemy.seq", false, "if1" );

	Movie:AddMovieScene( "Resources/Model/Movie/boss_stage10_1.scn", true );
	boss = Movie:AddSceneLoader( 0, 33166, "resources/model/monster/boss_bip.scn", true, "boss" );
	 Movie:AddAnimController_Scene( 0, boss, "MM012", 0, false, true, 1.0 );
	 Movie:AddAnimController_Scene( 1516, boss, "MM006", 300, false, true, 1.0 );
	 Movie:AddAnimController_Scene( 14183-300, boss, "MM005", 500, true, true, 1.0 );
	 Movie:AddAnimController_Scene( 17000, boss, "MM012", 300, false, true, 1.0 );
	 Movie:AddSequence3D_Scene( 0, 33166, "Resources/Effects/pve_boss_fog01.seq", true, boss, "" );



	
	virustot1 = Movie:AddSceneLoader( 0, 33166, "resources/model/monster/virus_bip.scn", true, "virustot1" );
	 Movie:AddAnimController_Scene( 1516, virustot1, "MV007", 0, true, true, 1.6 );
	virustot2 = Movie:AddSceneLoader( 0, 33166, "resources/model/monster/virus_bip.scn", true, "virustot2" );
	 Movie:AddAnimController_Scene( 1516, virustot2, "MV007", 0, true, true, 1.2 );
	virustot3 = Movie:AddSceneLoader( 0, 33166, "resources/model/monster/virus_bip.scn", true, "virustot3" );
	 Movie:AddAnimController_Scene( 1516, virustot3, "MV007", 0, true, true, 1.1 );
	virustot4 = Movie:AddSceneLoader( 0, 33166, "resources/model/monster/virus_bip.scn", true, "virustot4" );
	 Movie:AddAnimController_Scene( 1516, virustot4, "MV007", 0, true, true, 1.0 );
	virustot5 = Movie:AddSceneLoader( 0, 33166, "resources/model/monster/virus_bip.scn", true, "virustot5" );
	 Movie:AddAnimController_Scene( 1516, virustot5, "MV007", 0, true, true, 1.3 );
	virustot6 = Movie:AddSceneLoader( 0, 33166, "resources/model/monster/virus_bip.scn", true, "virustot6" );
	 Movie:AddAnimController_Scene( 1516, virustot6, "MV007", 0, true, true, 1.2 );
	virustot7 = Movie:AddSceneLoader( 0, 33166, "resources/model/monster/virus_bip.scn", true, "virustot7" );
	 Movie:AddAnimController_Scene( 1516, virustot7, "MV007", 0, true, true, 1.1 );
	virustot8 = Movie:AddSceneLoader( 0, 33166, "resources/model/monster/virus_bip.scn", true, "virustot8" );
	 Movie:AddAnimController_Scene( 0, virustot8, "MV007", 0, true, true, 1.6 );
	virustot9 = Movie:AddSceneLoader( 0, 33166, "resources/model/monster/virus_bip.scn", true, "virustot9" );
	 Movie:AddAnimController_Scene( 0, virustot9, "MV007", 0, true, true, 1.7 );
	virustot10 = Movie:AddSceneLoader( 0, 33166, "resources/model/monster/virus_bip.scn", true, "virustot10" );
	 Movie:AddAnimController_Scene( 1516, virustot10, "MV007", 0, true, true, 1.2 );
	virustot11 = Movie:AddSceneLoader( 0, 33166, "resources/model/monster/virus_bip.scn", true, "virustot11" );
	 Movie:AddAnimController_Scene( 1516, virustot11, "MV007", 0, true, true, 1.4 );
	virustot12 = Movie:AddSceneLoader( 0, 33166, "resources/model/monster/virus_bip.scn", true, "virustot12" );
	 Movie:AddAnimController_Scene( 1516, virustot12, "MV007", 0, true, true, 1.4 );
	virustot13 = Movie:AddSceneLoader( 0, 33166, "resources/model/monster/virus_bip.scn", true, "virustot13" );
	 Movie:AddAnimController_Scene( 1516, virustot13, "MV007", 0, true, true, 1.2 );
	virustot14 = Movie:AddSceneLoader( 0, 33166, "resources/model/monster/virus_bip.scn", true, "virustot14" );
	 Movie:AddAnimController_Scene( 1516, virustot14, "MV007", 0, true, true, 1.8 );
	virustot15 = Movie:AddSceneLoader( 0, 33166, "resources/model/monster/virus_bip.scn", true, "virustot15" );
	 Movie:AddAnimController_Scene( 1516, virustot15, "MV007", 0, true, true, 1.7 );
	virustot16 = Movie:AddSceneLoader( 0, 33166, "resources/model/monster/virus_bip.scn", true, "virustot16" );
	 Movie:AddAnimController_Scene( 1516, virustot16, "MV007", 0, true, true, 1.8 );
	virustot17 = Movie:AddSceneLoader( 0, 33166, "resources/model/monster/virus_bip.scn", true, "virustot17" );
	 Movie:AddAnimController_Scene( 1516, virustot17, "MV007", 0, true, true, 1.7 );
	virustot18 = Movie:AddSceneLoader( 0, 33166, "resources/model/monster/virus_bip.scn", true, "virustot18" );
	 Movie:AddAnimController_Scene( 1516, virustot18, "MV007", 0, true, true, 1.6 );


	


        --카메라 지정
        focus_actor1 = Movie:AddActorPlayerEx2( Movie:GetFocusPC(), TEAM_ALPHA );
	 Movie:SetID( focus_actor1, 1 );
	 Movie:SetActorPlayerExParam( focus_actor1, 0, 4986, "Resources/Model/Movie/stage10_1.x7" );

        focus_actor2 = Movie:AddActorPlayerEx2( Movie:GetFocusPC(), TEAM_ALPHA );
	 Movie:SetID( focus_actor2, 1 );
	 Movie:SetActorPlayerExParam( focus_actor2, 3200+1000, 14166, "Resources/Model/Movie/stage10_3.x7" );
	 Movie:SetActorPlayerExParam( focus_actor2, 16800, 21800, "Resources/Model/Movie/idle.x7" );
	 Movie:SetActorPlayerExParam( focus_actor2, 22400, 25933, "Resources/Model/Movie/stage10_7.x7" );
	 Movie:SetActorPlayerExParam( focus_actor2, 29000, 33066, "Resources/Model/Movie/stage10_9.x7" );

        Kitchi = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( Kitchi, 4456449, 1310977, 72745473, 72680193, 68682753, 70124801, 0 );
		 Movie:SetActorPlayerExParamHair( Kitchi, 9, 0 );
		 Movie:SetActorPlayerExParamFace( Kitchi, 12, 0 );
		 Movie:SetActorPlayerExParamCoat( Kitchi, 21, 0 );
		 Movie:SetActorPlayerExParamPant( Kitchi, 20, 0 );
		 Movie:SetActorPlayerExParamGlove( Kitchi, 20, 0 );
		 Movie:SetActorPlayerExParamShoes( Kitchi, 20, 0 );

	 Movie:SetActorPlayerExParam( Kitchi, 4300, 14166, "Resources/Model/Movie/stage10_2.x7" );
	 Movie:SetActorPlayerExParam( Kitchi, 17000, 21800-800, "Resources/Model/Movie/stage10_5.x7" );

        Kitchi2 = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( Kitchi2, 4456449, 1310977, 72745473, 72680193, 68682753, 70124801, 0 );
		 Movie:SetActorPlayerExParamHair( Kitchi2, 9, 0 );
		 Movie:SetActorPlayerExParamFace( Kitchi2, 12, 0 );
		 Movie:SetActorPlayerExParamCoat( Kitchi2, 21, 0 );
		 Movie:SetActorPlayerExParamPant( Kitchi2, 20, 0 );
		 Movie:SetActorPlayerExParamGlove( Kitchi2, 20, 0 );
		 Movie:SetActorPlayerExParamShoes( Kitchi2, 20, 0 );

	 Movie:SetActorPlayerExParam( Kitchi2, 20990, 23150, "Resources/Model/Movie/stage10_6.x7" );
	 Movie:SetActorPlayerExParam( Kitchi2, 25640, 29150, "Resources/Model/Movie/stage10_8.x7" );

	textViewer1 = Movie:AddTextViewer( 2500, 30000, 0, 0, MOVIE_STAGE_00 );
	Movie:SetTextViewerParam( textViewer1, 2, 1, 5, 5 );   
	
	textViewer1 = Movie:AddTextViewer( 0, 3000, 100, 100, MOVIE_STAGE10_01 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 3001, 5000, 100, 100, MOVIE_STAGE10_02 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 5001, 7500, 100, 100, MOVIE_STAGE10_03 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );
	
	textViewer1 = Movie:AddTextViewer( 7501, 9500, 100, 100, MOVIE_STAGE10_04 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 9501, 11500, 100, 100, MOVIE_STAGE10_05 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );
	
	textViewer1 = Movie:AddTextViewer( 11501, 14500, 100, 100, MOVIE_STAGE10_06 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 14501, 17500, 100, 100, MOVIE_STAGE10_07 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 17501, 18500, 100, 100, MOVIE_STAGE10_08 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );
	
	textViewer1 = Movie:AddTextViewer( 18501, 20000, 100, 100, MOVIE_STAGE10_09 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 20001, 21800, 100, 100, MOVIE_STAGE10_10 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 21816, 23150, 100, 100, MOVIE_STAGE10_11 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 23166, 25933, 100, 100, MOVIE_STAGE10_12 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 25950, 29150, 100, 100, MOVIE_STAGE10_13 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 29166, 32166, 100, 100, MOVIE_STAGE10_14 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 32200, 33166, 100, 100, MOVIE_STAGE10_15 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	Movie:AddSpecialEffect( 0, 500, 2 );
	Movie:AddSpecialEffect(32666, 33166, 3 );
	Movie:AddSpecialEffect(33166, 43166, 4 );

	Movie:AddSpecialEffect(14167-300, 16983, 1 );
	Movie:AddSpecialEffect(32366, 33166, 1 );
	
	Movie:AddMovieSpeed( 3001, 5590, 0.7 )
	Movie:AddMovieSpeed( 5001, 7500, 0.7 )
	Movie:AddMovieSpeed( 7501, 9500, 0.7 )
	Movie:AddMovieSpeed( 9501, 11500, 0.6 )

	Movie:AddBGM( 0, 63166, "Resources/Bgm/NANORISK.ogg", false, 30 )
	
	Movie:AddSound( 2000, 5300, "Resources/Sound/Acade/viruscry2.ogg", true, 70 );
	Movie:AddSound( 2500, 4800, "Resources/Sound/Acade/bossvirus_wait.ogg", true, 70 );
	Movie:AddSound( 2400, 5300, "Resources/Sound/Acade/viruscry3.ogg", true, 70 );
	Movie:AddSound( 3000, 5500, "Resources/Sound/Acade/viruscry4.ogg", true, 70 );
	
	Movie:AddSound( 13500, 16500, "Resources/Sound/Acade/bossvirus_stun.ogg", true, 70 );
	Movie:AddSound( 13500, 17500, "Resources/Sound/Acade/noise.ogg", true, 80 );
	Movie:AddSound( 15500, 17500, "Resources/Sound/Acade/bossvirus_wait.ogg", true, 70 );
	
	Movie:AddSound( 28500, 32500, "Resources/Sound/Acade/bossvirus_stun.ogg", true, 70 );
	Movie:AddSound( 28500, 32500, "Resources/Sound/Acade/noise.ogg", true, 80 );
	Movie:AddSound( 29500, 32500, "Resources/Sound/Acade/bossvirus_wait.ogg", true, 70 );
	Movie:AddSound( 28500, 32500, "Resources/Sound/Acade/viruscry2.ogg", true, 60 );
	Movie:AddSound( 28500, 32500, "Resources/Sound/Acade/viruscry3.ogg", true, 60 );

	
end