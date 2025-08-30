LoadStringTable( "Language/Script/Arcade_movie_string_table.x7" );

MOVIE_STAGE_00		= GetString( "MOVIE_STAGE_00" );
MOVIE_STAGE2_01		= GetString( "MOVIE_STAGE2_01" );
MOVIE_STAGE2_02		= GetString( "MOVIE_STAGE2_02" );
MOVIE_STAGE2_03		= GetString( "MOVIE_STAGE2_03" );
MOVIE_STAGE2_04		= GetString( "MOVIE_STAGE2_04" );
MOVIE_STAGE2_05		= GetString( "MOVIE_STAGE2_05" );
MOVIE_STAGE2_06		= GetString( "MOVIE_STAGE2_06" );
MOVIE_STAGE2_07	   = GetString( "MOVIE_STAGE2_07" );
MOVIE_STAGE2_08		= GetString( "MOVIE_STAGE2_08" );
MOVIE_STAGE2_09		= GetString( "MOVIE_STAGE2_09" );
MOVIE_STAGE2_10		= GetString( "MOVIE_STAGE2_10" );
MOVIE_STAGE2_11		= GetString( "MOVIE_STAGE2_11" );
MOVIE_STAGE2_12		= GetString( "MOVIE_STAGE2_12" );
MOVIE_STAGE2_13		= GetString( "MOVIE_STAGE2_13" );
MOVIE_STAGE2_14		= GetString( "MOVIE_STAGE2_14" );
MOVIE_STAGE2_15		= GetString( "MOVIE_STAGE2_15" );
MOVIE_STAGE2_16		= GetString( "MOVIE_STAGE2_16" );
MOVIE_STAGE2_17		= GetString( "MOVIE_STAGE2_17" );

ClearStringTable();

TEAM_ALPHA			= 1;
TEAM_BETA			= 2;
SEX_MALE			= 0;
SEX_FEMALE			= 1;


function initialize()

	Movie:Init( 55000+2000 );
	Movie:AddMovieScene( "Resources/Model/Movie/camera_stage2.scn", false); 
        --카메라 파일 불러오기
	Movie:AddSequence( 500, 66600, "Resources/Effects/cinemaline.seq" );
	--Movie:AddTMController_Camera( 0, 4182, 60, "S004" );

         --카메라 지정
	pointcamera1 = Movie:AddWayPointCamera( 0, 5000, 60);
	Movie:SetWayPointCameraParam( pointcamera1, -13840, 2439, -7779, -0.14, -0.11, -0.98 )
	Movie:SetWayPointCameraParam( pointcamera1, -13889, 2419, -8103, -0.12, -0.07, -0.99 )

	pointcamera2 = Movie:AddWayPointCamera( 5000, 9000, 60);
	Movie:SetWayPointCameraParam( pointcamera2, -14053, 2422, -8486, 0.28, -0.17, 0.94 )
	Movie:SetWayPointCameraParam( pointcamera2, -13880, 2422, -8538, 0.28, -0.17, 0.94 )

	pointcamera3 = Movie:AddWayPointCamera( 9000, 13000, 60);
	Movie:SetWayPointCameraParam( pointcamera3, -13840, 2439, -7779, -0.14, -0.11, -0.98 )
	Movie:SetWayPointCameraParam( pointcamera3, -13889, 2419, -8103, -0.12, -0.07, -0.99 )

	pointcamera4 = Movie:AddWayPointCamera( 13000, 17000, 60);
	Movie:SetWayPointCameraParam( pointcamera4, -14053, 2422, -8486, 0.28, -0.17, 0.94 )
	Movie:SetWayPointCameraParam( pointcamera4, -13880, 2422, -8538, 0.28, -0.17, 0.94 )

	pointcamera5 = Movie:AddWayPointCamera( 17000, 20000, 60);
	Movie:SetWayPointCameraParam( pointcamera5, -13840, 2439, -7779, -0.14, -0.11, -0.98 )
	Movie:SetWayPointCameraParam( pointcamera5, -13889, 2419, -8103, -0.12, -0.07, -0.99 )

	pointcamera6 = Movie:AddWayPointCamera( 20000, 22000, 60);
	Movie:SetWayPointCameraParam( pointcamera6, -14053, 2422, -8486, 0.28, -0.17, 0.94 )
	Movie:SetWayPointCameraParam( pointcamera6, -13868, 2507, -8524, 0.23, -0.54, 0.81 )

	pointcamera7 = Movie:AddWayPointCamera( 22000, 22500, 60);
	Movie:SetWayPointCameraParam( pointcamera7, -13868, 2507, -8524, 0.23, -0.54, 0.81 )
	Movie:SetWayPointCameraParam( pointcamera7, -12977, 2704, -6926, 0.25, 0.17, 0.95 )

	pointcamera7_2 = Movie:AddWayPointCamera( 22500, 26000, 60);
	Movie:SetWayPointCameraParam( pointcamera7_2, -12977, 2704, -6926, 0.25, 0.17, 0.95 )
	Movie:SetWayPointCameraParam( pointcamera7_2, -13003, 2698, -6973, -0.06, 0.36, 0.93 )

	pointcamera8 = Movie:AddWayPointCamera( 26000, 26500, 60);
	Movie:SetWayPointCameraParam( pointcamera8, -13787, 2539, -6926, -0.06, -0.03, -1 )
	Movie:SetWayPointCameraParam( pointcamera8, -13876, 2422, -7998, -0.12, -0.09, -0.99 )



	pointcamera2_1 = Movie:AddWayPointCamera( 31000-2000, 31500-2000, 60);
	Movie:SetWayPointCameraParam( pointcamera2_1, -13135, 1982, -9108, 0.70, 0.46, -0.55 )
	Movie:SetWayPointCameraParam( pointcamera2_1, -12963, 2284, -9426, 0.97, -0.06, -0.22 )

	pointcamera2_2 = Movie:AddWayPointCamera( 37181-4000-2000,41000-4000-2000,60);
	Movie:SetWayPointCameraParam( pointcamera2_2, -13543, 2341, -9018, 0.99, -0.04, -0.16 )
	Movie:SetWayPointCameraParam( pointcamera2_2, -13519, 2340, -8954, 0.96, -0.05, -0.26 )

	pointcamera2_3 = Movie:AddWayPointCamera( 41000-4000-2000,45500-4000-2000,60);
	Movie:SetWayPointCameraParam( pointcamera2_3, -13474, 2081, -8595, -0.70, 0.66, -0.26 )
	Movie:SetWayPointCameraParam( pointcamera2_3, -13280, 2162, -8726, -0.86, 0.45, -0.25 )

	

	pointcamera3_1 = Movie:AddWayPointCamera( 45500-4000-2000,47000-4000-2000,60);
	Movie:SetWayPointCameraParam( pointcamera3_1, -13871, 2084, -8726, 0.88, 0.46, -0.11 )

	pointcamera3_2 = Movie:AddWayPointCamera( 47000-4000-2000,48600-4000-2000,60);
	Movie:SetWayPointCameraParam( pointcamera3_2, -13974, 2107, -9399, 0.09, 0.37, 0.92 )
	Movie:AddCamerShake( 45501+2500-4000-2000,45501+2700-4000-2000,50, 100, 100, 100 )

	pointcamera3_3 = Movie:AddWayPointCamera( 48600-4000-2000,49100-4000-2000,60);
	Movie:SetWayPointCameraParam( pointcamera3_3, -13747, 2093, -8465, -0.57, 0.37, -0.74 )
	Movie:AddCamerShake( 45501+3500-4000-2000,45501+3700-4000-2000,50, 100, 100, 100 )

	pointcamera3_4 = Movie:AddWayPointCamera( 49100-4000-2000,50000-4000-2000,60);
	Movie:SetWayPointCameraParam( pointcamera3_4, -13922, 2346, -9166, -0.18, -0.14, 0.97 )
	Movie:AddCamerShake( 45501+4000-4000-2000,45501+4200-4000-2000,50, 100, 100, 100 )

	pointcamera3_5 = Movie:AddWayPointCamera( 50000-4000-2000,50600-4000-2000,60);
	Movie:SetWayPointCameraParam( pointcamera3_5, -14563, 2567, -8290, 0.69, -0.50, -0.53 )
	Movie:AddCamerShake( 45501+4900-4000-2000,45501+5100-4000-2000,50, 100, 100, 100 )

	pointcamera3_6 = Movie:AddWayPointCamera( 50600-4000-2000,53500-4000-2000,60);
	Movie:SetWayPointCameraParam( pointcamera3_6, -15123, 3205, -8096, 0.33, -0.82, 0.47 )
	Movie:AddCamerShake( 45501+5300-4000-2000,45501+5500-4000-2000,50, 100, 100, 100 )

	pointcamera2_4 = Movie:AddWayPointCamera( 53500-4000-2000,57992-4000-2000,60);
	Movie:SetWayPointCameraParam( pointcamera2_4, -13543, 2341, -9018, 0.99, -0.04, -0.16 )
	Movie:SetWayPointCameraParam( pointcamera2_4, -13519, 2340, -8954, 0.96, -0.05, -0.26 )

	pointcamera2_5 = Movie:AddWayPointCamera( 57992-4000-2000,59000-4000-2000,60);
	Movie:SetWayPointCameraParam( pointcamera2_5, -15780, 2347, -8097, 0.80, 0.43, 0.41 )
	Movie:SetWayPointCameraParam( pointcamera2_5, -15715, 2347, -8315, 0.79, 0.40, 0.47 )




        focus_actor1 = Movie:AddActorPlayerEx2( Movie:GetFocusPC(), TEAM_ALPHA );
	 Movie:SetID( focus_actor1, 1 );
	 Movie:SetActorPlayerExParam( focus_actor1, 0, 24788, "Resources/Model/Movie/stage2_1.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 25700, 31043, "Resources/Model/Movie/stage2_6.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 39501,42601, "Resources/Model/Movie/stage2_c5.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 44002, 47501, "Resources/Model/Movie/stage2_c7.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 50992, 55000, "Resources/Model/Movie/stage2_12.x7" );

        focus_actor2 = Movie:AddActorPlayerEx2( Movie:GetFocusPC(), TEAM_ALPHA );
	 Movie:SetID( focus_actor2, 1 );
	 Movie:SetActorPlayerExParam( focus_actor2, 34800, 39530, "Resources/Model/Movie/stage2_9.x7" );
	 Movie:SetActorPlayerExParam( focus_actor2, 42602, 43101, "Resources/Model/Movie/stage2_c6.x7" );
	 Movie:SetActorPlayerExParam( focus_actor2, 43102, 44001, "Resources/Model/Movie/stage2_c6.x7" );
         
        taejo = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( taejo, 3932161, 786689, 79692289, 79627009, 1049601, 984321, 0 );
		 Movie:SetActorPlayerExParamHair( taejo, 14, 0 );
		 Movie:SetActorPlayerExParamFace( taejo, 17, 0 );
		 Movie:SetActorPlayerExParamCoat( taejo, 65, 0 );
		 Movie:SetActorPlayerExParamPant( taejo, 37, 0 );
		 Movie:SetActorPlayerExParamGlove( taejo, 29, 0 );
		 Movie:SetActorPlayerExParamShoes( taejo, 29, 0 );
		 --Movie:SetActorPlayerExParamAccessary( taejo, 0, 0 );
         Movie:SetActorPlayerExParam( taejo, 21466, 26000, "Resources/Model/Movie/stage2_4_4.x7" );
         Movie:SetActorPlayerExParam( taejo, 30943, 35731, "Resources/Model/Movie/stage2_8.x7" );
         Movie:SetActorPlayerExParam( taejo, 39501, 46001, "Resources/Model/Movie/stage2_b5.x7" );
		Movie:SetActorPlayerExParam( taejo, 46702, 51992, "Resources/Model/Movie/stage2_10_3.x7" );

        taejo_buha1 = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( taejo_buha1, 196609, 196865, 67305985, 1966849, 67044353, 70714625, 2295297 );
		 Movie:SetActorPlayerExParamHair( taejo_buha1, 1, 0 );
		 Movie:SetActorPlayerExParamFace( taejo_buha1, 14, 0 );
		 Movie:SetActorPlayerExParamCoat( taejo_buha1, 32, 0 );
		 Movie:SetActorPlayerExParamPant( taejo_buha1, 33, 0 );
		 Movie:SetActorPlayerExParamGlove( taejo_buha1, 33, 0 );
		 Movie:SetActorPlayerExParamShoes( taejo_buha1, 38, 0 );
		 Movie:SetActorPlayerExParamAccessary( taejo_buha1, 25, 0 );
         Movie:SetActorPlayerExParam( taejo_buha1, 21466, 26000, "Resources/Model/Movie/stage2_4_3.x7" );

        taejo_buha5 = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( taejo_buha5, 196609, 196865, 67305985, 1966849, 67044353, 70714625, 2295297 );
		 Movie:SetActorPlayerExParamHair( taejo_buha5, 1, 0 );
		 Movie:SetActorPlayerExParamFace( taejo_buha5, 14, 0 );
		 Movie:SetActorPlayerExParamCoat( taejo_buha5, 32, 0 );
		 Movie:SetActorPlayerExParamPant( taejo_buha5, 33, 0 );
		 Movie:SetActorPlayerExParamGlove( taejo_buha5, 33, 0 );
		 Movie:SetActorPlayerExParamShoes( taejo_buha5, 38, 0 );
		 Movie:SetActorPlayerExParamAccessary( taejo_buha5, 25, 0 );
		Movie:SetActorPlayerExParam( taejo_buha5, 47401,51992, "Resources/Model/Movie/stage2_10_2.x7" );

        taejo_buha2 = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( taejo_buha2, 196609, 196865, 67305985, 1966849, 67044353, 70714625, 2295297 );
		 Movie:SetActorPlayerExParamHair( taejo_buha2, 1, 0 );
		 Movie:SetActorPlayerExParamFace( taejo_buha2, 14, 0 );
		 Movie:SetActorPlayerExParamCoat( taejo_buha2, 32, 0 );
		 Movie:SetActorPlayerExParamPant( taejo_buha2, 33, 0 );
		 Movie:SetActorPlayerExParamGlove( taejo_buha2, 33, 0 );
		 Movie:SetActorPlayerExParamShoes( taejo_buha2, 38, 0 );
		 Movie:SetActorPlayerExParamAccessary( taejo_buha2, 25, 0 );
         Movie:SetActorPlayerExParam( taejo_buha2, 21466, 26000, "Resources/Model/Movie/stage2_4_2.x7" );

        taejo_buha4 = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( taejo_buha4, 196609, 196865, 67305985, 1966849, 67044353, 70714625, 2295297 );
		 Movie:SetActorPlayerExParamHair( taejo_buha4, 1, 0 );
		 Movie:SetActorPlayerExParamFace( taejo_buha4, 14, 0 );
		 Movie:SetActorPlayerExParamCoat( taejo_buha4, 32, 0 );
		 Movie:SetActorPlayerExParamPant( taejo_buha4, 33, 0 );
		 Movie:SetActorPlayerExParamGlove( taejo_buha4, 33, 0 );
		 Movie:SetActorPlayerExParamShoes( taejo_buha4, 38, 0 );
		 Movie:SetActorPlayerExParamAccessary( taejo_buha4, 25, 0 );
         Movie:SetActorPlayerExParam( taejo_buha4, 46901, 51992, "Resources/Model/Movie/stage2_10_1.x7" );

        taejo_buha3 = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( taejo_buha3, 196609, 196865, 67305985, 1966849, 67044353, 70714625, 2295297 );
		 Movie:SetActorPlayerExParamHair( taejo_buha3, 1, 0 );
		 Movie:SetActorPlayerExParamFace( taejo_buha3, 14, 0 );
		 Movie:SetActorPlayerExParamCoat( taejo_buha3, 32, 0 );
		 Movie:SetActorPlayerExParamPant( taejo_buha3, 33, 0 );
		 Movie:SetActorPlayerExParamGlove( taejo_buha3, 33, 0 );
		 Movie:SetActorPlayerExParamShoes( taejo_buha3, 38, 0 );
		 Movie:SetActorPlayerExParamAccessary( taejo_buha3, 25, 0 );
		Movie:SetActorPlayerExParam( taejo_buha3, 21466, 26000, "Resources/Model/Movie/stage2_4_1.x7" );
         Movie:SetActorPlayerExParam( taejo_buha3, 39501, 42601, "Resources/Model/Movie/stage2_a5.x7" );
         Movie:SetActorPlayerExParam( taejo_buha3, 42602, 43101, "Resources/Model/Movie/stage2_a6.x7" );
         Movie:SetActorPlayerExParam( taejo_buha3, 43102, 44001, "Resources/Model/Movie/stage2_a6.x7" );
         Movie:SetActorPlayerExParam( taejo_buha3, 44002, 47501, "Resources/Model/Movie/stage2_a7.x7" );

        taejo_pan1 = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( taejo_pan1, 4587521, 131329, 2359809, 2622209, 2098177, 2032897, 0 );
		 Movie:SetActorPlayerExParamHair( taejo_pan1, 8, 0 );
		 Movie:SetActorPlayerExParamFace( taejo_pan1, 1, 0 );
		 Movie:SetActorPlayerExParamCoat( taejo_pan1, 18, 0 );
		 Movie:SetActorPlayerExParamPant( taejo_pan1, 17, 0 );
		 Movie:SetActorPlayerExParamGlove( taejo_pan1, 17, 0 );
		 Movie:SetActorPlayerExParamShoes( taejo_pan1, 17, 0 );
		 --Movie:SetActorPlayerExParamAccessary( taejo_pan1, 0, 0 );
         Movie:SetActorPlayerExParam( taejo_pan1, 28000+1000, 31181, "Resources/Model/Movie/stage2_7_1.x7" );
         Movie:SetActorPlayerExParam( taejo_pan1, 31182, 35731, "Resources/Model/Movie/stage2_7_1.x7" );
         Movie:SetActorPlayerExParam( taejo_pan1, 47501,51992, "Resources/Model/Movie/stage2_11_1.x7" );

        taejo_pan2 = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
	 --Movie:SetActorPlayerExParam1( taejo_pan2, 4587521, 131329, 2359809, 2622209, 2098177, 2032897, 0 );
		 Movie:SetActorPlayerExParamHair( taejo_pan2, 8, 0 );
		 Movie:SetActorPlayerExParamFace( taejo_pan2, 1, 0 );
		 Movie:SetActorPlayerExParamCoat( taejo_pan2, 18, 0 );
		 Movie:SetActorPlayerExParamPant( taejo_pan2, 17, 0 );
		 Movie:SetActorPlayerExParamGlove( taejo_pan2, 17, 0 );
		 Movie:SetActorPlayerExParamShoes( taejo_pan2, 17, 0 );
		-- Movie:SetActorPlayerExParamAccessary( taejo_pan2, 0, 0 );
         Movie:SetActorPlayerExParam( taejo_pan2, 28000+1000, 31181, "Resources/Model/Movie/stage2_7_2.x7" );
         Movie:SetActorPlayerExParam( taejo_pan2, 31182, 35731, "Resources/Model/Movie/stage2_7_2.x7" );
         Movie:SetActorPlayerExParam( taejo_pan2, 47501,51992, "Resources/Model/Movie/stage2_11_2.x7" );

        taejo_pan3 = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( taejo_pan3, 1769473, 131329, 80151041, 80216833, 2098177, 2032897, 0 );
		 Movie:SetActorPlayerExParamHair( taejo_pan3, 2, 3 );
		 Movie:SetActorPlayerExParamFace( taejo_pan3, 1, 0 );
		 Movie:SetActorPlayerExParamCoat( taejo_pan3, 18, 3 );
		 Movie:SetActorPlayerExParamPant( taejo_pan3, 17, 3 );
		 Movie:SetActorPlayerExParamGlove( taejo_pan3, 17, 0 );
		 Movie:SetActorPlayerExParamShoes( taejo_pan3, 17, 0 );
		 --Movie:SetActorPlayerExParamAccessary( taejo_pan3, 0, 0 );
         Movie:SetActorPlayerExParam( taejo_pan3, 28000+1000, 31181, "Resources/Model/Movie/stage2_7_3.x7" );
         Movie:SetActorPlayerExParam( taejo_pan3, 31182, 35731, "Resources/Model/Movie/stage2_7_3.x7" );
         Movie:SetActorPlayerExParam( taejo_pan3, 47501, 51992, "Resources/Model/Movie/stage2_11_3.x7" );
	
	textViewer1 = Movie:AddTextViewer( 2500, 54000, 0, 0, MOVIE_STAGE_00 );
	Movie:SetTextViewerParam( textViewer1, 2, 1, 5, 5 );

        textViewer1 = Movie:AddTextViewer( 0, 5000, 0, 0, MOVIE_STAGE2_01 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );
	
	textViewer1 = Movie:AddTextViewer( 5000, 9000, 0, 0, MOVIE_STAGE2_02 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 9000, 13000, 0, 0, MOVIE_STAGE2_03 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 13000, 17000, 0, 0, MOVIE_STAGE2_04  );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 17000, 20000, 0, 0, MOVIE_STAGE2_05 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 20000, 22000, 0, 0, MOVIE_STAGE2_06  );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 22000, 24500, 0, 0, MOVIE_STAGE2_07  );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 25500, 27000, 0, 0, MOVIE_STAGE2_08  );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );
	
	textViewer1 = Movie:AddTextViewer( 27000, 29000, 0, 0, MOVIE_STAGE2_09  );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 29000, 32000, 0, 0, MOVIE_STAGE2_10 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 32000, 35000, 0, 0, MOVIE_STAGE2_11  );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 35000, 37500, 0, 0, MOVIE_STAGE2_12 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 37500, 39500, 0, 0, MOVIE_STAGE2_13  );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 39500, 43100, 0, 0, MOVIE_STAGE2_14  );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 46500, 52000, 0, 0, MOVIE_STAGE2_15  );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 52000, 53500, 0, 0, MOVIE_STAGE2_16  );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );
	
	textViewer1 = Movie:AddTextViewer( 53500, 55000, 0, 0, MOVIE_STAGE2_17  );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	Movie:AddSpecialEffect( 0, 2000, 2 );
	Movie:AddSpecialEffect( 53000+2000,55000+2000,3 );
	Movie:AddSpecialEffect( 55000+2000,65000,4 );

	Movie:AddSpecialEffect( 22000, 22500, 1 );
	Movie:AddSpecialEffect( 26000, 26500, 1 );
	Movie:AddSpecialEffect( 29000, 29500, 1 );

	Movie:AddBGM( 22100, 57000, "Resources/Bgm/ComeOn_S4.ogg", true, 30 )

	Movie:AddSound( 11000, 12000, "Resources/Sound/bsword_power.ogg", false, 30 );
	Movie:AddSound( 11500, 13000, "Resources/Sound/bsword_attack.ogg", false, 30 );
	Movie:AddSound( 12200, 12700, "Resources/Sound/player_attack.ogg", false, 30 );
	Movie:AddSound( 12700, 12500, "Resources/Sound/sentrygun_blast.ogg", false, 30 );
	Movie:AddSound( 12200, 13000, "Resources/Sound/sentrygun_die.ogg", false, 30 );

	Movie:AddSound( 5000, 7000, "Resources/Sound/Acade/network3.ogg", false, 70 );
	
	Movie:AddSound( 13000, 14000, "Resources/Sound/Acade/network3.ogg", false, 70 );
	
	Movie:AddSound( 19900, 21000, "Resources/Sound/Acade/network3.ogg", false, 70 );

	Movie:AddSound( 22000, 22300, "Resources/Sound/run_ground_1.ogg", false, 70 );
	Movie:AddSound( 22500, 22700, "Resources/Sound/run_ground_2.ogg", false, 70 );
	Movie:AddSound( 22700, 22900, "Resources/Sound/run_ground_1.ogg", false, 70 );
	Movie:AddSound( 23200, 23500, "Resources/Sound/run_ground_1.ogg", false, 70 );
	Movie:AddSound( 23800, 24000, "Resources/Sound/run_ground_2.ogg", false, 70 );
	Movie:AddSound( 24300, 25000, "Resources/Sound/run_ground_1.ogg", false, 70 );
	
	--[[Movie:AddSound( 29000, 31000, "Resources/Sound/voice_girl_dead_blow.ogg", true, 30 );
	Movie:AddSound( 29300, 31000, "Resources/Sound/voice_girl_dead_blow.ogg", true, 30 );
	Movie:AddSound( 29500, 31000, "Resources/Sound/voice_girl_dead_normal.ogg", true, 30 );
	Movie:AddSound( 29800, 31000, "Resources/Sound/voice_girl_dead_normal.ogg", true, 30 );

	Movie:AddSound( 31000, 34000, "Resources/Sound/voice_girl_dead_blow.ogg", true, 30 );
	Movie:AddSound( 31800, 34800, "Resources/Sound/voice_girl_dead_blow.ogg", true, 30 );
	Movie:AddSound( 31500, 34500, "Resources/Sound/voice_girl_dead_normal.ogg", true, 30 );
	Movie:AddSound( 31300, 34300, "Resources/Sound/voice_girl_dead_normal.ogg", true, 30 );--]]

	--Movie:AddSound( 38500, 39000, "Resources/Sound/run_ground_1.ogg", true, 70 );
	--Movie:AddSound( 39000, 39500, "Resources/Sound/run_ground_2.ogg", true, 70 );
	
	Movie:AddSound( 39900, 40900, "Resources/Sound/jump_up.ogg", false, 100 );
	Movie:AddSound( 40900, 41900, "Resources/Sound/land_ground.ogg", false, 100 );
	Movie:AddSound( 41000, 42000, "Resources/Sound/dodge.ogg", false, 100 );
	Movie:AddSound( 42000, 43000, "Resources/Sound/bsword_counter.ogg", false, 100 );
	Movie:AddSound( 42000, 43000, "Resources/Sound/player_attack.ogg", false, 100 );

	Movie:AddSound( 43000, 44000, "Resources/Sound/bsword_counter.ogg", false, 100 );
	Movie:AddSound( 43000, 44000, "Resources/Sound/player_attack.ogg", false, 100 );
	Movie:AddSound( 43500, 44500, "Resources/Sound/bsword_counter.ogg", false, 100 );
	Movie:AddSound( 43500, 44500, "Resources/Sound/player_attack.ogg", false, 100 );

	Movie:AddSound( 44000, 45000, "Resources/Sound/bsword_counter.ogg", false, 100 );
	Movie:AddSound( 44000, 45000, "Resources/Sound/player_attack.ogg", false, 100 );

	Movie:AddSound( 44800, 45800, "Resources/Sound/wall_destroy.ogg", false, 100 );

	--[[Movie:AddSound( 46500, 47500, "Resources/Sound/social/female_upset.ogg", false, 10 );
	Movie:AddSound( 47000, 48000, "Resources/Sound/social/female_anger.ogg", false, 10 );
	Movie:AddSound( 47500, 48500, "Resources/Sound/social/female_upset.ogg", false, 10 );
	Movie:AddSound( 48000, 49000, "Resources/Sound/social/female_anger.ogg", false, 10 );]]--

	Movie:AddMovieSpeed( 20000, 22000, 0.5 )
	Movie:AddMovieSpeed( 50000, 55000, 0.7 )
	
	
end