LoadStringTable( "Language/Script/Arcade_movie_string_table.x7" );

MOVIE_STAGE_00		= GetString( "MOVIE_STAGE_00" );
MOVIE_STAGE7_01		= GetString( "MOVIE_STAGE7_01" );
MOVIE_STAGE7_02		= GetString( "MOVIE_STAGE7_02" );
MOVIE_STAGE7_03		= GetString( "MOVIE_STAGE7_03" );
MOVIE_STAGE7_04		= GetString( "MOVIE_STAGE7_04" );
MOVIE_STAGE7_05		= GetString( "MOVIE_STAGE7_05" );
MOVIE_STAGE7_06		= GetString( "MOVIE_STAGE7_06" );
MOVIE_STAGE7_07		= GetString( "MOVIE_STAGE7_07" );
MOVIE_STAGE7_08		= GetString( "MOVIE_STAGE7_08" );
MOVIE_STAGE7_09		= GetString( "MOVIE_STAGE7_09" );
MOVIE_STAGE7_10		= GetString( "MOVIE_STAGE7_10" );
MOVIE_STAGE7_11		= GetString( "MOVIE_STAGE7_11" );
MOVIE_STAGE7_12		= GetString( "MOVIE_STAGE7_12" );
MOVIE_STAGE7_13		= GetString( "MOVIE_STAGE7_13" );
MOVIE_STAGE7_14		= GetString( "MOVIE_STAGE7_14" );
MOVIE_STAGE7_15		= GetString( "MOVIE_STAGE7_15" );
MOVIE_STAGE7_16		= GetString( "MOVIE_STAGE7_16" );
MOVIE_STAGE7_17		= GetString( "MOVIE_STAGE7_17" );
MOVIE_STAGE7_18		= GetString( "MOVIE_STAGE7_18" );
MOVIE_STAGE7_19		= GetString( "MOVIE_STAGE7_19" );
MOVIE_STAGE7_20		= GetString( "MOVIE_STAGE7_20" );
MOVIE_STAGE7_21		= GetString( "MOVIE_STAGE7_21" );

ClearStringTable();

TEAM_ALPHA			= 1;
TEAM_BETA			= 2;
SEX_MALE			= 0;
SEX_FEMALE			= 1;


function initialize()

	Movie:Init( 58066+3550 );
	Movie:AddMovieScene( "Resources/Model/Movie/camera_stage7_1.scn", false); 
	Movie:AddSequence( 500, 57566+3550, "Resources/Effects/cinemaline.seq" );        
	--카메라 파일 불러오기
	Movie:AddTMController_Camera( 0, 5833, 60, "E001" );
        Movie:AddTMController_Camera( 5834, 10000, 60, "E002" );
        Movie:AddTMController_Camera(10001, 13500, 60, "E001" );
	Movie:AddTMController_Camera(13501, 15166, 60, "E002" );
        Movie:AddTMController_Camera(15167, 17500, 60, "E001" );
        Movie:AddTMController_Camera(17501, 21033, 60, "E003" );
        Movie:AddTMController_Camera(21034, 23915+1885, 60, "E002" );
        Movie:AddTMController_Camera(23916+1885, 29800, 60, "E003" );
        Movie:AddTMController_Camera(29801, 31616, 60, "E001" );
	Movie:AddTMController_Camera(31617, 35933+3550, 60, "E002" );
        Movie:AddTMController_Camera(35934+3550, 38950+3550, 60, "E001" );
        Movie:AddTMController_Camera(38951+3550, 49066+3550, 60, "E002" );
        Movie:AddTMController_Camera(49067+3550, 50883+3550+1000, 60, "E001" );
	Movie:AddTMController_Camera(50884+3550+1000, 58066+3550, 60, "E002" );


        --카메라 지정
        focus_actor1 = Movie:AddActorPlayerEx2( Movie:GetFocusPC(), TEAM_ALPHA );
	 Movie:SetID( focus_actor1, 1 );
	 Movie:SetActorPlayerExParam( focus_actor1, 0, 13500, "Resources/Model/Movie/stage7_1.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 19500, 29800, "Resources/Model/Movie/idle2.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 29801, 35033, "Resources/Model/Movie/stage7_6.x7" );

        taejo = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
          --Movie:SetActorPlayerExParam1( taejo, 3932161, 786689, 1311233, 1573633, 1049601, 984321, 0 );
		Movie:SetActorPlayerExParamHair( taejo, 14, 0 );
		Movie:SetActorPlayerExParamFace( taejo, 17, 0 );
		Movie:SetActorPlayerExParamCoat( taejo, 65, 0 );
		Movie:SetActorPlayerExParamPant( taejo, 37, 0 );
		Movie:SetActorPlayerExParamGlove( taejo, 29, 0 );
		Movie:SetActorPlayerExParamShoes( taejo, 29, 0 );
	 Movie:SetActorPlayerExParam( taejo, 0, 15166, "Resources/Model/Movie/7_1_Taejo.x7" );
	 Movie:SetActorPlayerExParam( taejo, 19500, 29800, "Resources/Model/Movie/7_1_Taejo.x7" );
	 Movie:SetActorPlayerExParam( taejo, 29801, 39501+3550, "Resources/Model/Movie/7_1_Taejo.x7" );
	 Movie:SetActorPlayerExParam( taejo, 39501+3550, 50883+3550+1000, "Resources/Model/Movie/7_1_Taejo.x7" );

        --카메라 지정
        focus_actor2 = Movie:AddActorPlayerEx2( Movie:GetFocusPC(), TEAM_ALPHA );
	 Movie:SetID( focus_actor2, 1 );
	 Movie:SetActorPlayerExParam( focus_actor2, 13180, 15166, "Resources/Model/Movie/stage7_3.x7" );
	 Movie:SetActorPlayerExParam( focus_actor2, 35034+3550, 38950+3550, "Resources/Model/Movie/stage7_8.x7" );
	 Movie:SetActorPlayerExParam( focus_actor2, 48667+3550, 50900+3550+1000, "Resources/Model/Movie/stage7_10.x7" );

        Munch = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( Munch, 4325377, 1179905, 72614401, 72549121, 68551681, 69993729, 0 );
         Movie:SetActorPlayerExParamHair( Munch, 19, 0 );
         Movie:SetActorPlayerExParamFace( Munch, 22, 0 );
         Movie:SetActorPlayerExParamCoat( Munch, 41, 0 );
         Movie:SetActorPlayerExParamPant( Munch, 39, 0 );
         Movie:SetActorPlayerExParamGlove( Munch, 38, 0 );
         Movie:SetActorPlayerExParamShoes( Munch, 38, 0 );
	 Movie:SetActorPlayerExParam( Munch, 5000, 13500, "Resources/Model/Movie/stage7_2.x7" );
         Movie:SetActorPlayerExParam( Munch, 13867, 21533, "Resources/Model/Movie/stage7_4.x7" );

        Munch2 = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
        --Movie:SetActorPlayerExParam1( Munch2, 4325377, 1179905, 72614401, 72549121, 68551681, 69993729, 0 );
         Movie:SetActorPlayerExParamHair( Munch2, 19, 0 );
         Movie:SetActorPlayerExParamFace( Munch2, 22, 0 );
         Movie:SetActorPlayerExParamCoat( Munch2, 41, 0 );
         Movie:SetActorPlayerExParamPant( Munch2, 39, 0 );
         Movie:SetActorPlayerExParamGlove( Munch2, 38, 0 );
         Movie:SetActorPlayerExParamShoes( Munch2, 38, 0 );
         Movie:SetActorPlayerExParam( Munch2, 20000, 29800, "Resources/Model/Movie/stage7_5.x7" );
         Movie:SetActorPlayerExParam( Munch2, 31317, 39483, "Resources/Model/Movie/stage7_7.x7" );
         Movie:SetActorPlayerExParam( Munch2, 38251+3550, 49066+3550, "Resources/Model/Movie/stage7_9.x7" );
         Movie:SetActorPlayerExParam( Munch2, 50501+3550, 58066+3550, "Resources/Model/Movie/stage7_9.x7" );

	textViewer1 = Movie:AddTextViewer( 2500, 55000, 0, 0, MOVIE_STAGE_00 );
	Movie:SetTextViewerParam( textViewer1, 2, 1, 5, 5 );
        	
	textViewer1 = Movie:AddTextViewer( 0, 1800, 100, 100, MOVIE_STAGE7_01 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 1800, 3600, 100, 100, MOVIE_STAGE7_02 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 3600, 6000, 100, 100, MOVIE_STAGE7_03 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 10000, 12000, 100, 100, MOVIE_STAGE7_04 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 14001, 15500, 100, 100, MOVIE_STAGE7_05 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 15501, 17500, 100, 100, MOVIE_STAGE7_06 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 17500, 20033, 100, 100, MOVIE_STAGE7_07 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 20100, 22500, 100, 100, MOVIE_STAGE7_08 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 22501, 25800, 100, 100, MOVIE_STAGE7_09 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 25800, 29800, 100, 100, MOVIE_STAGE7_10 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 29801, 32000, 100, 100, MOVIE_STAGE7_11 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 32000, 34500+3550, 100, 100, MOVIE_STAGE7_12 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 34500+3550, 36000+3550, 100, 100, MOVIE_STAGE7_13 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 36001+3550, 37700+3550, 100, 100, MOVIE_STAGE7_14 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 37700+3550, 39500+3550, 100, 100, MOVIE_STAGE7_15 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 39501+3550, 40066+3550, 100, 100, MOVIE_STAGE7_16 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );
	
	textViewer1 = Movie:AddTextViewer( 40501+3550, 45066+3550, 100, 100, MOVIE_STAGE7_17 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 45066+3550, 49066+3550, 100, 100, MOVIE_STAGE7_18 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 49067+3550, 51000+3550+1000, 100, 100, MOVIE_STAGE7_19 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 51001+3550+1000, 55066+3550+1000, 100, 100, MOVIE_STAGE7_20 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 55066+3550+1000, 57066+3550+1000, 100, 100, MOVIE_STAGE7_21 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );
	
	Movie:AddSpecialEffect( 0, 500, 2 );
	Movie:AddSpecialEffect(57566+3550, 58066+3550, 3 );
	Movie:AddSpecialEffect(58066+3550, 68066+3550, 4 );

	Movie:AddSpecialEffect(13801, 14201, 1 );
	Movie:AddSpecialEffect(31900, 32400, 1 );
	Movie:AddSpecialEffect(32900, 33100+100, 1 );
	Movie:AddSpecialEffect(34733, 34850+200, 1 );
	Movie:AddSpecialEffect(37800, 38100, 1 );
	Movie:AddSpecialEffect(49067+3550+500, 49067+3550+800, 1 );
	Movie:AddSpecialEffect(57566+3450, 58066+3550, 1 );

	Movie:AddMovieSpeed( 0, 5833, 0.6 )
	Movie:AddMovieSpeed( 36001+3550, 39700+3550, 0.7 )
	Movie:AddMovieSpeed( 37700+3550, 38950+3550, 0.7 )
	--Movie:AddMovieSpeed( 49067+3550, 50883+3550, 0.6 )

	Movie:AddBGM( 15000, 61000, "Resources/Bgm/Braveitout.ogg", false, 50 )
	Movie:AddSound( 34500+3550, 36500+3550, "Resources/Sound/kong.ogg", false, 100 );

	Movie:AddMovieSpeed( 34500+3550, 38000+3550, 0.5 )
end