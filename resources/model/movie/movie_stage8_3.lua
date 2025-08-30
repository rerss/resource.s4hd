LoadStringTable( "Language/Script/Arcade_movie_string_table.x7" );

MOVIE_STAGE_00		= GetString( "MOVIE_STAGE_00" );
MOVIE_STAGE11_01		= GetString( "MOVIE_STAGE11_01" );
MOVIE_STAGE11_02		= GetString( "MOVIE_STAGE11_02" );
MOVIE_STAGE11_03		= GetString( "MOVIE_STAGE11_03" );
MOVIE_STAGE11_04		= GetString( "MOVIE_STAGE11_04" );
MOVIE_STAGE11_05		= GetString( "MOVIE_STAGE11_05" );
MOVIE_STAGE11_06 	= GetString( "MOVIE_STAGE11_06" );
MOVIE_STAGE11_07		= GetString( "MOVIE_STAGE11_07" );
MOVIE_STAGE11_08		= GetString( "MOVIE_STAGE11_08" );
MOVIE_STAGE11_09		= GetString( "MOVIE_STAGE11_09" );
MOVIE_STAGE11_10		= GetString( "MOVIE_STAGE11_10" );
MOVIE_STAGE11_11		= GetString( "MOVIE_STAGE11_11" );
MOVIE_STAGE11_12		= GetString( "MOVIE_STAGE11_12" );
MOVIE_STAGE11_13		= GetString( "MOVIE_STAGE11_13" );
MOVIE_STAGE11_14		= GetString( "MOVIE_STAGE11_14" );
MOVIE_STAGE11_15		= GetString( "MOVIE_STAGE11_15" );
MOVIE_STAGE11_16		= GetString( "MOVIE_STAGE11_16" );
MOVIE_STAGE11_17		= GetString( "MOVIE_STAGE11_17" );
MOVIE_STAGE11_18		= GetString( "MOVIE_STAGE11_18" );
MOVIE_STAGE11_19		= GetString( "MOVIE_STAGE11_19" );
MOVIE_STAGE11_20		= GetString( "MOVIE_STAGE11_20" );

--Arcade_movie_staffroll
MOVIE_staff_01		= GetString( "MOVIE_staff_01" );
MOVIE_staff_02		= GetString( "MOVIE_staff_02" );
MOVIE_staff_03		= GetString( "MOVIE_staff_03" );
MOVIE_staff_04		= GetString( "MOVIE_staff_04" );
MOVIE_staff_05		= GetString( "MOVIE_staff_05" );
MOVIE_staff_06		= GetString( "MOVIE_staff_06" );
MOVIE_staff_07		= GetString( "MOVIE_staff_07" );
MOVIE_staff_08		= GetString( "MOVIE_staff_08" );
MOVIE_staff_09		= GetString( "MOVIE_staff_09" );
MOVIE_staff_10		= GetString( "MOVIE_staff_10" );
MOVIE_staff_11		= GetString( "MOVIE_staff_11" );
MOVIE_staff_12		= GetString( "MOVIE_staff_12" );
MOVIE_staff_13 	= GetString( "MOVIE_staff_13" );
MOVIE_staff_14		= GetString( "MOVIE_staff_14" );
MOVIE_staff_15		= GetString( "MOVIE_staff_15" );
MOVIE_staff_16		= GetString( "MOVIE_staff_16" );
MOVIE_staff_17		= GetString( "MOVIE_staff_17" );
MOVIE_staff_18		= GetString( "MOVIE_staff_18" );
MOVIE_staff_19		= GetString( "MOVIE_staff_19" );
MOVIE_staff_20		= GetString( "MOVIE_staff_20" );

ClearStringTable();

TEAM_ALPHA			= 1;
TEAM_BETA			= 2;
SEX_MALE			= 0;
SEX_FEMALE			= 1;


function initialize()

	Movie:Init( 80000+4000 );
	Movie:AddMovieScene( "Resources/Model/Movie/camera_stage11.scn", false); 
	Movie:AddMovieScene( "Resources/Model/Movie/boss_stage11.scn", true );

	Movie:AddSequence( 1000, 83000, "Resources/Effects/cinemaline.seq" );        
	--카메라 파일 불러오기
	Movie:AddTMController_Camera( 0, 3250, 60, "K001" );
        Movie:AddTMController_Camera( 3251, 7116, 60, "K002" );
        Movie:AddTMController_Camera( 7117, 11283, 60, "K001" );
        Movie:AddTMController_Camera(11284, 26583, 60, "K002" );
        Movie:AddTMController_Camera(26584, 31600, 60, "K001" ); 
        Movie:AddTMController_Camera(31601, 34933, 60, "K002" ); 
        Movie:AddTMController_Camera(34934, 37466, 60, "K001" );
        Movie:AddTMController_Camera(37467, 40066, 60, "K002" );
        Movie:AddTMController_Camera(40067, 45083, 60, "K001" );
        Movie:AddTMController_Camera(45084, 50916, 60, "K002" );
        Movie:AddTMController_Camera(50917, 52400+400, 60, "K001" ); 
        Movie:AddTMController_Camera(52401+400, 60300, 60, "K002" ); 
        Movie:AddTMController_Camera(60301, 65450, 60, "K001" );
        Movie:AddTMController_Camera(65451, 71850, 60, "K002" );
        Movie:AddTMController_Camera(71851, 84000, 60, "K001" );


	Movie:AddSequence3D( 11400, 26583, "Resources/Effects/guard_start.seq", true, "ai" );
	Movie:AddSequence3D( 41500, 45083, "Resources/Effects/skill_hacker_mindenergy_team_body.seq", true, "hacker" );
 	Movie:AddSequence3D( 73500, 76000, "Resources/Effects/stun.seq", false, "gate" );
        Movie:AddSequence3D( 74500, 77000, "Resources/Effects/stun.seq", false, "gate" );
	Movie:AddSequence3D( 75000, 83500, "Resources/Effects/pve_jaco2.seq", true, "if" );
        Movie:AddSequence3D( 83500, 84000, "Resources/Effects/stun.seq", false, "gate" );

	Movie:AddMovieScene( "Resources/Model/Movie/boss_stage11.scn", true );
	boss = Movie:AddSceneLoader( 0, 71850, "resources/model/monster/boss_bip.scn", true, "boss" );
	 Movie:AddAnimController_Scene( 0, boss, "MM003", 0, false, false, 1.0 );

        --카메라 지정

        focus_actor1 = Movie:AddActorPlayerEx2( Movie:GetFocusPC(), TEAM_ALPHA );
	 Movie:SetID( focus_actor1, 1 );
	 Movie:SetActorPlayerExParam( focus_actor1, 0, 7200, "Resources/Model/Movie/stage11_1.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 11400, 26583, "Resources/Model/Movie/stage11_12.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 26570, 37466, "Resources/Model/Movie/stage11_5.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 50930, 71866, "Resources/Model/Movie/stage11_9.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 70867, 73604, "Resources/Model/Movie/stage11_13.x7" );

        Kitchi = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( Kitchi, 4456449, 1310977, 72745473, 72680193, 68682753, 70124801, 0 );
		 Movie:SetActorPlayerExParamHair( Kitchi, 9, 0 );
		Movie:SetActorPlayerExParamFace( Kitchi, 12, 0 );
		Movie:SetActorPlayerExParamCoat( Kitchi, 21, 0 );
		Movie:SetActorPlayerExParamPant( Kitchi, 20, 0 );
		Movie:SetActorPlayerExParamGlove( Kitchi, 20, 0 );
		Movie:SetActorPlayerExParamShoes( Kitchi, 20, 0 );
		--Movie:SetActorPlayerExParamAccessary( Kitchi, 0, 0 );
	 Movie:SetActorPlayerExParam( Kitchi, 6500, 11300, "Resources/Model/Movie/stage11_2.x7" );
	 Movie:SetActorPlayerExParam( Kitchi, 11400, 26583, "Resources/Model/Movie/stage11_3.x7" );
	 Movie:SetActorPlayerExParam( Kitchi, 37450, 40066, "Resources/Model/Movie/stage11_7.x7" );

        Kitchi1 = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( Kitchi1, 4456449, 1310977, 72745473, 72680193, 68682753, 70124801, 0 );
		 Movie:SetActorPlayerExParamHair( Kitchi1, 9, 0 );
		Movie:SetActorPlayerExParamFace( Kitchi1, 12, 0 );
		Movie:SetActorPlayerExParamCoat( Kitchi1, 21, 0 );
		Movie:SetActorPlayerExParamPant( Kitchi1, 20, 0 );
		Movie:SetActorPlayerExParamGlove( Kitchi1, 20, 0 );
		Movie:SetActorPlayerExParamShoes( Kitchi1, 20, 0 );
		--Movie:SetActorPlayerExParamAccessary( Kitchi1, 0, 0 );
	 Movie:SetActorPlayerExParam( Kitchi1, 39900, 45083, "Resources/Model/Movie/stage11_8.x7" );

        Dealer = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( Dealer, 4390913, 1245441, 72679937, 72614657, 68617217, 70059265, 0 );
		 Movie:SetActorPlayerExParamHair( Dealer, 11, 0 );
		 Movie:SetActorPlayerExParamFace( Dealer, 13, 0 );
		 Movie:SetActorPlayerExParamCoat( Dealer, 22, 0 );
		 Movie:SetActorPlayerExParamPant( Dealer, 38, 0 );
		 Movie:SetActorPlayerExParamGlove( Dealer, 20, 0 );
		 Movie:SetActorPlayerExParamShoes( Dealer, 37, 0 );
	 Movie:SetActorPlayerExParam( Dealer, 11000, 26600, "Resources/Model/Movie/stage11_4.x7" );

        taejo = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( taejo, 3932161, 786689, 1311233, 1573633, 1049601, 984321, 0 );
		 Movie:SetActorPlayerExParamHair( taejo, 14, 0 );
		 Movie:SetActorPlayerExParamFace( taejo, 17, 0 );
		 Movie:SetActorPlayerExParamCoat( taejo, 33, 0 );
		 Movie:SetActorPlayerExParamPant( taejo, 30, 0 );
		 Movie:SetActorPlayerExParamGlove( taejo, 29, 0 );
		 Movie:SetActorPlayerExParamShoes( taejo, 29, 0 );
	 Movie:SetActorPlayerExParam( taejo, 38300, 50916, "Resources/Model/Movie/stage11_8_1.x7" );
	 Movie:SetActorPlayerExParam( taejo, 50930, 71866, "Resources/Model/Movie/stage11_10.x7" );  
	 Movie:SetActorPlayerExParam( taejo, 72767, 74500, "Resources/Model/Movie/stage11_13.x7" );    

	textViewer1 = Movie:AddTextViewer( 2500, 80000, 0, 0, MOVIE_STAGE_00 );
	Movie:SetTextViewerParam( textViewer1, 2, 1, 5, 5 );     
	
	textViewer1 = Movie:AddTextViewer( 3266, 7116, 100, 100, MOVIE_STAGE11_01 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 7133, 11283, 100, 100, MOVIE_STAGE11_02);
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 14500, 19333, 100, 100, MOVIE_STAGE11_03 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 20966, 23950, 100, 100, MOVIE_STAGE11_04 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );
	
	textViewer1 = Movie:AddTextViewer( 23966, 25950, 100, 100, MOVIE_STAGE11_05 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 27000, 31000, 100, 100, MOVIE_STAGE11_06 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 31001, 33000, 100, 100, MOVIE_STAGE11_07 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 33001, 35500, 100, 100, MOVIE_STAGE11_08 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 35501, 38000, 100, 100, MOVIE_STAGE11_09 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 38001, 41000, 100, 100, MOVIE_STAGE11_10 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 45100, 50000, 100, 100, MOVIE_STAGE11_11 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 50501, 52550, 100, 100, MOVIE_STAGE11_12 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 52551, 55283, 100, 100, MOVIE_STAGE11_13 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 55500, 60000, 100, 100, MOVIE_STAGE11_14 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 60001, 63450, 100, 100, MOVIE_STAGE11_15 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 63500, 65500, 100, 100, MOVIE_STAGE11_16 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );
	
	textViewer1 = Movie:AddTextViewer( 65501, 66599, 100, 100, MOVIE_STAGE11_17 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 66600, 68066, 100, 100, MOVIE_STAGE11_18 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );
	
	textViewer1 = Movie:AddTextViewer( 68001, 70066, 100, 100, MOVIE_STAGE11_19 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 70083, 71850, 100, 100, MOVIE_STAGE11_20 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );
	
	textViewer1 = Movie:AddTextViewer( 8000, 11000, 500, 500, MOVIE_staff_01 );
	Movie:SetTextViewerParam( textViewer1, 0, 0, 0, 0 );  
	
	textViewer1 = Movie:AddTextViewer( 11001, 14000, 500, 500, MOVIE_staff_02 );
	Movie:SetTextViewerParam( textViewer1, 0, 0, 0, 0 );     
			
	textViewer1 = Movie:AddTextViewer( 14001, 17000, 500, 500, MOVIE_staff_03 );
	Movie:SetTextViewerParam( textViewer1, 0, 0, 0, 0 );  
	
	textViewer1 = Movie:AddTextViewer( 17001, 20000, 500, 500, MOVIE_staff_04 );
	Movie:SetTextViewerParam( textViewer1, 0, 0, 0, 0 );  
	
	textViewer1 = Movie:AddTextViewer( 20001, 23000, 500, 500, MOVIE_staff_05 );
	Movie:SetTextViewerParam( textViewer1, 0, 0, 0, 0 );  
	
	textViewer1 = Movie:AddTextViewer( 23001, 26000, 500, 500, MOVIE_staff_06 );
	Movie:SetTextViewerParam( textViewer1, 0, 0, 0, 0 );  
	
	textViewer1 = Movie:AddTextViewer( 26001, 29000, 500, 500, MOVIE_staff_07 );
	Movie:SetTextViewerParam( textViewer1, 0, 0, 0, 0 );  
	
	textViewer1 = Movie:AddTextViewer( 29001, 32000, 500, 500, MOVIE_staff_08 );
	Movie:SetTextViewerParam( textViewer1, 0, 0, 0, 0 );  
		
	textViewer1 = Movie:AddTextViewer( 32001, 35000, 500, 500, MOVIE_staff_09 );
	Movie:SetTextViewerParam( textViewer1, 0, 0, 0, 0 );  

	textViewer1 = Movie:AddTextViewer( 35001, 38000, 500, 500, MOVIE_staff_10 );
	Movie:SetTextViewerParam( textViewer1, 0, 0, 0, 0 );  
		
	textViewer1 = Movie:AddTextViewer( 38001, 41000, 500, 500, MOVIE_staff_11 );
	Movie:SetTextViewerParam( textViewer1, 0, 0, 0, 0 );  
	
	textViewer1 = Movie:AddTextViewer( 41001, 44000, 500, 500, MOVIE_staff_12 );
	Movie:SetTextViewerParam( textViewer1, 0, 0, 0, 0 );  
	
	textViewer1 = Movie:AddTextViewer( 44001, 47000, 500, 500, MOVIE_staff_13 );
	Movie:SetTextViewerParam( textViewer1, 0, 0, 0, 0 );  
	
	textViewer1 = Movie:AddTextViewer( 47001, 50000, 500, 500, MOVIE_staff_14 );
	Movie:SetTextViewerParam( textViewer1, 0, 0, 0, 0 );  
	
	textViewer1 = Movie:AddTextViewer( 50001, 54000, 500, 500, MOVIE_staff_15 );
	Movie:SetTextViewerParam( textViewer1, 0, 0, 0, 0 );  
	
	textViewer1 = Movie:AddTextViewer( 54001, 57000, 500, 500, MOVIE_staff_16 );
	Movie:SetTextViewerParam( textViewer1, 0, 0, 0, 0 );  	
	
	textViewer1 = Movie:AddTextViewer( 57001, 59000, 500, 500, MOVIE_staff_17 );
	Movie:SetTextViewerParam( textViewer1, 0, 0, 0, 0 );  
	
	textViewer1 = Movie:AddTextViewer( 59001, 62000, 500, 500, MOVIE_staff_18 );
	Movie:SetTextViewerParam( textViewer1, 0, 0, 0, 0 ); 
	
	textViewer1 = Movie:AddTextViewer( 62001, 66000, 500, 500, MOVIE_staff_19 );
	Movie:SetTextViewerParam( textViewer1, 0, 0, 0, 0 );  
	
	textViewer1 = Movie:AddTextViewer( 78000, 83000, 500, 500, MOVIE_staff_20 );
	Movie:SetTextViewerParam( textViewer1, 0, 0, 0, 0 );  
	
	Movie:AddSpecialEffect( 0, 4000, 2 );
	Movie:AddSpecialEffect( 76000+5000, 80000+4000, 3 );
	Movie:AddSpecialEffect( 80000+4000, 90000+4000, 4 );

	Movie:AddSpecialEffect( 80900, 84000, 1 );
	Movie:AddMovieSpeed( 31001, 35000, 0.6 )
	Movie:AddMovieSpeed( 65501, 66599, 0.5 )
	Movie:AddMovieSpeed( 66600, 70066, 0.7 )

	Movie:AddBGM( 0, 90000, "Resources/Bgm/Ending_Final.ogg", false, 60 )
	
	Movie:AddSound( 1000, 4000, "Resources/Sound/Acade/bossvirus_death.ogg", true, 100 );
	Movie:AddSound( 1000, 4000, "Resources/Sound/Acade/bossvirus_stun.ogg", true, 100 );
	
	Movie:AddSound( 12000, 19333, "Resources/Sound/Acade/kichi_keyboard1.ogg", true, 40 );
	Movie:AddSound( 16500, 17500, "Resources/Sound/stealth_begin.ogg", true, 100 );
	
	Movie:AddSound( 20966, 21950, "Resources/Sound/Acade/network3.ogg", true, 70 );
	Movie:AddSound( 23966, 25966, "Resources/Sound/Acade/network3.ogg", true, 70 );
	Movie:AddSound( 31001, 32500, "Resources/Sound/Acade/network3.ogg", true, 70 );
	Movie:AddSound( 33001, 34500, "Resources/Sound/Acade/network3.ogg", true, 70 );
	
	Movie:AddSound( 66600, 68666, "Resources/Sound/Acade/network3.ogg", true, 70 );
	Movie:AddSound( 68001, 69500, "Resources/Sound/Acade/network3.ogg", true, 70 );
	
	Movie:AddSound( 42000, 45500, "Resources/Sound/mindenergy_team.ogg", true, 100 );
	
	Movie:AddSound( 73000, 74000, "Resources/Sound/mindenergy_team.ogg", false, 100 );
	Movie:AddSound( 74000, 75000, "Resources/Sound/mindenergy_team.ogg", false, 100 );
	Movie:AddSound( 83000, 84000, "Resources/Sound/mindenergy_team.ogg", false, 70 );
	
end