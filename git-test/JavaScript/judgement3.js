  function git_achievement(x,y,z){
    let sum = x+y+z ;
    if (sum >= 250){
      return "A"
    }else if(sum >= 200){
      return "B"
    }else if(sum >= 100){
      return "C"
    }else{
      return "D"
    }
  }
  console.log(git_achievement(60,100,40))

  function get_pass_or_failure(x,y,z){
  if("x>=60&&y>=60&&z>=60"){
    return "合格";
  }
  else{
    return "不合格";
  }
  }
  console.log(get_pass_or_failure(60,100,40));

function judgement(get_achievement,get_pass_or_failure){
let achievement = "get_achievement";
let get_pass_or_failure = "get_pass_or_failure";


return `あなたの成績は${get_achievement}です。${get_pass_or_failure}です!``;
}
