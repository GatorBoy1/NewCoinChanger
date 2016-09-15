#coin changer kata
#write a function that takes a number of cents, and that returns a hash containing the least number of coins needed to generate the value of the cents
# eg if you have 11 cents you should retrun {:dime => 1, penny => 1}; if you have 31 cents you should return {:quarter=> 1, nickel =>, :penny=.1}.
#build uo your coin changer using tests. commit to git after every test.
# Next steps:
# 1) see if you can remove the hard coded numbers from the logic of the code (can you set variable names at the top of the function to certain values that you can use in their place)?
# 2) make the penny if statement exactly as the others
# 3) see if you can find a way to only have a single if statement (think iteration)Nice work!

def coin_changer(money)
    amount = 0
    coins ={dollar_pc:0, fifty_cnt_pc:0, quarter:0, dime:0, nickle:0, penny:0}
    if money.between?(100,999)
        amount = money/100
        coins[:dollar_pc] = amount
        money = money - (amount * 100)
        amount = 0
  	end


    if money.between?(50,99)
    	amount = money / 50
    	coins[:fifty_cnt_pc] = amount
    	money = money - (amount * 50)
  	end


    coins
end