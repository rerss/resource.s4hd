TEAM_ALPHA			= 1;
TEAM_BETA			= 2;
SEX_MALE			= 0;
SEX_FEMALE			= 1;


function initialize()

	Movie:Init( 15000 );
	Movie:AddMovieScene( "Resources/Model/Movie/camera_stage10_2.scn", false); 
	Movie:AddMovieScene( "Resources/Model/Movie/boss_stage10_2.scn", true );

	Movie:AddSequence( 500, 14500, "Resources/Effects/cinemaline.seq" ); 
	Movie:AddSequence( 1600, 2000, "Resources/Effects/pve_fullscenerendertarget01.seq" );
	Movie:AddSequence( 1601, 15000, "Resources/Effects/cinemaline2.seq" ); 
	Movie:AddSequence( 5700, 5750, "Resources/Effects/pve_fullscenerendertarget01.seq" );
	Movie:AddSequence( 5701, 15000, "Resources/Effects/cinemaline2.seq" );
	Movie:AddSequence( 5900, 6000, "Resources/Effects/pve_fullscenerendertarget01.seq" );
	Movie:AddSequence( 5901, 15000, "Resources/Effects/cinemaline2.seq" );
	Movie:AddSequence( 6000, 6200, "Resources/Effects/pve_fullscenerendertarget01.seq" );
	Movie:AddSequence( 6001, 15000, "Resources/Effects/cinemaline2.seq" );
	Movie:AddSequence( 7000, 7300, "Resources/Effects/pve_fullscenerendertarget01.seq" );
	Movie:AddSequence( 7001, 15000, "Resources/Effects/cinemaline2.seq" );   

     
	--카메라 파일 불러오기
	Movie:AddTMController_Camera( 0, 1466, 60, "J003" );
	Movie:AddTMController_Camera( 1467, 5682, 60, "J001" );
        Movie:AddTMController_Camera( 5683, 6533, 60, "J002" );
	Movie:AddTMController_Camera( 6534, 8333, 60, "J001" );
        Movie:AddTMController_Camera( 8334, 9349, 60, "J002" );
        Movie:AddTMController_Camera( 9350, 10350, 60, "J003" );
        Movie:AddTMController_Camera(10351, 17000, 60, "J001" );

	Movie:AddMovieScene( "Resources/Model/Movie/boss_stage11.scn", true );
	boss = Movie:AddSceneLoader( 0, 15000, "resources/model/monster/boss_bip.scn", true, "boss" );
	 Movie:AddAnimController_Scene( 0, boss, "MM012", 0, false, true, 1.0 );
	 Movie:AddAnimController_Scene( 3800, boss, "MM009", 300, false, false, 1.0 );

	 Movie:AddSequence3D_Scene( 0, 10350, "Resources/Effects/pve_boss_fog01.seq", true, boss, "" );
	 Movie:AddSequence3D_Scene( 3800, 15000, "Resources/Effects/pve_boss_att03.seq", true, boss, "" );

        --카메라 지정
        Kitchi = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( Kitchi, 4456449, 1310977, 72745473, 72680193, 68682753, 70124801, 0 );
		 Movie:SetActorPlayerExParamHair( Kitchi, 9, 0 );
		 Movie:SetActorPlayerExParamFace( Kitchi, 12, 0 );
		 Movie:SetActorPlayerExParamCoat( Kitchi, 21, 0 );
		 Movie:SetActorPlayerExParamPant( Kitchi, 20, 0 );
		 Movie:SetActorPlayerExParamGlove( Kitchi, 20, 0 );
		 Movie:SetActorPlayerExParamShoes( Kitchi, 20, 0 );

	 Movie:SetActorPlayerExParam( Kitchi, 0, 5833, "Resources/Model/Movie/stage10_10.x7" );
	 Movie:SetActorPlayerExParam( Kitchi, 9400, 15000, "Resources/Model/Movie/stage10_12.x7" );

        focus_actor1 = Movie:AddActorPlayerEx2( Movie:GetFocusPC(), TEAM_ALPHA );
	 Movie:SetID( focus_actor1, 1 );
	 Movie:SetActorPlayerExParam( focus_actor1, 7600, 10350, "Resources/Model/Movie/stage10_11.x7" );
	 Movie:AddSequence3D( 1600, 3000, "Resources/Effects/weapon_mindshock_hand.seq", false, "effect1" );
	 Movie:AddSequence3D( 0, 1600, "Resources/Effects/guard_start.seq", false, "effect2" );

	textViewer1 = Movie:AddTextViewer( 1500, 13000, 0, 0, "{F-2002_12}{CB-0,255,0,255}P키로 스킵할 수 있습니다. ( 방장권한 )" );
	Movie:SetTextViewerParam( textViewer1, 2, 1, 5, 5 );   
	
	textViewer1 = Movie:AddTextViewer( 8350, 10350, 100, 100, "{F-2002_15}으앗! 무슨 짓을 한 거에요!" );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 10366, 13000, 100, 100, "{F-2002_15}{CB-0,255,255,255}키치: 꺄악! 난 널 도우려고 한 것뿐인데! 왜 이러지?" );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 13001, 15000, 100, 100, "{F-2002_15}{CB-0,255,255,255}키치: 꺄아아악! 이게 아니잖아!" );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	Movie:AddSpecialEffect( 0, 500, 2 );
	Movie:AddSpecialEffect(14500, 15000, 3 );
	Movie:AddSpecialEffect(15000, 25000, 4 );

	Movie:AddSpecialEffect(2400, 3500, 1 );
	Movie:AddSpecialEffect(5000, 7000, 1 );
	Movie:AddSpecialEffect(14600, 15000, 1 );

	Movie:AddSound( 500, 2000, "Resources/Sound/Acade/kichi_keyboard.ogg", false, 50 );
	
	Movie:AddSound( 3500, 7900, "Resources/Sound/Acade/bossvirus_upset.ogg", true, 100 );
	Movie:AddSound( 3500, 5900, "Resources/Sound/Acade/bossvirus_stun.ogg", true, 100 );
	
	Movie:AddSound( 8000, 9500, "Resources/Sound/brail_blast_max.ogg", false, 100 );
	Movie:AddSound( 8000, 9500, "Resources/Sound/wall_destroy_steel.ogg", false, 100 );
end