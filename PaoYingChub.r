play_game <- function(){
  num_signs <- c(1, 2, 3)
  move_name <- c("rock", "paper", "scissors")
  
  df_move <- data.frame(num_signs, move_name)
  
  win <- 0
  lose <- 0
  draw <- 0
  
  print("Welcome to Pao Ying Chub game!")
  print("Let's start")
  print("If you want to exit game type 'q'")
  
  print(df_move[ , 1:2], row.names = FALSE)
  
  while (TRUE) {
    print("Please choose: 1| 2| 3 or 'q' ")
    user_sign <- readline("")
    bot_sign <- sample(num_signs, 1)


    if(user_sign == "q"| user_sign == "Q" ) {
    print(paste("Win: ", win, "times"))
    print(paste("draw: ", draw, "times"))
    print(paste("Lose: ", lose, "times"))
    print("---I'll miss you! See you next time!---")
    break
    } 
  
    else if(user_sign == 1 | tolower(user_sign) == "rock") {
    user <- 1
    ans <- result(user, bot_sign)
      if(ans == 0) 
        draw <- draw + 1
      else if(ans == 1) 
        win <- win + 1
      else if(ans == 2)
        lose <- lose + 1
    } 
    
    else if(user_sign == 2 | tolower(user_sign) == "paper" ){
    user <- 2
    ans <- result(user, bot_sign)
      if(ans == 0) 
        draw <- draw + 1
      else if(ans == 1) 
        win <- win + 1
      else if(ans == 2) 
        lose <- lose + 1
    }
    
    else if(user_sign == 3 |tolower(user_sign) == "scissors"){
    user <- 3
    ans <- result(user, bot_sign)
      if(ans == 0) draw <- draw + 1
      else if(ans == 1) win <- win + 1
      else if(ans == 2) lose <- lose + 1
    }
    else{
      print("Wrong input!!! Please choose again ")
    }
  }
} 
    
  
  
result <- function(val1, val2){
  num_signs <- c(1, 2, 3)
  move_name <- c("Rock", "Paper", "Scissors")
  df_move <- data.frame(num_signs, move_name)
  print(paste("User: ", df_move[df_move$num_signs == val1, 2]))
  print(paste("Bot: ", df_move[df_move$num_signs == val2, 2]))

  val <- val1 - val2
  #[0] draw, [1] win, [2] lose
  if(val == 0){
    print("--- Draw ---")
    return(0)
  }
  else if(val == -2 | val == 1){
    print("--- YOU WIN ---")
    return(1)
  }
  else{
    print("--- YOU LOSS ---")
    return(2)
  }
} 
  
play_game()
