function get_achievement(points){
  let sum =0;
  for(let i=0;i<number; i++){
    sum+= points[i];}
}
if(sum>=number*100*0.8){
  return"A"
}else if (sum>=number*100*0.6){
  return"B"
}else if (sum>=number*100*0.4){
  return"C"
}else {
  return "D"
}






function judgement(x,y,z){
  let achievement = "get_achievement"
  let pass_or_failure =  "get_pass_or_failure

let points = [60,100,80,80,70,80]


function get_pass_or_failure(points){
  console.log(points.length);
let number = points.length;
let sum = 0;
for (i = 0; i < 6; i++){
  sum = sum + points[i]
}
};

let number = points.length;
let judge = "合格"
for(let i=0; i<number; i++){
  if(points[i] < 60){
    judge = "不合格"
    break;
  }
}



  return `あなたの成績は${achievement}です。${pass_or_failure}です!`;
}
