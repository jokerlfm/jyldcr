--OEVENTLUA[690] = function()
  local r = JYMsgBox("常回家看看", "公子，你回来啦！*在外面奔波这么久，一定很辛苦吧*现在想做什么？",  {"练功", "休息", "起程"}, 3, 261)
  if r == 2 then
    instruct_14()
    instruct_12()
    instruct_13()
    instruct_1(2830, 261, 0)
    instruct_0()
  elseif r == 1 then
    JY.Person[445]["等级"] = JY.Person[0]["等级"] * 30
    JY.Person[446]["等级"] = JY.Person[445]["等级"]
    JY.Person[445]["头像代号"] = math.random(190)
    JY.Person[446]["头像代号"] = math.random(190)
    JY.Person[445]["生命最大值"] = 50
    JY.Person[446]["生命最大值"] = 50
    JY.Person[445]["生命"] = JY.Person[445]["生命最大值"]
    JY.Person[446]["生命"] = JY.Person[446]["生命最大值"]
    instruct_6(226, 8, 0, 1)
    JY.Person[445]["等级"] = 10
    JY.Person[446]["等级"] = 10
    JY.Person[445]["头像代号"] = 208
    JY.Person[446]["头像代号"] = 208
  end
--end