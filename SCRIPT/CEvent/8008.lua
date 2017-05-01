--药炉练药
--OEVENTLUA[8008] = function()
	local drupsNum = 0;		--药材数量
	for i = 1, CC.MyThingNum do
		if JY.Base["物品" .. i] == 209 then
			drupsNum = JY.Base["物品数量" .. i];
			break;
		end
	end
	
	local drups = {1,2,4,5,6,9,10,11};		--可炼出的药品编号
	local need = {8,15,8,12,15,5,8,12};			--需要的药材数量
	local drupsName = {};
	for i=1, #drups do
		drupsName[i] = JY.Thing[drups[i]]["名称"];
	end
	local title = "药炉";
	local str = string.format("当前药材总数量为：%d*点击“炼药”开始选择炼制的药品*如果药材数量不足，将无法炼成", drupsNum);
	local btn = {"炼药","关闭"};
	local num = #btn;
	local r = JYMsgBox(title,str,btn,num);
	if r ==1 then
		local x1 = CC.ScreenW/2 - 180 ;
		local y1 = 50;
		DrawStrBox(x1, y1+40, "药品名称   需药材  药材总量："..drupsNum,C_WHITE, CC.DefaultFont);
		local menu = {}
		for i=1, #drups do 
			menu[i] = {string.format("%-12s %4d",drupsName[i],need[i]),nil,1};
		end
		
		local numItem = #menu;
		local size = CC.DefaultFont;
		local r = ShowMenu(menu,numItem,0,x1,y1+80,0,0,1,1,size,C_ORANGE,C_WHITE);
		
		if r > 0 then
			Cls();
			
	   --[[ local n = GetPinyin1(32, CC.ScreenH - CC.Fontbig * 6)
	    
	    if T[n] ~= nil and T[n] > -1 then
	      if T[n] * need[r] <= drupsNum then
					instruct_2(drups[r],T[n]);
					instruct_2(209,-T[n] * need[r]);
				else
					DrawStrBoxWaitKey("对不起，炼制所需的药材超过了药材总量!", C_WHITE, CC.DefaultFont)
	      end
	    else
	    	DrawStrBoxWaitKey("对不起，您输入的数量不正确!", C_WHITE, CC.DefaultFont)
	    end
		end
		--]]
		
		local n = 1;
		if n * need[r] <= drupsNum then
					instruct_2(drups[r],n);
					instruct_2(209,-n * need[r]);
				else
					DrawStrBoxWaitKey("对不起，炼制所需的药材超过了药材总量!", C_WHITE, CC.DefaultFont)
	      end
		end
	end
--end