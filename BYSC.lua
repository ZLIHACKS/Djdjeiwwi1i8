--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.5) ~  Much Love, Ferib 

]]--

local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==79) then v19=v0(v3(v30,1,1));return "";else local v87=v2(v0(v30,16));if v19 then local v97=v5(v87,v19);v19=nil;return v97;else return v87;end end end);local function v20(v31,v32,v33) if v33 then local v88=(v31/(2^(v32-1)))%(2^(((v33-1) -(v32-1)) + 1)) ;return v88-(v88%1) ;else local v89=2^(v32-1) ;return (((v31%(v89 + v89))>=v89) and 1) or 0 ;end end local function v21() local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22() local v35,v36=v1(v16,v18,v18 + 2 );v18=v18 + 2 ;return (v36 * 256) + v35 ;end local function v23() local v37,v38,v39,v40=v1(v16,v18,v18 + 3 );v18=v18 + 4 ;return (v40 * 16777216) + (v39 * 65536) + (v38 * 256) + v37 ;end local function v24() local v41=v23();local v42=v23();local v43=1;local v44=(v20(v42,1,20) * (2^32)) + v41 ;local v45=v20(v42,21,31);local v46=((v20(v42,32)==1) and  -1) or 1 ;if (v45==0) then if (v44==0) then return v46 * 0 ;else v45=1;v43=0;end elseif (v45==2047) then return ((v44==0) and (v46 * (1/0))) or (v46 * NaN) ;end return v8(v46,v45-1023 ) * (v43 + (v44/(2^52))) ;end local function v25(v47) local v48;if  not v47 then v47=v23();if (v47==0) then return "";end end v48=v3(v16,v18,(v18 + v47) -1 );v18=v18 + v47 ;local v49={};for v63=1, #v48 do v49[v63]=v2(v1(v3(v48,v63,v63)));end return v6(v49);end local v26=v23;local function v27(...) return {...},v12("#",...);end local function v28() local v50={};local v51={};local v52={};local v53={v50,v51,nil,v52};local v54=v23();local v55={};for v65=1,v54 do local v66=v21();local v67;if (v66==1) then v67=v21()~=0 ;elseif (v66==2) then v67=v24();elseif (v66==3) then v67=v25();end v55[v65]=v67;end v53[3]=v21();for v69=1,v23() do local v70=v21();if (v20(v70,1,1)==0) then local v93=v20(v70,2,3);local v94=v20(v70,4,6);local v95={v22(),v22(),nil,nil};if (v93==0) then v95[3]=v22();v95[4]=v22();elseif (v93==1) then v95[3]=v23();elseif (v93==2) then v95[3]=v23() -(2^16) ;elseif (v93==3) then v95[3]=v23() -(2^16) ;v95[4]=v22();end if (v20(v94,1,1)==1) then v95[2]=v55[v95[2]];end if (v20(v94,2,2)==1) then v95[3]=v55[v95[3]];end if (v20(v94,3,3)==1) then v95[4]=v55[v95[4]];end v50[v69]=v95;end end for v71=1,v23() do v51[v71-1 ]=v28();end return v53;end local function v29(v57,v58,v59) local v60=v57[1];local v61=v57[2];local v62=v57[3];return function(...) local v73=v60;local v74=v61;local v75=v62;local v76=v27;local v77=1;local v78= -1;local v79={};local v80={...};local v81=v12("#",...) -1 ;local v82={};local v83={};for v90=0,v81 do if (v90>=v75) then v79[v90-v75 ]=v80[v90 + 1 ];else v83[v90]=v80[v90 + 1 ];end end local v84=(v81-v75) + 1 ;local v85;local v86;while true do v85=v73[v77];v86=v85[1];if (v86<=18) then if (v86<=8) then if (v86<=3) then if (v86<=1) then if (v86>0) then v83[v85[2]]=v85[3];else local v116;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]= #v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]]/v85[4] ;v77=v77 + 1 ;v85=v73[v77];v116=v85[2];v83[v116]=v83[v116](v83[v116 + 1 ]);v77=v77 + 1 ;v85=v73[v77];if  not v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end end elseif (v86==2) then v83[v85[2]]=v83[v85[3]] + v85[4] ;else local v124=v74[v85[3]];local v125;local v126={};v125=v10({},{__index=function(v186,v187) local v188=v126[v187];return v188[1][v188[2]];end,__newindex=function(v189,v190,v191) local v192=v126[v190];v192[1][v192[2]]=v191;end});for v194=1,v85[4] do v77=v77 + 1 ;local v195=v73[v77];if (v195[1]==16) then v126[v194-1 ]={v83,v195[3]};else v126[v194-1 ]={v58,v195[3]};end v82[ #v82 + 1 ]=v126;end v83[v85[2]]=v29(v124,v125,v59);end elseif (v86<=5) then if (v86>4) then v83[v85[2]]=v83[v85[3]]/v85[4] ;else v83[v85[2]]={};end elseif (v86<=6) then local v130=v85[2];v83[v130]=v83[v130](v13(v83,v130 + 1 ,v85[3]));elseif (v86>7) then local v204=v85[2];local v205=v83[v204 + 2 ];local v206=v83[v204] + v205 ;v83[v204]=v206;if (v205>0) then if (v206<=v83[v204 + 1 ]) then v77=v85[3];v83[v204 + 3 ]=v206;end elseif (v206>=v83[v204 + 1 ]) then v77=v85[3];v83[v204 + 3 ]=v206;end else local v208=v85[2];v83[v208](v83[v208 + 1 ]);end elseif (v86<=13) then if (v86<=10) then if (v86>9) then v77=v85[3];else local v133;local v134;local v135;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v135=v85[2];v83[v135]=v83[v135](v83[v135 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v135=v85[2];v134={v83[v135](v83[v135 + 1 ])};v133=0;for v197=v135,v85[4] do v133=v133 + 1 ;v83[v197]=v134[v133];end v77=v77 + 1 ;v85=v73[v77];v77=v85[3];end elseif (v86<=11) then v83[v85[2]]=v83[v85[3]] -v85[4] ;elseif (v86>12) then local v209;v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v209=v85[2];v83[v209]=v83[v209](v13(v83,v209 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v77=v85[3];else v83[v85[2]]= #v83[v85[3]];end elseif (v86<=15) then if (v86==14) then v83[v85[2]]=v58[v85[3]];else v83[v85[2]]=v29(v74[v85[3]],nil,v59);end elseif (v86<=16) then v83[v85[2]]=v83[v85[3]];elseif (v86>17) then v83[v85[2]]=v83[v85[3]] + v83[v85[4]] ;elseif  not v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end elseif (v86<=27) then if (v86<=22) then if (v86<=20) then if (v86==19) then local v150=v85[2];do return v13(v83,v150,v150 + v85[3] );end elseif (v83[v85[2]]==v85[4]) then v77=v77 + 1 ;else v77=v85[3];end elseif (v86>21) then local v151=v85[2];v83[v151](v13(v83,v151 + 1 ,v85[3]));else local v152=v85[2];local v153=v85[4];local v154=v152 + 2 ;local v155={v83[v152](v83[v152 + 1 ],v83[v154])};for v200=1,v153 do v83[v154 + v200 ]=v155[v200];end local v156=v155[1];if v156 then v83[v154]=v156;v77=v85[3];else v77=v77 + 1 ;end end elseif (v86<=24) then if (v86>23) then local v157=v85[2];local v158=v83[v85[3]];v83[v157 + 1 ]=v158;v83[v157]=v158[v85[4]];else do return;end end elseif (v86<=25) then local v162;v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v162=v85[2];v83[v162]=v83[v162](v83[v162 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];elseif (v86>26) then local v223=v85[2];v83[v223]=v83[v223](v83[v223 + 1 ]);else v83[v85[2]]();end elseif (v86<=32) then if (v86<=29) then if (v86>28) then local v170=v85[2];local v171=v83[v170];local v172=v83[v170 + 2 ];if (v172>0) then if (v171>v83[v170 + 1 ]) then v77=v85[3];else v83[v170 + 3 ]=v171;end elseif (v171<v83[v170 + 1 ]) then v77=v85[3];else v83[v170 + 3 ]=v171;end else do return v83[v85[2]];end end elseif (v86<=30) then v59[v85[3]]=v83[v85[2]];elseif (v86>31) then local v225;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v225=v85[2];v83[v225](v83[v225 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v225=v85[2];v83[v225](v83[v225 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v225=v85[2];v83[v225](v83[v225 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v225=v85[2];v83[v225](v83[v225 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v225=v85[2];v83[v225](v83[v225 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v225=v85[2];v83[v225](v83[v225 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v225=v85[2];v83[v225](v83[v225 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v225=v85[2];v83[v225](v83[v225 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v225=v85[2];v83[v225](v83[v225 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v225=v85[2];v83[v225](v83[v225 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v225=v85[2];v83[v225](v83[v225 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v225=v85[2];v83[v225](v83[v225 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v225=v85[2];v83[v225](v83[v225 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v225=v85[2];v83[v225](v83[v225 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v225=v85[2];v83[v225](v83[v225 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v225=v85[2];v83[v225](v83[v225 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v225=v85[2];v83[v225](v83[v225 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v225=v85[2];v83[v225](v83[v225 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v225=v85[2];v83[v225](v83[v225 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v225=v85[2];v83[v225](v83[v225 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v225=v85[2];v83[v225](v83[v225 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]();v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]();v77=v77 + 1 ;v85=v73[v77];do return;end else local v232;local v233;v83[v85[2]]=v83[v85[3]] + v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] -v85[4] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]]/v85[4] ;v77=v77 + 1 ;v85=v73[v77];v233=v85[2];v83[v233]=v83[v233](v83[v233 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] + v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v233=v85[2];v232=v83[v85[3]];v83[v233 + 1 ]=v232;v83[v233]=v232[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] + v85[4] ;v77=v77 + 1 ;v85=v73[v77];v233=v85[2];v83[v233]=v83[v233](v13(v83,v233 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];if (v83[v85[2]]==v85[4]) then v77=v77 + 1 ;else v77=v85[3];end end elseif (v86<=34) then if (v86>33) then v83[v85[2]]=v59[v85[3]];else local v177;v59[v85[3]]=v83[v85[2]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]();v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]();v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v177=v85[2];v83[v177](v83[v177 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v177=v85[2];v83[v177](v83[v177 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v177=v85[2];v83[v177](v83[v177 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v177=v85[2];v83[v177](v83[v177 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v177=v85[2];v83[v177](v83[v177 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v177=v85[2];v83[v177](v83[v177 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v177=v85[2];v83[v177](v83[v177 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v177=v85[2];v83[v177](v83[v177 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v177=v85[2];v83[v177](v83[v177 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v177=v85[2];v83[v177](v83[v177 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v177=v85[2];v83[v177](v83[v177 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v177=v85[2];v83[v177](v83[v177 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v177=v85[2];v83[v177](v83[v177 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v177=v85[2];v83[v177](v83[v177 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v177=v85[2];v83[v177](v83[v177 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v177=v85[2];v83[v177](v83[v177 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v177=v85[2];v83[v177](v83[v177 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v177=v85[2];v83[v177](v83[v177 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v177=v85[2];v83[v177](v83[v177 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v177=v85[2];v83[v177](v83[v177 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v177=v85[2];v83[v177](v83[v177 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v177=v85[2];v83[v177](v83[v177 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v177=v85[2];v83[v177](v83[v177 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];end elseif (v86<=35) then v83[v85[2]]=v83[v85[3]][v85[4]];elseif (v86==36) then v83[v85[2]][v85[3]]=v83[v85[4]];else local v247=v85[2];local v248={v83[v247](v83[v247 + 1 ])};local v249=0;for v252=v247,v85[4] do v249=v249 + 1 ;v83[v252]=v248[v249];end end v77=v77 + 1 ;end end;end return v29(v28(),{},v17)(...);end return v15("LOL!2F3O0003053O00504154434803023O002O67030C3O00636C656172526573756C747303093O00636C6561724C697374023O00801C286B41024O00F4276B41024O00D0276B41023O0080C1276B41023O0080AE276B41024O00A0276B41024O0083276B41023O008091276B41024O00FB1E6B41024O002A1F6B41023O0080A61E6B4103053O00736C2O6570025O00709740024O000A1E6B41023O0080F01D6B41023O0080481E6B41024O00E01F6B41023O0080D51D6B41024O00B31F6B41023O0080B21F6B41023O00803E1F6B41024O004C1C6B41024O00E0F47541023O0080AD1D6B41024O00D31C6B41024O00AF1C6B41024O00071D6B41024O00A01C6B41023O0080A61C6B41023O0080611C6B41023O008024186B41024O00301C6B41023O00809F176B41023O00C0D62E7641023O00C0132A7641023O0080C22E7641023O0040C22E7641023O00C0BF2E7641023O008076ED7041023O00804BED7041023O0040559B7341023O0040E49A7341024O00E39A7341009B3O00020F7O00060300010001000100012O00107O001221000100013O00122O000100023O00202O0001000100034O00010001000100122O000100023O00202O0001000100044O00010001000100122O000100013O00122O000200056O00010002000100122O000100013O00122O000200066O00010002000100122O000100013O00122O000200076O00010002000100122O000100013O00122O000200086O00010002000100122O000100013O00122O000200096O00010002000100122O000100013O00122O0002000A6O00010002000100122O000100013O00122O0002000B6O00010002000100122O000100013O00122O0002000C6O00010002000100122O000100013O00122O0002000D6O00010002000100122O000100013O00122O0002000E6O00010002000100122O000100013O00122O0002000F6O00010002000100122O000100023O00202O00010001001000122O000200116O00010002000100122O000100013O00122O000200126O00010002000100122O000100013O00122O000200136O00010002000100122O000100013O00122O000200146O00010002000100122O000100013O00122O000200156O00010002000100122O000100013O00122O000200166O00010002000100122O000100013O00122O000200176O00010002000100122O000100013O00122O000200186O00010002000100122O000100013O00122O000200196O00010002000100122O000100013O00122O0002001A6O00010002000100122O000100013O00122O0002001B6O00010002000100122O000100013O00122O0002001C6O00010002000100122O000100023O00202O00010001001000122O000200114O0007000100020001001220000100013O00122O0002001D6O00010002000100122O000100013O00122O0002001E6O00010002000100122O000100013O00122O0002001F6O00010002000100122O000100013O00122O000200206O00010002000100122O000100013O00122O000200216O00010002000100122O000100013O00122O0002001F6O00010002000100122O000100013O00122O000200226O00010002000100122O000100013O00122O000200236O00010002000100122O000100013O00122O000200246O00010002000100122O000100013O00122O000200256O00010002000100122O000100023O00202O00010001001000122O000200116O00010002000100122O000100013O00122O000200266O00010002000100122O000100013O00122O000200276O00010002000100122O000100013O00122O000200286O00010002000100122O000100013O00122O000200296O00010002000100122O000100013O00122O0002002A6O00010002000100122O000100013O00122O0002002B6O00010002000100122O000100013O00122O0002002C6O00010002000100122O000100013O00122O0002002D6O00010002000100122O000100013O00122O0002002E6O00010002000100122O000100013O00122O0002002F6O00010002000100122O000100023O00202O0001000100034O00010001000100122O000100023O00202O0001000100044O0001000100016O00013O00023O00063O0003023O002O67030D3O0067657452616E6765734C69737403063O0069706169727303053O00737461746503023O00586103053O00737461727401103O001209000100013O00202O0001000100024O00028O00010002000200122O000200036O000300016O00020002000400044O000D00010020230007000600040026140007000D0001000500040A3O000D00010020230007000600062O001C000700023O000615000200080001000200040A3O000800012O00173O00017O00173O0003043O007479706503063O00737472696E6700030C3O006C6962696C32632O702E736F03083O00432O30333546443603043O00677375622O033O0025732B034O0003043O006D61746803043O006365696C027O0040026O00F03F03073O00612O6472652O7303053O00666C2O6F7203053O00666C6167732O033O0073756203053O0076616C756503083O00746F6E756D626572026O00304003053O007461626C6503063O00696E7365727403023O002O6703093O0073657456616C75657304513O001222000700014O001000086O001B0007000200020026140007000F0001000200040A3O000F00012O000E00076O001000086O001B0007000200022O0010000400073O0026140004000C0001000300040A3O000C00012O00173O00014O0010000500014O0010000600023O00040A3O001600012O001000056O0019000600016O000300026O00075O00122O000800046O0007000200024O000400073O0026140006001A0001000300040A3O001A0001001201000600053O00040A3O001F0001002018000700060006001201000900073O001201000A00084O00060007000A00022O0010000600074O000400075O00122O000800093O00202O00080008000A4O000900063O00202O00090009000B4O00080002000200062O000300280001000100040A3O002800010012010003000C3O0012010009000C4O000C000A00063O001201000B000B3O00041D0009004C00012O0004000D6O001F000E0004000500122O000F00093O00202O000F000F000E00202O0010000C000C00202O00100010000B4O000F000200024O000E000E000F00102O000D000D000E00102O000D000F000300202O000E000600104O0010000C3O00202O0011000C000C4O000E0011000200262O000300420001000C00040A3O00420001001222000F00124O000D0010000E3O00122O001100136O000F0011000200102O000D0011000F00044O00460001001222000F00124O00100010000E4O001B000F00020002001024000D0011000F001222000F00143O002023000F000F00152O0010001000074O00100011000D4O0016000F001100010004080009002C0001001222000900163O0020230009000900172O0010000A00074O00070009000200012O00173O00017O00",v9(),...);