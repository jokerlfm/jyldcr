

-- �����ļ�
--Ϊ�˼򻯴��������ļ�Ҳ��lua��д
--����C�����ȡ�Ĳ�����lua��������Ҫ���������Ĳ�����lua������������Ȼ����jyconst.lua��

CONFIG={};

CONFIG.Bbh = 0.9

 --ʵ�ʵ���Ļ�����߶�
CONFIG.W=lib.GetScreenW(); --��ʾ���ڿ��
CONFIG.H=lib.GetScreenH();

CONFIG.Debug=1; --������Ժʹ�����Ϣ��=0����� =1 �����Ϣ��debug.txt��error.txt����ǰĿ¼

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

CONFIG.bpp =16 -- ȫ��ʱ����ɫ�һ��Ϊ16����32���ڴ���ģʽʱֱ�Ӳ��õ�ǰ��Ļɫ���������Ч

CONFIG.FullScreen=0 -- ����ʱ�Ƿ�ȫ�� 1 ȫ�� 0 ����

CONFIG.KeyRepeat=0 -- �Ƿ񼤻�����ظ� 0 �����ֻ����·�˵�ʱ�����ظ���1��������Ի�������ʱ����̾��ظ�
CONFIG.KeyRepeatDelay =120; --��һ�μ����ظ��ȴ�ms��
CONFIG.KeyRePeatInterval=30; --һ�����ظ�����

CONFIG.XScale = 18 -- ��ͼ��ȵ�һ��
CONFIG.YScale = 9 -- ��ͼ�߶ȵ�һ��

CONFIG.CharSet = 0			--��Ϸ���� 0���壬1����

CONFIG.LargeMemory=0; --�����ڴ�ʹ�÷�ʽ 1 ��ʹ���ڴ棬0 ��ʹ���ڴ�


--���ø��������ļ���·�������������Ŀ¼��־��windows��ͬ��OS, ��linux�����Ϊ���ʵ�·��
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

CONFIG.JYMain_Lua=CONFIG.ScriptPath .. "jymain.lua"; --lua��������

CONFIG.FontName=CONFIG.CurrentPath.."font/font.ttc";

--ʹ��FMOD����MIDI����Ҫgm.dls�ļ�
if CONFIG.MP3 == 0 then
	CONFIG.MidSF2 = CONFIG.SoundPath.."mid.sf2";
else
	CONFIG.MidSF2 = "";
end

--��ʾ����ͼx��y�������ӵ���ͼ�����Ա�֤������ͼ��ȫ����ʾ
CONFIG.MMapAddX=2;
CONFIG.MMapAddY=2;
CONFIG.SMapAddX=2;
CONFIG.SMapAddY=16;
CONFIG.WMapAddX=2;
CONFIG.WMapAddY=16;

if CONFIG.LargeMemory==1 then
 --��ͼ����������һ��500-1000�������debug.txt�о�������"pic cache is full"�������ʵ�����
 CONFIG.MAXCacheNum=1000;
	CONFIG.CleanMemory=0; --�����л�ʱ�Ƿ�����lua�ڴ档0 ������ 1 ����
	CONFIG.LoadFullS=1; --1 ����S*�ļ������ڴ� 0 ֻ���뵱ǰ����������S*��4M�࣬�������Խ���ܶ��ڴ�
else
 CONFIG.MAXCacheNum=500;
	CONFIG.CleanMemory=1;
	CONFIG.LoadFullS=0;
end

if CONFIG.Zoom==nil or CONFIG.Zoom==0 then
CONFIG.Zoom = (CONFIG.W+CONFIG.H)/8.5
end

--������λ�ã�-1ΪĬ��λ��

if CONFIG.D1X == -1 then
CONFIG.D1X = math.modf(CONFIG.W/8.5)  --��
end

if CONFIG.D1Y == -1 then
CONFIG.D1Y = math.modf(CONFIG.H/2.4)
end

if CONFIG.D2X == -1 then
CONFIG.D2X = math.modf(CONFIG.W/4.2)  --��
end

if CONFIG.D2Y == -1 then
CONFIG.D2Y = math.modf(CONFIG.H/1.6)
end

if CONFIG.D3X == -1 then
CONFIG.D3X = math.modf(CONFIG.W/8.5) --��
end

if CONFIG.D3Y == -1 then
CONFIG.D3Y = math.modf(CONFIG.H/1.2)
end

if CONFIG.D4X == -1 then
CONFIG.D4X = 0; --��
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
CONFIG.BX = math.modf(CONFIG.W/1.28) --�ո�
end

if CONFIG.BY == -1 then
CONFIG.BY = math.modf(CONFIG.H/1.16)
end


if CONFIG.Zoom > 100 then
	CONFIG.XScale = math.modf(CONFIG.XScale*CONFIG.Zoom/100) -- ��ͼ��ȵ�һ��
	CONFIG.YScale = math.modf(CONFIG.YScale*CONFIG.Zoom/100) -- ��ͼ�߶ȵ�һ��
end
