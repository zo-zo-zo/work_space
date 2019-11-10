function add(i,j){
  let sum = i+j
  if(sum < 50 ){
    return "50より小さい";
  } else {
    return "50以上です";
  }
}

console.log(add(10,20));
