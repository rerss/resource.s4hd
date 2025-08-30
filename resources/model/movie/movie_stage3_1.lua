LoadStringTable( "Language/Script/Arcade_movie_string_table.x7" );

MOVIE_STAGE_00		= GetString( "MOVIE_STAGE_00" );
MOVIE_STAGE3_01		= GetString( "MOVIE_STAGE3_01" );
MOVIE_STAGE3_02		= GetString( "MOVIE_STAGE3_02" );
MOVIE_STAGE3_03		= GetString( "MOVIE_STAGE3_03" );
MOVIE_STAGE3_04		= GetString( "MOVIE_STAGE3_04" );
MOVIE_STAGE3_05		= GetString( "MOVIE_STAGE3_05" );
MOVIE_STAGE3_06		= GetString( "MOVIE_STAGE3_06" );
MOVIE_STAGE3_07		= GetString( "MOVIE_STAGE3_07" );
MOVIE_STAGE3_08		= GetString( "MOVIE_STAGE3_08" );
MOVIE_STAGE3_09		= GetString( "MOVIE_STAGE3_09" );
MOVIE_STAGE3_10		= GetString( "MOVIE_STAGE3_10" );
MOVIE_STAGE3_11		= GetString( "MOVIE_STAGE3_11" );

ClearStringTable();

TEAM_ALPHA			= 1;
TEAM_BETA			= 2;
SEX_MALE			= 0;
SEX_FEMALE			= 1;


function initialize()

	Movie:Init( 44500 );
	Movie:AddMovieScene( "Resources/Model/Movie/camera_stage3.scn", false);
	Movie:AddMovieScene( "Resources/Model/Movie/jaco_stage3.scn", true ); 

	Movie:AddSequence( 500, 44000, "Resources/Effects/cinemaline.seq" );  
        --카메라 파일 불러오기
	Movie:AddSequence( 2000, 51203, "Resources/Effects/cinemaline.seq" );
	Movie:AddTMController_Camera( 0, 5810, 60, "Y001" );
        Movie:AddTMController_Camera( 5833, 15010, 60, "Y002" );
        Movie:AddTMController_Camera(15030, 25030-1100, 60, "Y003" );
        Movie:AddTMController_Camera(25050-1100, 31650, 60, "Y004" ); 
        Movie:AddTMController_Camera(31660, 34760, 60, "Y005" ); 
        Movie:AddTMController_Camera(34860, 39560, 60, "Y006" );
        Movie:AddTMController_Camera(40000, 44500, 60, "Y007" );

	Movie:AddMovieScene( "Resources/Model/Movie/jaco_stage3.scn", true );
	jaco1 = Movie:AddSceneLoader( 0, 44500, "resources/model/monster/jaco1_bip.scn", true, "jaco1" );
	 Movie:AddAnimController_Scene( 0, jaco1, "MC004", 0, true, true, 1.0 );
	 Movie:AddAnimController_Scene( 18000, jaco1, "MC007", 0, true, true, 1.0 );
	 Movie:AddSequence3D( 18100, 23930, "Resources/Effects/dead_eff.seq", true, "jaco1" );
	 Movie:AddSequence3D_Scene( 0, 34860, "Resources/Effects/pve_jaco.seq", true, jaco1, "" );

	jaco2 = Movie:AddSceneLoader( 0, 44500, "resources/model/monster/jaco_bip.scn", true, "jaco2" );
	 Movie:AddAnimController_Scene( 0, jaco2, "MA005", 0, true, true, 1.0 );
	 Movie:AddAnimController_Scene( 18800, jaco2, "MA008", 0, true, true, 1.0 );
	 Movie:AddSequence3D_Scene( 0, 34860, "Resources/Effects/pve_jaco.seq", true, jaco2, "" );

	jaco3 = Movie:AddSceneLoader( 0, 44500, "resources/model/monster/jaco_bip.scn", true, "jaco3" );
	 Movie:AddAnimController_Scene( 0, jaco3, "MA005", 0, true, true, 1.0 );
	 Movie:AddAnimController_Scene( 19200, jaco3, "MA008", 0, true, true, 1.0 );
	 Movie:AddSequence3D_Scene( 0, 34860, "Resources/Effects/pve_jaco.seq", true, jaco3, "" );

	jaco4 = Movie:AddSceneLoader( 0, 44500, "resources/model/monster/jaco_bip.scn", true, "jaco4" );
	 Movie:AddAnimController_Scene( 0, jaco4, "MA005", 0, true, true, 1.0 );
	 Movie:AddAnimController_Scene( 19800, jaco4, "MA008", 0, true, true, 1.0 );
	 Movie:AddAnimController_Scene( 28500, jaco4, "MA007", 300, false, false, 1.0 );
	 Movie:AddSequence3D( 28600, 31650, "Resources/Effects/dead_eff.seq", true, "jaco4" );
	 Movie:AddSequence3D_Scene( 0, 31400, "Resources/Effects/pve_jaco.seq", true, jaco4, "" );

        --카메라 지정

        focus_actor1 = Movie:AddActorPlayerEx2( Movie:GetFocusPC(), TEAM_ALPHA );
	 Movie:SetID( focus_actor1, 1 );
	 Movie:SetActorPlayerExParam( focus_actor1, 5000, 13000, "Resources/Model/Movie/stage3_2.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 13001, 30000, "Resources/Model/Movie/stage3_4.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 31400, 40000, "Resources/Model/Movie/stage3_6.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 39999, 44500, "Resources/Model/Movie/stage3_8.x7" );

        taejo = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
        -- Movie:SetActorPlayerExParam1( taejo, 3932161, 786689, 1311233, 1573633, 1049601, 984321, 0 );
		 Movie:SetActorPlayerExParamHair( taejo, 14, 0 );
		 Movie:SetActorPlayerExParamFace( taejo, 17, 0 );
		 Movie:SetActorPlayerExParamCoat( taejo, 33, 0 );
		 Movie:SetActorPlayerExParamPant( taejo, 30, 0 );
		 Movie:SetActorPlayerExParamGlove( taejo, 29, 0 );
		 Movie:SetActorPlayerExParamShoes( taejo, 29, 0 );
		-- Movie:SetActorPlayerExParamAccessary( taejo, 0, 0 );
	 Movie:SetActorPlayerExParam( taejo, 0, 6000, "Resources/Model/Movie/stage3_3.x7" );
	 Movie:SetActorPlayerExParam( taejo, 13000, 30000, "Resources/Model/Movie/stage3_3.x7" );
	 Movie:SetActorPlayerExParam( taejo, 34000, 40000, "Resources/Model/Movie/stage3_7.x7" );

        taejo_buha1 = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( taejo_buha1, 196609, 196865, 67305985, 1966849, 67044353, 70714625, 2295297 );
		 Movie:SetActorPlayerExParamHair( taejo_buha1, 1, 0 );
		 Movie:SetActorPlayerExParamFace( taejo_buha1, 14, 0 );
		 Movie:SetActorPlayerExParamCoat( taejo_buha1, 32, 0 );
		 Movie:SetActorPlayerExParamPant( taejo_buha1, 33, 0 );
		 Movie:SetActorPlayerExParamGlove( taejo_buha1, 33, 0 );
		 Movie:SetActorPlayerExParamShoes( taejo_buha1, 38, 0 );
		 Movie:SetActorPlayerExParamAccessary( taejo_buha1, 25, 0 );
         Movie:SetActorPlayerExParam( taejo_buha1, 0, 40000, "Resources/Model/Movie/stage3_a.x7" );

        taejo_buha2 = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( taejo_buha2, 196609, 196865, 67305985, 1966849, 67044353, 70714625, 2295297 );
		 Movie:SetActorPlayerExParamHair( taejo_buha2, 1, 0 );
		 Movie:SetActorPlayerExParamFace( taejo_buha2, 14, 0 );
		 Movie:SetActorPlayerExParamCoat( taejo_buha2, 32, 0 );
		 Movie:SetActorPlayerExParamPant( taejo_buha2, 33, 0 );
		 Movie:SetActorPlayerExParamGlove( taejo_buha2, 33, 0 );
		 Movie:SetActorPlayerExParamShoes( taejo_buha2, 38, 0 );
		 Movie:SetActorPlayerExParamAccessary( taejo_buha2, 25, 0 );
         Movie:SetActorPlayerExParam( taejo_buha2, 0, 40000, "Resources/Model/Movie/stage3_b.x7" );

	 textViewer1 = Movie:AddTextViewer( 2500, 54000, 0, 0, MOVIE_STAGE_00 );
	Movie:SetTextViewerParam( textViewer1, 2, 1, 5, 5 );

        textViewer1 = Movie:AddTextViewer( 0, 5799, 100, 100, MOVIE_STAGE3_01 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 5800, 7899, 100, 100, MOVIE_STAGE3_02 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 8100, 10999, 100, 100, MOVIE_STAGE3_03 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 11000, 14999, 100, 100, MOVIE_STAGE3_04 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 15000, 17299, 100, 100, MOVIE_STAGE3_05 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 17300, 22100, 100, 100, MOVIE_STAGE3_06 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 22200, 25000, 100, 100, MOVIE_STAGE3_07 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 31400, 34799, 100, 100, MOVIE_STAGE3_08 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 34800, 37000, 100, 100, MOVIE_STAGE3_09 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 37000, 40000, 100, 100, MOVIE_STAGE3_10 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 40100, 43000, 100, 100, MOVIE_STAGE3_11 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	Movie:AddSpecialEffect( 0, 1000, 4 );
	Movie:AddSpecialEffect( 1000, 1500, 2 );
	Movie:AddSpecialEffect( 44000, 44500, 3 );
	Movie:AddSpecialEffect( 44500, 54500, 4 );

	Movie:AddSpecialEffect( 40200, 40300, 1 );
	Movie:AddSpecialEffect( 43800, 44500, 1 );
	
	Movie:AddBGM( 31000, 54500, "Resources/Bgm/ComeOn_S4.ogg", true, 30 )

	Movie:AddSound( 8100, 9100, "Resources/Sound/Acade/crazyrobot4.ogg", false, 20 );
	Movie:AddSound( 8900, 9900, "Resources/Sound/Acade/crazyrobot4.ogg", false, 20 );
	Movie:AddSound( 9700, 10700, "Resources/Sound/Acade/crazyrobot4.ogg", false, 20 );
	Movie:AddSound( 10500, 11500, "Resources/Sound/Acade/crazyrobot3.ogg", false, 20 );
	Movie:AddSound( 10500, 11500, "Resources/Sound/Acade/crazyrobot4.ogg", false, 20 );
	Movie:AddSound( 11300, 12300, "Resources/Sound/Acade/crazyrobot3.ogg", false, 30 );
	Movie:AddSound( 11300, 12300, "Resources/Sound/Acade/crazyrobot4.ogg", false, 30 );
	Movie:AddSound( 12100, 13100, "Resources/Sound/Acade/crazyrobot4.ogg", false, 30 );
	Movie:AddSound( 12900, 13900, "Resources/Sound/Acade/crazyrobot4.ogg", false, 30 );
	Movie:AddSound( 13700, 14700, "Resources/Sound/Acade/crazyrobot3.ogg", false, 40 );
	Movie:AddSound( 13700, 14700, "Resources/Sound/Acade/crazyrobot4.ogg", false, 40 );
	Movie:AddSound( 14500, 15500, "Resources/Sound/Acade/crazyrobot4.ogg", false, 40 );

	Movie:AddSound( 24500, 25500, "Resources/Sound/Acade/crazyrobot1.ogg", false, 70 );
	Movie:AddSound( 25400, 26400, "Resources/Sound/Acade/crazyrobot2.ogg", false, 70 );
	Movie:AddSound( 26400, 27200, "Resources/Sound/Acade/crazyrobot3.ogg", false, 70 );
	Movie:AddSound( 26400, 27200, "Resources/Sound/Acade/crazyrobot1.ogg", false, 70 );
	Movie:AddSound( 26400, 27200, "Resources/Sound/Acade/crazyrobot2.ogg", false, 70 );
	Movie:AddSound( 27000, 27800, "Resources/Sound/Acade/crazyrobot4.ogg", false, 70 );
	Movie:AddSound( 27600, 28400, "Resources/Sound/Acade/crazyrobot3.ogg", false, 70 );
	Movie:AddSound( 27400, 28400, "Resources/Sound/Acade/crazyrobot2.ogg", false, 70 );
	Movie:AddSound( 28200, 29200, "Resources/Sound/Acade/crazyrobot1.ogg", false, 70 );
	Movie:AddSound( 29000, 30000, "Resources/Sound/Acade/crazyrobot2.ogg", false, 70 );
	Movie:AddSound( 29000, 30000, "Resources/Sound/Acade/crazyrobot4.ogg", false, 70 );
	Movie:AddSound( 29800, 31000, "Resources/Sound/Acade/crazyrobot1.ogg", false, 70 );
		
	Movie:AddMovieSpeed( 15000, 17299, 0.7 )
	Movie:AddMovieSpeed( 34800, 40000, 0.7 )
end