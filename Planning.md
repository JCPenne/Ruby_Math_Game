## Nouns
<!-- - Game (Master) -->
- Game
- Player
- Question

## Roles V2.0
- Game
  - House a new game instance in an until loop
  - Methods
    - Create New Player
      - Increment Counter
      - Player.new(Counter)
      - Push player.new to Array
      - If Player is at Array[0] set Current_Player to Player
    - Generate new Question
      - Question.new
      - Puts new question
    - Check response
      - Player.response = Question.answer

- Player
  - Variables
    - @Player = Counter
    - Lives = 3
  - Methods
    - Decrement Life
    - If Lives = 0 return true to signify game over. Else return false and lives.

- Question
  - Variables
    - Question string
    - Answer
  - Method
    - Generate Answer

 <!-- Mentor Review Notes
 If object stores variable, that object should manage that variable as well
(I.e don't reach into player's pocket to change lives variable)
 
 Turn object is master game object
 Using Until loop to handle turns
 Turn instantiates player objects (can set a variable to determine # of players)
 Push player objects into an Array
 Turn should store who is current player
 Step through Player Array to set current player potentially
 turn instantiates new question each round
 Turn houses a variable currentPlayer (set to a player)

 Player Object handles
 Name, Lives, Method to alter Lives and return boolean for game over/not over

 Question Object handles
 generate random question
 generate correct answer to random question
 Method compare answer to response and return boolean
 
  -->

