LoadStringTable( "Language/Script/Arcade_movie_string_table.x7" );

MOVIE_STAGE_00		= GetString( "MOVIE_STAGE_00" );
MOVIE_STAGE6_03		= GetString( "MOVIE_STAGE6_03" );
MOVIE_STAGE6_04		= GetString( "MOVIE_STAGE6_04" );
MOVIE_STAGE6_05		= GetString( "MOVIE_STAGE6_05" );
MOVIE_STAGE6_06		= GetString( "MOVIE_STAGE6_06" );
MOVIE_STAGE6_07		= GetString( "MOVIE_STAGE6_07" );
MOVIE_STAGE6_08		= GetString( "MOVIE_STAGE6_08" );
MOVIE_STAGE6_09		= GetString( "MOVIE_STAGE6_09" );
MOVIE_STAGE6_10		= GetString( "MOVIE_STAGE6_10" );
MOVIE_STAGE6_11		= GetString( "MOVIE_STAGE6_11" );
MOVIE_STAGE6_12		= GetString( "MOVIE_STAGE6_12" );
MOVIE_STAGE6_13		= GetString( "MOVIE_STAGE6_13" );
MOVIE_STAGE6_14		= GetString( "MOVIE_STAGE6_14" );
MOVIE_STAGE6_15		= GetString( "MOVIE_STAGE6_15" );
MOVIE_STAGE6_16		= GetString( "MOVIE_STAGE6_16" );


ClearStringTable();



TEAM_ALPHA			= 1;
TEAM_BETA			= 2;
SEX_MALE			= 0;
SEX_FEMALE			= 1;


function initialize()

	Movie:Init( 33533 );
	Movie:AddMovieScene( "Resources/Model/Movie/camera_stage6_2.scn", false); 
	Movie:AddSequence( 500, 33033, "Resources/Effects/cinemaline.seq" );        
	--카메라 파일 불러오기
	Movie:AddTMController_Camera( 0, 1682 , 60, "D001" );
        Movie:AddTMController_Camera( 1683, 4832, 60, "D002" );
        Movie:AddTMController_Camera( 4833, 8499, 60, "D001" );
	Movie:AddTMController_Camera( 8500, 10499, 60, "D002" );
        Movie:AddTMController_Camera( 10500, 15665, 60, "D001" );
        Movie:AddTMController_Camera(15666, 18632, 60, "D002" );
        Movie:AddTMController_Camera(18633, 23965, 60, "D001" );
	Movie:AddTMController_Camera(23966, 27332, 60, "D002" );
        Movie:AddTMController_Camera(27333, 28999, 60, "D001" );
        Movie:AddTMController_Camera(29000,31015, 60, "D002" );
        Movie:AddTMController_Camera(31016, 33533, 60, "D001" );

        --카메라 지정

        focus_actor1 = Movie:AddActorPlayerEx2( Movie:GetFocusPC(), TEAM_ALPHA );
	 Movie:SetID( focus_actor1, 1 );
	 Movie:SetActorPlayerExParam( focus_actor1, 0, 1682, "Resources/Model/Movie/stage6_2.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 4733, 8499, "Resources/Model/Movie/stage6_4.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 10400, 15665, "Resources/Model/Movie/stage6_5.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 18033, 23965, "Resources/Model/Movie/stage6_7.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 27233, 28999, "Resources/Model/Movie/stage6_9.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 30916, 33533, "Resources/Model/Movie/stage6_10.x7" );

        NBranger = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( NBranger, 851969, 1114369, 72548865, 72483585, 68486145, 69928193, 0 );
		 Movie:SetActorPlayerExParamHair( NBranger, 1, 1 );
		 --Movie:SetActorPlayerExParamFace( NBranger, 0, 0 );
		 Movie:SetActorPlayerExParamCoat( NBranger, 42, 0 );
		 Movie:SetActorPlayerExParamPant( NBranger, 40, 0 );
		 Movie:SetActorPlayerExParamGlove( NBranger, 39, 0 );
		 Movie:SetActorPlayerExParamShoes( NBranger, 39, 0 );
		 Movie:SetActorPlayerExParamAccessary( NBranger, 53, 0 );
         Movie:SetActorPlayerExParam( NBranger, 1583, 4832, "Resources/Model/Movie/stage6_3.x7" );
         Movie:SetActorPlayerExParam( NBranger, 8400, 10499, "Resources/Model/Movie/stage.x7" );
         Movie:SetActorPlayerExParam( NBranger, 15566, 18632, "Resources/Model/Movie/stage6_6.x7" );
         Movie:SetActorPlayerExParam( NBranger, 23366, 27332, "Resources/Model/Movie/stage6_8.x7" );
         Movie:SetActorPlayerExParam( NBranger, 28900,31015, "Resources/Model/Movie/stage.x7" );

        taejo = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( taejo, 3932161, 786689, 1311233, 1573633, 1049601, 984321, 0 );
		 Movie:SetActorPlayerExParamHair( taejo, 14, 0 );
		 Movie:SetActorPlayerExParamFace( taejo, 17, 0 );
		 Movie:SetActorPlayerExParamCoat( taejo, 65, 0 );
		 Movie:SetActorPlayerExParamPant( taejo, 37, 0 );
		 Movie:SetActorPlayerExParamGlove( taejo, 29, 0 );
		 Movie:SetActorPlayerExParamShoes( taejo, 29, 0 );
		 --Movie:SetActorPlayerExParamAccessary( taejo, 0, 0 );
	 Movie:SetActorPlayerExParam( taejo, 0, 8499, "Resources/Model/Movie/stage6_2_Taejo.x7" );
	 Movie:SetActorPlayerExParam( taejo, 8500, 23965, "Resources/Model/Movie/stage6_2_Taejo.x7" );
	 Movie:SetActorPlayerExParam( taejo, 23966, 33533, "Resources/Model/Movie/stage6_2_Taejo.x7" );

	textViewer1 = Movie:AddTextViewer( 2500, 40000, 0, 0, MOVIE_STAGE_00 );
	Movie:SetTextViewerParam( textViewer1, 2, 1, 5, 5 );
        
	textViewer1 = Movie:AddTextViewer( 500, 2500, 100, 100, MOVIE_STAGE6_03 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 2510, 5500, 100, 100, MOVIE_STAGE6_04 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 ); 

	textViewer1 = Movie:AddTextViewer( 5500, 8500, 100, 100, MOVIE_STAGE6_05 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 8500, 10499, 100, 100, MOVIE_STAGE6_06 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 10500, 12500, 100, 100, MOVIE_STAGE6_07 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );
	
	textViewer1 = Movie:AddTextViewer( 12500, 14500, 100, 100, MOVIE_STAGE6_08 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 14500, 16000, 100, 100, MOVIE_STAGE6_09 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 16000, 19500, 100, 100, MOVIE_STAGE6_10 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 19501, 20965, 100, 100, MOVIE_STAGE6_11 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 20965, 23965, 100, 100, MOVIE_STAGE6_12 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 23966, 27600, 100, 100, MOVIE_STAGE6_13 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 27601, 29500, 100, 100, MOVIE_STAGE6_14 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 29501,31015, 100, 100, MOVIE_STAGE6_15 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 31016, 33533, 100, 100, MOVIE_STAGE6_16 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	Movie:AddSpecialEffect( 0, 500, 2 );
	Movie:AddSpecialEffect(33033, 33533, 3 );
	Movie:AddSpecialEffect(33533, 43533, 4 );

	Movie:AddSpecialEffect(9000, 9500, 1 );
	Movie:AddSpecialEffect(10500, 11000, 1 );
	Movie:AddSpecialEffect(30000, 30500, 1 );

	--Movie:AddBGM(0, 43533, "Resources/Bgm/plasticmethod.ogg", false, 50 );

	Movie:AddSound(8500, 9500, "Resources/Sound/hmg_fire_start.ogg", false, 80 );
	Movie:AddSound(29600, 30600, "Resources/Sound/hmg_fire_start.ogg", false, 80 );

	Movie:AddMovieSpeed( 8000, 10499, 0.7 )
	Movie:AddMovieSpeed( 14000, 15665, 0.7 )
	Movie:AddMovieSpeed( 23966, 27600, 0.7 )
	
end