

-- 配置文件
--为了简化处理，配置文件也用lua编写
--保存C程序读取的参数和lua程序中需要经常调整的参数。lua的其他参数仍然放在jyconst.lua中

CONFIG={};

CONFIG.Bbh = 0.9

 --实际的屏幕宽度与高度
CONFIG.W=lib.GetScreenW(); --显示窗口宽高
CONFIG.H=lib.GetScreenH();

CONFIG.Debug=1; --输出调试和错误信息，=0不输出 =1 输出信息在debug.txt和error.txt到当前目录

local a = config.GetPath()
local b = "./"
local Windows = true
local file = io.open(b .. "z.ini");
if(file) then
dofile(b .. "z.ini")
else
dofile(a .. "z.ini")
Windows = false
end

if Windows then
CONFIG.Operation = 0
else
CONFIG.Operation = 1
end

CONFIG.bpp =16 -- 全屏时像素色深，一般为16或者32。在窗口模式时直接采用当前屏幕色深，此设置无效

CONFIG.FullScreen=0 -- 启动时是否全屏 1 全屏 0 窗口

CONFIG.KeyRepeat=0 -- 是否激活键盘重复 0 不激活，只在走路菜单时键盘重复，1激活，包括对话的所有时候键盘均重复
CONFIG.KeyRepeatDelay =120; --第一次键盘重复等待ms数
CONFIG.KeyRePeatInterval=30; --一秒钟重复次数

CONFIG.XScale = 18 -- 贴图宽度的一半
CONFIG.YScale = 9 -- 贴图高度的一半

CONFIG.CharSet = 0			--游戏字体 0简体，1繁体

CONFIG.LargeMemory=0; --设置内存使用方式 1 多使用内存，0 少使用内存


--设置各个数据文件的路径，如果是其他目录标志和windows不同的OS, 如linux，则改为合适的路径
--CONFIG.Operation = 1;		--0:Windows	 1:android
if CONFIG.Operation == 1 then
	--CONFIG.CurrentPath = "/sdcard/JYLDCR/";
CONFIG.CurrentPath = config.GetPath();
else
	CONFIG.CurrentPath = "./";
	CONFIG.LargeMemory = 1;
end

CONFIG.DataPath=CONFIG.CurrentPath.."data/";
CONFIG.PicturePath=CONFIG.CurrentPath.."pic/";
CONFIG.SoundPath=CONFIG.CurrentPath.."sound/";
CONFIG.ScriptPath=CONFIG.CurrentPath.."script/";
CONFIG.CEventPath = CONFIG.ScriptPath .. "CEvent/"
CONFIG.WuGongPath = CONFIG.ScriptPath .. "WuGong/"
CONFIG.HelpPath = CONFIG.ScriptPath .. "Help/"
CONFIG.ScriptLuaPath = string.format("?.lua;%sscript/?.lua;%sscript/?.lua", CONFIG.CurrentPath, CONFIG.CurrentPath)

CONFIG.JYMain_Lua=CONFIG.ScriptPath .. "jymain.lua"; --lua主程序名

CONFIG.FontName=CONFIG.CurrentPath.."font/font.ttc";

--使用FMOD播放MIDI，需要gm.dls文件
if CONFIG.MP3 == 0 then
	CONFIG.MidSF2 = CONFIG.SoundPath.."mid.sf2";
else
	CONFIG.MidSF2 = "";
end

--显示主地图x和y方向增加的贴图数，以保证所有贴图能全部显示
CONFIG.MMapAddX=2;
CONFIG.MMapAddY=2;
CONFIG.SMapAddX=2;
CONFIG.SMapAddY=16;
CONFIG.WMapAddX=2;
CONFIG.WMapAddY=16;

if CONFIG.LargeMemory==1 then
 --贴图缓存数量，一般500-1000。如果在debug.txt中经常出现"pic cache is full"，可以适当增加
 CONFIG.MAXCacheNum=1000;
	CONFIG.CleanMemory=0; --场景切换时是否清理lua内存。0 不清理 1 清理
	CONFIG.LoadFullS=1; --1 整个S*文件载入内存 0 只载入当前场景，由于S*有4M多，这样可以解决很多内存
else
 CONFIG.MAXCacheNum=500;
	CONFIG.CleanMemory=1;
	CONFIG.LoadFullS=0;
end

if CONFIG.Zoom==nil or CONFIG.Zoom==0 then
CONFIG.Zoom = (CONFIG.W+CONFIG.H)/8.5
end

--按键的位置，-1为默认位置

if CONFIG.D1X == -1 then
CONFIG.D1X = math.modf(CONFIG.W/8.5)  --上
end

if CONFIG.D1Y == -1 then
CONFIG.D1Y = math.modf(CONFIG.H/2.4)
end

if CONFIG.D2X == -1 then
CONFIG.D2X = math.modf(CONFIG.W/4.2)  --右
end

if CONFIG.D2Y == -1 then
CONFIG.D2Y = math.modf(CONFIG.H/1.6)
end

if CONFIG.D3X == -1 then
CONFIG.D3X = math.modf(CONFIG.W/8.5) --下
end

if CONFIG.D3Y == -1 then
CONFIG.D3Y = math.modf(CONFIG.H/1.2)
end

if CONFIG.D4X == -1 then
CONFIG.D4X = 0; --左
end

if CONFIG.D4Y == -1 then
CONFIG.D4Y = math.modf(CONFIG.H/1.6)
end

if CONFIG.C1X == -1 then
CONFIG.C1X = math.modf(CONFIG.W/1.6) --S
end

if CONFIG.C1Y == -1 then
CONFIG.C1Y = 0
end

if CONFIG.C2X == -1 then
CONFIG.C2X = math.modf(CONFIG.W/1.16) --H
end

if CONFIG.C2Y == -1 then
CONFIG.C2Y = 0
end

if CONFIG.AX == -1 then
CONFIG.AX = math.modf(CONFIG.W/1.82) --esc
end

if CONFIG.AY == -1 then
CONFIG.AY = math.modf(CONFIG.H/1.2)
end

if CONFIG.BX == -1 then
CONFIG.BX = math.modf(CONFIG.W/1.28) --空格
end

if CONFIG.BY == -1 then
CONFIG.BY = math.modf(CONFIG.H/1.16)
end


if CONFIG.Zoom > 100 then
	CONFIG.XScale = math.modf(CONFIG.XScale*CONFIG.Zoom/100) -- 贴图宽度的一半
	CONFIG.YScale = math.modf(CONFIG.YScale*CONFIG.Zoom/100) -- 贴图高度的一半
end
