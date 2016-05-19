main = ->
  #

window.addEventListener "load",main

gacha = ->
  rd = Math.floor(Math.random()*window.problems.length)
  pro = problems[rd]
  url = "http://#{pro.contest}.contest.atcoder.jp/tasks/#{pro.id}"
  cont_id = pro.contest
  cont_name = ""
  for cont in window.contests
    if cont.id is cont_id
      cont_name = cont.name
      break
  nstr = "<a href=\"#{url}\" target=\"_blank\">#{cont_name}「#{pro.name}」(#{pro.solvers} solved)</a>"
  bef = $("#result").html().split("<br>")
  if bef.length > 30
    bef.pop()
    bef.pop()
    bef.push("")
  bef.unshift(nstr)
  $("#result").html(bef.join("<br>"))