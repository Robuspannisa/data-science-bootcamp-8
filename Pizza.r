chatbot <- function() {
  menu_id <- c(1, 2, 3)
  pan_top <- c("Parmaham","sausage","mushroom")
  price_top <- c(800, 500 , 300)
  topping <- data.frame(menu_id, pan_top, price_top)  

  print ("Hello! Welcome to ZANOTTI Pizza")
  print ("What would you like to order for topping?")

  print(topping[ , ])
  order_id <- as.numeric(readline("Please choose number"))
  
  while(!order_id %in% menu_id) {
    print("Sorry! please select toppings number from menu")
    order_id <- as.numeric(readline("Please choose number"))
  }
  
  print("Do you want to upsize to L (+200฿)") 
  size <- toupper(readline("Please select Yes/No (Y/N)"))
  
  while(!size %in% c("Y", "N")){
    print("Sorry! Please select Yes/No (Y/N) ")
    size <- toupper(readline("Try again "))}
    
  if (size == "Y"){
    price <- topping$price_top[order_id == topping$menu_id]
    print("your order:")
    print(paste("menu toppings number", order_id, ":", pan_top[order_id == topping$menu_id]))
    print(price+200)
    
    
  } else if (size =="N") {
    print("your order:")
    print(paste("menu toppings number", order_id, ":", pan_top[order_id == topping$menu_id]))
    price <- topping$price_top[order_id == topping$menu_id]
    print(price)
  } else {
    
    size <- toupper(readline("Please select Yes/No (Y/N)"))
  }
  
}
