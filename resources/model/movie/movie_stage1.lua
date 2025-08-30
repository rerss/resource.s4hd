LoadStringTable( "Language/Script/Arcade_movie_string_table.x7" );

MOVIE_STAGE_00		= GetString( "MOVIE_STAGE_00" );
MOVIE_STAGE1_01		= GetString( "MOVIE_STAGE1_01" );
MOVIE_STAGE1_02		= GetString( "MOVIE_STAGE1_02" );
MOVIE_STAGE1_03		= GetString( "MOVIE_STAGE1_03" );
MOVIE_STAGE1_04		= GetString( "MOVIE_STAGE1_04" );
MOVIE_STAGE1_05		= GetString( "MOVIE_STAGE1_05" );
MOVIE_STAGE1_06		= GetString( "MOVIE_STAGE1_06" );
MOVIE_STAGE1_07	   = GetString( "MOVIE_STAGE1_07" );
MOVIE_STAGE1_08		= GetString( "MOVIE_STAGE1_08" );

ClearStringTable();

TEAM_ALPHA			= 1;
TEAM_BETA			= 2;
SEX_MALE			= 0;
SEX_FEMALE			= 1;


function initialize()

	Movie:Init( 31666 );
	Movie:AddMovieScene( "Resources/Model/Movie/camera_stage1.scn", false); 
	Movie:AddMovieScene( "Resources/Model/Movie/stage1_jaco.scn", false); 
        --카메라 파일 불러오기
	Movie:AddSequence( 700, 31166, "Resources/Effects/cinemaline.seq" );
	Movie:AddTMController_Camera( 500, 3499, 60, "A001" );
	Movie:AddTMController_Camera( 3500, 6600, 60, "A003" );
	Movie:AddTMController_Camera( 6601, 12099, 60, "A001_1" );
	Movie:AddTMController_Camera( 12100, 16199, 60, "A002" );
	Movie:AddTMController_Camera( 16200, 20999, 60, "A002_1" );
	Movie:AddTMController_Camera( 21000, 24000-1000, 60, "A003" );
	Movie:AddTMController_Camera( 24001-1000, 25500, 60, "A002_1" );
	Movie:AddTMController_Camera( 25501, 31666, 60, "A001" );
       
        --카메라 지정

	Movie:AddMovieScene( "Resources/Model/Movie/stage1_jaco.scn", true );
	jaco01 = Movie:AddSceneLoader( 25000-1000, 31666, "resources/model/monster/jaco_bip.scn", true, "jaco01" );
	 Movie:AddAnimController_Scene( 25000-1000, jaco01, "MA001", 0, true, true, 1.0 );
	 Movie:AddAnimController_Scene( 27000, jaco01, "MA005", 800, true, true, 1.0 );
         Movie:AddSequence3D( 25000-1000, 27000, "Resources/Effects/stun.seq", false, "jaco01" );

	Movie:AddMovieScene( "Resources/Model/Movie/stage1_jaco.scn", true );
	jaco02 = Movie:AddSceneLoader( 26016-1000, 31666, "resources/model/monster/jaco_bip.scn", true, "jaco02" );
	 Movie:AddAnimController_Scene( 26016-1000, jaco02, "MA001", 0, true, true, 1.0 );
	 Movie:AddAnimController_Scene( 29016, jaco02, "MA005", 800, true, true, 1.0 );
         Movie:AddSequence3D( 26016-1000, 29016, "Resources/Effects/stun.seq", true, "jaco02" );

	Movie:AddMovieScene( "Resources/Model/Movie/stage1_jaco.scn", true );
	jaco04 = Movie:AddSceneLoader( 27016-1000, 31666, "resources/model/monster/jaco_bip.scn", true, "jaco04" );
	 Movie:AddAnimController_Scene( 27016-1000, jaco04, "MA001", 0, true, true, 1.0 );
	 Movie:AddAnimController_Scene( 29016, jaco04, "MA005", 800, true, true, 1.0 );
         Movie:AddSequence3D( 27016-1000, 31350, "Resources/Effects/stun.seq", true, "jaco04" );

	Movie:AddMovieScene( "Resources/Model/Movie/stage1_jaco.scn", true );
	jaco03 = Movie:AddSceneLoader( 29350-1000-1000, 31666, "resources/model/monster/jaco_bip.scn", true, "jaco03" );
	 Movie:AddAnimController_Scene( 29350-1000-1000, jaco03, "MA001", 0, true, true, 1.0 );
	 Movie:AddAnimController_Scene( 30350, jaco03, "MA005", 800, true, true, 1.0 );
         Movie:AddSequence3D( 29350-1000-1000, 31350, "Resources/Effects/stun.seq", false, "jaco03" );


        focus_actor1 = Movie:AddActorPlayerEx2( Movie:GetFocusPC(), TEAM_ALPHA );
	 Movie:SetID( focus_actor1, 1 );
	 Movie:SetActorPlayerExParam( focus_actor1, 0, 12100, "Resources/Model/Movie/stage1_2.x7" );
         Movie:SetActorPlayerExParam( focus_actor1, 20200, 23000, "Resources/Model/Movie/stage1_3.x7" );

        focus_actor2 = Movie:AddActorPlayerEx2( Movie:GetFocusPC(), TEAM_ALPHA );
	 Movie:SetID( focus_actor2, 1 );
         Movie:SetActorPlayerExParam( focus_actor2, 11290, 21000, "Resources/Model/Movie/stage_test.x7" );
         Movie:SetActorPlayerExParam( focus_actor2, 22500, 27000, "Resources/Model/Movie/stage_test.x7" );
         Movie:SetActorPlayerExParam( focus_actor2, 28000, 31666, "Resources/Model/Movie/stage_test.x7" );

	 textViewer1 = Movie:AddTextViewer( 2500, 24000, 1000, 1000, MOVIE_STAGE_00 );
	Movie:SetTextViewerParam( textViewer1, 2, 1, 5, 5 );	
        
	textViewer1 = Movie:AddTextViewer( 1000, 3400, 0, 0, MOVIE_STAGE1_01 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 3500, 7200, 0, 0, MOVIE_STAGE1_02 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 7250, 9500, 0, 0, MOVIE_STAGE1_03 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );
	
	textViewer1 = Movie:AddTextViewer( 9500, 12500, 0, 0, MOVIE_STAGE1_04 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 12600, 16500, 0, 0, MOVIE_STAGE1_05 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 16550, 18500, 0, 0, MOVIE_STAGE1_06 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );
	
	textViewer1 = Movie:AddTextViewer( 18500, 21000, 0, 0, MOVIE_STAGE1_07 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 21500, 24000, 0, 0, MOVIE_STAGE1_08 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	Movie:AddSpecialEffect( 0, 800, 4 );
	Movie:AddSpecialEffect( 800, 1000, 2 );
	Movie:AddSpecialEffect( 31166, 31666, 3 );
	Movie:AddSpecialEffect( 31666, 41666, 4 );

	Movie:AddSpecialEffect( 31066, 31666, 1 );

	Movie:AddMovieSpeed( 0, 900, 0.3 );
	Movie:AddBGM( 16550, 41666, "Resources/Bgm/battle1.ogg", true, 50 )

	Movie:AddSound( 0, 700, "Resources/Sound/Acade/resp.ogg", false, 100 );
	Movie:AddSound( 600, 1200, "Resources/Sound/Acade/player_respawn.ogg", false, 100 );
	Movie:AddSound( 1000, 2400, "Resources/Sound/Acade/network3.ogg", false, 70 );
	Movie:AddSound( 7250, 9400, "Resources/Sound/Acade/network3.ogg", false, 70 );
	Movie:AddSound( 16550, 18550, "Resources/Sound/Acade/network3.ogg", false, 70 );
	Movie:AddSound( 24000, 25000, "Resources/Sound/Acade/resp_robot.ogg", false, 70 );
	Movie:AddSound( 25000, 26000, "Resources/Sound/Acade/resp_robot.ogg", false, 70 );
	Movie:AddSound( 26000, 27000, "Resources/Sound/Acade/resp_robot.ogg", false, 70 );
	Movie:AddSound( 27100, 28100, "Resources/Sound/Acade/resp_robot.ogg", false, 70 );

end