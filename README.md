# bingo-royale

Bingo Royale is flexible bingo experience

## Main features



### Boards

Bingo Royale has boards with numbers or text on them.
Each board has name, width, height and elements.
If there's more elements than width * height 
ones shown are randomly selected.

There can be several boards in the game.
Each board is stored in a yaml file.
All boards are stored in a folder.

Future expansion could be to show icons as board elements.

### Game

Game is dynamic representation of the board.

When game is started board is used as "template" for the game.
Game contains random elements from the board in randomized order.
During game elements are not changing their places.

After starting game elements are marked as free and the game continues
until all elements are selected.

Elements of the board can be marked as done during the game.
Board can have many "bingos", so it's really only done when all elements are selected.

Future expansion could be to allow shuffle of the board.
