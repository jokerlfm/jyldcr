--brolycjw�޸ı����� ��������
--OEVENTLUA[8601] = function()    --��������
	 if GetS(86,40,40,5) == 1 then		--�ж��¼��Ƿ��Ѿ�������
	 	 return;
	 end
	instruct_3(-2,4,0,0,0,0,0,9238,9238,9238,0,0,0);  
   instruct_26(3,3,1,0,0);   
   instruct_26(3,2,1,0,0);   
   instruct_3(-2,1,0,0,0,0,0,0,0,0,0,0,0);  
   instruct_3(-2,2,0,0,0,0,0,0,0,0,0,0,0);  
   instruct_3(-2,0,0,0,0,0,0,0,0,0,0,0,0);  
   TalkEx( "<�ף�ǰ�淢��ʲô���ˣ�>",0,1);  
   instruct_0();
   instruct_25(44,25,36,25);   
   instruct_0();   
   TalkEx("������㻹���ӳ�ȥô��ʶ��Ļ��Ϳ콫�߲��Թ��ĵ�ͼ��������",137,0);  
   instruct_0();
   TalkEx("������Ⱥɱ�ҵ���Ķ��ˣ�����Ҳ���ύ�����ǵġ�",242,4);  
   instruct_0();
   instruct_25(36,25,44,25);   
   instruct_0();   
   TalkEx("<��ͼ���ѵ��������й�>",0,1);  
   instruct_0();

   local zx=DrawStrBoxYesNo(-1,-1,"���Ƿ�Ӧ��ͦ�������أ�",C_ORANGE,CC.DefaultFont);
   
   if zx==true then            --��а��֧
          TalkEx("ס�֣�",0,1);  
          instruct_0();
          instruct_25(44,25,36,25);   
          instruct_0();   
          instruct_30(44,25,40,25);  
          instruct_0();
          TalkEx("����һ��������۸�һ��С���������������",0,1);  
          instruct_0();
          instruct_3(-2,5,0,0,0,0,0,5926,5926,5926,-2,-2,-2);
          TalkEx("����ĳ�����Ұ���ӣ���������������Ҳ�Ҳ��֣���Ĳ��ͷ����ǲ���",137,0);  
          instruct_0();
          TalkEx("������˵һ�飡��",0,1);  
          instruct_0();
          TalkEx("��˵����ĳ�����Ұ���ӣ���������������Ҳ�Ҳ���...",137,0);  
          instruct_0();
          TalkEx( "�٣�˵��һ���飡",0,1);  
          instruct_0();
          TalkEx("������������ǲ�����˵��������Ұ����..",137,0);  
          instruct_0();
          TalkEx("�㣡����ȥ���ˣ�",0,1);  
          instruct_0();
          if WarMain(92,1)==true then    --Ⱥս�´ﺣ
	     instruct_3(-2,6,0,0,0,0,0,0,0,0,0,0,0);
             instruct_3(-2,7,0,0,0,0,0,0,0,0,0,0,0);
             instruct_3(-2,8,0,0,0,0,0,0,0,0,0,0,0);
             instruct_3(-2,9,0,0,0,0,0,0,0,0,0,0,0);
             instruct_3(-2,5,0,0,0,0,0,5926,5926,5926,-2,-2,-2);
             instruct_0();
             instruct_13();
             TalkEx("������������С�����۲�ʶ����..",137,0); 
             instruct_0();            
             TalkEx("�����ߣ�����",0,1); 
             instruct_0();
             TalkEx("��........",137,0); 
             instruct_0();
             instruct_14();
             instruct_3(-2,5,0,0,0,0,0,0,0,0,0,0,0);
             instruct_0();
             instruct_13();
             TalkEx("СŮ��л����������֮��",242,1); 
             instruct_0();
             instruct_30(40,25,37,25);  
             instruct_0();
             TalkEx("���ﲻ�ض��񣬸��ʹ�����γƺ�",0,1); 
             instruct_0();
             TalkEx("СŮ�������㣬���������Ⱦ���ʦ���������˶���",242,0); 
             instruct_0();
             instruct_1(256,0,1);   
             instruct_0();
             instruct_1(257,0,2);  
             instruct_0();
             instruct_14();   
             instruct_3(-2,3,0,0,0,0,0,6796,6796,6796,-2,-2,-2); 
             instruct_0(); 
             instruct_13();   
             instruct_1(258,138,0);   
             instruct_0();   
             instruct_1(259,0,1);  
             instruct_0();  
             instruct_1(260,138,0);  
             instruct_0(); 
             instruct_2(35,1);   
             instruct_0();  
             instruct_1(261,246,1);   
             instruct_0(); 
             instruct_1(262,138,0);  
             instruct_0();   
             instruct_14();   
             instruct_3(-2,3,0,0,0,0,0,0,0,0,0,0,0);   
             instruct_0();  
             instruct_13();
             TalkEx("����ĪҪ���֣���ʦ��Ƣ����Щ�Ź֡����ʶ�����γƺ���",242,0); 
             instruct_0();            
             TalkEx(string.format("����%s��", JY.Person[0]["����"]),0,1); 
             instruct_0();
             TalkEx(string.format("����%s������", JY.Person[0]["����"]),242,0); 
             instruct_0();            
             TalkEx("ĪҪ�������������кδ��㣿",0,1); 
             instruct_0();
             instruct_1(264,242,0);  
             instruct_0();   
             instruct_1(265,0,1);  
             instruct_0(); 
             TalkEx("Ҳ�ã�˳����Ѱ�߲��Թ������䣬�����־����ƥ�����ǵ���������������£������Ͳ����������ˡ�",242,0); 
             instruct_0();
             if instruct_20() then
             	TalkEx("��Ķ������������Ȼ�С��ɡ�",242,0);
             	instruct_3(70,86,1,0,8651,0,0,6804,6804,6804,0,0,0);
             else
             	instruct_10(590);      --������ѣ�590������
             	
             end
             
             instruct_14();
	     instruct_3(70,3,0,0,0,0,0,0,0,0,0,0,0);
	     instruct_3(70,4,0,0,0,0,0,0,0,0,0,0,0);
	     instruct_3(70,61,1,0,8602,0,0,5098,5098,5098,0,-2,-2);  --���;���
	     instruct_3(70,62,1,0,8603,0,0,8250,8250,8250,0,-2,-2);  --�������
             instruct_3(-2,3,0,0,0,0,0,0,0,0,0,0,0);
             instruct_3(-2,4,0,0,0,0,0,0,0,0,0,0,0);
             instruct_0();
             instruct_13();
             instruct_2(230,1);       --�õ�����
             instruct_0();
             instruct_37(2);       --����+2
             instruct_0();
             TalkEx("�Ժ�����Ů����ˡ����ǣ�����־����ʲô�����أ����ǻؼ���������ͳ���ɡ�",0,1); 
             instruct_0(); 
          else
             instruct_15(0);   
             instruct_0();
          end
   else
          TalkEx("<�����ٹ���һ�£�˵�����ܵõ��Թ�������>",0,1);  
          instruct_0();
          instruct_25(44,25,36,25);   
          instruct_0();   
          TalkEx("�ֵ��ǣ����һ���ϣ�",137,0);  
          instruct_0();
          instruct_14();
	  instruct_3(-2,6,0,0,0,0,0,0,0,0,0,0,0);
          instruct_3(-2,7,0,0,0,0,0,0,0,0,0,0,0);
          instruct_3(-2,8,0,0,0,0,0,0,0,0,0,0,0);
          instruct_3(-2,9,0,0,0,0,0,0,0,0,0,0,0);
          instruct_0();
          instruct_13();
          TalkEx("�������Ӿ�Ȼ�Ŷ��룡��ɱ���㣡",137,0);  
          instruct_0();
          TalkEx("��������һ�����������־���˳�����������մ����Ѫ�գ���Լ�ɼ���һ��ɽ��ͼ",0,2);  
          instruct_0();
          TalkEx("����..���Ǹ߲��Թ��ĵ�ͼ�����������ҵ��ˣ�������....",137,0);  
          instruct_0();
          TalkEx( "ʦ���������ڣ����ǿ��ߣ�",242,4); 
          instruct_0();
          instruct_14();
	  instruct_3(-2,3,0,0,0,0,0,0,0,0,0,0,0);
          instruct_3(-2,4,0,0,0,0,0,0,0,0,0,0,0);
          instruct_0();
          instruct_13();
          instruct_25(36,25,44,25);   
          instruct_0();  
          TalkEx("��벶������ȸ�ں󡣿콫��ͼ�������ɡ�",0,1);  
          instruct_0();
          instruct_25(44,25,36,25);   
          instruct_0();   
          instruct_30(44,25,40,25);  
          instruct_0();
          instruct_3(-2,5,0,0,0,0,0,5926,5926,5926,-2,-2,-2);
          TalkEx( "������Ұ���ӣ��������ӵĶ�����",137,0);  
          instruct_0();
          TalkEx("��֪���",0,1);  
          instruct_0();
          SetS(87,31,33,5,1);   --�����´ﺣս������
          if WarMain(92,1)==true then  --�����´ﺣ
             instruct_39(15);          --�򿪷����ͼ
             instruct_3(15,0,0,0,0,0,8610,0,0,0,0,0,0); 
             instruct_13();
             TalkEx("������С�����۲�ʶ̩ɽ��ð���˴�����������",137,0);  
             instruct_0();
             TalkEx("�㵹ͦʶ��ģ��Ժ�͸����һ��ˡ�",0,1);  
             instruct_0();
             TalkEx( "лл������",137,0);  
             instruct_0();
             instruct_2(222,1);
             instruct_0(); 
             --[[ 
             instruct_10(92);    --������ѣ�92������´ﺣ
             instruct_0();
             ]]
             instruct_37(-2);       --����-2
             instruct_0();
             instruct_14();
	     instruct_3(-2,5,0,0,0,0,0,0,0,0,0,0,0);
             instruct_0();
             instruct_13();
             TalkEx("����������������ˡ�",0,1);  
             instruct_0();
             instruct_2(230,1);       --�õ�����
             instruct_0();
             instruct_37(-1);       --����-1
             instruct_0();
          else
             instruct_15(0);   
             instruct_0();
          end
          SetS(87,31,33,5,0);   --�����´ﺣս�����ݻ�ԭ
   end 
   
   SetS(86,40,40,5,1);  --�����ظ�����
--end