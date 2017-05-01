
--设置全局变量CC，保存游戏中使用的常数
function SetGlobalConst()
    -- SDL 键码定义，这里名字仍然使用directx的名字
if CONFIG.VK_ESCAPE == nil then
CONFIG.VK_ESCAPE=27
end
if CONFIG.VK_A == nil then

CONFIG.VK_A=97
end
if CONFIG.VK_B == nil then
CONFIG.VK_B=98
end
if CONFIG.VK_C == nil then
CONFIG.VK_C=99
end
if CONFIG.VK_D == nil then
CONFIG.VK_D=100
end
if CONFIG.VK_E == nil then
CONFIG.VK_E=101
end
if CONFIG.VK_F == nil then
CONFIG.VK_F=102
end
if CONFIG.VK_G == nil then
CONFIG.VK_G=103
end
if CONFIG.VK_H == nil then
CONFIG.VK_H=104
end
if CONFIG.VK_I == nil then
CONFIG.VK_I=105
end
if CONFIG.VK_J == nil then
CONFIG.VK_J=106
end
if CONFIG.VK_K == nil then
CONFIG.VK_K=107
end
if CONFIG.VK_L == nil then
CONFIG.VK_L=108
end
if CONFIG.VK_M == nil then
CONFIG.VK_M=109
end
if CONFIG.VK_N == nil then
CONFIG.VK_N=110
end
if CONFIG.VK_O == nil then
CONFIG.VK_O=111
end
if CONFIG.VK_P == nil then
CONFIG.VK_P=112
end
if CONFIG.VK_Q == nil then
CONFIG.VK_Q=113
end
if CONFIG.VK_R == nil then
CONFIG.VK_R=114
end
if CONFIG.VK_S == nil then
CONFIG.VK_S=115
end
if CONFIG.VK_T == nil then
CONFIG.VK_T=116
end
if CONFIG.VK_U == nil then
CONFIG.VK_U=117
end
if CONFIG.VK_V == nil then
CONFIG.VK_V=118
end
if CONFIG.VK_W == nil then
CONFIG.VK_W=119
end
if CONFIG.VK_X == nil then
CONFIG.VK_X=120
end
if CONFIG.VK_Y == nil then
CONFIG.VK_Y=121
end
if CONFIG.VK_Z == nil then
CONFIG.VK_Z=122
end
if CONFIG.VK_SPACE == nil then
CONFIG.VK_SPACE=32
end
if CONFIG.VK_RETURN == nil then
CONFIG.VK_RETURN=13
end
if CONFIG.VK_UP == nil then
CONFIG.VK_UP=1073741906
end
if CONFIG.VK_DOWN == nil then
CONFIG.VK_DOWN=1073741905
end
if CONFIG.VK_LEFT == nil then
CONFIG.VK_LEFT=1073741904
end
if CONFIG.VK_RIGHT == nil then
CONFIG.VK_RIGHT=1073741903
end

VK_ESCAPE=CONFIG.VK_ESCAPE
VK_A=CONFIG.VK_A
VK_B=CONFIG.VK_B
VK_C=CONFIG.VK_C
VK_D=CONFIG.VK_D
VK_E=CONFIG.VK_E
VK_F=CONFIG.VK_F
VK_G=CONFIG.VK_G
 VK_H=CONFIG.VK_H
VK_I=CONFIG.VK_I
VK_J=CONFIG.VK_J
VK_K=CONFIG.VK_K
VK_L=CONFIG.VK_L
VK_M=CONFIG.VK_M
 VK_N=CONFIG.VK_N
VK_O=CONFIG.VK_O
VK_P=CONFIG.VK_P
VK_Q=CONFIG.VK_Q
VK_R=CONFIG.VK_R
VK_S=CONFIG.VK_S
VK_T=CONFIG.VK_T
VK_U=CONFIG.VK_U
VK_V=CONFIG.VK_V
VK_W=CONFIG.VK_W
VK_X=CONFIG.VK_X
VK_Y=CONFIG.VK_Y
VK_Z=CONFIG.VK_Z

VK_SPACE=CONFIG.VK_SPACE
VK_RETURN=CONFIG.VK_RETURN
VK_UP=CONFIG.VK_UP
VK_DOWN=CONFIG.VK_DOWN
VK_LEFT=CONFIG.VK_LEFT
VK_RIGHT=CONFIG.VK_RIGHT
if CONFIG.Operation == 1 then
if CONFIG.OTG==nil then
CONFIG.OTG=0
end
if CONFIG.OTG==0 then
VK_SPACE=VK_RETURN
end

end

   -- 游戏中颜色定义
    C_STARTMENU = RGB(132, 0, 4)
  C_RED = RGB(216, 20, 24)
  C_WHITE = RGB(236, 236, 236)
  C_ORANGE = RGB(252, 148, 16)
  C_GOLD = RGB(236, 200, 40)
  C_BLACK = RGB(0, 0, 0)
  M_Black = RGB(0, 0, 0)
  M_Sienna = RGB(160, 82, 45)
  M_DarkOliveGreen = RGB(85, 107, 47)
  M_DarkGreen = RGB(0, 100, 0)
  M_DarkSlateBlue = RGB(72, 61, 139)
  M_Navy = RGB(0, 0, 128)
  M_Indigo = RGB(75, 0, 130)
  M_DarkSlateGray = RGB(47, 79, 79)
  M_DarkRed = RGB(139, 0, 0)
  M_DarkOrange = RGB(255, 140, 0)
  M_Olive = RGB(128, 128, 0)
  M_Green = RGB(0, 128, 0)
  M_Teal = RGB(0, 128, 128)
  M_Blue = RGB(0, 0, 255)
  M_SlateGray = RGB(112, 128, 144)
  M_DimGray = RGB(105, 105, 105)
  M_Red = RGB(255, 0, 0)
  M_SandyBrown = RGB(244, 164, 96)
  M_YellowGreen = RGB(154, 205, 50)
  M_SeaGreen = RGB(46, 139, 87)
  M_MediumTurquoise = RGB(72, 209, 204)
  M_RoyalBlue = RGB(65, 105, 225)
  M_Purple = RGB(128, 0, 128)
  M_Gray = RGB(128, 128, 128)
  M_Magenta = RGB(255, 0, 255)
  M_Orange = RGB(255, 165, 0)
  M_Yellow = RGB(255, 255, 0)
  M_Lime = RGB(0, 255, 0)
  M_Cyan = RGB(0, 255, 255)
  M_DeepSkyBlue = RGB(0, 191, 255)
  M_DarkOrchid = RGB(153, 50, 204)
  M_Silver = RGB(192, 192, 192)
  M_Pink = RGB(255, 192, 203)
  M_Wheat = RGB(245, 222, 179)
  M_LemonChiffon = RGB(255, 250, 205)
  M_PaleGreen = RGB(152, 251, 152)
  M_PaleTurquoise = RGB(175, 238, 238)
  M_LightBlue = RGB(173, 216, 230)
  M_Plum = RGB(221, 160, 221)
  M_White = RGB(255, 255, 255)

   -- 游戏状态定义
    GAME_START =0       --开始画面
    GAME_FIRSTMMAP = 1  --第一次显示主地图
    GAME_MMAP =2;       --主地图
    GAME_FIRSTSMAP = 3  --第一次显示主地图
    GAME_SMAP =4;       --场景地图
    GAME_WMAP =5;       --战斗地图
	GAME_DEAD =6;       --死亡画面
    GAME_END  =7;       --结束
	
	

   --游戏数据全局变量
   CC={};      --定义游戏中使用的常量，这些可以在修改游戏时修改之

	--实际的屏幕宽度与高度
	CC.ScreenW=lib.GetScreenW();          --显示窗口宽高
    CC.ScreenH=lib.GetScreenH();

   CC.SrcCharSet=CONFIG.CharSet;         --源代码的字符集 0 gb  1 big5，用于转换R×。 如果源码被转换为big5，则应设为1
   CC.OSCharSet=0;         --OS 字符集，-1 系统判断，0 GB, 1 Big5
   CC.FontName=CONFIG.FontName;    --显示字体

   --定义记录文件名。S和D由于是固定大小，因此不再定义idx了。

				  
	CC.R_IDXFilename = {[0] = CONFIG.DataPath .. "ranger.idx"}
	CC.R_GRPFilename = {[0] = CONFIG.DataPath .. "ranger.grp"}
	CC.S_Filename = {[0] = CONFIG.DataPath .. "allsin.grp"}
	CC.D_Filename = {[0] = CONFIG.DataPath .. "alldef.grp"}
	
	CC.SavePath = CONFIG.DataPath .. "save/";
	CC.R_GRP = CC.SavePath.."r%d.grp"
	CC.S_GRP = CC.SavePath.."s%d.grp"
	CC.D_GRP = CC.SavePath.."d%d.grp"
	CC.SaveNum = 99;

   CC.TempS_Filename=CONFIG.DataPath .. "allsinbk.grp";


   CC.PaletteFile=CONFIG.DataPath .. "mmap.col";

   CC.FirstFile=CONFIG.PicturePath .. "title.png";
   CC.DeadFile=CONFIG.PicturePath .. "dead.png";

   CC.MMapFile={CONFIG.DataPath .. "earth.002",
                CONFIG.DataPath .. "surface.002",
				CONFIG.DataPath .. "building.002",
		        CONFIG.DataPath .. "buildx.002",
				CONFIG.DataPath .. "buildy.002"};

   --各种贴图文件名。这里只给出文件名，扩展名必须为idx/grp
   CC.MMAPPicFile = {CONFIG.DataPath .. "mmap.idx", CONFIG.DataPath .. "mmap.grp"}
   CC.SMAPPicFile = {CONFIG.DataPath .. "smap.idx", CONFIG.DataPath .. "smap.grp"}
   CC.WMAPPicFile = {CONFIG.DataPath .. "wmap.idx", CONFIG.DataPath .. "wmap.grp"}
   CC.EffectFile = {CONFIG.DataPath .. "eft/%d.idx", CONFIG.DataPath .. "eft/%d.grp"}
   CC.FightPicFile = {CONFIG.DataPath .. "fight/fight%03d.idx", CONFIG.DataPath .. "fight/fight%03d.grp"}

	CC.HeadPicFile = {CONFIG.DataPath .. "hdgrp.idx", CONFIG.DataPath .. "hdgrp.grp"}
	CC.HeadPath = CONFIG.DataPath .. "head/";
	CC.MHeadPath = CONFIG.DataPath .. "mhead/";
	CC.HeadNum = 322;
  CC.ThingPicFile = {CONFIG.DataPath .. "thing.idx", CONFIG.DataPath .. "thing.grp"}

	if CONFIG.Operation == 1 then
   CC.MIDIFile=CONFIG.SoundPath .. "game%02d.mid";
  else
   CC.MIDIFile=CONFIG.SoundPath .. "game%02d.mp3";
  end
   CC.OGGFile=CONFIG.SoundPath .. "game%02d.ogg";
   CC.ATKFile=CONFIG.SoundPath .. "atk%02d.wav";
   CC.EFile=CONFIG.SoundPath .. "e%02d.wav";

   CC.WarFile=CONFIG.DataPath .. "war.sta";
   CC.WarMapFile={CONFIG.DataPath .. "warfld.idx",
                  CONFIG.DataPath .. "warfld.grp"};


	CC.KRP = CONFIG.DataPath.."kdef.grp"
  CC.KDX = CONFIG.DataPath.."kdef.idx"
	CC.TRP = CONFIG.DataPath.."talk.grp"
  CC.TDX = CONFIG.DataPath.."talk.idx"
  
  CC.CircleFile = CONFIG.DataPath.."circle";
  
  CC.CircleNum = 1;		--周目数

   --定义记录文件R×结构。  lua不支持结构，无法直接从二进制文件中读取，因此需要这些定义，用table中不同的名字来仿真结构。
   CC.TeamNum=6;          --队伍人数
   CC.MyThingNum=200      --主角物品数量
   

   CC.Base_S={};         --保存基本数据的结构，以便以后存取
   CC.Base_S["乘船"]={0,0,2}   -- 起始位置(从0开始)，数据类型(0有符号 1无符号，2字符串)，长度
   CC.Base_S["无用"]={2,0,2};
   CC.Base_S["人X"]={4,0,2};
   CC.Base_S["人Y"]={6,0,2};
   CC.Base_S["人X1"]={8,0,2};
   CC.Base_S["人Y1"]={10,0,2};
   CC.Base_S["人方向"]={12,0,2};
   CC.Base_S["船X"]={14,0,2};
   CC.Base_S["船Y"]={16,0,2};
   CC.Base_S["船X1"]={18,0,2};
   CC.Base_S["船Y1"]={20,0,2};
   CC.Base_S["船方向"]={22,0,2};

   for i=1,CC.TeamNum do
        CC.Base_S["队伍" .. i]={24+2*(i-1),0,2};
   end

   for i=1,CC.MyThingNum do
        CC.Base_S["物品" .. i]={36+4*(i-1),0,2};
        CC.Base_S["物品数量" .. i]={36+4*(i-1)+2,0,2};
   end

    CC.PersonSize=182;   --每个人物数据占用字节
    CC.Person_S={};      --保存人物数据的结构，以便以后存取
    CC.Person_S["代号"]={0,0,2}
    CC.Person_S["头像代号"]={2,0,2}
    CC.Person_S["生命增长"]={4,0,2}
    CC.Person_S["无用"]={6,0,2}
    CC.Person_S["姓名"]={8,2,10}
    CC.Person_S["外号"]={18,2,10}
    CC.Person_S["性别"]={28,0,2}
    CC.Person_S["等级"]={30,0,2}
    CC.Person_S["经验"]={32,1,2}
    CC.Person_S["生命"]={34,0,2}
    CC.Person_S["生命最大值"]={36,0,2}
    CC.Person_S["受伤程度"]={38,0,2}
    CC.Person_S["中毒程度"]={40,0,2}
    CC.Person_S["体力"]={42,0,2}
    CC.Person_S["物品修炼点数"]={44,0,2}
    CC.Person_S["武器"]={46,0,2}
    CC.Person_S["防具"]={48,0,2}

     for i=1,5 do
        CC.Person_S["出招动画帧数" .. i]={50+2*(i-1),0,2};
        CC.Person_S["出招动画延迟" .. i]={60+2*(i-1),0,2};
        CC.Person_S["武功音效延迟" .. i]={70+2*(i-1),0,2};
     end

    CC.Person_S["内力性质"]={80,0,2}
    CC.Person_S["内力"]={82,0,2}
    CC.Person_S["内力最大值"]={84,0,2}
    CC.Person_S["攻击力"]={86,0,2}
    CC.Person_S["轻功"]={88,0,2}
    CC.Person_S["防御力"]={90,0,2}
    CC.Person_S["医疗能力"]={92,0,2}
    CC.Person_S["用毒能力"]={94,0,2}
    CC.Person_S["解毒能力"]={96,0,2}
    CC.Person_S["抗毒能力"]={98,0,2}

    CC.Person_S["拳掌功夫"]={100,0,2}
    CC.Person_S["御剑能力"]={102,0,2}
    CC.Person_S["耍刀技巧"]={104,0,2}
    CC.Person_S["特殊兵器"]={106,0,2}
    CC.Person_S["暗器技巧"]={108,0,2}


    CC.Person_S["武学常识"]={110,0,2}
    CC.Person_S["品德"]={112,0,2}
    CC.Person_S["攻击带毒"]={114,0,2}
    CC.Person_S["左右互搏"]={116,0,2}
    CC.Person_S["声望"]={118,0,2}

    CC.Person_S["资质"]={120,0,2}
    CC.Person_S["修炼物品"]={122,0,2}
    CC.Person_S["修炼点数"]={124,0,2}

     for i=1,10 do
        CC.Person_S["武功" .. i]={126+2*(i-1),0,2};
        CC.Person_S["武功等级" .. i]={146+2*(i-1),0,2};
     end

     for i=1,4 do
        CC.Person_S["携带物品" .. i]={166+2*(i-1),0,2};
        CC.Person_S["携带物品数量" .. i]={174+2*(i-1),0,2};
     end

    CC.ThingSize=190;   --每个人物数据占用字节
    CC.Thing_S={};
    CC.Thing_S["代号"]={0,0,2}
    CC.Thing_S["名称"]={2,2,20}
    CC.Thing_S["名称2"]={22,2,20}
    CC.Thing_S["物品说明"]={42,2,30}
    CC.Thing_S["练出武功"]={72,0,2}
    CC.Thing_S["暗器动画编号"]={74,0,2}
    CC.Thing_S["使用人"]={76,0,2}
    CC.Thing_S["装备类型"]={78,0,2}
    CC.Thing_S["显示物品说明"]={80,0,2}
    CC.Thing_S["类型"]={82,0,2}
    CC.Thing_S["未知5"]={84,0,2}
    CC.Thing_S["未知6"]={86,0,2}
    CC.Thing_S["未知7"]={88,0,2}
    CC.Thing_S["加生命"]={90,0,2}
    CC.Thing_S["加生命最大值"]={92,0,2}
    CC.Thing_S["加中毒解毒"]={94,0,2}
    CC.Thing_S["加体力"]={96,0,2}
    CC.Thing_S["改变内力性质"]={98,0,2}
    CC.Thing_S["加内力"]={100,0,2}

    CC.Thing_S["加内力最大值"]={102,0,2}
    CC.Thing_S["加攻击力"]={104,0,2}
    CC.Thing_S["加轻功"]={106,0,2}
    CC.Thing_S["加防御力"]={108,0,2}
    CC.Thing_S["加医疗能力"]={110,0,2}

    CC.Thing_S["加用毒能力"]={112,0,2}
    CC.Thing_S["加解毒能力"]={114,0,2}
    CC.Thing_S["加抗毒能力"]={116,0,2}
    CC.Thing_S["加拳掌功夫"]={118,0,2}
    CC.Thing_S["加御剑能力"]={120,0,2}

    CC.Thing_S["加耍刀技巧"]={122,0,2}
    CC.Thing_S["加特殊兵器"]={124,0,2}
    CC.Thing_S["加暗器技巧"]={126,0,2}
    CC.Thing_S["加武学常识"]={128,0,2}
    CC.Thing_S["加品德"]={130,0,2}

    CC.Thing_S["加攻击次数"]={132,0,2}
    CC.Thing_S["加攻击带毒"]={134,0,2}
    CC.Thing_S["仅修炼人物"]={136,0,2}
    CC.Thing_S["需内力性质"]={138,0,2}
    CC.Thing_S["需内力"]={140,0,2}

    CC.Thing_S["需攻击力"]={142,0,2}
    CC.Thing_S["需轻功"]={144,0,2}
    CC.Thing_S["需用毒能力"]={146,0,2}
    CC.Thing_S["需医疗能力"]={148,0,2}
    CC.Thing_S["需解毒能力"]={150,0,2}

    CC.Thing_S["需拳掌功夫"]={152,0,2}
    CC.Thing_S["需御剑能力"]={154,0,2}
    CC.Thing_S["需耍刀技巧"]={156,0,2}
    CC.Thing_S["需特殊兵器"]={158,0,2}
    CC.Thing_S["需暗器技巧"]={160,0,2}

    CC.Thing_S["需资质"]={162,0,2}
    CC.Thing_S["需经验"]={164,0,2}
    CC.Thing_S["练出物品需经验"]={166,0,2}
    CC.Thing_S["需材料"]={168,0,2}

      for i=1,5 do
        CC.Thing_S["练出物品" .. i]={170+2*(i-1),0,2};
        CC.Thing_S["需要物品数量" .. i]={180+2*(i-1),0,2};
     end

    CC.SceneSize=52;   --每个场景数据占用字节
    CC.Scene_S={};
    CC.Scene_S["代号"]={0,0,2}
    CC.Scene_S["名称"]={2,2,10}
    CC.Scene_S["出门音乐"]={12,0,2}
    CC.Scene_S["进门音乐"]={14,0,2}
    CC.Scene_S["跳转场景"]={16,0,2}
    CC.Scene_S["进入条件"]={18,0,2}
    CC.Scene_S["外景入口X1"]={20,0,2}
    CC.Scene_S["外景入口Y1"]={22,0,2}
    CC.Scene_S["外景入口X2"]={24,0,2}
    CC.Scene_S["外景入口Y2"]={26,0,2}
    CC.Scene_S["入口X"]={28,0,2}
    CC.Scene_S["入口Y"]={30,0,2}
    CC.Scene_S["出口X1"]={32,0,2}
    CC.Scene_S["出口X2"]={34,0,2}
    CC.Scene_S["出口X3"]={36,0,2}
    CC.Scene_S["出口Y1"]={38,0,2}
    CC.Scene_S["出口Y2"]={40,0,2}
    CC.Scene_S["出口Y3"]={42,0,2}
    CC.Scene_S["跳转口X1"]={44,0,2}
    CC.Scene_S["跳转口Y1"]={46,0,2}
    CC.Scene_S["跳转口X2"]={48,0,2}
    CC.Scene_S["跳转口Y2"]={50,0,2}

    CC.WugongSize=136;   --每个武功数据占用字节
    CC.Wugong_S={};
    CC.Wugong_S["代号"]={0,0,2}
    CC.Wugong_S["名称"]={2,2,10}
    CC.Wugong_S["未知1"]={12,0,2}
    CC.Wugong_S["未知2"]={14,0,2}
    CC.Wugong_S["未知3"]={16,0,2}
    CC.Wugong_S["未知4"]={18,0,2}
    CC.Wugong_S["未知5"]={20,0,2}
    CC.Wugong_S["出招音效"]={22,0,2}
    CC.Wugong_S["武功类型"]={24,0,2}
    CC.Wugong_S["武功动画&音效"]={26,0,2}
    CC.Wugong_S["伤害类型"]={28,0,2}
    CC.Wugong_S["攻击范围"]={30,0,2}
    CC.Wugong_S["消耗内力点数"]={32,0,2}
    CC.Wugong_S["敌人中毒点数"]={34,0,2}

     for i=1,10 do
        CC.Wugong_S["攻击力" .. i]={36+2*(i-1),0,2};
        CC.Wugong_S["移动范围" .. i]={56+2*(i-1),0,2};
        CC.Wugong_S["杀伤范围" .. i]={76+2*(i-1),0,2};
        CC.Wugong_S["加内力" .. i]={96+2*(i-1),0,2};
        CC.Wugong_S["杀内力" .. i]={116+2*(i-1),0,2};
     end

   CC.ShopSize=30;   --每个小宝商店数据占用字节
   CC.Shop_S={};
   for i=1,5 do
      CC.Shop_S["物品" .. i]={0+2*(i-1),0,2};
      CC.Shop_S["物品数量" .. i]={10+2*(i-1),0,2};
      CC.Shop_S["物品价格" .. i]={20+2*(i-1),0,2};
   end

   CC.ShopScene={};       --小宝商店场景数据，sceneid 场景id，d_shop 小宝位置D*, d_leave 小宝离开D*，一般在场景出口，路过触发
   CC.ShopScene[0]={sceneid=1,d_shop=16,d_leave={17,18}, };
   CC.ShopScene[1]={sceneid=3,d_shop=14,d_leave={15,16}, };
   CC.ShopScene[2]={sceneid=40,d_shop=20,d_leave={21,22}, };
   CC.ShopScene[3]={sceneid=60,d_shop=16,d_leave={17,18}, };
   CC.ShopScene[4]={sceneid=61,d_shop=9,d_leave={10,11,12}, };

  --其他常量
   CC.MWidth=480;       --主地图宽
   CC.MHeight=480;      --主地图高

   CC.SWidth=64;     --子场景地图大小
   CC.SHeight=64;

   CC.DNum=200;       --D*每个场景的事件数

   CC.XScale=CONFIG.XScale;    --贴图一半的宽高
   CC.YScale=CONFIG.YScale;


   CC.Frame=50;     --每帧毫秒数
   CC.SceneMoveFrame=CC.Frame*2;           --场景移动帧速，用于场景移动事件
   CC.PersonMoveFrame=CC.Frame*2;          --主角移动速度，用于主角移动事件
   CC.AnimationFrame=CC.Frame*3;           --动画显示帧速，用于显示动画事件

   CC.WarAutoDelay=300;                   --自动战斗时显示头像的延时

   CC.DirectX={0,1,-1,0};  --不同方向x，y的加减值，用于走路改变坐标值
   CC.DirectY={-1,0,0,1};

   CC.MyStartPic=2501;      --主角走路起始贴图
   CC.BoatStartPic=3715;    --船起始贴图

   CC.Level=30;                  ---人物等级和每等级经验
   CC.Exp={    50,    150,     300 ,500   , 750 ,
               1050,  1400,   1800 ,2250  , 2750 ,
               3850,  5050,   6350 ,7750  , 9250 ,
               10850, 12550, 14350 ,16750 , 18250 ,
               21400, 24700, 28150 ,31750 , 35500 ,
	           39400, 43450, 47650 ,52000 , 60000 , [0] = 0 };

    CC.MMapBoat={};    --主地图船可以进入的贴图
	local tmpBoat={ {0x166,0x16a},{0x176,0x17c},{0x1ca,0x1d0},{0x1fa,0x262},{0x3f8,0x3fe},};
    for i,v in ipairs(tmpBoat) do      --把这些数据变换成数组，其中有值就是可以进入
        for j=v[1],v[2],2 do
            CC.MMapBoat[j]=1;
        end
    end



    CC.SceneWater={};    --场景人不能进入的贴图
    local tmpWater={ {0x166,0x16a},{0x176,0x17c},{0x1ca,0x1d0},{0x1fa,0x262},{0x332,0x338},
                     {0x346,0x346},{0x3a6,0x3a8},{0x3f8,0x3fe},{0x52c,0x544},};
    for i,v in ipairs(tmpWater) do      --把这些数据变换成数组，其中空项就是可以进入的贴图
        for j=v[1],v[2],2 do
            CC.SceneWater[j]=1;
        end
    end

    CC.WarWater={};    --战斗地图人不能进入的贴图
    local tmpWater={ {0x166,0x16a},{0x176,0x17c},{0x1ca,0x1d0},{0x1fa,0x262},{0x332,0x338},
                     {0x346,0x346},{0x3a6,0x3a8},{0x3f8,0x3fe},{0x52c,0x544},};
    for i,v in ipairs(tmpWater) do      --把这些数据变换成数组，其中空项就是可以进入的贴图
        for j=v[1],v[2],2 do
            CC.WarWater[j]=1;
        end
    end

    --离队人员列表: {人员id，离队调用函数}      ----如果有新的离队人员加入，直接在这里增加
    --武功招式
CC.KfName={
{2,'饭来张口',600}, --逍遥游3招
{2,'沿门托钵',600},
{2,'见人伸手',600},
{3,'五毒摧心',700},	--五毒神掌1招
{4,'锁喉',700},	--鹰爪功2招
{4,'探目',700},
{5,'寒冰封体',700},	--寒冰绵掌1招
{6,'天罗地网',700},	--天罗地网掌1招
{7,'绵绵不绝',700}, --绵掌1招
{8,'阳歌天钧',900}, --天山六阳掌3招
{8,'阳春白雪',900},
{8,'阳关三叠',900}, 
{9,'雪山白驼',800},	--白驼雪山掌1招
{10,'一错',800},	--百花错拳2招
{10,'再错',800},	
{11,'旋',800},	--九阴白骨爪2招
{11,'钻',800}, 
{12,'珞樱缤纷',900}, --落英神剑掌3招
{12,'雨急风狂',900},
{12,'江城飞花',900},
{14,'踏雪折梅',1000},	--天山折梅手2招
{14,'天山灵鹫',1000},
{15,'深藏若虚',1200}, --空明拳3招
{15,'天马行空',1200},
{15,'空空如也',1200},
{16,'上步野马分鬃',1000}, --太极拳3招
{16,'提步高探马',1000},
{16,'白鹤晾翅',1000},
{17,'一阳定乾坤',1200},	--一阳指1招
{18,'弹指·一瞬',1200},	--弹指神通1招
{19,'魔幻天阴',1000},	--幻阴指1招
{20,'沛然有雨',1000},	--龙爪手1招
{21,'玄冥侵体',1000},	--玄冥神掌2招
{21,'冰毒缭绕',1000},
{22,'金刚大手印',1000},	--大金刚掌1招
{23,'七伤',1000},	--七伤拳1招
{24,'色空四显',1200}, --须弥山神掌3招
{24,'无色无相',1200},
{24,'慑伏外道',1200},
{25,'拖泥带水',1300}, --销魂掌6招
{25,'倒行逆施',1300},
{25,'行尸走肉',1300},
{25,'魂不守舍',1300},
{25,'心惊肉跳',1300},
{25,'六神不安',1300},

{27,'平沙落雁式',300}, --松风剑术3招
{27,'鸿飞冥冥',300},
{27,'碧渊腾蛟',300},
{28,'轰雷掣电',300}, --雷震剑术3招
{28,'雷霆万钧',300},
{28,'驱雷掣电',300},
{29,'冰河倒泻',400}, --三分剑术3招
{29,'雪中奇莲',400},
{29,'冰河开冻',400}, 
{30,'万花齐放',500}, --恒山剑法3招
{30,'万卉争艳',500},
{30,'清澈梅花',500}, 
{31,'五大夫剑',500}, --泰山剑法3招
{31,'岱宗如何',500},
{31,'七星落长空',500}, 
{32,'泉鸣芙蓉',600}, --衡山剑法3招
{32,'鹤翔紫盖',600},
{32,'天柱云气',600}, 
{33,'叠翠浮青',600}, --嵩山剑法3招
{33,'玉进天池',600},
{33,'天外玉龙',600}, 
{34,'苍松迎客',600}, --华山剑法3招
{34,'金雁横空',600},
{34,'天坤倒悬',600}, 
{35,'雪泥鸿爪',600}, --雪山剑法3招
{35,'梅雪争春',600},
{35,'雪山六出',600}, 
{36,'杏花春雨',700}, --柔云剑法3招
{36,'满天花雨',700},
{36,'玉带围腰',700}, 
{38,'山外清音',800}, --玉萧剑法5招
{38,'金声玉振',800},
{38,'凤曲长鸣',800},
{38,'响隔楼台',800},
{38,'棹歌中流',800}, 
{40,'金蛇万道',900}, --金蛇剑法7招
{40,'金蛇狂舞',900},
{40,'金光蛇影',900},
{40,'蛇影万馈',900},
{40,'灵蛇电闪',900},
{40,'蛇困愁城',900},
{40,'金蛇化龙',900}, 
{41,'灭',1000}, --灭剑绝剑2招
{41,'绝',1000}, 
{42,'清饮小酌',1000}, --玉女素心剑6招
{42,'浪迹天涯',1000},
{42,'举案齐眉',1000},
{42,'皓腕玉镯',1000},
{42,'冷月窥人',1000},
{42,'竹帘临池',1000}, 
{44,'冲天掌苏秦背剑',1000}, --苗家剑法6招
{44,'黄龙转身吐须势',1000},
{44,'迎门腿反劈华山',1000},
{44,'洗剑怀中抱月',1000},
{44,'上步云边摘月',1000},
{44,'提撩剑白鹤舒翅',1000}, 
{45,'重剑无锋',1300}, --玄铁剑法3招
{45,'大巧不工',1400},
{45,'破尽天下',1500},
{46,'大魁星',1300}, --太极剑法3招
{46,'三环套月',1400},
{46,'云麾三舞',1500}, 
{47,'总决式',1600}, --独孤九剑9招
{47,'破剑式',1500},
{47,'破枪式',1500},
{47,'破刀式',1500},
{47,'破鞭式',1500},
{47,'破索式',1500},
{47,'破掌式',1500},
{47,'破箭式',1500},
{47,'破气式',1600},
{48,'扫荡群魔',1300}, --辟邪剑法6招
{48,'紫气东来',1300},
{48,'锺馗抉目',1300}, 
{48,'花开见佛',1300},
{48,'直捣黄龙',1300}, 
{48,'指打奸邪',1300}, 

{50,'砍',500}, 	--柴刀十八路2招
{50,'劈',500},
{52,'鬼见愁',600}, 	--鬼头刀法1招
{53,'铁锁横江',600},	--南山刀法2招
{53,'燕子入巢',600},
{54,'大青',700},	--鸳鸯刀法2招
{54,'小青',700},
{55,'狂风大作',700}, 	--狂风刀法2招
{55,'飞沙走石',700},
{56,'带醉脱靴',700},	--奇门三才刀2招
{56,'奇刀单鞭式',700}, 
{57,'放下屠刀',600},	--慈悲刀法2招
{57,'立地成佛',600},	
{58,'恨意绵绵',600},	--修罗刀1招
{59,'白虎跳涧',600},	--五虎断门刀2招
{59,'剪扑自如',600},
{60,'重节守义',700},	--反两仪刀法2招
{60,'万劫不复',700},
{61,'梅雪逢夏',700}, 	--金乌刀法2招
{61,'赤日炎炎',700}, 
{62,'女貌郎才珠万斛',800}, 	--夫妻刀法4招
{62,'天教丽质为眷属',800}, 
{62,'清风引佩下瑶台',800}, 
{62,'明月照妆成金屋',800}, 
{63,'呕心沥血',800}, 	--血刀大法3招
{63,'批纸削腐',800},
{63,'流星经天',800}, 
{65,'钻木取火',800},	--燃木刀法2招
{65,'无名孽火',1100},
{66,'烈火燎原',1200},	--火焰刀法2招
{66,'举火烧天',1200},
{67,'穿手藏刀式',1100},	--胡家刀法2招
{67,'八方藏刀式',1100},

{68,'回马枪',500},	--杨家枪法3招
{68,'春雷震怒',500},
{68,'凤点头',500},
{70,'中正锁喉',600},	--中平枪法2招
{70,'枪平九洲',600},
{71,'大君制六合',700},	--裴将军帖2招
{71,'猛将清九垓',700},
{74,'灵蛇吐信',700},	--鹤蛇八打2招
{74,'冲天一鹤',700},
{75,'咔嚓',800},	--大剪刀2招
{75,'我剪',800},
{77,"金刀黑剑",600},	--阴阳倒乱刃3招
{77,"假刀非刀",600},
{77,"假剑非剑",600},
{78,"血染黄沙",600},	--黄沙万里鞭2招
{78,"飞沙万里",600},
{79,"银索缠身",900},	--银索金铃2招
{79,"锁穴金铃",900},
{80,'棒打狗头',1000},	--打狗棒法5招
{80,'反截狗臀',1000},
{80,'獒口夺杖',1000},
{80,'棒打双犬',1000},
{80,'獒口夺杖',1000},
{81,'书化丹心',1000},	--一阳指书2招
{81,'玄天一阳',1000}, 
{82,'祗园精舍',1100},	--金刚伏魔圈4招
{82,'诸行无常',1100},
{82,'娑罗双树',1100}, 
{82,'幻梦一场',1100},
{83,'力战千钧',1200},	--无上大力杵3招
{83,'拔山填海',1200},
{83,'千钧压顶',1200},
{84,'武林至尊',800},	--倚天屠龙功6招
{84,'宝刀屠龙',800},
{84,'号令天下',900},
{84,'莫敢不从',900},
{84,'倚天不出',1000},
{84,'谁与争锋',1000},
{86,'天魔降伏',1100},	--伏魔杖法2招
{86,'降龙伏虎',1100},
	
{109,'石头',1200},	--野球拳3招
{109,'剪子',1200},
{109,'布',1200},
{110,'神洲移山剑',1200},	--神山剑法3招
{110,'神洲镇山剑',1200},
{110,'神洲擎山剑',1200},
{111,'切瓜',1200},	--西瓜刀法3招
{111,'剁瓜',1200},
{111,'砍瓜',1200},
{112,'一闪',1200},	--犽月流空3招
{112,'连一闪',1200},
{112,'真一闪',1200},
{114,'床前明月光',900},	--连城剑法4招
{114,'疑是地上霜',900},
{114,'举头望明月',900},
{114,'低头思故乡',900}
};
--队伍离队
CC.PersonExit = {
{1, 100}, 
{2, 102}, 
{4, 104}, 
{9, 106}, 
{16, 108}, 
{17, 110}, 
{25, 112}, 
{28, 114}, 
{29, 116}, 
{30, 118}, 
{35, 120}, 
{36, 122}, 
{37, 124}, 
{38, 126}, 
{44, 128}, 
{45, 130}, 
{47, 132}, 
{48, 134}, 
{49, 136}, 
{51, 138}, 
{52, 140}, 
{53, 142}, 
{54, 144}, 
{55, 146}, 
{56, 148}, 
{58, 150}, 
{59, 152}, 
{63, 154}, 
{66, 156}, 
{72, 158}, 
{73, 160}, 
{74, 162}, 
{75, 164}, 
{76, 166}, 
{77, 168}, 
{78, 170}, 
{79, 172}, 
{80, 174}, 
{81, 176}, 
{82, 178}, 
{83, 180}, 
{84, 182}, 
{85, 184}, 
{86, 186}, 
{87, 188}, 
{88, 190}, 
{89, 192}, 
{90, 194}, 
{91, 196}, 
{92, 198},
{589, 8005},--水笙离队事件
{590, 8650},--李文秀离队事件
{591, 8305} --石中玉离队事件
}

    --所有可加入人员离队需要清除的D*事件，清除后这些人就找不到了。得到神杖时使用
    CC.AllPersonExit={ {1, 5}, 
			{2, 6}, 
			{4, 21}, 
			{9, 17}, 
			{16, 31}, 
			{17, 32}, 
			{25, 28}, 
			{28, 29}, 
			{29, 26}, 
			{30, 13}, 
			{35, 15}, 
			{36, 25}, 
			{37, {7,8}}, 
			{38, {16,58}}, 
			{44, 33}, 
			{45, 12}, 
			{47, 23}, 
			{48, 24}, 
			{49, {10,11}}, 
			{51, 22}, 
			{52, 41}, 
			{53, 9}, 
			{54, 18}, 
			{55, 13}, 
			{56, 14}, 
			{58, 19}, 
			{59, 20}, 
			{63, 30}, 
			{66, 38}, 
			{72, 40}, 
			{73, 35}, 
			{74, 36}, 
			{75, 37}, 
			{76, 27}, 
			{77, 39}, 
			{78, 59}, 
			{79, 42}, 
			{80, 52}, 
			{81, 46}, 
			{82, 54}, 
			{83, 55}, 
			{84, 34}, 
			{85, 47}, 
			{86, 49}, 
			{87, 50}, 
			{88, 43}, 
			{89, 44}, 
			{90, 53}, 
			{91, 51}, 
			{92, 1},
			{589, 80},
			{590, 86},
			{591, 47} };

    CC.BookNum=14;               --天书个数
    CC.BookStart=144;            --14天书起始物品id

    CC.MoneyID=174;              --金钱物品id
    CC.Shemale = {[78] = 1, [93] = 1}

   CC.Effect = {14, 17, 9, 13, 17, 17, 17, 18, 19, 19, 15, 13, 10, 10, 15, 21, 16, 9, 11, 8, 9, 8, 8, 7, 8, 8, 9, 12, 19, 11, 14, 12, 17, 8, 11, 10, 13, 10, 19, 14, 17, 19, 14, 21, 16, 13, 18, 14, 17, 17, 16, 7, 12, 40, 16, 9, 15, 15, 31, 38, 24, 26, 24, 20, 12, 17, 14, 14, 10, 10, 18, 31, 12, 7, 6, 7, 28, 16, 7, 16, 20, 15, 13, 15, 11, 11, 11, 20, 20, 20, 17, 17, 17, 9, 8, 8, 17, 10, 11, 8, 29, 6, 13, 31, 14, 4, 13, 13, 15,10; [0] = 9}
	

    CC.ExtraOffense = {
{52, 75, 100}, 
{45, 67, 100}, 
{37, 41, 100}, 
{49, 80, 200}, 
{44, 63, 150}, 
{40, 40, 150}, 
{36, 45, 100}}

    CC.NewPersonName=CONFIG.PlayName;                --新游戏的数据
	if CC.NewPersonName == nil then
		CC.NewPersonName = "徐小侠"
	end
    CC.NewGameSceneID = 70
	CC.NewGameSceneX = 16
	CC.NewGameSceneY = 31
	CC.NewGameEvent = 691
	CC.NewPersonPic = 2515

   CC.PersonAttribMax = {}
  CC.PersonAttribMax["经验"] = 60000
  CC.PersonAttribMax["物品修炼点数"] = 30000
  CC.PersonAttribMax["修炼点数"] = 30000
  CC.PersonAttribMax["生命最大值"] = 1200
  CC.PersonAttribMax["受伤程度"] = 100
  CC.PersonAttribMax["中毒程度"] = 100
  CC.PersonAttribMax["内力最大值"] = 5000
  CC.PersonAttribMax["体力"] = 100
  CC.PersonAttribMax["攻击力"] = 500
  CC.PersonAttribMax["防御力"] = 500
  CC.PersonAttribMax["轻功"] = 500
  CC.PersonAttribMax["医疗能力"] = 240
  CC.PersonAttribMax["用毒能力"] = 240
  CC.PersonAttribMax["解毒能力"] = 240
  CC.PersonAttribMax["抗毒能力"] = 240
  CC.PersonAttribMax["拳掌功夫"] = 240
  CC.PersonAttribMax["御剑能力"] = 240
  CC.PersonAttribMax["耍刀技巧"] = 240
  CC.PersonAttribMax["特殊兵器"] = 240
  CC.PersonAttribMax["暗器技巧"] = 240
  CC.PersonAttribMax["武学常识"] = 100
  CC.PersonAttribMax["品德"] = 100
  CC.PersonAttribMax["资质"] = 100
  CC.PersonAttribMax["攻击带毒"] = 240

    CC.WarDataSize=186;         --战斗数据大小  war.sta数据结构
    CC.WarData_S={};        --战斗数据结构
    CC.WarData_S["代号"]={0,0,2};
    CC.WarData_S["名称"]={2,2,10};
    CC.WarData_S["地图"]={12,0,2};
    CC.WarData_S["经验"]={14,0,2};
    CC.WarData_S["音乐"]={16,0,2};
    for i=1,6 do
        CC.WarData_S["手动选择参战人"  .. i]={18+(i-1)*2,0,2};
        CC.WarData_S["自动选择参战人"  .. i]={30+(i-1)*2,0,2};
        CC.WarData_S["我方X"  .. i]={42+(i-1)*2,0,2};
        CC.WarData_S["我方Y"  .. i]={54+(i-1)*2,0,2};
    end
    for i=1,20 do
        CC.WarData_S["敌人"  .. i]={66+(i-1)*2,0,2};
        CC.WarData_S["敌方X"  .. i]={106+(i-1)*2,0,2};
        CC.WarData_S["敌方Y"  .. i]={146+(i-1)*2,0,2};
    end

    CC.WarWidth=64;        --战斗地图大小
    CC.WarHeight=64;

	--显示主地图和场景地图坐标
	--如果显示坐标，则会增加cpu占用。机器速度慢的话可能会卡。这个在调试时有用。
	CC.ShowXY=0      --0 不显示 1 显示


	--以下为控制显示方式的参数
	



	CC.MenuBorderPixel=5  -- 菜单四周边框留的像素数，也用于绘制字符串的box四周留得像素


		CC.DefaultFont=math.modf(math.min(CC.ScreenW,CC.ScreenH) / 320 * 16);
		CC.SmallFont = CC.DefaultFont*3/4;
	CC.FontBIG = math.modf(CC.DefaultFont*1.6)
  CC.FontBig = math.modf(CC.DefaultFont*1.4)
  CC.Fontbig = math.modf(CC.DefaultFont*1.2)
  CC.Fontsmall = math.modf(CC.DefaultFont*0.8)
  CC.FontSmall = math.modf(CC.DefaultFont*0.6)
  CC.FontSMALL = math.modf(CC.DefaultFont*0.4)
  CC.RowPixel = math.modf(math.min(CC.ScreenW, CC.ScreenH) / 100)

		--CC.StartMenuY= 160       --开始菜单Y坐标
		CC.StartMenuFontSize=CC.DefaultFont  --开始菜单字号

		--CC.NewGameY= 160         --新游戏属性显示Y坐标
		CC.NewGameFontSize =CC.DefaultFont   --新游戏属性选择字号


		CC.MainMenuX=10;         --主菜单开始坐标
		CC.MainMenuY=10;

		CC.GameOverX=90;
		CC.GameOverY=65;

    CC.PersonStateRowPixel= 1;    --显示人物状态行间距像素
    
    --物品显示定义
    CC.ThingFontSize = CC.Fontsmall;  --

		
		CC.ThingPicWidth=math.modf(40*CONFIG.Zoom/100);    --物品图片宽高
		CC.ThingPicHeight=CC.ThingPicWidth;

		local n = math.modf(CC.ScreenW/CC.ThingPicWidth-2);			--一行显示几个物品
		if n < 10 then	
			CC.MenuThingXnum = 5;				
		else
			CC.MenuThingXnum = 10
		end
		
		local m = math.modf(CC.ScreenH/CC.ThingPicHeight-2);		--物品显示几列
		if m < 5 then	
			CC.MenuThingYnum = 3;
		else
			CC.MenuThingYnum = 5;
		end


		CC.ThingGapOut=10;      --物品图像显示四周留白
		CC.ThingGapIn=10;        --物品图像显示中间间隔


	
	

    CC.StartMenuY=CC.ScreenH-3*(CC.StartMenuFontSize+CC.RowPixel)-20;
	CC.NewGameY=CC.ScreenH-4*(CC.NewGameFontSize+CC.RowPixel)-10;

	--子菜单的开始坐标
	CC.MainSubMenuX=CC.MainMenuX+2*CC.MenuBorderPixel+2*CC.DefaultFont+5;       --主菜单为两个汉字
	CC.MainSubMenuY=CC.MainMenuY;

	--二级子菜单开始坐标
	CC.MainSubMenuX2=CC.MainSubMenuX+2*CC.MenuBorderPixel+4*CC.DefaultFont+5;   --子菜单为四个字符

	CC.SingleLineHeight=CC.DefaultFont+2*CC.MenuBorderPixel+5;  --带框的单行字符高

	CC.StartThingPic = 0


  CC.T1 = {"零", "镜", "奇", "二", "四", "七", "水", "雨", "客", "萧"}
  GZM = {"二", "三", "四", "五", "六", "七", "八", "九", "十"}
  GZMYZM = {0, 3185, 7293}
  SZB = {"一", "二", "三", "四", "五", "六", "七", "八", "九", "十", "十一", "十二", "十三", "十四", "十五", "十六", "十七", "十八", "十九", "二十"}
  LMSJ = {"少商剑", "商阳剑", "中冲剑", "关冲剑", "少冲剑", "少泽剑"}
  XL18 = {"亢龙有悔", "见龙在田", "飞龙在天", "双龙出水", "神龙摆尾", "潜龙勿用"}
  XL18JY = {"极意--亢龙·鸿渐於陆", "极意--飞龙·或跃在渊", "极意--潜龙·密雨不云", "极意--神龙·震惊百里", "极意--见龙·利涉大川", "极意--双龙·突如其来", "极意--六龙·履霜冰至", "极意--龙战·损则有孚"}
  HDZC = {"真传·云龙三现", "秘技·上步摘星刀", "秘技·鹞子翻身刀"}
  TFSSJ = {"·『天道惊雷憾』", "·『一剑镇神洲』", "·『羽葬煌炎斩』", "·『千机龙绝闪』", "·『斗焰罡霸体』", "·『侠行天下』", "·『八门聚万象』"}
  ZJTF = {"灵犀真拳", "剑神一笑", "傲世狂刀", "棍藏天机", "绝世天罡", "仁者无敌", "回天圣手"}
  TFE = {"拳", "剑", "刀", "特", "罡", "仁", "医"}
  KJDYSAVE = {"存档一", "存档二", "存档三", "不存档"}
  KJDYLOAD = {"存档一", "存档二", "存档三", "不读档"}
  WARSZJY = {3, 2, 5, 2, 40, 15, 5, 5, 5, 5, 5, 5, 5, 5, 3, 2, 2, 10, 5, 4, 4, 5, 4, 2, 2, 20, 40, 2, 3, 3, 3, 3, 3, 3, 5, 3, 4, 4, 8, 8, 4, 4, 4, 4, 2, 5, 3, 4, 3, 30, 4, 2, 3, 3, 4, 4, 15, 5, 5, 15, 3, 15, 3, 15, 10, 2, 8, 3, 15, 7, 8, 3, 3, 3, 4, 2, 2, 2, 2, 4, 2, 2, 2, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 7, 7, 4, 4, 2, 2, 12, 2, 2, 2, 3, 3, 3, 3, 3, 7, 7, 50, 3, 3, 5, 6, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 20, 3, 3, 3, 3, 3, 3, 3, 2, 3, 2, 35, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 3, 4, 4, 4, 2, 2, 2, 2, 2, 2, 2, 3, 7, 7, 4, 3, 5, 5, 3}
  RWWH = {}
  RWWH[50] = "狂龙天征"
  RWWH[53] = "六脉真传"
  RWWH[67] = "铁掌帮主"
  RWWH[51] = "姑苏慕容"
  RWWH[35] = "九剑传人"
  RWWH["35"] = "剑魔再临"
  RWWH[69] = "北丐"
  RWWH[27] = "唯我不败"
  RWWH[64] = "顽童武痴"
  RWWH[55] = "侠之大者"
  RWWH[58] = "西狂"
  RWWH[59] = "联心素女"
  RWWH[9] = "九阳明尊"
  RWWH[76] = "琅嬛仙子"
  RWWH[75] = "天池红花"
  RWWH[37] = "真名神照"
  RWWH[56] = "奇术无双"
  RWWH[60] = "西毒"
  RWWH[1] = "雪山飞狐"
  RWWH[54] = "气侠风雷"
  RWWH[2] = "毒手药仙"
  RWWH[16] = "蝶谷医仙"
  RWWH[28] = "杀人名医"
  RWWH[45] = "阎王敌"
  RWWH[6] = "月月轻松"
  RWWH[114] = "达摩再世"
  RWWH[5] = "太极宗师"
  RWWH[103] = "大轮明王"
  RWWH[48] = "冰毒怪客"
  RWWH[47] = "铁丑之主"
  RWWH[129] = "中神通"
  RWWH[57] = "桃花岛主"
  RWWH[65] = "南僧"
  RWWH[63] = "青萧落瑛"
  RWWH[78] = "铁尸魔煞"
  RWWH[73] = "日月圣姑"
  RWWH[36] = "辟邪剑客"
  RWWH[29] = "万里独行"
  RWWH[72] = "天龙掌门"
  RWWH[4] = "雁过拨毛"
  RWWH[25] = "五毒教主"
  RWWH[83] = "铁袖拂风"
  RWWH[17] = "毒手姑婆"
  RWWH[91] = "青青子衿"
  RWWH[74] = "翠羽黄衫"
  RWWH[80] = "火手判官"
  RWWH[62] = "元蒙帝师"
  RWWH[84] = "吾乃蛮夷"
  RWWH[85] = "老谋深算"
  RWWH[66] = "波斯圣女"
  RWWH[81] = "灵獒毒娇"
  RWWH[77] = "鸳鸯刀客"
  RWWH[88] = "酒神"
  RWWH[89] = "食神"
  RWWH[90] = "毓秀灵姝"
  RWWH[44] = "凶神恶煞"
  RWWH[52] = "中平神枪"
  RWWH[82] = "玉面孟尝"
  RWWH[92] = "我本佳人"
  RWWH[97] = "茹毛饮血"
  RWWH[79] = "慧中灵剑"
  RWWH[26] = "日月魔帝"
  RWWH[553] = "真田一之兵"
  RWWH["01"] = "苍半无双"
  RWWH["01b"] = "真苍半无双"
  RWWH["02"] = "百花谷主"
  RWWH["03"] = "血翼军神"
  RWWH["04"] = "觉醒之苍龙"
  RWWH["49"] = "逍遥掌门"
  RWWH["38"] = "白首太玄"
  RWTFLB = {}
  RWTFLB[50] = "奋英雄怒"
  RWTFLB[49] = "福缘深厚"
  RWTFLB[35] = "灵奇洒脱"
  RWTFLB[55] = "大器晚成"
  RWTFLB[58] = "逆流勇进"
  RWTFLB[76] = "博闻强记"
  RWTFLB[56] = "兰心慧质"
  RWTFLB[38] = "质朴刚健"
  RWTFLB[6] = "那个不痛"
  RWTFLB[1] = "魂系一刀"
  RWTFLB[37] = "赤心连城"
  RWTFLB[53] = "磊落仁心"
  RWTFLB[51] = "离合参商"
  RWTFLB[48] = "心无所住"
  RWTFLB[64] = "童真永留"
  RWTFLB[60] = "倒行逆施"
  RWTFLB[63] = "外和内刚"
  RWTFLB[87] = "媚眼如丝"
  RWTFLB[86] = "倾国倾城"
  RWTFLB[73] = "琴铮盈盈"
  RWTFLB[74] = "巾帼之才"
  RWTFLB[80] = "勇猛精进"
  RWTFLB[59] = "冷剑冰花"
  RWTFLB[9] = "谁与争峰"
  RWTFLB[82] = "我为伊狂"
  RWTFLB[54] = "志垂日月"
  RWTFLB[553] = "赤胆忠魂"
  RWTFLB["01"] = "颖悟绝伦"
  RWTFLB["02"] = "万般皆通"
  RWTFLB["03"] = "慈严掌兵"
  
  --水笙 称号，天赋
  RWWH[589] = "冰山侠女";
	RWTFLB[589] = "似水柔情";
	
	--李文秀  称号，天赋
	RWWH[590] = "白马之女";
	RWTFLB[590] = "心秀天铃";
	
	--石中玉
	RWWH[591] = "";
	RWTFLB[591] = "心灵感应";
	
	--冰糖恋：瓦尔拉齐 称号一指震江南
	RWWH[138] = "一指震江南";
  
  PSX = {"代号", "头像代号", "生命增长", "性别", "等级", "经验", "生命", "生命最大值", "受伤程度", "中毒程度", "体力", "物品修炼点数", "武器", "防具", "出招动画帧数1", "出招动画帧数2", "出招动画帧数3", "出招动画帧数4", "出招动画帧数5", "出招动画延迟1", "出招动画延迟2", "出招动画延迟3", "出招动画延迟4", "出招动画延迟5", "武功音效延迟1", "武功音效延迟2", "武功音效延迟3", "武功音效延迟4", "武功音效延迟5", "内力性质", "内力", "内力最大值", "攻击力", "轻功", "防御力", "医疗能力", "用毒能力", "解毒能力", "抗毒能力", "拳掌功夫", "御剑能力", "耍刀技巧", "特殊兵器", "暗器技巧", "武学常识", "品德", "攻击带毒", "左右互搏", "声望", "资质", "修炼物品", "修炼点数", "武功1", "武功2", "武功3", "武功4", "武功5", "武功6", "武功7", "武功8", "武功9", "武功10", "武功等级1", "武功等级2", "武功等级3", "武功等级4", "武功等级5", "武功等级6", "武功等级7", "武功等级8", "武功等级9", "武功等级10", "携带物品1", "携带物品2", "携带物品3", "携带物品4", "携带物品数量1", "携带物品数量2", "携带物品数量3", "携带物品数量4"}
  WPSX = {"代号", "练出武功", "暗器动画编号", "使用人", "装备类型", "显示物品说明", "类型", "加生命", "加生命最大值", "加中毒解毒", "加体力", "改变内力性质", "加内力", "加内力最大值", "加攻击力", "加轻功", "加防御力", "加医疗能力", "加用毒能力", "加解毒能力", "加抗毒能力", "加拳掌功夫", "加御剑能力", "加耍刀技巧", "加特殊兵器", "加暗器技巧", "加武学常识", "加品德", "加攻击次数", "加攻击带毒", "仅修炼人物", "需内力性质", "需内力", "需攻击力", "需轻功", "需用毒能力", "需医疗能力", "需解毒能力", "需拳掌功夫", "需御剑能力", "需耍刀技巧", "需特殊兵器", "需暗器技巧", "需资质", "需经验", "练出物品需经验", "需材料", "练出物品1", "练出物品2", "练出物品3", "练出物品4", "练出物品5", "需要物品数量1", "需要物品数量2", "需要物品数量3", "需要物品数量4", "需要物品数量5", "练出武功", "使用人", "装备类型"}
  CJSX = {"代号", "跳转场景", "进入条件", "跳转口X1", "跳转口Y1", "跳转口X2", "跳转口Y2"}
  WGSX = {"攻击力1", "攻击力2", "攻击力3", "攻击力4", "攻击力5", "攻击力6", "攻击力7", "攻击力8", "攻击力9", "攻击力10", "移动范围1", "移动范围2", "移动范围3", "移动范围4", "移动范围5", "移动范围6", "移动范围7", "移动范围8", "移动范围9", "移动范围10", "杀伤范围1", "杀伤范围2", "杀伤范围3", "杀伤范围4", "杀伤范围5", "杀伤范围6", "杀伤范围7", "杀伤范围8", "杀伤范围9", "杀伤范围10", "加内力1", "加内力2", "加内力3", "加内力4", "加内力5", "加内力6", "加内力7", "加内力8", "加内力9", "加内力10", "杀内力1", "杀内力2", "杀内力3", "杀内力4", "杀内力5", "杀内力6", "杀内力7", "杀内力8", "杀内力9", "杀内力10", "代号", "武功类型", "伤害类型", "攻击范围", "消耗内力点数", "敌人中毒点数", "攻击力10", "移动范围10", "杀伤范围10", "加内力9"}
  SDSX = {"物品1", "物品2", "物品3", "物品4", "物品5", "物品数量1", "物品数量2", "物品数量3", "物品数量4", "物品数量5", "物品价格1", "物品价格2", "物品价格3", "物品价格4", "物品价格5", "物品1", "物品2", "物品3", "物品4", "物品5"}
  PSXJL = {"代号", "头像代号", "生命增长", "性别", "等级", "生命", "生命最大值", "武器", "防具", "内力性质", "内力", "内力最大值", "攻击力", "轻功", "防御力", "医疗能力", "用毒能力", "解毒能力", "抗毒能力", "拳掌功夫", "御剑能力", "耍刀技巧", "特殊兵器", "暗器技巧", "武学常识", "品德", "攻击带毒", "左右互搏", "资质", "修炼物品", "武功1", "武功2", "武功3", "武功4", "武功5", "武功6", "武功7", "武功8", "武功9", "武功10", "携带物品1", "携带物品2", "携带物品3", "携带物品4", "携带物品数量1", "携带物品数量2", "携带物品数量3", "携带物品数量4"}
  TeamP = {0, 1, 2, 4, 9, 16, 17, 25, 28, 29, 30, 35, 36, 37, 38, 44, 45, 47, 48, 49, 51, 52, 53, 54, 55, 56, 58, 59, 63, 66, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 589, 590, 591}
  FLHSYL = {"其疾如风", "其徐如林", "侵略如火", "不动如山", "难知如阴", "动如雷震", "六如苍龙诀"}
  YYGZT = {"风林火山功", "六如苍龙诀"}
  --TSXMLB = {"零二七", "水镜四奇", "萧雨客"}
  TSXMLB = {"零二七", "水镜四奇"}
  MODEXZ = {"初次接触本作和不擅长玩游戏者", "请选择『初入江湖』模式"}
  MODEXZ2 = {"初入江湖", "千锤百炼", "凤舞九天"}
  TFXZSAY1 = " 朔雪飘飘开雁门 * 平沙历乱卷蓬根 * 功名耻计擒生数 * 直斩楼兰报国恩 "
  TFXZSAY2 = " 【灵犀真拳】 * 【剑神一笑】 * 【傲世狂刀】 * 【棍藏天机】 * 【绝世天罡】 * 【仁者无敌】 * 【回天圣手】 "
  XKXSJ = {"赵客缦胡缨 吴钩霜雪明", "十步杀一人 千里不留行", "纵死侠骨香 不惭世上英", "谁能书阁下 白首太玄经"}
  GRTS = {}
  GRTS[53] = "凌波"
  GRTS[49] = "催符"
  GRTS[89] = "气补"
  GRTS[9] = "挪移"
  GRTS[88] = "传功"
  GRTSSAY = {}
  GRTSSAY[53] = "效果：至该角色下次行动为止*      闪避机率大幅提升*条件：消耗体力10点"
  GRTSSAY[49] = "效果：催动敌人身上的生死符*      使其封穴25时序*条件：消耗体力5点 内力500点"
  GRTSSAY[89] = "效果：回复指定邻接队友体力50点*条件：消耗体力25点 内力300点"
  GRTSSAY[9] = "效果：将八格范围内的我方任一队友*      挪移到指定位置*条件：消耗体力10点 内力500点"
  GRTSSAY[88] = "效果：将五格范围内我方任一队友*      当前集气提升500点*条件：消耗体力10点 内力700点"
  
  --霍青桐 统率，我方全体集气加200点
	GRTS[74] = "统率"
	GRTSSAY[74] = "效果：我方全体集气加200点*条件：体力大于10点 内力大于150点*消耗：消耗体力10点 内力150点"
	
	--平一指 疗伤
	GRTS[28] = "疗伤"
	GRTSSAY[28] = "效果：我方全体回复一定生命值和内伤*条件：体力大于50点 内力大于250点*消耗：体力10点 内力250点 "
	
	--李文秀 天铃
	GRTS[590] = "天铃"
	GRTSSAY[590] = "效果：所有队友回复一定状态*条件：一次战斗仅限一次*消耗：使用后自己将奄奄一息"
	
	--王难姑 施毒
	GRTS[17] = "施毒"
	GRTSSAY[17] = "效果：周围五格范围内的敌人时序中毒并*      按比例减血，持续50时序*条件：体力大于30 内力大于300*消耗：体力15点 内力300点"
	
	--胡青牛 群疗
	GRTS[16] = "群疗"
	GRTSSAY[16] = "效果：周围四格范围内的队友时序回内伤*      并按比例回复生命*条件：体力大于30 内力大于300*消耗：体力15点 内力300点"
	
	--萧中慧 慧心
	GRTS[77] = "慧心"
	GRTSSAY[77] = "效果：回复主角的状态。主角满怒气并满集气*条件：生命大于500 内伤小于50*消耗：使用后自己将奄奄一息"
	
	--主角召唤独孤求败
	GRTS[0] = "求援"
	GRTSSAY[0] = "效果：召唤独孤求败到战场中*条件：体力大于50  内力大于500*消耗：体力15点 内力500点*其它：一次战斗仅限一次，总共最多可三次"
	
	CC.TeamNum = 6
  CC.MyThingNum = 200
  CC.Kungfunum = 10
  CC.MyTeamNum = 54;		--队友总数量
	
	WZ = "未知"
	  WZ1 = "未知1"
	  WZ2 = "未知2"
	  WZ3 = "未知3"
	  WZ4 = "未知4"
	  WZ5 = "未知5"
	  WZ6 = "未知6"
	  WZ7 = "未知7"
	
	 --队友攻击加成
CC.AddAtk = {
{10, 15, 50}, 
{11, 15, 50}, 
{12, 15, 50}, 
{13, 15, 50}, 
{14, 15, 50}, 
{48, 47, 100}, 
{47, 50, 100}, 
{53, 76, 100}, 
{79, 36, 60}, 
{74, 75, 50}, 
{59, 58, 100}, 
{54, 91, 100}, 
{99, 70, 100}, 
{119, 65, 50}, 
{120, 65, 50}, 
{121, 65, 50}, 
{122, 65, 50}, 
{68, 129, 50}, 
{123, 129, 50}, 
{124, 129, 50}, 
{125, 129, 50}, 
{126, 129, 50}, 
{127, 129, 50}, 
{128, 129, 50},
{37, 589, 50},		--狄云、水笙在场，攻各加50
{589, 37, 50}
}

--队友防御加成
CC.AddDef = {
{76, 51, 100}, 
{55, 56, 50}, 
{56, 55, 100}, 
{35, 73, 100}, 
{79, 36, 60}, 
{73, 35, 50}, 
{74, 75, 50}, 
{58, 59, 50}, 
{59, 58, 50}, 
{66, 9, 50}, 
{91, 54, 100}, 
{119, 65, 50}, 
{120, 65, 50}, 
{121, 65, 50}, 
{122, 65, 50}, 
{68, 129, 50}, 
{123, 129, 50}, 
{124, 129, 50}, 
{125, 129, 50}, 
{126, 129, 50}, 
{127, 129, 50}, 
{128, 129, 50},
{37, 589, 50},			--狄云、水笙在场，防各加50
{589, 37, 50}
}

--队友速度加成
CC.AddSpd = {
{25, 35, 50}, 
{90, 53, 50}, 
{55, 56, 100}, 
{56, 55, 50}, 
{35, 79, 100}, 
{73, 35, 50}, 
{74, 75, 50}, 
{58, 59, 100}, 
{63, 58, 60}, 
{83, 54, 50},
{37, 589, 50},
{589, 37, 50}			--狄云、水笙在场，轻各加50
}
  CC.AddDoc = {
{2, 1, 120}, 
{16, 17, 50}}
  CC.AddPoi = {
{17, 16, 50}}

  CC.Color = {["R"]=C_RED, ["G"]=M_Green, ["B"]=M_Blue}

	require("MyOEvent");
end
