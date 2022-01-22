;characters list
Var1 := "Astra"
Var2 := "Breach"
Var3 := "Brimstone" 
Var4 := "Chamber"
Var5 := "Cypher"
Var6 := "Jett"
Var7 := "Kay/o"
Var8 := "Killjoy"
Var9 := "Omen"
Var10 := "Phoenix"
Var11 := "Raze"
Var12 := "Reyna"
Var13 := "Sage"
Var14 := "Skye"
Var15 := "Sova"
Var16 := "Viper"
Var17 := "Yoru"
Var18 := "Neon"

Shift & q:: Suspend ; pause script

q:: ;trigger the script on valorant chat
  Sortear("n-->: ")
  Sortear("d-->: ")
Return

Sortear(phrase) {
  ;Send {enter} ;only in game
  Sleep 300
  Random, OutputVar , 1, 17
  Sendraw %phrase%
  Sendraw % Var%OutputVar%
  Sleep 300
  Send {enter}
  Sleep 300
  return
}