
--���͵�ַ�б�
function My_ChuangSong_List()
	local menu = {};
	for i=0, JY.SceneNum-1 do
		menu[i+1] = {i..JY.Scene[i]["����"], nil, 1};
		if JY.Scene[i]["��������"] ~= 0 or  i == 84 or i == 83  or i == 82 or  i == 13 then
			menu[i+1][3] = 0;
		end
	end
	
	local r = ShowMenu2(menu,JY.SceneNum,4,12,20,(CC.ScreenH-12*(CC.DefaultFont+CC.RowPixel))/2+20,0,0,1,1,CC.DefaultFont,C_ORANGE, C_WHITE, "��ѡ���͵�ַ");
	
	if r == 0 then
		return 0;
	end
	
	if r > 0 then	
		
		local sid = r-1;
		
		if JY.Scene[sid]["��������"] == 0 and sid ~= 84 and sid ~= 83  and sid ~= 82 and  sid ~= 13 then
				My_Enter_SubScene(sid,-1,-1,-1);
			else
				say("��Ŀǰ���ڲ��ܽ���˳���", 232, 1, "����ͨ");
				return 1;
			end

	end
	
	return 1;

end



--��ǿ�洫�͵�ַ�˵�
function My_ChuangSong_Ex()     
	local title = "����ͨ���͹���";
	local str = "����һ���ܷ����������ϵͳ";
	local btn = {"�б�ѡ��", "�������","����"};
	local num = #btn;
	local r = JYMsgBox(title,str,btn,num,232,1);
	if r == 1 then
		return My_ChuangSong_List();
	elseif r == 2 then
		Cls();
		local sid = InputNum("�����볡������",0,JY.SceneNum,1);
		if sid ~= nil then	
			
			if JY.Scene[sid]["��������"] == 0 and sid ~= 84 and sid ~= 83  and sid ~= 82 and  sid ~= 13 then
				My_Enter_SubScene(sid,-1,-1,-1);
			else
				say("��Ŀǰ���ڲ��ܽ���˳���", 232, 1, "����ͨ");
				return 1;
			end

		end
	end
end

--��ս����
function Fight()
	say("����ɲ�����ô���ǵģ���ɵ�С����", 232, 1, "����ͨ");
	SetS(86, 1, 9, 5, 1);
	
	for i=1, 10 do
		if GetS(86, 2, i, 5) == 0 then
			SetS(86, 2, i, 5, 2);
		end
	end
	
	local menu = {
		{"��������Ƿ�",nil,GetS(86, 2, 1, 5)-1},
		{"������Ͷ�������",nil,GetS(86, 2, 2, 5)-1},
		{"�������ɨ����ɮ",nil,GetS(86, 2, 3, 5)-1},
		{"�Ƿ�Ͷ�������",nil,GetS(86, 2, 4, 5)-1},
		{"�Ƿ��ɨ����ɮ",nil,GetS(86, 2, 5, 5)-1},
		{"�������ܺ�ɨ����ɮ",nil,GetS(86, 2, 6, 5)-1},
		{"�����ᡢ�������ܺ�ɨ����ɮ",nil,GetS(86, 2, 7, 5)-1},
		{"�����ᡢ�Ƿ��ɨ����ɮ",nil,GetS(86, 2, 8, 5)-1},
		{"�����ᡢ�Ƿ�Ͷ�������",nil,GetS(86, 2, 9, 5)-1},
		{"�Ƿ塢�������ܺ�ɨ����ɮ",nil,GetS(86, 2, 10, 5)-1},
	};
	
	local size = CC.DefaultFont;
	
	local x1 = (CC.ScreenW-13*size)/2 ;
	local y1 = (CC.ScreenH - #menu*(size + CC.RowPixel))/2 - size;
	DrawStrBox(x1, y1, "��ѡ����ս����",C_WHITE, size);
	
	local numItem =  #menu;
	
	local r = ShowMenu(menu,numItem,0,x1,y1+40,0,0,1,1,size,C_ORANGE,C_WHITE);
	if r > 0 then
		Cls();
		SetS(86, 2, r, 5, 3);
		if WarMain(226) then
			SetS(86, 2, r, 5, 1);
			say("���������ְ���", 232, 1, "����ͨ");
			QZXS("ȫ�����ʵս������ʮ��");
			for i=1, 6 do
				for j=1, #TeamP do
					if JY.Base["����"..i] == TeamP[j] then
						SetS(5, j, 6, 5, GetS(5, j, 6, 5)+30);
						break;
					end
				end
			end
			QZXS("������ѧ��ʶ���10��");
			AddPersonAttrib(0, "��ѧ��ʶ", 10);
		else
			SetS(86, 2, r, 5, 2);
			say("�ܿ�ϧ��������������������", 232, 1, "����ͨ");	
		end
	end
	
	SetS(86, 1, 9, 5, 0);
end

--��������
function LianGong()
	JY.Person[445]["�ȼ�"] = 30 * 60
  JY.Person[446]["�ȼ�"] = JY.Person[445]["�ȼ�"]
  JY.Person[445]["ͷ�����"] = math.random(190)
  JY.Person[446]["ͷ�����"] = math.random(190)
  JY.Person[445]["�������ֵ"] = 100
  JY.Person[446]["�������ֵ"] = 100
  JY.Person[445]["����"] = JY.Person[445]["�������ֵ"]
  JY.Person[446]["����"] = JY.Person[446]["�������ֵ"]
  instruct_6(226, 8, 0, 1)
  JY.Person[445]["�ȼ�"] = 10
  JY.Person[446]["�ȼ�"] = 10
  JY.Person[445]["ͷ�����"] = 208
  JY.Person[446]["ͷ�����"] = 208
	return 1;
end

--װ��˵��
function ZBInstruce()
	local flag = false
	Cls();
	repeat
		local x1 = CC.ScreenW/4 ;
		local y1 = CC.ScreenH/4;
		DrawStrBox(x1, y1, "��ѡ����Ҫ�鿴��װ��",C_WHITE, CC.DefaultFont);
		local menu = {
			{"���佣",nil,1},
			{"����",nil,1},
			{"������",nil,1},
			{"���콣",nil,1},
			{"������",nil,1},
			{"���o��",nil,1}
		};
		
		local numItem = #menu;
		local size = CC.DefaultFont;
		local r = ShowMenu(menu,numItem,0,x1+size*3,y1+size*2,0,0,1,1,size,C_ORANGE,C_WHITE);
		if r == 0 then
			flag = true;
		elseif r == 1 then
			say("���佣��ʹ��̫������������", 232, 1, "����ͨ");
		elseif r == 2 then
			say("�������������㼯���ٶ�", 232, 1, "����ͨ");	
		elseif r == 3 then
			say("��������������������ر������������������߱�����", 232, 1, "����ͨ");	
		elseif r == 4 then
			say("���콣����������Ѫ������һ�����ʷ�Ѩ", 232, 1, "����ͨ");	
		elseif r == 5 then
			say("��������ʹ�õȼ�Ϊ���ĵ�����߰ٷ�֮��ʮ�����ʣ�������������аٷ�֮��ʮ���ʴ����ɱ���������������Ѫ��ɱ���������书�����й�", 232, 1, "����ͨ");	
		elseif r == 6 then
			say("���o�ף��ܵ�ȭϵ�书����ʱ����һ�����˺����ܵ���ȭϵ�书����ʱ�����˺�", 232, 1, "����ͨ");	
		end
	until flag
end

--brolycjw: ������ս
function DYRW()
	Cls();
	local x1 = CC.ScreenW/4 ;
	local y1 = CC.ScreenH/4;
	DrawStrBox(x1, y1, "��ѡ����ս����",C_WHITE, CC.DefaultFont);
	local menu = {}
	local id,tid = 0;
		for i = 1, CC.TeamNum do
			menu[i] = {"", nil, 0}
			id = JY.Base["����" .. i]		
				if id > 0 then
				menu[i][3] = 1
				menu[i][1] = JY.Person[id]["����"]
			end
		end
	local numItem = #menu;
	local size = CC.DefaultFont;
	local r = ShowMenu(menu,numItem,0,x1,y1+CC.DefaultFont,0,0,1,1,size,C_ORANGE,C_WHITE);
	if r > 0 then
		id = JY.Base["����" .. r]
		SetS(86,15,1,5,id)
		for t=1, CC.MyTeamNum do
			if id == TeamP[t] then
				tid = t
				break;
			end
		end
		Cls();
		DrawStrBox(x1, y1, "��ѡ����ս�Ѷ�",C_WHITE, CC.DefaultFont);
		menu = {
			{"����",nil,GetS(86,16,tid,5)-1},
			{"�м�",nil,GetS(86,17,tid,5)-1},
			{"�߼�",nil,GetS(86,18,tid,5)-1},
			{"��",nil,GetS(86,19,tid,5)-1},
		};
		numItem = #menu;
		local rr = ShowMenu(menu,numItem,0,x1,y1+40,0,0,1,1,size,C_ORANGE,C_WHITE);
		if rr > 0 then
			SetS(86,15,2,5,rr)
			if WarMain(79) then
				SetS(86, 15+rr, tid, 5, 1);
				SetS(86, 16+rr, tid, 5, 2);
				say("���Ǻ����ְ���", 232, 1, "����ͨ");
				QZXS(string.format("%s ʵս����%s��",JY.Person[id]["����"],rr*50));
				QZXS(string.format("%s ����������%s��",JY.Person[id]["����"],rr*5));
				SetS(5, tid, 6, 5, GetS(5, tid, 6, 5)+rr*50);
				AddPersonAttrib(id, "������", rr*5);
				AddPersonAttrib(id, "������", rr*5);
				AddPersonAttrib(id, "�Ṧ", rr*5);
			else
				SetS(86, 15+rr, tid, 5, 2);
				say("�ܿ�ϧ��������������������", 232, 1, "����ͨ");	
			end
		end	
	end
	SetS(86,15,1,5,0)
	SetS(86,15,2,5,0)
end

--�书��Ч˵��
function WuGongIntruce()
	local menu = {};
	
	for i = 1, JY.WugongNum-1 do
		menu[i] = {i..JY.Wugong[i]["����"], nil, 0}
	end
	
	--ӵ�е��ؼ�
	for i = 1, CC.MyThingNum do
    if JY.Base["��Ʒ" .. i] > -1 and JY.Base["��Ʒ����" .. i] > 0 then
    	local wg = JY.Thing[JY.Base["��Ʒ" .. i]]["�����书"];
    	if wg > 0 then
    		menu[wg][3] = 1;
    	end
    else
    	break;
    end
  end
  
  --ѧ����书
  for i=1, CC.TeamNum do
  	if JY.Base["����"..i] >= 0 then
  		for j=1, 10 do
  			if JY.Person[JY.Base["����"..i]]["�书"..j] > 0 then
  				menu[JY.Person[JY.Base["����"..i]]["�书"..j]][3] = 1;
  			else
  				break;
  			end
  		end
  	else
  		break;
  	end
  end
	
	while true do
		Cls();
		local r = ShowMenu2(menu,JY.WugongNum-1,4,12,20,(CC.ScreenH-12*(CC.DefaultFont+CC.RowPixel))/2+20,0,0,1,1,CC.DefaultFont,C_ORANGE, C_WHITE, "��ѡ��鿴���书");
		--local r = ShowMenu(menu,n,15,CC.ScreenW/4,20,0,0,1,1,CC.DefaultFont,C_ORANGE, C_WHITE);
		
		if r > 0 and r < JY.WugongNum then	
			InstruceWuGong(r);
		else
			break;
		end
	end
	
end

--��ʾ�书���ڹ���Ч
function InstruceWuGong(id)
	
	if id < 0 or id >= JY.WugongNum then
		QZXS("�书δ֪�����޷��鿴");
		return;
	end
	
	local filename = string.format("%s%d.txt", CONFIG.WuGongPath,id)
	if existFile(filename) == false then
		QZXS("���书δ�����κ�˵������������ĥ");
		return;
	end
	
	DrawTxt(filename);
	
end

function TSInstruce()
	local filemenu = {};
	local n = 0;
	for i=1, math.huge do
		if existFile(string.format("%s%d.txt",CONFIG.HelpPath, i)) then
			filemenu[i] = string.format("%s%d.txt",CONFIG.HelpPath, i);
			n = n + 1;
		else
			break;
		end
	end
	
	local menu = {}
	local maxlen = 0;
	for i=1, n do
		local file = io.open(filemenu[i],"r")
		local str = file:read("*l")
		
		if str == nil then
			str = " ";
		end
		
		if #str > maxlen then
			maxlen = #str;
		end
		
		menu[i] = {i..str, nil, 1};
		
		file:close()
	end
	
	local size = CC.DefaultFont;
	local x1 = (CC.ScreenW-maxlen*size/2)/2;
	local y1 = (CC.ScreenH-10*(size+CC.RowPixel))/2;
	
	while true do
		Cls();
		local r = ShowMenu(menu,n,10,x1,y1,0,0,1,1,size,C_ORANGE,C_WHITE);
		if r > 0 then
			InstruceTS(r);
		else
			break;
		end
	end
end

--��ʾ�书���ڹ���Ч
function InstruceTS(id)
		
	local filename = string.format("%s%d.txt", CONFIG.HelpPath,id)
	if existFile(filename) == false then
		QZXS("δ�ҵ���صĹ����ļ�");
		return;
	end
	
	DrawTxt(filename);
	
end

function DrawTxt(filename)
	Cls();
	
	--��ȡ�ļ�˵��
	local file = io.open(filename,"r")
	local str = file:read("*a")
	file:close()
	
	local size = CC.DefaultFont;
	local color = C_WHITE;
	
	local linenum = 50;		--��ʾ����
	local maxlen = 14;
	local w = linenum*size/2 + size;
	local h = maxlen*(size+CC.RowPixel) + 2*CC.RowPixel;
	
	local bx = (CC.ScreenW-w)/2;
	local by = (CC.ScreenH-h)/2;
	DrawBox(bx,by,bx+w,by+h,C_WHITE);		--�ױ߿�
	local x = bx + CC.RowPixel;
	local y = by + CC.RowPixel;
	
	local surid = lib.SaveSur(0, 0, CC.ScreenW, CC.ScreenH)
	
	local strcolor = AnalyString(str)
	local l = 0
	local row = 0;


	for i,v in pairs(strcolor) do
		while 1 do
			if v[1] == nil or v[1] == "" then
				break;
			end
			local index = string.find(v[1], "\n")
			
			if l+#v[1] < linenum/2 and index == nil then		--���δ�����У�û���ҵ�����
				DrawString(x + l*size/2, y + row*(size+CC.RowPixel), v[1], v[2] or color, size);
				l = l + #v[1]

				if i == #strcolor then
					--��ʾ����
					for j=0, l do
						lib.SetClip(x,y,x+j*size/2,y+size+row*(size+CC.RowPixel));
						ShowScreen(1);
					end
					lib.SetClip(0,0,0,0);
				end
				
				lib.Debug(v[1]);

				break;
			else	--����ﵽ����
				local tmp, pos1, pos2;
				if index == nil then
					pos1 = linenum-l;
					pos2 = pos1+1;
				else
					pos1 = index-1;
					pos2 = pos1+2;
					
					if pos1 > linenum then
						index = nil;
						pos1 = linenum;
						pos2 = pos1+1;
					end
				end
				
				--�����ʼλ���Ѿ��������ַ����ĳ��ȣ���ôֱ����ʾ�����ҽ���ѭ��
				if pos1 >= #v[1] then
					DrawString(x + l*size/2, y + row*(size+CC.RowPixel), v[1], v[2] or color, size);
					l = #v[1];
					for j=0, l do
						lib.SetClip(x,y,x+j*size/2,y+size+row*(size+CC.RowPixel));
						ShowScreen(1);
					end
					v[1] = nil;		--����Ϊnil����ѭ��
				else
					tmp = string.sub(v[1], 1, pos1)
					local flag = 0
					for i=1, pos1 do
						if string.byte(tmp, i) <= 127 then
							flag = flag + 1;
						end
					end
	
	
					if math.fmod(flag,2) == 1 and index == nil  then		--��������е��ַ�
							if string.byte(tmp, -1) > 127 then
								tmp = string.sub(v[1], 1, pos1-1);
								pos2 = pos2 - 1
							end
					end
	
					v[1] = string.sub(v[1], pos2);
	
					DrawString(x + l*size/2, y + row*(size+CC.RowPixel), tmp, v[2] or color, size);
	
	
					l = l + #tmp
					--��ʾ����
					for j=0, l do
						lib.SetClip(x,y,x+j*size/2,y+size+row*(size+CC.RowPixel));
						ShowScreen(1);
					end
					
					--����+1
					row = row + 1
					l = 0
				end
				
			end

			lib.SetClip(0,0,0,0);
			
			if row == maxlen then
				WaitKey();
				row = 0;
				Cls();
				lib.LoadSur(surid, 0, 0)
				
			end
		end
	end
	WaitKey();
	lib.FreeSur(surid)
end

--ʮ�ı�����֮��õ�5000��
--�޸��Զ�ϴ���񼼵�BUG
function NEvent2(keypress)
  if JY.SubScene == 70 and GetD(70, 3, 0) == 0 and instruct_18(151) then
    instruct_3(70, 3, 1, 0, 0, 0, 0, 2610, 2610, 2610, 0, -2, -2)
  end
  if GetD(70, 3, 5) == 2610 and JY.SubScene == 70 and JY.Base["��X1"] == 8 and JY.Base["��Y1"] == 41 and JY.Base["�˷���"] == 2 and keypress == VK_SPACE then
    say("���ף�����ֽ��......�ȣ�С�ӣ��������������ǧ�����ӣ��ú�׼��һ�°ɣ��ȹ������ϼһﻹ�ܹ���˼�")
    instruct_2(174, 5000)
    SetS(10, 0, 17, 0, 1)
    SetD(83, 48, 4, 882)
    say("���ţ����ﻹ��һ���ؼ������ҿ�����......")
    say("���������ź��������书�����Һܺ���������·���������")
    
    local swg = {109, 110, 111, 112}
    
    local title = "����ѡ��";
		local str = string.format("һ��%s*����%s*����%s*�ġ�%s*��������ѡ��ϴ����*�����������ѡ������������޷�������",JY.Wugong[109]["����"],JY.Wugong[110]["����"],JY.Wugong[111]["����"],JY.Wugong[112]["����"]);
		local btn = {"һ","��","��","��","����"};
		local num = #btn;
		local r = JYMsgBox(title,str,btn,num);
    
    if r >=1 and r <=4 then
	    JY.Person[0]["�书1"] = swg[r]
	    JY.Person[0]["�书�ȼ�1"] = 900
	    QZXS("ϰ�á�" .. JY.Wugong[swg[r]]["����"] .. "��")
	  end
    instruct_3(70, 3, 1, 0, 0, 0, 0, 2612, 2612, 2612, 0, -2, -2)
  end
end

--��� ���˷����ҽ���
function NEvent3(keypress)
  if JY.SubScene == 24 and JY.Base["��X1"] == 18 and JY.Base["��Y1"] == 23 and JY.Base["�˷���"] == 2 and keypress == VK_SPACE and GetS(10, 0, 3, 0) ~= 1 and instruct_16(1) and instruct_18(145) and JY.Person[1]["�书�ȼ�1"] == 999 then
    say("������������Ѿ��ҵ�ѩɽ�ɺ��Ȿ����", 1)
    say("���ţ��ܺã�������ĺ��ҵ���Ҳ������¯�����ˣ��Ժ�Ľ����Ϳ�������Щ�����˵��ˣ��Ȿ��ҽ�������ȥ�ɣ�", 3)
    say("����л�������", 1)
    for i = 1, 10 do
      if JY.Person[1]["�书" .. i] == 0 then
        JY.Person[1]["�书" .. i] = 44
        JY.Person[1]["�书�ȼ�" .. i] = 50
        DrawStrBox(-1, -1, "���ѧ����ҽ���", C_ORANGE, CC.DefaultFont)
        ShowScreen()
        lib.Delay(1000)
        Cls()
        break;
      end
    end
    instruct_2(117, 1)
    SetS(10, 0, 3, 0, 1)
  end
end

--�����12�������
function NEvent4(keypress)
  if JY.SubScene == 7 and JY.Base["��X1"] == 34 and JY.Base["��Y1"] == 11 and JY.Base["�˷���"] == 2 then
    local ts = 0
    for i = 1, 200 do
      if JY.Base["��Ʒ" .. i] > 143 and JY.Base["��Ʒ" .. i] < 158 then
        ts = ts + 1
      end
    end
 
	  if ts > 11 and instruct_16(35) and instruct_18(114) and GetS(10, 1, 1, 0) ~= 1 and JY.Person[35]["�书�ȼ�1"] == 999 and keypress == VK_SPACE then
	    SetS(7, 34, 12, 3, 102)
	    instruct_3(7, 102, 1, 0, 0, 0, 0, 7148, 7148, 7148, 0, 34, 12)
	    say("�����֣����������ʶһ�¶���ǰ���ķ�ɰ�������ܸо����ԾŽ������µ����򣬵��ֺ�ģ�������ܾ����ܽ������", 35, 1)
	    say("������������������ʱ���ˣ�", 140, 0)
	    say("����̫ʦ�壡����", 35)
	    instruct_14()
	    SetS(7, 33, 12, 3, 101)
	    instruct_3(7, 101, 1, 0, 0, 0, 0, 5896, 5896, 5896, 0, 33, 12)
	    instruct_13()
	    PlayMIDI(24)
	    lib.Delay(2000)
	    say("�����������һ�𳪣��׺�һ��Ц����������������������ֻ�ǽ񳯡�����Ц���׷����ϳ���˭��˭ʤ����֪������ɽЦ������ң�������Ծ��쳾����֪���١����Ц���Ǽ��ȡ����黹ʣһ�����ա�����Ц�����ټ��ȡ��������ڳճ�ЦЦ", 140, 0)
	    say("��������Ž��ļ�������������׸��У����Ѻú�ȥ���ɣ��Ϸ���Ը���ˣ��Ӵ�����ǣ�ң��ʹ�ȥҲ��������������", 140, 0)
	    say("����л̫ʦ�崫���������˼Ҷౣ�أ��ţ������������Ž��İ���ɣ�������", 35, 1)
	    instruct_14()
	    instruct_3(7, 101, 0, 0, 0, 0, 0, -1, -1, -1, 0, 33, 12)
	    instruct_13()
	    DrawStrBox(-1, -1, "���պ�", C_ORANGE, CC.DefaultFont)
	    ShowScreen()
	    lib.Delay(1000)
	    say("�����ˣ�����������Ķ��¾Ž���������������ѧ������ǰ��֮�񼼣��򸴺κ���", 35, 1)
	    DrawStrBox(-1, -1, "���������Ž�֮�ش�", C_ORANGE, CC.DefaultFont)
	    ShowScreen()
	    lib.Delay(2000)
	    Cls()
	    DrawStrBox(-1, -1, "�����ƺű��", C_ORANGE, CC.DefaultFont)
	    ShowScreen()
	    lib.Delay(1000)
	    Cls()
	    SetS(10, 1, 1, 0, 1)
	    instruct_3(7, 102, 0, 0, 0, 0, 0, -1, -1, -1, 0, 34, 12)
	  end
  end
end
--����а�ߣ�����������ͷ
function NEvent5(keypress)
  if JY.SubScene == 28 and JY.Base["��X1"] == 15 and JY.Base["��Y1"] == 28 and JY.Base["�˷���"] == 2 and GetD(11, 109, 0) ~= 1 and (instruct_16(73) or instruct_18(114)) and instruct_18(219) and not instruct_18(155) and keypress == VK_SPACE then
    say("��������ͷ��")
    say("�������飡", 70)
    instruct_2(155, 1)
  end
end--ɽ���¼�
function NEvent6(keypress)
  if JY.SubScene == 10 then
    SetD(10, 28, 4, -1)
    SetS(10, 23, 22, 1, 2)
    SetS(10, 22, 22, 1, 2)
  end
  if JY.SubScene == 59 then
    JY.SubSceneX = 0
    JY.SubSceneY = 0
  end
end
--��ɽ����
function NEvent7(keypress)
  if JY.SubScene == 80 and GetS(10, 0, 7, 0) ~= 1 then
    SetS(80, 15, 19, 3, 31)
    instruct_3(80, 31, 1, 0, 0, 0, 0, 6824, 6824, 6824, 0, -2, -2)
	  if JY.Base["��X1"] == 16 and JY.Base["��Y1"] == 19 and JY.Base["�˷���"] == 2 and keypress == VK_SPACE and GetS(10, 0, 7, 0) ~= 1 then
	    say("����ã�ż������δ�����������ޣ�ż���������������������˯���������ѣ�", 300, 0, "��������")
	    local ts = 0
	    for i = 1, 200 do
	      if JY.Base["��Ʒ" .. i] > 143 and JY.Base["��Ʒ" .. i] < 158 then
	        ts = ts + 1
	      end
	    end
	    if ts > 9 then
	      say("���ܺã����Ѿ��߱����ѵ������ˣ���ż���㿴��ö����ɣ�������", 300, 0, "��������")
	      if DrawStrBoxYesNo(-1, -1, "�Ƿ�Ҫ�ۿ�ս��Ӱ��", C_ORANGE, CC.DefaultFont) then
	        local X1, X2, X3, X4, Z1, Z2, Z3, Z4, D1, D2, D3, D4 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
	        X1 = JY.Person[50]["Я����Ʒ1"]
	        X2 = JY.Person[50]["Я����Ʒ2"]
	        X3 = JY.Person[50]["Я����Ʒ3"]
	        X4 = JY.Person[50]["Я����Ʒ4"]
	        JY.Person[50]["Я����Ʒ1"] = -1
	        JY.Person[50]["Я����Ʒ2"] = -1
	        JY.Person[50]["Я����Ʒ3"] = -1
	        JY.Person[50]["Я����Ʒ4"] = -1
	        Z1 = JY.Person[5]["Я����Ʒ1"]
	        Z2 = JY.Person[5]["Я����Ʒ2"]
	        Z3 = JY.Person[5]["Я����Ʒ3"]
	        Z4 = JY.Person[5]["Я����Ʒ4"]
	        JY.Person[5]["Я����Ʒ1"] = -1
	        JY.Person[5]["Я����Ʒ2"] = -1
	        JY.Person[5]["Я����Ʒ3"] = -1
	        JY.Person[5]["Я����Ʒ4"] = -1
	        D1 = JY.Person[27]["Я����Ʒ1"]
	        D2 = JY.Person[27]["Я����Ʒ2"]
	        D3 = JY.Person[27]["Я����Ʒ3"]
	        D4 = JY.Person[27]["Я����Ʒ4"]
	        JY.Person[27]["Я����Ʒ1"] = -1
	        JY.Person[27]["Я����Ʒ2"] = -1
	        JY.Person[27]["Я����Ʒ3"] = -1
	        JY.Person[27]["Я����Ʒ4"] = -1
	        say("����ǿ����ģ��ս��Ӱ�񣭣������ȵ�һ����������Ծ���������", 300, 0, "��������")
	        WarMain(229)
	        say("����ǿ����ģ��ս��Ӱ�񣭣������ȵڶ�����������Ծ�ɨ����ɮ", 300, 0, "��������")
	        WarMain(230)
	        say("����ǿ����ģ��ս��Ӱ�񣭣������ȵ�������������Ծ�����", 300, 0, "��������")
	        WarMain(231)
	        say("����ǿ����ģ��ս��Ӱ�񣭣������ȵ��ĳ����������ܶԾ�����", 300, 0, "��������")
	        WarMain(232)
	        say("����ǿ����ģ��ս��Ӱ�񣭣������ȵ��峡���������ܶԾ�ɨ����ɮ", 300, 0, "��������")
	        WarMain(233)
	        say("����ǿ����ģ��ս��Ӱ�񣭣������ȵ�����������Ծ�ɨ����ɮ", 300, 0, "��������")
	        WarMain(234)
	        JY.Person[50]["Я����Ʒ1"] = X1
	        JY.Person[50]["Я����Ʒ2"] = X2
	        JY.Person[50]["Я����Ʒ3"] = X3
	        JY.Person[50]["Я����Ʒ4"] = X4
	        JY.Person[5]["Я����Ʒ1"] = Z1
	        JY.Person[5]["Я����Ʒ2"] = Z2
	        JY.Person[5]["Я����Ʒ3"] = Z3
	        JY.Person[5]["Я����Ʒ4"] = Z4
	        JY.Person[27]["Я����Ʒ1"] = D1
	        JY.Person[27]["Я����Ʒ2"] = D2
	        JY.Person[27]["Я����Ʒ3"] = D3
	        JY.Person[27]["Я����Ʒ4"] = D4
	      else
	        instruct_14()
	        instruct_13()
	      end
	      say("��̫ǿ�ˣ��Һ�������ʲô��..........")
	      if GetS(10, 0, 6, 0) == 1 and GetS(4, 5, 5, 5) ~= 8 then
	        JY.Person[0]["�书2"] = 91
	        JY.Person[0]["�书�ȼ�2"] = 900
	        JY.Wugong[91]["����"] = "���ֻ�ɽ��"
	        JY.Wugong[91]["������10"] = 1300
	        JY.Wugong[91]["�书����&��Ч"] = 6
	        DrawStrBox(-1, -1, "����ѧ�����--���ֻ�ɽ��", C_ORANGE, CC.DefaultFont)
	        ShowScreen()
	        lib.Delay(2000)
	        Cls()
	        DrawStrBox(-1, -1, "���ǻ�óƺ�--����֮����", C_ORANGE, CC.DefaultFont)
	        ShowScreen()
	        lib.Delay(2000)
	        SetS(10, 0, 12, 0, 1)
	        SetD(43, 4, 2, 0)
	        say("����ʵ������������Խ�һ�����ѣ�Ҫ��õ�������������ȥ���Ǹ��˰ɣ�ż�Ѿ��ѷ�ӡ֮���ύ�����ˣ�����ָ�����������������", 300, 0, "��������")
	      else
	        JY.Person[0][PSX[33]] = JY.Person[0][PSX[33]] + 30
	        JY.Person[0][PSX[35]] = JY.Person[0][PSX[35]] + 30
	        JY.Person[0][PSX[34]] = JY.Person[0][PSX[34]] + 30
	        DrawStrBox(-1, -1, "���ǹ���������������30��", C_ORANGE, CC.DefaultFont)
	        ShowScreen()
	        lib.Delay(1000)
	        SetD(43, 4, 2, 314)
	        if T1LEQ(0) then
	          JY.Person[0]["��ѧ��ʶ"] = 100
	          QZXS("����ߵ���ѧ��ʶ������100")
	          QZXS("��óƺţ���԰���˫")
	        end
	        if T2SQ(0) then
	        	QZXS("ˮ����������һ�����������")
	      	end
	      end
	      
	      say("���ܺã�ż����������ˣ��ټ���", 300, 0, "��������")
	      SetS(10, 0, 7, 0, 1)
	      instruct_3(80, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2)
	    else
	    	say("���ţ����񻹲���ʱ����ȥ�����ϴ���һ�������ɣ�", 300, 0, "��������")
	  	end
	  end
  end
end
--��ս�����ᣬ�õ�����
function NEvent8(keypress)
  if JY.SubScene == 43 and GetS(10, 0, 12, 0) == 1 and JY.Base["��X1"] == 17 and JY.Base["��Y1"] == 27 and JY.Base["�˷���"] == 2 and keypress == VK_SPACE then
    say("�����������ˣ��ܼ򵥣�սʤ�Ϸ򣬼��ɵõ�����������׼��������", 5)
    say("���ң�......Ҳ��֪���Ǹ����ΪʲôҪ�Ϸ����С�ӹ����У�ֻ����˵��������С�ӵ��Ǹ��ռ����кܶ��˾����Ϸ������Ҳ�գ��Ǿ�������ɣ���", 5)
    if DrawStrBoxYesNo(-1, -1,"Ҫ��ս��", C_WHITE, CC.DefaultFont) then
      if WarMain(22) then
        PlayMIDI(3)
        say( "���ù����������������ľ��ᣬ��ȥ�ɣ�", 5)
        say("���������ڵ����ˣ��治���װ������ϵ������ȷ�˵ã���������������----")
        say("��............��..........��..........��..........��..........��..........��..........��..........���Ҷ��ˣ�����")
        DrawStrBoxWaitKey(string.format("%s�������������", JY.Person[0]["����"]), C_ORANGE, CC.DefaultFont)
        JY.Wugong[91]["����"] = "���������"
        JY.Wugong[91]["������10"] = 1600
        SetS(10, 0, 12, 0, 0)
        SetD(43, 4, 2, 314)
        SetS(10, 0, 11, 0, 1)
        SetS(80, 48, 36, 3, 100)
        instruct_3(80, 100, 0, 0, 0, 0, 2002, 0, 0, 0, 0, -2, -2)
        say("�����ˣ����Ѿ������ˣ�����ȥ������ʹ���ɣ�", 5)
        
      else
      	say("����ȱ�����´������ɣ�", 5)
      end
    else
    	say("����ʱ�����������Ϸ򹧺�", 5)
    end
  end
end
--�����ᣬֱ����սʮ���
function NEvent9(keypress)
  if JY.SubScene == 25 and GetS(10, 0, 8, 0) ~= 1 and GetD(25, 74, 5) == 2610 then
    SetS(25, 40, 33, 3, 101)
    instruct_3(25, 101, 1, 0, 0, 0, 0, 6824, 6824, 6824, 0, -2, -2)
  end
  if JY.Base["��X1"] == 41 and JY.Base["��Y1"] == 33 and JY.Base["�˷���"] == 2 and keypress == VK_SPACE then
    say("���Ƿ���ֱ����սʮ�����֣�", 300, 0, "��������")
    if DrawStrBoxYesNo(-1, -1, "Ҫֱ����ս��", C_ORANGE, CC.DefaultFont) then
      if JY.Person[0]["Ʒ��"] > 50 then
        if WarMain(133) then
          say("����ϲ��սʤ��ʮ�����ô��������", 300, 0, "��������")
          instruct_14()
          JY.Base["��X1"] = 11
          JY.Base["��Y1"] = 44
          instruct_13()
          SetS(10, 0, 8, 0, 1)
          instruct_3(25, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2)
          instruct_3(25, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2)
        end
	    else
	      if WarMain(134) then
	        say("����ϲ��սʤ��ʮ�����ô��������", 300, 0, "��������")
	        instruct_14()
	        JY.Base["��X1"] = 11
	        JY.Base["��Y1"] = 44
	        instruct_13()
	        SetS(10, 0, 8, 0, 1)
	        instruct_3(25, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2)
	        instruct_3(25, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2)
	      end
    	end
  	else
    	say("���Ǿ�������̨�ɣ�", 300, 0, "��������")
    end
  end
end
--�������SYP�Զ�����
function NEvent10(keypress)
  if JY.SubScene == 25 and GetS(10, 0, 9, 0) ~= 1 then
    SetS(25, 9, 44, 3, 103)
    instruct_3(25, 103, 1, 0, 0, 0, 0, 7100, 7100, 7100, 0, -2, -2)
    if JY.Base["��X1"] == 10 and JY.Base["��Y1"] == 44 and JY.Base["�˷���"] == 2 and keypress == VK_SPACE and GetD(25, 82, 5) == 4662 then
      say("��һ·����������������ˣ���ż�� syp����Ϻ����Ϣһ�£���ż���������ɣ�", 300, 0, "SYP")
      instruct_14()
      for i = 79, 92 do
        if i ~= 82 then
          instruct_3(25, i, 1, 0, 0, 0, 0, 4664, 4664, 4664, 0, -2, -2)
        end
      end
      for ii = 144, 157 do
        if ii ~= 147 then
          instruct_32(ii, -1)
        end
      end
      instruct_13()
      say("�����ˣ��������鶼�ź��ˣ��Ȿ�����˲�������ȥ�Űɣ�����ż��ϲ�������飡�ټ��ˣ�", 300, 0, "SYP")
      SetS(10, 0, 9, 0, 1)
      instruct_3(25, 103, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2)
    end
    for i = 79, 92 do
      if GetD(25, i, 5) ~= 4662 then
        SetS(10, 0, 9, 0, 1)
        instruct_3(25, 103, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2)
      end
    end
  end
end
--���㵺 ����
function NEvent11(keypress)
  if JY.SubScene == 104 and JY.Person[104]["����"] ~= "���� " then
    instruct_3(104, 91, 1, 0, 0, 0, 0, 6086, 6086, 6086, 0, -2, -2)
  end
  if JY.SubScene == 104 and JY.Base["��X1"] == 42 and JY.Base["��Y1"] == 38 and JY.Base["�˷���"] == 0 and keypress == VK_SPACE and GetD(104, 91, 0) == 1 then
    say("���ɹ��ʵ�Ү�ɺ������������ԭ��������ھ����뷨Ȱ�裬�����޷��������������������ҽ�����Ķ���", 104)
    instruct_2(8, 10)
    say("����Ҫ��ȥ����������ˣ��ټ���", 104)
    instruct_3(104, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2)
    JY.Person[104]["����"] = "���� "
  end
end
--�󹦷� ��Ԭ��־�Ի��󣬽��߽��黹
function NEvent12(keypress)
  if JY.SubScene == 95 and GetD(95, 4, 5) ~= 0 and JY.Thing[40]["ʹ����"] ~= -1 then
    JY.Person[JY.Thing[40]["ʹ����"]]["����"] = -1
    JY.Thing[40]["ʹ����"] = -1
    JY.Thing[40]["���Ṧ"] = 10
    JY.Thing[40]["�ӹ�����"] = 20
  end
end

function mm4R()
  local r = nil
  if JY.Thing[202][WZ7] == 1 then
    r = math.random(2)
  else
    r = math.random(4)
  end
  local bdnl = {"����", "ͷ�����", "�������ֵ", "�������ֵ", "��������", "������", "�Ṧ", "������", "ȭ�ƹ���", "��������", "ˣ������", "�������", "����", "�书1"}
  local mm4 = {}
  mm4[1] = {"������", 301, 350, 600, 0, 60, 50, 50, 30, 30, 0, 0, 71, 41}
  mm4[2] = {"����", 302, 270, 500, 1, 70, 40, 50, 0, 40, 0, 0, 78, 37}
  mm4[3] = {"����", 303, 200, 500, 2, 40, 40, 40, 20, 20, 20, 20, 73, 12}
  mm4[4] = {"½��˫", 304, 400, 700, 0, 70, 40, 60, 0, 0, 40, 0, 64, 54}
  for i = 1, 14 do
    JY.Person[92][bdnl[i]] = mm4[r][i]
  end
  JY.Person[92]["�ȼ�"] = 10
  for i = 1, 5 do
    JY.Person[92]["���ж���֡��" .. i] = 0
    JY.Person[92]["���ж����ӳ�" .. i] = 0
    JY.Person[92]["�书��Ч�ӳ�" .. i] = 0
  end
  local avi = {
{14, 6, 7}, 
{8, 3, 4}, 
{0, 0, 0}, 
{7, 4, 5}}
  JY.Person[92]["���ж���֡��1"] = avi[r][1]
  JY.Person[92]["���ж����ӳ�1"] = avi[r][3]
  JY.Person[92]["�书��Ч�ӳ�1"] = avi[r][2]
  if r == 3 then
    local s = {
{0, 0, 0}, 
{9, 2, 3}, 
{8, 3, 4}, 
{8, 3, 4}, 
{9, 5, 6}}
    for i = 1, 5 do
      JY.Person[92]["���ж���֡��" .. i] = s[i][1]
      JY.Person[92]["���ж����ӳ�" .. i] = s[i][3]
      JY.Person[92]["�书��Ч�ӳ�" .. i] = s[i][2]
    end
  end
end