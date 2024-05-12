using GameZero
using Images


HEIGHT = 650 #sets game height to 650
WIDTH = 650 #sets game width to 650
#sets background color to black
bgColor = colorant"white"
BACKGROUND = bgColor
nextFrameUpdate = false
nextFrameDraw = false
t1 = time()
startTime = true
musicPlay = true
onKeyDown = false
onMouseDown = false
r1 = Rect(0,0, 650,650)
frameNum =  0 #keeps track of which frame we are using
letters = collect(97:122)
wins = 4

#Declaring every actor or shape that will be used during the game:
background = Rect(0,0,650,650)


#actors/shape for first frame
logo1 = Actor("keane_logo_1.png")
logo1.pos = (40,0)

#actors/shape for second frame
unresized_logo2 = load("C:\\Users\\adela\\Dropbox\\MyJuliaFiles\\CompSciProject\\images\\keane_image_2.jpg")
resized_logo2 = imresize(unresized_logo2, (650,650))
save("C:\\Users\\adela\\Dropbox\\MyJuliaFiles\\CompSciProject\\images\\keane_image_2.jpg", resized_logo2)

logo2 = Actor("keane_image_2.jpg")
logo2.pos =(0,0)

#actors/shapes fo the third frame
logo3 = Actor("keane_logo_3.png")
logo3.pos= (135,210)

#actors/shapes for fourth frame
unresized_logo4 = load("C:\\Users\\adela\\Dropbox\\MyJuliaFiles\\CompSciProject\\images\\keane_logo_4.png")
resized_logo4 = imresize(unresized_logo4, (650,650))
save("C:\\Users\\adela\\Dropbox\\MyJuliaFiles\\CompSciProject\\images\\keane_logo_4.png", resized_logo4)
logo4 = Actor("keane_logo_4.png")
logo4.pos =(0,0)

#actors/shapes for fifth frame
unresized_logo5 = load("C:\\Users\\adela\\Dropbox\\MyJuliaFiles\\CompSciProject\\images\\keane__logo_5.jpg")
resized_logo5 = imresize(unresized_logo5, (650,650))
save("C:\\Users\\adela\\Dropbox\\MyJuliaFiles\\CompSciProject\\images\\keane__logo_5.jpg", resized_logo5)
logo5 = Actor("keane__logo_5.jpg")
logo5.pos =(0,0)

#actors/shapes for sixth frame
unresized_logo6 = load("C:\\Users\\adela\\Dropbox\\MyJuliaFiles\\CompSciProject\\images\\keane_logo_6.jpg")
resized_logo6 = imresize(unresized_logo6, (650,650))
save("C:\\Users\\adela\\Dropbox\\MyJuliaFiles\\CompSciProject\\images\\keane_logo_6.jpg", resized_logo6)
logo6 = Actor("keane_logo_6.jpg")
logo6.pos =(0,0)

#actors/shapes for seventh frame
unresized_logo7 = load("C:\\Users\\adela\\Dropbox\\MyJuliaFiles\\CompSciProject\\images\\keane_logo_7.jpg")
resized_logo7 = imresize(unresized_logo7, (650,650))
save("C:\\Users\\adela\\Dropbox\\MyJuliaFiles\\CompSciProject\\images\\keane_logo_7.jpg", resized_logo7)
logo7 = Actor("keane_logo_7.jpg")
logo7.pos =(0,0)

#actors/shapes for eighth frame
unresized_logo8 = load("C:\\Users\\adela\\Dropbox\\MyJuliaFiles\\CompSciProject\\images\\keane_logo_8.jpg")
resized_logo8 = imresize(unresized_logo8, (650,650))
save("C:\\Users\\adela\\Dropbox\\MyJuliaFiles\\CompSciProject\\images\\keane_logo_8.jpg", resized_logo8)
logo8 = Actor("keane_logo_8.jpg")
logo8.pos =(0,0)

#actors/shapes for ninth frame
unresized_logo9 = load("C:\\Users\\adela\\Dropbox\\MyJuliaFiles\\CompSciProject\\images\\keane_logo_9.jpg")
resized_logo9 = imresize(unresized_logo9, (650,650))
save("C:\\Users\\adela\\Dropbox\\MyJuliaFiles\\CompSciProject\\images\\keane_logo_9.jpg", resized_logo9)
logo9 = Actor("keane_logo_9.jpg")
logo9.pos =(0,0)

#actors/shapes for ninth frame
unresized_logo10 = load("C:\\Users\\adela\\Dropbox\\MyJuliaFiles\\CompSciProject\\images\\keane_image_10.jpg")
resized_logo10 = imresize(unresized_logo10, (650,650))
save("C:\\Users\\adela\\Dropbox\\MyJuliaFiles\\CompSciProject\\images\\keane_image_10.jpg", resized_logo10)
logo10 = Actor("keane_image_10.jpg")
logo10.pos =(0,0)

#actors/shapes for tenth frame(start game frame)
unresized_logo11 = load("C:\\Users\\adela\\Dropbox\\MyJuliaFiles\\CompSciProject\\images\\keane_logo_11.jpg")
resized_logo11 = imresize(unresized_logo11, (650,650))
save("C:\\Users\\adela\\Dropbox\\MyJuliaFiles\\CompSciProject\\images\\keane_logo_11.jpg", resized_logo11)
logo11 = Actor("keane_logo_11.jpg")
logo11.pos =(0,0)

#actors/shapes for the eleventh frame(start game frame)
r1 = Rect(0,0, 650,650)
unresized_tree = load("C:\\Users\\adela\\Dropbox\\MyJuliaFiles\\CompSciProject\\images\\pixel_tree2.png")
resized_tree = imresize(unresized_tree, (150,150))
save("C:\\Users\\adela\\Dropbox\\MyJuliaFiles\\CompSciProject\\images\\pixel_tree2.png", resized_tree)
pixelTree = Actor("pixel_tree2.png")
pixelTree.pos = (240,200)
frame11Text1 = TextActor("Start Game!","pixelfont";font_size = 50)
frame11Text1.pos = (185,375)
frame11Text2 = TextActor("Press any letter to start!", "manuscript_regular"; font_size = 20, color = Int[0,0,0,225])
frame11Text2.pos = (0, 630)
letters = collect(97:122)

#actors/shapes for twelth frame (game rules frame)
frame12Text1 = TextActor("       Game Rules","manuscript_regular"; font_size = 40, color = Int[0,0,0,0])
frame12Text1.pos = (130, 40)
frame12Text2 = TextActor("- Goal: escape from the world of Keane ", "manuscript_regular" ;font_size = 30, color = Int[0,0,0,0])

frame12Text3 = TextActor("- You will solve a series of four challenges", "manuscript_regular" ;font_size = 30, color = Int[0,0,0,0])

frame12Text4 = TextActor("- If you solve atleast three out of the four, you", "manuscript_regular" ;font_size = 30, color = Int[0,0,0,0])
frame12Text5 = TextActor(" are free!", "manuscript_regular"; font_size = 30, color = Int[0,0,0,0])
frame12Text6 = TextActor("- If not, then you will have to listen \"Somewhere", "manuscript_regular" ;font_size = 30, color = Int[0,0,0,0])
frame12Text7 = TextActor(" Only You Know\" for the rest of your life ","manuscript_regular" ;font_size = 30, color = Int[0,0,0,0])
frame12Text8 = TextActor(" Each challenge will last the duration of one song", "manuscript_regular"; font_size = 30, color = Int[0,0,0,0])

frame12Text2.pos = (50, 90)
frame12Text3.pos = (50, 130)
frame12Text4.pos= (50, 170)
frame12Text5.pos = (55, 210)
frame12Text6.pos = (50, 250)
frame12Text7.pos = (55, 290)
frame12Text8.pos = (50, 330)

#actors/shapes for fourteenth frame
autumnTree = Actor("autumn_tree.png")
autumnTree.pos = (-230,30)
frame13Text1 = TextActor("Challenge 1", "pixelfont";  font_size = 60, color = Int[255, 168, 0, 0])
frame13Text1.pos = (160, 30)
frame13Text2 = TextActor("- You will have 1 minute and thirty seconds to", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame13Text2.pos= (220, 95)
frame13Text3 = TextActor("read a wikipedia article about Keane", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame13Text3.pos = (250, 125)
frame13Text4 = TextActor("- You will then have to answer 4 questions", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame13Text4.pos = (260, 155)
frame13Text5 = TextActor("about what you read in the same amount", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame13Text5.pos = (280, 185)
frame13Text8 = TextActor(" of time", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame13Text8.pos = (300,215)
frame13Text6 = TextActor("- If you answer three out of four the,", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame13Text6.pos = (300, 245)
frame13Text7 = TextActor(" then you get a point for the challenge!", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame13Text7.pos = (320, 275)
frame13Text9 = TextActor("Click any letter to go on!", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame13Text9.pos = (420, 620)



#actors/shapes for fifteenth frame
wikiPage = Actor("keane_wiki.png")
startTime14 = time()
time14 = TextActor("Elapsed Time: 90 seconds", "manuscript_regular"; font_size = 20, color = Int[0,0,0,225])
time14.pos = (0, 500)



#actors/shapes for fifteenth frame
wikiPage = Actor("keane_wiki.png")
startTime14 = time()
time14 = TextActor("Elapsed Time: 90 seconds", "manuscript_regular"; font_size = 20, color = Int[0,0,0,225])
time14.pos = (0, 500)

# shapes/colors for the sixteenth frame
frame15Text1 = TextActor("You will have 90 seconds to answers 6 multiple choice questions", "manuscript_regular"; font_size = 23, color = Int[0,0,0,0])
frame15Text2 = TextActor("Click on the letters to select your answer", "manuscript_regular"; font_size = 23, color = Int[0,0,0,0])
frame15Text3 = TextActor("This message will disappear soon", "manuscript_regular"; font_size = 23, color = Int[0,0,0,0])
frame15Text2.pos = (5,280)
frame15Text1.pos = (5, 250)
startTime15 = time()
frame15Text3.pos = (5, 310)

# actors/shapes for seventeenth frame
startTime16 = time()
time16 = TextActor("Elapsed Time: 90 seconds", "manuscript_regular"; font_size = 20, color = Int[0,0,0,225])
time16.pos = (0, 625) 

frame16Text1 = TextActor("What is Keane's debut album?", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text1.pos = (5,5)
frame16Text2 = TextActor("A)","manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text2.pos = (5, 30)
frame16Text3 =  TextActor("Perfect Symmetry","manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text3.pos = (23,30)
frame16Text4 = TextActor("B)","manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text4.pos = (200,30)
frame16Text5 = TextActor("Hopes and Fears","manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text5.pos = (218,30)
frame16Text6 = TextActor("C)","manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text6.pos = (370,30)
frame16Text7 = TextActor("Under the Iron Sea","manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text7.pos = (387,30)
sq1A = Rect(5,30,18,18)
sq1B = Rect(200,30,18,18)
sq1C = Rect(370,30,18,18)
sq1Adraw = false
sq1Bdraw = false
sq1Cdraw = false

frame16Text8 = TextActor("Which member is the band's lead singer?", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text8.pos = (5,70)
frame16Text9 = TextActor("A)","manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text9.pos = (5, 95)
frame16Text10 =  TextActor("Tim Rice-Oxley","manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text10.pos = (23,95)
frame16Text11 = TextActor("B)","manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text11.pos = (200,95)
frame16Text12 = TextActor("Tom Chaplin","manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text12.pos = (218,95)
frame16Text13 = TextActor("C)","manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text13.pos = (370,95)
frame16Text14 = TextActor("Richard Hughes","manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text14.pos = (387,95)
sq2A = Rect(5,95,18,18)
sq2B = Rect(200,95,18,18)
sq2C = Rect(370,95,18,18)
sq2Adraw = false
sq2Bdraw = false
sq2Cdraw = false

frame16Text15 = TextActor("What is the album Cause and Effect about? ", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text15.pos = (5,135)
frame16Text16 = TextActor("A)","manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text16.pos = (5, 160)
frame16Text17 =  TextActor("Karma","manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text17.pos = (23,160)
frame16Text18 = TextActor("B)","manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text18.pos = (200,160)
frame16Text19 = TextActor("Dominic Scott","manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text19.pos = (218,160)
frame16Text20 = TextActor("C)","manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text20.pos = (370,160)
frame16Text21 = TextActor("Tim's Divorce","manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text21.pos = (387,160)
sq3A = Rect(5,160,18,18)
sq3B = Rect(200,160,18,18)
sq3C = Rect(370,160,18,18)

sq3Adraw = false
sq3Bdraw = false
sq3Cdraw = false

frame16Text22 = TextActor("What lead instrument do they usually use in their songs? ", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text22.pos = (5,200)
frame16Text23 = TextActor("A)","manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text23.pos = (5, 225)
frame16Text24 =  TextActor("Guitar","manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text24.pos = (23,225)
frame16Text25 = TextActor("B)","manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text25.pos = (200,225)
frame16Text26 = TextActor("Drum","manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text26.pos = (218,225)
frame16Text27 = TextActor("C)","manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text27.pos = (370,225)
frame16Text28 = TextActor("Keyboards","manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame16Text28.pos = (387,225)
sq4A = Rect(5,225,18,18)
sq4B = Rect(200,225,18,18)
sq4C = Rect(370,225,18,18)
sq4Adraw = false
sq4Bdraw = false
sq4Cdraw = false
invisSq = Rect(50, 50, 20,20)

# shapes/actors for seventeenth frame
frame17Text1 = TextActor(" aaa ", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame17Text1.pos = (5,275)
frame17Text2 = TextActor("aaa", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame17Text2.pos = (5,300)
frame17Text3 = TextActor("Click any letter to go on!", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame17Text3.pos = (420, 620)
numCorrect = 0 

#actors/shapes for eighteenth frame
autumnTree = Actor("autumn_tree.png")
autumnTree.pos = (-230,30)
frame18Text1 = TextActor("Challenge 2", "pixelfont";  font_size = 60, color = Int[255, 168, 0, 0])
frame18Text1.pos = (160, 30)
frame18Text2 = TextActor("- You will have 5 minutes and 12 seconds to", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame18Text2.pos= (220, 95)
frame18Text3 = TextActor("solve a math problem", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame18Text3.pos = (250, 125)
frame18Text4 = TextActor("- You will need a calculator probably", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame18Text4.pos = (260, 155)
frame18Text5 = TextActor(" - Type your answer on the keyboard", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame18Text5.pos = (280, 185)
frame18Text6 = TextActor("- It will be an integer", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame18Text6.pos = (300, 215)
frame18Text8 = TextActor("Click any letter to go on!", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame18Text8.pos = (420, 620)


# actors/shapes for ninetheenth frame
frame19Text1 = TextActor("Keane is going on tour! They want to play the same 6 songs at each of their", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame19Text1.pos = (5,5)
frame19Text2 = TextActor("concerts. However, they want to play the songs in a difference order each", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame19Text2.pos = (5, 30)
frame19Text3 = TextActor("time. If they want to play as many concerts as possible while following this", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame19Text3.pos = (5, 55)
frame19Text4 = TextActor("rule, how many concerts can they play?", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame19Text4.pos = (5, 80)
frame19Text5 = TextActor("Answer: ", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame19Text5.pos = (5, 150)
str= " "
frame19Text6 = TextActor(str, "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame19Text6.pos = (77, 151)
startTime19 = time()
time19 = TextActor("Time left: 512 seconds", "manuscript_regular"; font_size = 20, color = Int[0,0,0,225])
time19.pos = (5,625)
keyToNum = Dict(8=>"backspace")
l = 48
for i in 0:9
    global l
    keyToNum[l] = string(i)
    l+=1
end

answ = " "

# actors/shapes for twentieth frame
frame20Text2 = TextActor("Click any letter to go on!", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame20Text2.pos = (420, 620)

#actors/shapes for twentyfirst frame
autumnTree = Actor("autumn_tree.png")
autumnTree.pos = (-230,30)
frame21Text1 = TextActor("Challenge 3", "pixelfont";  font_size = 60, color = Int[255, 168, 0, 0])
frame21Text1.pos = (160, 30)
frame21Text2 = TextActor("- You will have 3 minutes and 38 seconds to", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame21Text2.pos= (220, 95)
frame21Text3 = TextActor("solve a wordle related to this game's topic", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame21Text3.pos = (250, 125)
frame21Text4 = TextActor("- All normal wordle rules apply", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame21Text4.pos = (260, 155)
frame21Text5 = TextActor("except the program won't tell if your ", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame21Text5.pos = (280, 185)
frame21Text8 = TextActor(" guesses are actually words in the ", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame21Text8.pos = (300,215)
frame21Text6 = TextActor("    dictionary", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame21Text6.pos = (300, 245)
frame21Text7 = TextActor(" - Good Luck!", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame21Text7.pos = (320, 275)
frame21Text9 = TextActor("Click any letter to go on!", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame21Text9.pos = (420, 620)




#shapes and actors for twenty second frame
wordleGrid = []
wordleGridXpos = []
wordleGridYpos = []
wordleGridColors = []
wordleGridFill = []
wordleGridLetters = []
    # shapes/colors for twenty-first frame
    x = 0
    y = 150
    for i in 1:6
        global x = 185
        global y+=40
        for j in 1:5
          global x+=40
          push!(wordleGridXpos, x+8)
          push!(wordleGridYpos,y+2)
          push!(wordleGrid, Rect(x,y,35, 35))
          push!(wordleGridColors, colorant"black")
          push!(wordleGridFill, false)
          push!(wordleGridLetters, TextActor(" ", "manuscript_regular"; font_size = 35, color = Int[0,0,0,0]))
        end
    end
    for i in 1:30
        wordleGridLetters[i].pos = (wordleGridXpos[i], wordleGridYpos[i])
    end
n = 0
nmin = 0
nmax = 4
m = 97
alphabet = Dict()
for n in 'A':'Z'
    alphabet[m] = n
    global m = m+1
end
guess = ""
correctWord = "ALBUM"
correctWordLetters = ('A','L','B', 'U', 'M')
guessLetters = []
win = false
startTime22 = time()
time22 = TextActor("Time left: 218 seconds", "manuscript_regular"; font_size = 20, color = Int[0,0,0,225])
time22.pos = (5,625)

# actors/shapes for twenty third frame
frame23Text1 = TextActor("Click any letter to go on!", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame23Text1.pos = (420, 620)

# shapes and actors for twenty-fourth frame
autumnTree = Actor("autumn_tree.png")
autumnTree.pos = (-230,30)
frame24Text1 = TextActor("Challenge 4", "pixelfont";  font_size = 60, color = Int[255, 168, 0, 0])
frame24Text1.pos = (160, 30)
frame24Text2 = TextActor("- You will have to play snake game for 5 minutes", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame24Text2.pos= (220, 95)
frame24Text3 = TextActor("and 2 seconds", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame24Text3.pos = (250, 125)
frame24Text4 = TextActor("- You have 3 lives", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame24Text4.pos = (260, 155)
frame24Text5 = TextActor("- And you must collect 50 apples total to", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame24Text5.pos = (280, 185)
frame24Text8 = TextActor(" win the challenge", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame24Text8.pos = (300,215)
frame24Text6 = TextActor("      - The snake will start moving to the", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame24Text6.pos = (300, 245)
frame24Text7 = TextActor("         right ", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame24Text7.pos = (320, 275)
frame24Text9 = TextActor("Click any letter to go on!", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame24Text9.pos = (420, 620)

#shapes and actors for twenty-fifth frame
function createNewApple()
    global apple
    posx = s_size * round(Int, rand(0:625) / s_size)
    posy = s_size * round(Int, rand(50:625) / s_size)
    apple.x = posx
    apple.y = posy
end

sgame_height = 600
sgame_width = 650
s_pos_x = 325
s_pos_y = 325
s_size = 25
s_body = []
speed = 0.18
snake = []
push!(snake,Rect(s_pos_x, s_pos_y, s_size, s_size))
apple = Rect(0,0,s_size, s_size)
createNewApple()
lives = 3
apples = 0
sgame_background = Rect(0,650-sgame_height, sgame_width, sgame_height)
vy = 0
vx = s_size

liveText = TextActor("Lives = $lives", "manuscript_regular"; font_size = 25, color = Int[0,0,0,0])
liveText.pos = (5,5)
appleText = TextActor("Apples = $apples", "manuscript_regular"; font_size = 25, color = Int[0,0,0,0])
appleText.pos = (100,5)
startTime25 = time()
time25 = TextActor("Time Left: 302", "manuscript_regular"; font_size = 20, color = Int[0,0,0,225])
time25.pos = (600,5)
appleCollision = false


# shapes and actors for twety-sixth frame
frame26Text1 = TextActor("Click any letter to go on!", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
frame26Text1.pos = (420, 620)
frame26Text2 = TextActor("You won this challenge!", "manuscript_regular"; font_size = 40, color = Int[0,0,0,0])
frame26Text2.pos = (5,300)

# shapes and actors for twenty-seventh frame
startTime27 = time()
frame27Text1 = TextActor("  ", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])

function frameDraw0()
    global musicPlay
    draw(logo1)
    if musicPlay == true
        play_music("everybodyschanging")
        println("1")
        musicPlay = false
    end
end

function frameUpdate0()
    global t1, startTime, frameNum
    if startTime == false
        t1 = time()
        startTime = true
    end
    if time()-t1 > 1
        startTime = false
        frameNum = frameNum +1
    end 
end



function frameDraw1()
    draw(logo2)
end




function frameUpdate1()
    global t1, startTime, frameNum
    if startTime == false
        t1 = time()
        startTime = true
    end
    if time()-t1 > 0.9
        startTime = false
        frameNum = frameNum +1
    end 
end

function frameDraw2()
    draw(logo3)
end

function frameUpdate2()
    global t1, startTime, frameNum
    if startTime == false
        t1 = time()
        startTime = true
    end
    if time()-t1 > 0.8
        startTime = false
        frameNum = frameNum +1
    end 
end

function frameDraw3()
    draw(logo4)
end

function frameUpdate3()
    global t1, startTime, frameNum
    if startTime == false
        t1 = time()
        startTime = true
    end
    if time()-t1 > 0.7
        startTime = false
        frameNum = frameNum +1
    end 
end

function frameDraw4()
    
    draw(logo5)
end

function frameUpdate4()
    global t1, startTime, frameNum
    if startTime == false
        t1 = time()
        startTime = true
    end
    if time()-t1 > 0.6
        startTime = false
        frameNum = frameNum +1
    end 
end

function frameDraw5()
    draw(logo6)
end

function frameUpdate5()
    global t1, startTime, frameNum
    if startTime == false
        t1 = time()
        startTime = true
    end
    if time()-t1 > 0.5
        startTime = false
        frameNum = frameNum +1
    end 
end

function frameDraw6()
    draw(logo7)
end

function frameUpdate6()
    global t1, startTime, frameNum
    if startTime == false
        t1 = time()
        startTime = true
    end
    if time()-t1 > 0.4
        startTime = false
        frameNum = frameNum +1
    end 
end

function frameDraw7()
    draw(logo8)
end

function frameUpdate7()
    global t1, startTime, frameNum
    if startTime == false
        t1 = time()
        startTime = true
    end
    if time()-t1 > 0.3
        startTime = false
        frameNum = frameNum +1
    end 
end

function frameDraw8()
    draw(logo9)
end

function frameUpdate8()
    global t1, startTime, frameNum
    if startTime == false
        t1 = time()
        startTime = true
    end
    if time()-t1 > 0.2
        startTime = false
        frameNum = frameNum +1
    end 
end

function frameDraw9()
    draw(logo10)
end

function frameUpdate9()
    global t1, startTime, frameNum
    if startTime == false
        t1 = time()
        startTime = true
    end
    if time()-t1 > 0.1
        startTime = false
        frameNum = frameNum +1
    end 
end

function frameDraw10()
    draw(logo11)
end

function frameUpdate10()
    global t1, startTime, frameNum
    if startTime == false
        t1 = time()
        startTime = true
    end
    if time()-t1 > 0.1
        startTime = false
        frameNum = frameNum +1
    end 
end

function frameDraw11()
   draw(r1, colorant"#90EE90", fill = true)
   draw(pixelTree)
   draw(frame11Text1)
   draw(frame11Text2)
end

function frameUpdate11()
    global onKeyDown
    onKeyDown = true
end

function onKeyDown11(key)
    global frameNum, onKeyDown
    println(key)
    if key in letters
        frameNum = frameNum +1
    end
end

function frameDraw12()
  draw(r1, colorant"#90EE90", fill = true)
  draw(frame12Text1)
  draw(frame12Text2)
  draw(frame12Text3)
  draw(frame12Text4)
  draw(frame12Text5)
  draw(frame12Text6)
  draw(frame12Text7)
  draw(frame11Text2)
  draw(frame12Text8)
end

function frameUpdate12()
end

function onKeyDown12(key)
    global frameNum
    println(key)
    if key in letters
        frameNum = frameNum +1
    end
end

function onKeyDown13(key)
    global frameNum, startTime,musicPlay, onKeyDown
    println(key)
    if key in letters
        musicPlay = true
        startTime = true
        onKeyDown = false
        frameNum = frameNum+1
    end
end

function frameUpdate13()
end

function frameDraw13()
    draw(r1, colorant"#90EE90", fill = true)
    draw(frame13Text1)
    draw(autumnTree)
    draw(frame13Text2)
    draw(frame13Text3)
    draw(frame13Text4)
    draw(frame13Text5)
    draw(frame13Text6)
    draw(frame13Text7)
    draw(frame13Text8)
    draw(frame13Text9)
end

function frameDraw14()
    draw(wikiPage)
    draw(time14)
end

function frameUpdate14()
    global musicPlay, startTime, startTime14, time14, frameNum
    
    if musicPlay == true
        play_music("silencedbythenight")
        musicPlay = false
    end
    if startTime == true
        startTime14 = time()
        startTime = false
    end
    elapsedTime = round(Int64, 90 -(time() - startTime14))
    time14 = TextActor("Time Left $elapsedTime seconds", "manuscript_regular"; font_size = 20, color = Int[0,0,0,225])
    time14.pos = (5,625)
    if elapsedTime == 0
        startTime = true
        frameNum = frameNum + 1
    end
end



function frameUpdate15()
    global startTime, startTime15, frameNum, onMouseDown
    if startTime == true
        startTime15 = time()
        startTime = false
    end
    if time() - startTime15 >16
        frameNum = frameNum + 1
        onMouseDown = true
        startTime = true
    end
end

function frameDraw15()
    draw(frame15Text1)
    draw(frame15Text2)
    draw(frame15Text3)
end




function frameUpdate16()
    global startTime, startTime16, time16, onMouseDown, frameNum, onKeyDown
    global sq1Adraw, sq1Bdraw, sq1Cdraw, sq2Adraw, sq2Bdraw, sq2Cdraw, sq3Adraw, sq3Bdraw, sq3Cdraw, sq4Adraw, sq4Bdraw, sq4Cdraw
    if collide(invisSq, sq1A)
        sq1Adraw = true
        sq1Bdraw = false
        sq1Cdraw = false
    elseif collide(invisSq, sq1B)
        sq1Adraw = false
        sq1Bdraw = true
        sq1Cdraw = false
    elseif collide(invisSq, sq1C)
        sq1Adraw = false
        sq1Bdraw = false
        sq1Cdraw = true
    elseif collide(invisSq, sq2A)
        sq2Adraw = true
        sq2Bdraw = false
        sq2Cdraw = false
    elseif collide(invisSq, sq2B)
        sq2Adraw = false
        sq2Bdraw = true
        sq2Cdraw = false
    elseif collide(invisSq, sq2C)
        sq2Adraw = false
        sq2Bdraw = false
        sq2Cdraw = true
    elseif collide(invisSq, sq3A)
        sq3Adraw = true
        sq3Bdraw = false
        sq3Cdraw = false
    elseif collide(invisSq, sq3B)
        sq3Adraw = false
        sq3Bdraw = true
        sq3Cdraw = false
    elseif collide(invisSq, sq3C)
        sq3Adraw = false
        sq3Bdraw = false
        sq3Cdraw = true
    elseif collide(invisSq, sq4A)
        sq4Adraw = true
        sq4Bdraw = false
        sq4Cdraw = false
    elseif collide(invisSq, sq4B)
        sq4Adraw = false
        sq4Bdraw = true
        sq4Cdraw = false
    elseif collide(invisSq, sq4C)
        sq4Adraw = false
        sq4Bdraw = false
        sq4Cdraw = true 
    end

    
    if startTime == true
        startTime16 = time()
        startTime = false
    end
    elapsedTime = round(Int64, 90 -(time() - startTime16))
    time16 = TextActor("Elapsed Time: $elapsedTime seconds", "manuscript_regular"; font_size = 20, color = Int[0,0,0,225])
    time16.pos = (5,625)
    if elapsedTime == 0
        startTime = true
        onMouseDown = false
        onKeyDown = true
        frameNum = frameNum + 1
        
    end
end

function frameDraw16()
    draw(time16)
    draw(frame16Text1)
    draw(frame16Text2)
    draw(frame16Text3)
    draw(frame16Text4)
    draw(frame16Text5)
    draw(frame16Text1)
    draw(frame16Text6)
    draw(frame16Text7)
    draw(frame16Text8)
    draw(frame16Text9)
    draw(frame16Text10)
    draw(frame16Text11)
    draw(frame16Text12)
    draw(frame16Text13)
    draw(frame16Text14)
    draw(frame16Text15)
    draw(frame16Text16)
    draw(frame16Text17)
    draw(frame16Text18)
    draw(frame16Text19)
    draw(frame16Text20)
    draw(frame16Text21)
    draw(frame16Text22)
    draw(frame16Text23)
    draw(frame16Text24)
    draw(frame16Text25)
    draw(frame16Text26)
    draw(frame16Text27)
    draw(frame16Text28)

    if sq1Adraw == true
        draw(sq1A)
    elseif sq1Bdraw == true
        draw(sq1B)
    elseif sq1Cdraw == true
        draw(sq1C)
    end
    if sq2Adraw == true
        draw(sq2A)
    elseif sq2Bdraw == true
        draw(sq2B)
    elseif sq2Cdraw == true
        draw(sq2C)
    end
    if sq3Adraw == true
        draw(sq3A)
    elseif sq3Bdraw == true
        draw(sq3B)
    elseif sq3Cdraw == true
        draw(sq3C)
    end
    if sq4Adraw == true
        draw(sq4A)
    elseif sq4Bdraw == true
        draw(sq4B)
    elseif sq4Cdraw == true
        draw(sq4C)
    end
end

function on_mouse_down16(g, p, b)
    print(p)
    global invisSq
    invisSq.x = p[1]
    invisSq.y = p[2]
end



function frameUpdate17()
    global startTime, sq1Adraw, sq2Adraw, sq3Cdraw, sq4Cdraw, numCorrect, frame17Text2, frame17Text1,wins
    if startTime == true
        if sq1Bdraw == true
            numCorrect+=1
        end
        if sq2Bdraw == true
            numCorrect+=1
        end
        if sq3Cdraw == true
            numCorrect+=1
        end
        if sq4Cdraw == true
            numCorrect+=1
        end
        if numCorrect >=3
            frame17Text1 = TextActor("You got $numCorrect out of 4 ","manuscript_regular"; font_size = 40, color = Int[0,0,0,0])
            frame17Text2 = TextActor("You won the challenge!", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
            wins+=1
        else
            frame17Text1 = TextActor("You got $numCorrect out of 4 ","manuscript_regular"; font_size = 40, color = Int[0,0,0,0])
            frame17Text2 = TextActor("You lost the challenge :( ", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
        end
        frame17Text1.pos = (5,250)
        frame17Text2.pos = (5, 300)
        startTime = false
    end
   
end

function onKeyDown17(key)
    global frameNum, startTime,musicPlay, onKeyDown
    if key in letters
        onKeyDown = true
        frameNum = frameNum+1
    end
end

function frameDraw17()
    draw(frame17Text1)
    draw(frame17Text2)
    draw(frame17Text3)
end



function frameUpdate18()
   
end

function frameDraw18()
    draw(r1, colorant"#90EE90", fill = true)
    draw(autumnTree)
    draw(frame18Text1)
    draw(frame18Text2)
    draw(frame18Text3)
    draw(frame18Text4)
    draw(frame18Text5)
    draw(frame18Text6)
    draw(frame18Text8)
end

function onKeyDown18(key)
    global frameNum, startTime,musicPlay, onKeyDown, letters
    println(key)
    if key in letters
        play_music("perfect_symmetry")
        startTime = true
        onKeyDown  = true
        frameNum = frameNum+1
    end
end



function frameDraw19()
    draw(frame19Text1)
    draw(frame19Text2)
    draw(frame19Text3)
    draw(frame19Text4)
    draw(frame19Text5)
    draw(frame19Text6)
    draw(time19)
end

function frameUpdate19()
    global startTime19, startTime, time19, frameNum
    if startTime == true
        startTime19 = time()
        startTime = false
    end
    timeLeft = round(Int64, 10 -(time() - startTime19))
    time19 = TextActor("Time left: $timeLeft seconds", "manuscript_regular"; font_size = 20, color = Int[0,0,0,225])
    time19.pos = (5,625)
    if timeLeft == 0
        startTime = true
        frameNum = frameNum + 1
    end
    
end


function onKeyDown19(key)
    global answ, keyToNum, frame19Text6
    if key in 48:57
        answ = answ*keyToNum[key]
        frame19Text6 = TextActor(answ, "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
        frame19Text6.pos = (77, 151)
    elseif key == 8
        if length(answ) >=2
            answ = answ[1:(length(answ) -1)]
            frame19Text6 = TextActor(answ, "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
            frame19Text6.pos = (77, 151)
        end
    end
end


function frameUpdate20()
    
end

function frameDraw20()
    global answ
    if answ == " 720"
        frame20Text1 = TextActor("You were correct!", "manuscript_regular"; font = 20, color = Int[0,0,0,0])
        frame20Text1.pos = (5, 300)
        
    else
        frame20Text1 = TextActor("You were wrong :(", "manuscript_regular"; font = 20, color = Int[0,0,0,0])
        frame20Text1.pos = (5, 300)
    end
    draw(frame20Text1)
    draw(frame20Text2)
end

function onKeyDown20(key)
    global frameNum, startTime,musicPlay, onKeyDown, letters, answ, wins
    println(key)
    if key in letters
        if answ == " 720"
            wins+=1
        end
        startTime = false
        onKeyDown  = true
        frameNum = frameNum+1
    end
end




function frameUpdate21()

end

function frameDraw21()
    draw(r1, colorant"#90EE90", fill = true)
    draw(autumnTree)
    draw(frame21Text1)
    draw(frame21Text2)
    draw(frame21Text3)
    draw(frame21Text4)
    draw(frame21Text5)
    draw(frame21Text6)
    draw(frame21Text8)
    draw(frame21Text7)
    draw(frame21Text9)
end

function onKeyDown21(key)
    global frameNum, onKeyDown, startTime
    println(key)
    if key in letters
        play_music("bend_and_break")
        startTime = true
        frameNum = frameNum +1
    end
end


function frameUpdate22()
    global startTime22, startTime, time22, frameNum, win, nmax, onKeyDown
    if startTime == true
        startTime22 = time()
        startTime = false
    end
    timeLeft = round(Int64, 218 -(time() - startTime22))
    time22 = TextActor("Time left: $timeLeft seconds", "manuscript_regular"; font_size = 20, color = Int[0,0,0,225])
    time22.pos = (5,625)
    if timeLeft == 0 || win == true|| nmax == 34
        frameNum+=1
        onKeyDown = true
    end
    
end

function frameDraw22()
    draw(time22)
    n = colorant"#90EE90"
    global wordleGrid, wordleGridColors, wordleGridFill
    for i in 1:30 
        draw(wordleGrid[i], wordleGridColors[i], fill = wordleGridFill[i])
        draw(wordleGridLetters[i])
    end
    
end



function onKeyDown22(key)
    global wordleGridLetters, alphabet, n, nmin, nmax, guess, correctWord, wordleGridColors, wordleGridFill, correctWordLetters, guessLetters, win
    if key in letters
        if n<= nmax
            n = n+1
            wordleGridLetters[n] = TextActor(string(alphabet[key]), "manuscript_regular"; font_size = 35, color = Int[0,0,0,0])
            wordleGridLetters[n].pos = (wordleGridXpos[n], wordleGridYpos[n])
            guess = guess*string(alphabet[key])
            push!(guessLetters, alphabet[key])
        end
    elseif key == 8
        if n>nmin
            wordleGridLetters[n] = TextActor(" ", "manuscript_regular"; font_size = 35, color = Int[0,0,0,0])
            wordleGridLetters[n].pos = (wordleGridXpos[n], wordleGridYpos[n])
            guess = guess[1:(end-1)]
            pop!(guessLetters)
            if n>nmin
              n = n-1
            end
        end
    elseif key == 13 && n == (nmax+1)
        nmax = nmax + 5
        nmin = nmin+5
        if guess == correctWord
            win = true
        end
        for i in 1:5
            if guess[i] == correctWord[i]
                wordleGridFill[n-(5-i)] = true
                wordleGridColors[n-(5-i)] = colorant"green"
            elseif guess[i] in correctWordLetters 
                index = findfirst(x -> x == guess[i], correctWordLetters)
                if !(index == nothing )&& !(guess[index] == correctWordLetters[index])
                    if i>1
                        if !(guess[i] in guessLetters[1:(i-1)])
                          wordleGridFill[n-(5-i)] = true
                          wordleGridColors[n-(5-i)] = colorant"#FFBF00"
                        else
                          wordleGridFill[n-(5-i)] = true
                          wordleGridColors[n-(5-i)] = colorant"gray"
                        end
                    else
                        wordleGridFill[n-(5-i)] = true
                        wordleGridColors[n-(5-i)] = colorant"#FFBF00"
                    end
                else
                    wordleGridFill[n-(5-i)] = true
                    wordleGridColors[n-(5-i)] = colorant"gray"
                end
            else
                wordleGridFill[n-(5-i)] = true
                wordleGridColors[n-(5-i)] = colorant"gray"
            end
        end
        guess =""
        guessLetters = []
    end
end



function frameDraw23()
    global win
    draw(frame23Text1)
    if win == true
        d = TextActor("You won the challenge!", "manuscript_regular"; font_size = 40, color = Int[0,0,0,0])
        d.pos = (5,300)
        draw(d)
    else
        d = TextActor("You lost the challenge :(", "manuscript_regular"; font_size = 40, color = Int[0,0,0,0])
        d.pos = (5,300)
        draw(d)
    end
end

function frameUpdate23()
end

function onKeyDown23(key)
    global frameNum, startTime,onKeyDown, letters, win, wins
    println(key)
    if key in letters
        if win == true
            wins+=1
        end
        onKeyDown  = true
        frameNum = frameNum+1
    end
end

function frameUpdate24()
    
end

function frameDraw24()
    draw(r1, colorant"#90EE90", fill = true)
    draw(autumnTree)
    draw(frame24Text1)
    draw(frame24Text2)
    draw(frame24Text3)
    draw(frame24Text4)
    draw(frame24Text5)
    draw(frame24Text8)
    draw(frame24Text6)
    draw(frame24Text7)
    draw(frame24Text9)

end

function onKeyDown24(key)
    global frameNum, onKeyDown, startTime
    println(key)
    if key in letters
        play_music("bad_dream")
        startTime = true
        frameNum = frameNum +1
    end
end




function reset()
    global snake, apple, sgame_background, lives, sgame_height, s_pos_x, s_pos_y, s_body, speed, vy, vx
    snake = []
    push!(snake,Rect(s_pos_x, s_pos_y, s_size, s_size))
    apple = Rect(0,0,s_size, s_size)
    createNewApple()
    sgame_background = Rect(0,650-sgame_height, sgame_width, sgame_height)
    s_pos_x = 325
    s_pos_y = 325
    s_body = []
    speed = 0.18
    vy = 0
    vx = s_size
end

function frameDraw25()
    global snake
    draw(sgame_background, colorant"beige",fill = true)
    draw(time25)
    draw(liveText)
    draw(appleText)
    draw(apple, colorant"red", fill = true)
    for i in 1:length(snake)
        draw(snake[i], colorant"#90EE90", fill = true )
    end
end


function frameUpdate25()
    global speed, snake, s_pos_x, s_pos_y, vx, vy, s_size, snake, apple, lives, liveText, appleText, apples, startTime, time25, startTime25, frameNum
    sleep(speed)
    s_pos_x = s_pos_x + vx
    s_pos_y = s_pos_y + vy
    a = false

    for i in 2:length(snake)
        print(length(snake))
        try
           a = collide(snake[i], snake[1])
        catch
            a = true
        end
        if a == true
            lives = lives -1
            liveText = TextActor("Lives = $lives", "manuscript_regular"; font_size = 25, color = Int[0,0,0,0])
            liveText.pos = (5,5)
            reset()
        end
    end

    if collide(snake[end], apple)
        createNewApple()
        appleText = TextActor("Apples = $apples", "manuscript_regular"; font_size = 25, color = Int[0,0,0,0])
        apples = apples +1
        appleText.pos = (100,5)
        push!(snake, Rect(s_pos_x, s_pos_y, s_size, s_size))
    else
        push!(snake, Rect(s_pos_x, s_pos_y, s_size, s_size))
        popat!(snake, 1)
    end
    if snake[1].x > 625 || snake[1].x < 0
        lives = lives -1
        liveText = TextActor("Lives = $lives", "manuscript_regular"; font_size = 25, color = Int[0,0,0,0])
        liveText.pos = (5,5)

        reset()
    end
    if snake[1].y>625 || snake[1].y<50
        lives = lives -1
        liveText = TextActor("Lives = $lives", "manuscript_regular"; font_size = 25, color = Int[0,0,0,0])
        liveText.pos = (5,5)
        reset()
    end

    if startTime == true
        startTime25 = time()
        startTime = false
    end
    timeLeft = round(Int64, 10 -(time() - startTime25))
    time25 = TextActor("Time Left: $timeLeft seconds", "manuscript_regular"; font_size = 25, color = Int[0,0,0,225])
    time25.pos = (410,5)
    if timeLeft == 0
        startTime = true
        frameNum = frameNum + 1
    end
    
end

function onKeyDown25(key)
    global vy, vx, s_size
    if key == 1073741906
        if vy !== s_size
            vy = -s_size
            vx = 0
        end
    elseif key == 1073741905
        if vy !== -s_size
            vy = s_size
            vx = 0
        end
    elseif key == 1073741904
        if vx !== s_size
            vx = -s_size
            vy =0
        end
    elseif key == 1073741903
        if vx!== -s_size
            vx = s_size
            vy  = 0
        end
    end

end



function frameUpdate26()
    global startTime, frame26Text2, apples, lives, wins
    if startTime == true
        if apples >= 50 && lives >= 0
            frame26Text2 = TextActor("You won this challenge!", "manuscript_regular"; font_size = 40, color = Int[0,0,0,0])
            frame26Text2.pos = (5,300)
            wins+=1
        else
            frame26Text2 = TextActor("You lost this challenge!", "manuscript_regular"; font_size = 40, color = Int[0,0,0,0])
            frame26Text2.pos = (5,300)
        end
        startTime = false
    end

end

function frameDraw26()
    draw(frame26Text2)
    draw(frame26Text1)
end

function onKeyDown26(key)
    global frameNum, startTime,musicPlay, onKeyDown
    println(key)
    if key in letters
        musicPlay = true
        startTime = true
        onKeyDown = false
        frameNum = frameNum +1
    end
end



function frameDraw27()
    draw(r1, colorant"#E97451", fill = true)
    draw(frame27Text1)
    
end

function frameUpdate27()
    global startTime, startTime27, frame27Text1
    if startTime == true
        startTime27 = time()
        if wins >= 3
            frame27Text1 = TextActor("Congratualations, you won! You will escape in about 10 seconds.", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
            frame27Text1.pos = (5,300)
        else
            frame27Text1 = TextActor("Sorry, you are stuck here forever.", "manuscript_regular"; font_size = 20, color = Int[0,0,0,0])
            frame27Text1.pos = (5,300)
            play_music("somewhere_only_we_know")
        end
        startTime = false
    end
    if time() - startTime27 > 10
        if wins>=3
            exit()
        else
            frame27Text1 = TextActor("You will be listening to this song for the rest of your life.")
            frame27Text1.pos = (5,300)
        end
    end
end





function update()
    
    func_name ="frameUpdate$frameNum"
    func_sym = Symbol(func_name)
    @eval $func_sym()
end

function draw()
    func_name ="frameDraw$frameNum"
    func_sym = Symbol(func_name)
    @eval $func_sym()
end

function on_key_down(g,k)
    
    if onKeyDown == true
        func_name ="onKeyDown$frameNum"
        func_sym = Symbol(func_name)
        @eval $func_sym($k)
    end
end

function on_mouse_down(g, pos, button)
    if onMouseDown == true
        func_name ="on_mouse_down$frameNum"
        func_sym = Symbol(func_name)
        @eval $func_sym($g,$pos, $button)
    end
end