path = path| {"../", "../../"}
needsPackage "ExampleIdeals"

linearExample = () -> (
     R := CC[x,y]; 
     ideal {x+y-3,x-y-1}
     )

tinyExample = () -> (
     R := CC[x,y];
     S := {x^2-1,y-1};
     T := {x^2+y^2-1, x};
     solsS := {(1,1),(-1,1)};
     (S,T,solsS)
     )

smallExample = () -> (
     R := CC[x,y];
     S := {x^2-1,y^2-1};
     T := {x^2+y^2-1, x*y};
     solsS := {(1,-1),(1,1),(-1,1),(-1,-1)};
     (S,T,solsS)
     )

smallInfinityExample = () -> (
     R := CC[x,y];
     S := {x^2-1,y^2-1};
     T := {x^2+y^2-1, x-y};
     solsS := {(1,-1),(1,1),(-1,1),(-1,-1)};
     (S,T,solsS)
     )

example2 = () -> (
     R := CC[s1,s2,g1,g2,C1,C2];
     ideal(
	  s1^2+g1^2 - 1,
	  s2^2+g2^2 - 1,
	  C1*g1^3+C2*g2^3 - 1.2,
	  s1+s2-1,
	  g1+g2-2,
	  C1+C2-3)
)

example1 = () -> (
     R := CC[s1,s2,g1,g2,C1,C2];
     ideal( -- bertini is slow on this
  	  s1^2+g1^2 - 1, 
  	  s2^2+g2^2 - 1,
  	  C1*g1^3+C2*g2^3 - 1.2,
  	  C1*s1^3+C2*s2^3 - 1.2,
  	  C1*g1^2*s1+C2*g2^2*s2 - 0.7,
  	  C1*g1*s1^2+C2*g2*s2^2 - 0.7)
     )

fekete4 = () -> (
     R := CC[x1,x2];
     r := sqrt 2; -- this looks correct
     ideal {x1*(x1^3-(r*x2)^3)}
     )
      
stewartGough40real = () -> (
     R := CC[n1,n2,n3,h11,h12,h13,h21,h22,h23];
ideal { n1^2 + n2^2 + n3^2 - 1,
 h11^2 + h12^2 + h13^2 - 1,
 h21^2 + h22^2 + h23^2 - 1,
 h11*h21 + h12*h22 + h13*h23,
 n1^2 + 1.085610*n1*h11 - 2.215830*n1 + 0.2946372680*h11^2 - 1.202763603*h11
 + 0.8110958214+n2^2 + 1.085610*n2*h12 + 0.2946372680*h12^2 + n3^2
 + 1.085610*n3*h13 + 0.2946372680*h13^2,
 - 1.050876963*h11 - 1.446982100*h12 + 0.5808481060*h21 + 0.7997861232*h22
 - 1.098188*n1 - 1.512126*n2 - 1.012257626*h12*h22 + 0.9156939726*h11^2
 + 0.9156939726*h12^2 + 0.2797510772*h23^2 + 0.9156939726*h13^2 + n2^2 + n3^2
 - 1.012257626*h11*h21 + n1^2 - 1.012257626*h13*h23 + 0.2797510772*h22^2
 + 0.2797510772*h21^2 - 1.057830*n3*h23 - 0.3068774482 + 1.913838*n1*h11
 + 1.913838*n2*h12 + 1.913838*n3*h13 - 1.057830*n1*h21 - 1.057830*n2*h22,
 2.805076*n1*h12*h23 - 0.9789534962*h11 + 0.2982299150*h12 - 0.7004990340*h13
 + 0.5196729762*h21 - 0.1583139833*h22 + 0.3718567014*h23 - 1.470154*n1
 + 0.447870*n2 - 1.051982*n3 + 2.805076*n3*h11*h22 - 0.4707567232*h12*h22
 - 2.061946850*h12*h23 - 0.6281546940*h11*h23 - 1.475444730*h11*h22
 + 1.475444730*h12*h21 - 2.805076*n1*h13*h22 + 2.805076*n2*h13*h21
 - 2.805076*n2*h11*h23 + 0.4434028332*h11^2 + 0.4434028332*h12^2
 + 0.1249495243*h23^2 + 0.4434028332*h13^2 + 0.6281546940*h13*h21
 + 2.061946850*h13*h22 + n2^2 + n3^2 - 2.805076*n3*h12*h21
 - 0.4707567232*h11*h21 + n1^2 - 0.4707567232*h13*h23 - 1.393177215
 + 0.1249495243*h22^2 + 0.1249495243*h21^2 - 3.934225682*h11*h22*h12*h21
 + 1.967112841*h11^2*h22^2 + 1.967112841*h12^2*h21^2 - 0.706964*n3*h23
 + 1.967112841*h12^2*h23^2 + 1.967112841*h13^2*h22^2 + 1.331770*n1*h11
 + 1.331770*n2*h12 + 1.331770*n3*h13 - 3.934225682*h12*h23*h13*h22
 + 1.967112841*h13^2*h21^2 + 1.967112841*h11^2*h23^2
 - 3.934225682*h13*h21*h11*h23 - 0.706964*n1*h21 - 0.706964*n2*h22,
 0.215344*n1*h12*h23 - 0.4919329150*h11 + 0.5032939412*h12 + 0.3524721322*h13
 - 1.191622463*h21 + 1.219142585*h22 + 0.8538028204*h23 - 1.028376*n1
 + 1.052126*n2 + 0.736836*n3 + 0.215344*n3*h11*h22 + 1.108589329*h12*h22
 - 0.1107273007*h12*h23 - 0.1132845107*h11*h23 + 0.7933660580e-1*h11*h22
 - 0.7933660580e-1*h12*h21 - 0.215344*n1*h13*h22 + 0.215344*n2*h13*h21
 - 0.215344*n2*h11*h23 + 0.2288273329*h11^2 + 0.2288273329*h12^2
 + 1.342683023*h23^2 + 0.2288273329*h13^2 + 0.1132845107*h13*h21
 + 0.1107273007*h13*h22 + n2^2 + n3^2 - 0.215344*n3*h12*h21
 + 1.108589329*h11*h21 + n1^2 + 1.108589329*h13*h23 + 1.342683023*h22^2
 + 1.342683023*h21^2 - 0.2318651916e-1*h11*h22*h12*h21
 + 0.1159325958e-1*h11^2*h22^2 + 0.1159325958e-1*h12^2*h21^2
 + 2.317484*n3*h23 + 0.1159325958e-1*h12^2*h23^2 + 0.1159325958e-1*h13^2*h22^2
 + 0.956718*n1*h11 + 0.956718*n2*h12 + 0.956718*n3*h13
 - 0.2318651916e-1*h12*h23*h13*h22 + 0.1159325958e-1*h13^2*h21^2
 + 0.1159325958e-1*h11^2*h23^2 - 0.2318651916e-1*h13*h21*h11*h23
 + 2.317484*n1*h21 + 2.317484*n2*h22 - 0.9664888140,
 0.707826*n1*h12*h23 + 0.1618923443*h11 + 0.2597332554e-1*h12
 - 0.5621060514e-1*h13 + 0.2776652044*h21 + 0.4454743538e-1*h22
 - 0.9640807436e-1*h23 - 1.180946*n1 - 0.189466*n2 + 0.410036*n3
 + 0.707826*n3*h11*h22 + 0.6446406506e-1*h12*h22 - 0.4179521416*h12*h23
 + 0.6705448046e-1*h11*h23 + 0.1451170709*h11*h22 - 0.1451170709*h12*h21
 - 0.707826*n1*h13*h22 + 0.707826*n2*h13*h21 - 0.707826*n2*h11*h23
 + 0.1879284557e-1*h11^2 + 0.1879284557e-1*h12^2 + 0.5528188464e-1*h23^2
 + 0.1879284557e-1*h13^2 - 0.6705448046e-1*h13*h21 + 0.4179521416*h13*h22
 + n2^2 + n3^2 - 0.707826*n3*h12*h21 + 0.6446406506e-1*h11*h21 + n1^2
 + 0.6446406506e-1*h13*h23 + 0.5528188464e-1*h22^2 + 0.5528188464e-1*h21^2
 - 0.2505088232*h11*h22*h12*h21 + 0.1252544116*h11^2*h22^2
 + 0.1252544116*h12^2*h21^2 - 0.470242*n3*h23 + 0.1252544116*h12^2*h23^2
 + 0.1252544116*h13^2*h22^2 - 0.274174*n1*h11 - 0.274174*n2*h12
 - 0.274174*n3*h13 - 0.2505088232*h12*h23*h13*h22 + 0.1252544116*h13^2*h21^2
 + 0.1252544116*h11^2*h23^2 - 0.2505088232*h13*h21*h11*h23 - 0.470242*n1*h21
 - 0.470242*n2*h22 - 0.1948854017 }
)

randomNFactorialSystem = (n,kk) -> (
     R = kk[vars(53..n+51)];
     ideal apply(n-1, d-> sum(n-1, i -> random(-100,100)*R_i^(d+2)) - 100)
     )

randomQuadraticSystem = (n,kk) -> (
     R := kk[vars(53..n+52)];
     ideal apply(n, i->random(2,R) - 1)
     )

randomSystem = (n,d,kk) -> (
     R := kk[vars(53..n+52)]; 
     ideal apply(n, i->sum(toList(1..d),j->random(j,R)) - 1)
     )

cyclic = (n,kk) -> (
     R := kk[vars(53..n+52)];
     ideal apply(1..n-1, d-> sum(0..n-1, i -> product(d, k -> R_((i+k)%n)))) 
       + ideal(product gens R - 1))

cyclicH = (n,kk) -> (
     R := kk[vars(53..n+53)];
     ideal apply(1..n-1, d-> sum(0..n-1, i -> product(d, k -> R_((i+k)%n)))) 
       + ideal(product(n, i -> R_i) - R_n^n))

katsuraBench = n -> (
     R := CC[vars(53..n+52)];
     I := katsura(n,CC);
     (map(R,ring I, vars R)) I
     )

randomGeneralizedEigenvalueProblem = n -> (
     R := CC[symbol lambda, vars(53..n+52)];
     A := sub(random(CC^n,CC^n), R);
     B := sub(random(CC^n,CC^n), R);
     x := transpose matrix{drop(gens R,1)};
     T := flatten entries (A*x-R_0*B*x) | {n - 1 - sum flatten entries x};
     S := apply(n,i->(R_0-exp(ii*i/(2*pi*n)))*(x_(i,0)-1)) | {n - 1 - sum flatten entries x};
     solsS := apply(n,i->toSequence({exp(ii*i/(2*pi*n))} | toList(i:1) | {0} | toList(n-i-1:1)));
     (T,S,solsS)
     )

sottileW = () -> (
     R=QQ[x1,x2,x3,x4,x5,x6,x7,x8];
     I = trim ideal( 
	  -539445/16*x2*x5-117675/16*x3*x5-3795/8*x4*x5+539445/16*x1*x6-12945/16*x3*x6-555/8*x4*x6+117675/16*x1*x7+12945/16*x2*x7-15/4*x4*x7+3795/8*x1*x8+555/8*x2*x8+15/4*x3*x8-1357665/4*x1-1205205/8*x2-197745/8*x3-5685/4*x4+596925*x5+398475/2*x6+58275/2*x7+1575*x8+661500,
	  -93925/41472*x2*x5-19705/20736*x3*x5-205/1728*x4*x5+93925/41472*x1*x6-8305/41472*x3*x6-115/3456*x4*x6+19705/20736*x1*x7+8305/41472*x2*x7-1/288*x4*x7+205/1728*x1*x8+115/3456*x2*x8+1/288*x3*x8-29005/4608*x1-18415/3456*x2-23213/13824*x3-215/1152*x4+1505/256*x5+1435/384*x6+805/768*x7+7/64*x8+441/128,
	  -43043803578009/413220935680000*x2*x5-1193518511991/8433080320000*x3*x5-10652778279/210827008000*x4*x5+43043803578009/413220935680000*x1*x6-866311318431/8433080320000*x3*x6-204464871/4302592000*x4*x6+1193518511991/8433080320000*x1*x7+866311318431/8433080320000*x2*x7-1584999/107564800*x4*x7+10652778279/210827008000*x1*x8+204464871/4302592000*x2*x8+1584999/107564800*x3*x8-1757763891/84330803200*x1-527058132471/8264418713600*x2-11147297967/168661606400*x3-90344943/4216540160*x4+90344943/20661046784*x5+10652778279/1033052339200*x6+204464871/21082700800*x7+1584999/527067520*x8+1584999/2582630848,
	  13421/82944000000000*x2*x5+4597/4147200000000*x3*x5+77/34560000000*x4*x5-13421/82944000000000*x1*x6+3193/829440000000*x3*x6+71/6912000000*x4*x6-4597/4147200000000*x1*x7-3193/829440000000*x2*x7+1/57600000*x4*x7-77/34560000000*x1*x8-71/6912000000*x2*x8-1/57600000*x3*x8+533/331776000000000*x1+313/13824000000000*x2+1939/16588800000000*x3+29/138240000000*x4-29/331776000000000*x5-77/82944000000000*x6-71/16588800000000*x7-1/138240000000*x8-1/331776000000000,
	  26089/104485552128000*x2*x5-613753/435356467200000*x3*x5+2849/1209323520000*x4*x5-26089/104485552128000*x1*x6+291403/72559411200000*x3*x6-1799/201553920000*x4*x6+613753/435356467200000*x1*x7-291403/72559411200000*x2*x7+7/559872000*x4*x7-2849/1209323520000*x1*x8+1799/201553920000*x2*x8-7/559872000*x3*x8+217/58047528960000*x1-22463/522427760640000*x2+79513/435356467200000*x3-329/1209323520000*x4+329/1306069401600000*x5-2849/1306069401600000*x6+1799/217678233600000*x7-7/604661760000*x8-7/653034700800000,
	  -122949761/7782481350000*x2*x5+4941739/222356610000*x3*x5-9823/1058841000*x4*x5+122949761/7782481350000*x1*x6-2499761/158826150000*x3*x6+6611/756315000*x4*x6-4941739/222356610000*x1*x7+2499761/158826150000*x2*x7-11/3601500*x4*x7+9823/1058841000*x1*x8-6611/756315000*x2*x8+11/3601500*x3*x8-277783/72060012500*x1+2853257/259416045000*x2-2155417/185297175000*x3+3817/882367500*x4-3817/3603000625*x5+9823/4323600750*x6-6611/3088286250*x7+11/14706125*x8+132/720600125,
	  -4410845887/83980800000*x2*x5+98726719/2799360000*x3*x5-328937/46656000*x4*x5+4410845887/83980800000*x1*x6-9253111/777600000*x3*x6+123137/38880000*x4*x6-98726719/2799360000*x1*x7+9253111/777600000*x2*x7-343/648000*x4*x7+328937/46656000*x1*x8-123137/38880000*x2*x8+343/648000*x3*x8-4769137513/83980800000*x1+71883539/933120000*x2-15109493/388800000*x3+16807/2430000*x4-5764801/174960000*x5+112825391/3359232000*x6-42235991/2799360000*x7+117649/46656000*x8+40353607/3359232000,
	  368830385/144*x2*x5-191905945/432*x3*x5+1569491/72*x4*x5-368830385/144*x1*x6+17350795/432*x3*x6-187187/72*x4*x6+191905945/432*x1*x7-17350795/432*x2*x7+1309/12*x4*x7-1569491/72*x1*x8+187187/72*x2*x8-1309/12*x3*x8+3636796009/108*x1-2778704621/216*x2+367872197/216*x3-2710939/36*x4+189765730/3*x5-54932185/3*x6+6551545/3*x7-91630*x8-76969200,
	  368830385/144*x2*x5-191905945/432*x3*x5+1569491/72*x4*x5-368830385/144*x1*x6+17350795/432*x3*x6-187187/72*x4*x6+191905945/432*x1*x7-17350795/432*x2*x7+1309/12*x4*x7-1569491/72*x1*x8+187187/72*x2*x8-1309/12*x3*x8+3636796009/108*x1-2778704621/216*x2+367872197/216*x3-2710939/36*x4+189765730/3*x5-54932185/3*x6+6551545/3*x7-91630*x8-76969200);
     A = CC[gens R];
     phi = map(A,R);
     phi ideal apply(I_*, f -> 1/(leadCoefficient f) * f)
     )

-- 6R system, origin: robotics
system6R = () -> (
     R = CC[z21, z22, z23, z31, z32, z33, z41, z42, z43, z51, z52, z53];
     g0 = 0.5;
     ca1 = 1.42280064374472053848633667965682992368447118569753684436263461792385823383091835234186160484890260636785960579635275202449763412925278592724649623589935205510364247055425974248734706622371716077464645620771875527985232037878828948327045148418089244555737397490235494402630591488772566013003641052113042655917563877778157242358199e-1;
     ca2 = 5.65529122753684966814296913072520438585176817273438957014447019326260151168737031667816966363128908364117060563647393374635715360497011124225842916158864263897805021830306674339266173811943524587524641699519005430923694523664199337833371601303932092883307864352124216873915254613420360673666893241036162446675617416051949170387790e-1;
     ca3 = 9.26709324064884634696373326171402193378446315738514288809212862801645933481064947508993058277942849052987742611688383337628103738002791892535035011658526762974742091764654328789331816744759508498844387250750218053160192909105313898186225420564365833357327778299383339337088679884762858502006305944049306737812407269058737156039664e-1;
     ca4 = 3.47512669336721815734336414335635062714427477204359991748174961953927880611757146263205893816856018652128042623526059115541015591244777016235674255567865928785036379530001656988897186990452426764264733170722942323029104878746352869864129434556538900695026914141699060589680504190089373549370513519893804550189301297355344692125775e-2;
     ca5 = 2.03569323741562147921615618238981242168613041848392630380232482462714740865261498298387491421278683743372460551739051065375693217731871129110902892344388727579386364557485472572368370363918977375533957380574711053340245467647959282835863288159471343565727171174479256628513492349450471550120233673332108018207249661172243310937763e-1;
     asa1 = 7.52122055232954519986966025622348937716558750569114799824610757461716398573688760648343914888894519600270088132480646269337712907158899819465640177638741915297647260333817123122437823203317095103202394900698106221929400535876785539237457358687627292434567212746634902339752509756870563346330169618009762714176070227242368551639990e-1;
     asa2 = 6.93872278696037254459747214816476376309243908887897534984506486886994087954312237267856228046572360735032113343749025515335134879443390842606294476241828153790322685711923647218066538520798147669187247756570980168016864510763175531296703537804106466635659819856665961969369366470623151046214220640691045969281661979833344164819239e-1;
     asa3 = 3.24896902220245582383758308539429437686304521982566533854503286838873218705988316188270520614061489760316992424503822235728501462274744401333125581899240239937842226039532881653805096457922887081902966528254839061007460924488130687373513523533303160332342874360221475601361760164826077232316798575093320843815151801654494484483820e-1;
     asa4 = 9.68259045679015018439051176757864709709479897690803527198739106142453381051743072086869539078356978560487826292850209068103792517447200212409288088541744868556216578536353168544797310274359422271846330403996022295805492401103484106876594694252513697243758177233937207292281285673288124052977414146258030693686898207998879521797738e-1;
     asa5 = 1.54506853068420176723829320396186819670033379879916853193362567153206138112918937507471220348359565507737510234842630026170076708698174916153491603314305171901541926054361850279496669401625712354136433940477014678835521715866420360643748582615229751079084482108339454484829815225329134054396900967937226166116760536741753893374121e-1;
     d1 = 9.26138324340622567511381087940001083253108704161502858212900030244618452279042593864173171773855182217320026906064466624451572757445749477545715999968090156729486191271461539651409905007779571932130817681909070373086891948981981866439411712403163979510924333529863721153369855841899350346078244357161588901241806261788354623990772e-1;
     d2 = 5.64894327798100926160350845538606271190845003180533574881729469518932691647805955455238490143808569620492915913777425702724313468814599493342208787518845041969413144224477532392358409092175019276613234922616512100741578637220939009858760885505216587867511678713895620884560828496496739301056295508591995007045249148472400720843003e-1;
     d3 = 2.77941234614989222808735654313193573006722018120267934909243556074725106570598202885308353165397478033364599404308004226339010781293496832260919822227280771371452234397581829520473746292584871809715561136021646263909574095958268102304851727704845149396443653494245668936318928617041901852227224993857053019004029555917255722264764e-2;
     d4 = 1.79161596475296225967516945020881059294606981118445401691962603557028625796570178898872703099297997663281434501659906328983383953213273297680112133215145155089804509649615668706851881711967472344439739331448434282910672024168861372888364954269201696862662028538821758597612316463717211037319723012476766803337358190470486278373671e-1;
     p1 = 4.16109357421161814099911350675422739225808603169540436669211449399111651973378190469123368510533135417668673817648486943933890543016422925411370136715554534915140936230266403130945013635719423719642829985112769572280159463609475121227203584073516920373975664060125455161900017419820466722300496865241734953814925194163482056617719e-3;
     p2 = 1.08670866266405237202443772599368460843290423993854646847583829661656474077546235584255799878105842662429041504496399317062263006413453414377216580376317626066728190108384174739488612465152855677911954362748916374564125838828394374359392224557600598118747229681083583495205809085182214908233463783664878539740820816914220537659526e-2;
     p3 = 6.40023531574311378355395988453819650546134051129726748596082741106575243825233513989403773801447860295071560687659545056718084103878280995261969574516807119750778743438685690343895493494096381731303918596445283455830399118230097637217138375370173469040795675397091755602910954997095659060632066404426193497966421058566884905866160e-1;
     z11 = 9.33559679967795011775146297168181834082394489867995004162295729148044228859025482150945912255787948524557749861777395970440713311877902806738527621597620542400389537797413426546802969803250349106287981056474428563277334225520732337221754152894199749006613429045964275932120075752921604899021078893026103765480492496329794483278610e-1;
     z12 = 1.65937543816330912431696942543434229643459821557632400207464820320446810676285255402042808138761535379211100261295779350892581817897695148837150988040274728593022800969114460511415202799503857298332343755110850368761511112109349721246845871537521758639705563411398972180571531190101186110711898909687195308445849412148066756773015e-1;
     z13 = 8.77598511756303571630968557155919010951715044734407640631419676892515220627494166436103361505908581363456774189765544264398462213281197836623108336109410773235482687091993535932413997982171189131563856347971806019839424205853503529065185759546662309281851252566464919512455634588929734585478510382641177239464409644919667386233397e-1;
     z61 = 1.59840051229718985840122078118263603844579754990081807136443494366462182656314102481214861117384028882269739447095321977078720901831447013976602463784869717326089217412744621273146382179334924617193926544098822864431730010672527486927775215346918295621981819413680122961245828662833156664630334725016628541518803722145125378531992e-1;
     z62 = 4.00773265691266086445081731368990236218457302198664422608924951935795901216116567931629980210164622034567293933570817483304051626138370139131527420733622983754174457704343902772768720836535873132235047685194130301136980230149269647571416008700988031885332573856309835289246911265260152790777536910833694562524431315602003714865991e-1;
     z63 = 5.74559867869947141310110850545496627354827947278388476746012379473899121631311206817470533952071301902246493539574806802429979630493603390344032227405295843872587110367043235243928882993221347812324426595953540958763652675162020757330517497847985778496736156680659833460366203297778784135032326945656152253477232322706171711011786e-1;

     f1 = z11 * z21 + z12 * z22 + z13 * z23 - ca1;
     f2 = z51 * z61 + z52 * z62 + z53 * z63 - ca5;

     f3 = z21 * z31 + z22 * z32 + z23 * z33 - ca2;
     f4 = z31 * z41 + z32 * z42 + z33 * z43 - ca3;
     f5 = z41 * z51 + z42 * z52 + z43 * z53 - ca4;

     f6 = asa1 * (z12 * z23 - z13 * z22) + asa2 * (z22 * z33 - z23 * z32) + d1 * z21 + asa3 * (z32 * z43 - z33 * z42) + d2 * z31 + asa4 * (z42 * z53 - z43 * z52) + d3 * z41 + asa5 * (z52 * z63 - z53 * z62) + d4 * z51 - p1;
     f7 = asa1 * (z13 * z21 - z11 * z23) + asa2 * (z23 * z31 - z21 * z33) + d1 * z22 + asa3 * (z33 * z41 - z31 * z43) + d2 * z32 + asa4 * (z43 * z51 - z41 * z53) + d3 * z42 + asa5 * (z53 * z61 - z51 * z63) + d4 * z52 - p2;
     f8 = asa1 * (z11 * z22 - z12 * z21) + asa2 * (z21 * z32 - z22 * z31) + d1 * z23 + asa3 * (z31 * z42 - z32 * z41) + d2 * z33 + asa4 * (z41 * z52 - z42 * z51) + d3 * z43 + asa5 * (z51 * z62 - z52 * z61) + d4 * z53 - p3;

     f9 = g0 * (z31^2 + z32^2 + z33^2 - 1);
     f10= g0 * (z51^2 + z52^2 + z53^2 - 1);

     f11= g0 * (z21^2 + z22^2 + z23^2 - 1);
     f12= g0 * (z41^2 + z42^2 + z43^2 - 1);
     ideal (f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12)
     )

decker2 = ()-> ( R = CC[x,y]; ideal(x+y^3,x^2*y-y^4) )

      