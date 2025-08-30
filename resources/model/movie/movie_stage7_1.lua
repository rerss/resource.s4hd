LoadStringTable( "Language/Script/Arcade_movie_string_table.x7" );

MOVIE_STAGE_00		= GetString( "MOVIE_STAGE_00" );
MOVIE_STAGE9_01		= GetString( "MOVIE_STAGE9_01" );
MOVIE_STAGE9_02		= GetString( "MOVIE_STAGE9_02" );
MOVIE_STAGE9_03		= GetString( "MOVIE_STAGE9_03" );
MOVIE_STAGE9_04		= GetString( "MOVIE_STAGE9_04" );
MOVIE_STAGE9_05		= GetString( "MOVIE_STAGE9_05" );
MOVIE_STAGE9_06		= GetString( "MOVIE_STAGE9_06" );
MOVIE_STAGE9_07		= GetString( "MOVIE_STAGE9_07" );
MOVIE_STAGE9_08		= GetString( "MOVIE_STAGE9_08" );
MOVIE_STAGE9_09		= GetString( "MOVIE_STAGE9_09" );
MOVIE_STAGE9_10		= GetString( "MOVIE_STAGE9_10" );

ClearStringTable();

TEAM_ALPHA			= 1;
TEAM_BETA			= 2;
SEX_MALE			= 0;
SEX_FEMALE			= 1;


function initialize()

	Movie:Init( 38333 );
	Movie:AddMovieScene( "Resources/Model/Movie/camera_stage9_1.scn", false); 
	
	Movie:AddSequence( 500, 37833, "Resources/Effects/cinemaline.seq" );        
	--카메라 파일 불러오기
	Movie:AddTMController_Camera( 0, 2733, 60, "G001" );
        Movie:AddTMController_Camera( 2734, 7966, 60, "G002" );
        Movie:AddTMController_Camera( 7967, 14733, 60, "G001" );
	Movie:AddTMController_Camera(14734, 16783, 60, "G002" );
        Movie:AddTMController_Camera(16784, 18250, 60, "G001" );
        Movie:AddTMController_Camera(18251, 22066, 60, "G002" );
        Movie:AddTMController_Camera(22067, 26949, 60, "G001" );
        Movie:AddTMController_Camera(26950, 30000, 60, "G002" );
        Movie:AddTMController_Camera(30001, 33833-300, 60, "G003" );
	Movie:AddTMController_Camera(33834-300, 38333, 60, "G002" );

	



        --카메라 지정
        Kitchi = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( Kitchi, 4456449, 1310977, 72745473, 72680193, 68682753, 70124801, 0 );
		 Movie:SetActorPlayerExParamHair( Kitchi, 9, 0 );
		Movie:SetActorPlayerExParamFace( Kitchi, 12, 0 );
		Movie:SetActorPlayerExParamCoat( Kitchi, 21, 0 );
		Movie:SetActorPlayerExParamPant( Kitchi, 20, 0 );
		Movie:SetActorPlayerExParamGlove( Kitchi, 20, 0 );
		Movie:SetActorPlayerExParamShoes( Kitchi, 20, 0 );
	 Movie:SetActorPlayerExParam( Kitchi, 0, 2733, "Resources/Model/Movie/stage8_12.x7" );
	 Movie:SetActorPlayerExParam( Kitchi, 7167, 14733, "Resources/Model/Movie/stage8_14.x7" );
	 Movie:SetActorPlayerExParam( Kitchi, 33634-300, 38333, "Resources/Model/Movie/stage8_1_8.x7" );

        Kitchi2 = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( Kitchi2, 4456449, 1310977, 72745473, 72680193, 68682753, 70124801, 0 );
		 Movie:SetActorPlayerExParamHair( Kitchi2, 9, 0 );
		Movie:SetActorPlayerExParamFace( Kitchi2, 12, 0 );
		Movie:SetActorPlayerExParamCoat( Kitchi2, 21, 0 );
		Movie:SetActorPlayerExParamPant( Kitchi2, 20, 0 );
		Movie:SetActorPlayerExParamGlove( Kitchi2, 20, 0 );
		Movie:SetActorPlayerExParamShoes( Kitchi2, 20, 0 );
	 Movie:SetActorPlayerExParam( Kitchi2, 21967, 33833, "Resources/Model/Movie/stage8_16.x7" );

        focus_actor1 = Movie:AddActorPlayerEx2( Movie:GetFocusPC(), TEAM_ALPHA );
	 Movie:SetID( focus_actor1, 1 );
	 Movie:SetActorPlayerExParam( focus_actor1, 2284+100, 7966, "Resources/Model/Movie/stage8_13.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 18201, 22066, "Resources/Model/Movie/stage8_15.x7" );

        focus_actor2 = Movie:AddActorPlayerEx2( Movie:GetFocusPC(), TEAM_ALPHA );
	 Movie:SetID( focus_actor2, 1 );
	 Movie:SetActorPlayerExParam( focus_actor2, 21067, 33833, "Resources/Model/Movie/stage8_17.x7" );

	virus = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 131073, 131329, 69403137, 69403393, 656385, 394497, 2688513 );
		Movie:SetActorPlayerExParamHair( virus, 9, 0 );
		Movie:SetActorPlayerExParamFace( virus, 12, 0 );
		Movie:SetActorPlayerExParamCoat( virus, 28, 1 );
		Movie:SetActorPlayerExParamPant( virus, 5, 1 );
		Movie:SetActorPlayerExParamGlove( virus, 7, 0 );
		Movie:SetActorPlayerExParamShoes( virus, 7, 0 );
		Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 16684-3000-800, 18250, "Resources/Model/Movie/virus20.x7" );
	virus = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 131073, 131329, 70386177, 77529857, 67437569, 68224257, 2688513 );
		 Movie:SetActorPlayerExParamHair( virus, 9, 0 );
		Movie:SetActorPlayerExParamFace( virus, 12, 0 );
		Movie:SetActorPlayerExParamCoat( virus, 9, 1 );
		Movie:SetActorPlayerExParamPant( virus, 9, 1 );
		Movie:SetActorPlayerExParamGlove( virus, 3, 1 );
		Movie:SetActorPlayerExParamShoes( virus, 5, 1 );
		Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 16684-2000-800, 18250, "Resources/Model/Movie/virus21.x7" );
	virus = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 131073, 131329, 69403137, 69403393, 656385, 394497, 2688513 );
		 		Movie:SetActorPlayerExParamHair( virus, 9, 0 );
		Movie:SetActorPlayerExParamFace( virus, 12, 0 );
		Movie:SetActorPlayerExParamCoat( virus, 28, 1 );
		Movie:SetActorPlayerExParamPant( virus, 5, 1 );
		Movie:SetActorPlayerExParamGlove( virus, 7, 0 );
		Movie:SetActorPlayerExParamShoes( virus, 7, 0 );
		Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 16684-3300-800, 18250, "Resources/Model/Movie/virus22.x7" );
	virus = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
  		 --Movie:SetActorPlayerExParam1( virus, 131073, 131329, 70386177, 77529857, 67437569, 68224257, 2688513 );
		 Movie:SetActorPlayerExParamHair( virus, 9, 0 );
		Movie:SetActorPlayerExParamFace( virus, 12, 0 );
		Movie:SetActorPlayerExParamCoat( virus, 9, 1 );
		Movie:SetActorPlayerExParamPant( virus, 9, 1 );
		Movie:SetActorPlayerExParamGlove( virus, 3, 1 );
		Movie:SetActorPlayerExParamShoes( virus, 5, 1 );
		Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 16684-2600-800, 18250, "Resources/Model/Movie/virus23.x7" );
	virus = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
        -- Movie:SetActorPlayerExParam1( virus, 131073, 131329, 69403137, 69403393, 656385, 394497, 2688513 );
		 	Movie:SetActorPlayerExParamHair( virus, 9, 0 );
		Movie:SetActorPlayerExParamFace( virus, 12, 0 );
		Movie:SetActorPlayerExParamCoat( virus, 28, 1 );
		Movie:SetActorPlayerExParamPant( virus, 5, 1 );
		Movie:SetActorPlayerExParamGlove( virus, 7, 0 );
		Movie:SetActorPlayerExParamShoes( virus, 7, 0 );
		Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 16684-3000-800, 18250, "Resources/Model/Movie/virus24.x7" );
	virus = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
        -- Movie:SetActorPlayerExParam1( virus, 131073, 131329, 70386177, 77529857, 67437569, 68224257, 2688513 );
		 Movie:SetActorPlayerExParamHair( virus, 9, 0 );
		Movie:SetActorPlayerExParamFace( virus, 12, 0 );
		Movie:SetActorPlayerExParamCoat( virus, 9, 1 );
		Movie:SetActorPlayerExParamPant( virus, 9, 1 );
		Movie:SetActorPlayerExParamGlove( virus, 3, 1 );
		Movie:SetActorPlayerExParamShoes( virus, 5, 1 );
		Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 16684-3500-800, 18250, "Resources/Model/Movie/virus25.x7" );
	virus = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 131073, 131329, 69403137, 69403393, 656385, 394497, 2688513 );
		 	Movie:SetActorPlayerExParamHair( virus, 9, 0 );
		Movie:SetActorPlayerExParamFace( virus, 12, 0 );
		Movie:SetActorPlayerExParamCoat( virus, 28, 1 );
		Movie:SetActorPlayerExParamPant( virus, 5, 1 );
		Movie:SetActorPlayerExParamGlove( virus, 7, 0 );
		Movie:SetActorPlayerExParamShoes( virus, 7, 0 );
		Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 16684-3000-800, 18250, "Resources/Model/Movie/virus26.x7" );

	virus = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 131073, 131329, 70386177, 77529857, 67437569, 68224257, 2688513 );
		 Movie:SetActorPlayerExParamHair( virus, 9, 0 );
		Movie:SetActorPlayerExParamFace( virus, 12, 0 );
		Movie:SetActorPlayerExParamCoat( virus, 9, 1 );
		Movie:SetActorPlayerExParamPant( virus, 9, 1 );
		Movie:SetActorPlayerExParamGlove( virus, 3, 1 );
		Movie:SetActorPlayerExParamShoes( virus, 5, 1 );
		Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 14634-2000, 16783, "Resources/Model/Movie/virus27.x7" );
	virus = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 131073, 131329, 69403137, 69403393, 656385, 394497, 2688513 );
		 Movie:SetActorPlayerExParamHair( virus, 9, 0 );
		Movie:SetActorPlayerExParamFace( virus, 12, 0 );
		Movie:SetActorPlayerExParamCoat( virus, 28, 1 );
		Movie:SetActorPlayerExParamPant( virus, 5, 1 );
		Movie:SetActorPlayerExParamGlove( virus, 7, 0 );
		Movie:SetActorPlayerExParamShoes( virus, 7, 0 );
		Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 14634, 16783, "Resources/Model/Movie/virus28.x7" );
	virus = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 131073, 131329, 70386177, 77529857, 67437569, 68224257, 2688513 );
		 		 Movie:SetActorPlayerExParamHair( virus, 9, 0 );
		Movie:SetActorPlayerExParamFace( virus, 12, 0 );
		Movie:SetActorPlayerExParamCoat( virus, 9, 1 );
		Movie:SetActorPlayerExParamPant( virus, 9, 1 );
		Movie:SetActorPlayerExParamGlove( virus, 3, 1 );
		Movie:SetActorPlayerExParamShoes( virus, 5, 1 );
		Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 14634-1500, 16783, "Resources/Model/Movie/virus29.x7" );
	virus = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 131073, 131329, 69403137, 69403393, 656385, 394497, 2688513 );
		 		 Movie:SetActorPlayerExParamHair( virus, 9, 0 );
		Movie:SetActorPlayerExParamFace( virus, 12, 0 );
		Movie:SetActorPlayerExParamCoat( virus, 28, 1 );
		Movie:SetActorPlayerExParamPant( virus, 5, 1 );
		Movie:SetActorPlayerExParamGlove( virus, 7, 0 );
		Movie:SetActorPlayerExParamShoes( virus, 7, 0 );
		Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 14634, 16783, "Resources/Model/Movie/virus30.x7" );
	virus = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 131073, 131329, 70386177, 77529857, 67437569, 68224257, 2688513 );
		 Movie:SetActorPlayerExParamHair( virus, 9, 0 );
		Movie:SetActorPlayerExParamFace( virus, 12, 0 );
		Movie:SetActorPlayerExParamCoat( virus, 9, 1 );
		Movie:SetActorPlayerExParamPant( virus, 9, 1 );
		Movie:SetActorPlayerExParamGlove( virus, 3, 1 );
		Movie:SetActorPlayerExParamShoes( virus, 5, 1 );
		Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 14634-1000, 16783, "Resources/Model/Movie/virus31.x7" );
	virus = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( virus, 131073, 131329, 69403137, 69403393, 656385, 394497, 2688513 );
		 Movie:SetActorPlayerExParamHair( virus, 9, 0 );
		Movie:SetActorPlayerExParamFace( virus, 12, 0 );
		Movie:SetActorPlayerExParamCoat( virus, 28, 1 );
		Movie:SetActorPlayerExParamPant( virus, 5, 1 );
		Movie:SetActorPlayerExParamGlove( virus, 7, 0 );
		Movie:SetActorPlayerExParamShoes( virus, 7, 0 );
		Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 14634-1100, 16783, "Resources/Model/Movie/virus32.x7" );
	virus = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
        -- Movie:SetActorPlayerExParam1( virus,131073, 131329, 70386177, 77529857, 67437569, 68224257, 2688513 );
		 Movie:SetActorPlayerExParamHair( virus, 9, 0 );
		Movie:SetActorPlayerExParamFace( virus, 12, 0 );
		Movie:SetActorPlayerExParamCoat( virus, 9, 1 );
		Movie:SetActorPlayerExParamPant( virus, 9, 1 );
		Movie:SetActorPlayerExParamGlove( virus, 3, 1 );
		Movie:SetActorPlayerExParamShoes( virus, 5, 1 );
		Movie:SetActorPlayerExParamAccessary( virus, 0, 0 );
         Movie:SetActorPlayerExParam( virus, 14634-1500, 16783, "Resources/Model/Movie/virus33.x7" );


	textViewer1 = Movie:AddTextViewer( 2500, 45000, 0, 0, MOVIE_STAGE_00 );
	Movie:SetTextViewerParam( textViewer1, 2, 1, 5, 5 );

	textViewer1 = Movie:AddTextViewer( 0, 3800, 100, 100, MOVIE_STAGE9_01 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 3801, 7966, 100, 100, MOVIE_STAGE9_02 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 7983, 12733, 100, 100, MOVIE_STAGE9_03 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 12734, 16733, 100, 100, MOVIE_STAGE9_04 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 18266, 22000, 100, 100, MOVIE_STAGE9_05 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 22100, 24100, 100, 100, MOVIE_STAGE9_06 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );
	
	textViewer1 = Movie:AddTextViewer( 24100, 27000, 100, 100, MOVIE_STAGE9_07 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 27100, 30016, 100, 100, MOVIE_STAGE9_08 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 30033, 33833, 100, 100, MOVIE_STAGE9_09 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 33850, 36666, 100, 100, MOVIE_STAGE9_10 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	Movie:AddSpecialEffect( 0, 500, 2 );
	Movie:AddSpecialEffect(37833, 38333, 3 );
	Movie:AddSpecialEffect(38833, 48333, 4 );

	Movie:AddSpecialEffect(18351, 18651, 1 );
	Movie:AddSpecialEffect(37733, 38333, 1 );
	
	Movie:AddMovieSpeed( 27100, 30016, 0.6 )
	Movie:AddMovieSpeed( 30033, 33833, 0.8 )
	Movie:AddBGM( 0, 48333, "Resources/Bgm/plasticmethod.ogg", false, 30 )
	
end