--OEVENTLUA[690] = function()
  local r = JYMsgBox("���ؼҿ���", "���ӣ����������*�����汼����ô�ã�һ���������*��������ʲô��",  {"����", "��Ϣ", "���"}, 3, 261)
  if r == 2 then
    instruct_14()
    instruct_12()
    instruct_13()
    instruct_1(2830, 261, 0)
    instruct_0()
  elseif r == 1 then
    JY.Person[445]["�ȼ�"] = JY.Person[0]["�ȼ�"] * 30
    JY.Person[446]["�ȼ�"] = JY.Person[445]["�ȼ�"]
    JY.Person[445]["ͷ�����"] = math.random(190)
    JY.Person[446]["ͷ�����"] = math.random(190)
    JY.Person[445]["�������ֵ"] = 50
    JY.Person[446]["�������ֵ"] = 50
    JY.Person[445]["����"] = JY.Person[445]["�������ֵ"]
    JY.Person[446]["����"] = JY.Person[446]["�������ֵ"]
    instruct_6(226, 8, 0, 1)
    JY.Person[445]["�ȼ�"] = 10
    JY.Person[446]["�ȼ�"] = 10
    JY.Person[445]["ͷ�����"] = 208
    JY.Person[446]["ͷ�����"] = 208
  end
--end