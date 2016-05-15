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
  $("#result").html("<a href=\"#{url}\" target=\"_blank\">#{cont_name}「#{pro.name}」(#{pro.solvers} solved)</a>")