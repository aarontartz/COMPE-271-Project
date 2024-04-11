#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <stdbool.h>
void printBoard(char userBoard[9][9]) {
    int rowCounter = 0;
    int columnCounter;
    for (int i = 0; i < 3; ++i) {
        for (int j = 0; j < 3; ++j) {
            columnCounter = 0;
            if (j != 0) {
                printf("\n|     |     |     ||     |     |     ||     |     |     |\n");
            }
            printf("+-----+-----+-----++-----+-----+-----++-----+-----+-----+\n");
            printf("|     |     |     ||     |     |     ||     |     |     |\n");
            for (int k = 0; k < 3; ++k) {
                for (int l = 0; l < 3; ++l) {
                    printf("|  %c  ", userBoard[rowCounter][columnCounter]);
                    ++columnCounter;
                }
                printf("|");
            }
            rowCounter++;
        }
        printf("\n|     |     |     ||     |     |     ||     |     |     |\n");
        printf("+-----+-----+-----++-----+-----+-----++-----+-----+-----+\n");
    }
}
int checkComplete(int numSquares[2][9]) {
    if ((numSquares[0][0] == 1) && (numSquares[0][1] == 1) && (numSquares[0][2] == 1)) {
        return 0; //player 1 won
    }
    else if ((numSquares[1][0] == 1) && (numSquares[1][1] == 1) && (numSquares[1][2] == 1)) {
            //top horizontal
        return 1; //player 2 won
    }
    else if ((numSquares[0][3] == 1) && (numSquares[0][4] == 1) && (numSquares[0][5] == 1)) {
        //middle horizontal
        return 0;
    }
    else if ((numSquares[1][3] == 1) && (numSquares[1][4] == 1) && (numSquares[1][5] == 1)) {
            //middle horizontal (MIPS: next3)
        return 1;
    }
    else if ((numSquares[0][6] == 1) && (numSquares[0][7] == 1) && (numSquares[0][8] == 1)) {
            //bottom horizontal
        return 0;
    }
    else if ((numSquares[1][6] == 1) && (numSquares[1][7] == 1) && (numSquares[1][8] == 1)) {
            //bottom horizontal
        return 1;
    }
    else if ((numSquares[0][0] == 1) && (numSquares[0][3] == 1) && (numSquares[0][6] == 1)) {
            //left vertical (MIPS: next6)
        return 0;
    }
    else if ((numSquares[1][0] == 1) && (numSquares[1][3] == 1) && (numSquares[1][6] == 1)) {
            //left vertical
        return 1;
    }
    else if ((numSquares[0][1] == 1) && (numSquares[0][4] == 1) && (numSquares[0][7] == 1)) {
            //middle vertical
        return 0;
    }
    else if ((numSquares[1][1] == 1) && (numSquares[1][4] == 1) && (numSquares[1][7] == 1)) {
            //middle vertical (MIPS: next9)
        return 1;
    }
    else if ((numSquares[0][2] == 1) && (numSquares[0][5] == 1) && (numSquares[0][8] == 1)) {
            //right vertical
        return 0;
    }
    else if ((numSquares[1][2] == 1) && (numSquares[1][5] == 1) && (numSquares[1][8] == 1)) {
            //right vertical
        return 1;
    }
    else if ((numSquares[0][0] == 1) && (numSquares[0][4] == 1) && (numSquares[0][8] == 1)) {
            //top to bottom diagonal (MIPS: 12)
        return 0;
    }
    else if ((numSquares[1][0] == 1) && (numSquares[1][4] == 1) && (numSquares[1][8] == 1)) {
            //top to bottom diagonal
        return 1;
    }
    else if ((numSquares[0][6] == 1) && (numSquares[0][4] == 1) && (numSquares[0][2] == 1)) {
            //bottom to top diagonal
        return 0;
    }
    else if ((numSquares[1][6] == 1) && (numSquares[1][4] == 1) && (numSquares[1][2] == 1)) {
            //bottom to top diagonal
        return 1;
    }
    else {
        return -1;
    }
}
bool checkValidMove(char userValue, char currentBoardVal, char correctValPlayer1, char correctValPlayer2) {
    if (currentBoardVal == ' ') {
        if ((userValue == correctValPlayer1) || (userValue == correctValPlayer2)) {
            return true;
        }
    }
    return false;
}
void checkSuperTicTacToe(int numSquares[2][9], char userBoard[9][9], char correctBoardPlayer1[9][9], char correctBoardPlayer2[9][9]) { //change into bool later
    char newUserBoard[9][4][4];
    char newCorrectBoard1[9][4][4];
    char newCorrectBoard2[9][4][4];
    int rowNum;
    int columnNum;
    // setting up 3D array
    for (int rowNum = 0; rowNum < 9; ++rowNum) {
        for (int columnNum = 0; columnNum < 9; ++columnNum) {
            if ((rowNum <= 2) & (columnNum <= 2)) {
                newUserBoard[0][rowNum][columnNum] = userBoard[rowNum][columnNum];
                newCorrectBoard1[0][rowNum][columnNum] = correctBoardPlayer1[rowNum][columnNum];
                newCorrectBoard2[0][rowNum][columnNum] = correctBoardPlayer2[rowNum][columnNum];
            }
            else if ((rowNum <= 2) & (columnNum >= 3) & (columnNum <= 5)) {
                newUserBoard[1][rowNum][columnNum - 3] = userBoard[rowNum][columnNum];
                newCorrectBoard1[1][rowNum][columnNum - 3] = correctBoardPlayer1[rowNum][columnNum];
                newCorrectBoard2[1][rowNum][columnNum - 3] = correctBoardPlayer2[rowNum][columnNum];
            }
            else if ((rowNum <= 2) & (columnNum >= 6)) {
                newUserBoard[2][rowNum][columnNum - 6] = userBoard[rowNum][columnNum];
                newCorrectBoard1[2][rowNum][columnNum - 6] = correctBoardPlayer1[rowNum][columnNum];
                newCorrectBoard2[2][rowNum][columnNum - 6] = correctBoardPlayer2[rowNum][columnNum];
            }
            else if ((rowNum >= 3) & (rowNum <= 5) & (columnNum <= 2)) {
                newUserBoard[3][rowNum - 3][columnNum] = userBoard[rowNum][columnNum];
                newCorrectBoard1[3][rowNum - 3][columnNum] = correctBoardPlayer1[rowNum][columnNum];
                newCorrectBoard2[3][rowNum - 3][columnNum] = correctBoardPlayer2[rowNum][columnNum];
            }
            else if ((rowNum >= 3) & (rowNum <= 5) & (columnNum >= 3) & (columnNum <= 5)) {
                newUserBoard[4][rowNum - 3][columnNum - 3] = userBoard[rowNum][columnNum];
                newCorrectBoard1[4][rowNum - 3][columnNum - 3] = correctBoardPlayer1[rowNum][columnNum];
                newCorrectBoard2[4][rowNum - 3][columnNum - 3] = correctBoardPlayer2[rowNum][columnNum];
            }
            else if ((rowNum >= 3) & (rowNum <= 5) & (columnNum >= 6)) {
                newUserBoard[5][rowNum - 3][columnNum - 6] = userBoard[rowNum][columnNum];
                newCorrectBoard1[5][rowNum - 3][columnNum - 6] = correctBoardPlayer1[rowNum][columnNum];
                newCorrectBoard2[5][rowNum - 3][columnNum - 6] = correctBoardPlayer2[rowNum][columnNum];
            }
            else if ((rowNum >= 6) & (columnNum <= 2)) {
                newUserBoard[6][rowNum - 6][columnNum] = userBoard[rowNum][columnNum];
                newCorrectBoard1[6][rowNum - 6][columnNum] = correctBoardPlayer1[rowNum][columnNum];
                newCorrectBoard2[6][rowNum - 6][columnNum] = correctBoardPlayer2[rowNum][columnNum];
            }
            else if ((rowNum >= 6) & (columnNum >= 3) & (columnNum <= 5)) {
                newUserBoard[7][rowNum - 6][columnNum - 3] = userBoard[rowNum][columnNum];
                newCorrectBoard1[7][rowNum - 6][columnNum - 3] = correctBoardPlayer1[rowNum][columnNum];
                newCorrectBoard2[7][rowNum - 6][columnNum - 3] = correctBoardPlayer2[rowNum][columnNum];
            }
            else if ((rowNum >= 6) & (columnNum >= 6)) {
                newUserBoard[8][rowNum - 6][columnNum - 6] = userBoard[rowNum][columnNum];
                newCorrectBoard1[8][rowNum - 6][columnNum - 6] = correctBoardPlayer1[rowNum][columnNum];
                newCorrectBoard2[8][rowNum - 6][columnNum - 6] = correctBoardPlayer2[rowNum][columnNum];
            }
        }
    }
    //storing 3 in a row's each player gets
    for (int gridNum = 0; gridNum < 9; ++gridNum) { //[gridNum][rowNum][columnNum]
        if ((newUserBoard[gridNum][0][0] == newCorrectBoard1[gridNum][0][0]) && (newUserBoard[gridNum][0][1] == newCorrectBoard1[gridNum][0][1]) && (newUserBoard[gridNum][0][2] == newCorrectBoard1[gridNum][0][2])) {
            //top horizontal
            (numSquares[0][gridNum] = 1);
        }
        else if ((newUserBoard[gridNum][0][0] == newCorrectBoard2[gridNum][0][0]) && (newUserBoard[gridNum][0][1] == newCorrectBoard2[gridNum][0][1]) && (newUserBoard[gridNum][0][2] == newCorrectBoard2[gridNum][0][2])) {
            //top horizontal
            (numSquares[1][gridNum] = 1);
        }
        else if ((newUserBoard[gridNum][1][0] == newCorrectBoard1[gridNum][1][0]) && (newUserBoard[gridNum][1][1] == newCorrectBoard1[gridNum][1][1]) && (newUserBoard[gridNum][1][2] == newCorrectBoard1[gridNum][1][2])) {
            //middle horizontal
            (numSquares[0][gridNum] = 1);
        }
        else if ((newUserBoard[gridNum][1][0] == newCorrectBoard2[gridNum][1][0]) && (newUserBoard[gridNum][1][1] == newCorrectBoard2[gridNum][1][1]) && (newUserBoard[gridNum][1][2] == newCorrectBoard2[gridNum][1][2])) {
            //middle horizontal
            (numSquares[1][gridNum] = 1);
        }
        else if ((newUserBoard[gridNum][2][0] == newCorrectBoard1[gridNum][2][0]) && (newUserBoard[gridNum][2][1] == newCorrectBoard1[gridNum][2][1]) && (newUserBoard[gridNum][2][2] == newCorrectBoard1[gridNum][2][2])) {
            //bottom horizontal
            (numSquares[0][gridNum] = 1);
        }
        else if ((newUserBoard[gridNum][2][0] == newCorrectBoard2[gridNum][2][0]) && (newUserBoard[gridNum][2][1] == newCorrectBoard2[gridNum][2][1]) && (newUserBoard[gridNum][2][2] == newCorrectBoard2[gridNum][2][2])) {
            //bottom horizontal
            (numSquares[1][gridNum] = 1);
        }
        else if ((newUserBoard[gridNum][0][0] == newCorrectBoard1[gridNum][0][0]) && (newUserBoard[gridNum][1][0] == newCorrectBoard1[gridNum][1][0]) && (newUserBoard[gridNum][2][0] == newCorrectBoard1[gridNum][2][0])) {
            //left vertical
            (numSquares[0][gridNum] = 1);
        }
        else if ((newUserBoard[gridNum][0][0] == newCorrectBoard2[gridNum][0][0]) && (newUserBoard[gridNum][1][0] == newCorrectBoard2[gridNum][1][0]) && (newUserBoard[gridNum][2][0] == newCorrectBoard2[gridNum][2][0])) {
            //left vertical
            (numSquares[1][gridNum] = 1);
        }
        else if ((newUserBoard[gridNum][0][1] == newCorrectBoard1[gridNum][0][1]) && (newUserBoard[gridNum][1][1] == newCorrectBoard1[gridNum][1][1]) && (newUserBoard[gridNum][2][1] == newCorrectBoard1[gridNum][2][1])) {
            //middle vertical
            (numSquares[0][gridNum] = 1);
        }
        else if ((newUserBoard[gridNum][0][1] == newCorrectBoard2[gridNum][0][1]) && (newUserBoard[gridNum][1][1] == newCorrectBoard2[gridNum][1][1]) && (newUserBoard[gridNum][2][1] == newCorrectBoard2[gridNum][1][1])) {
            //middle vertical
            (numSquares[1][gridNum] = 1);
        }
        else if ((newUserBoard[gridNum][0][2] == newCorrectBoard1[gridNum][0][2]) && (newUserBoard[gridNum][1][2] == newCorrectBoard1[gridNum][1][2]) && (newUserBoard[gridNum][2][2] == newCorrectBoard1[gridNum][2][2])) {
            //right vertical
            (numSquares[0][gridNum] = 1);
        }
        else if ((newUserBoard[gridNum][0][2] == newCorrectBoard2[gridNum][0][2]) && (newUserBoard[gridNum][1][2] == newCorrectBoard2[gridNum][1][2]) && (newUserBoard[gridNum][2][2] == newCorrectBoard2[gridNum][2][2])) {
            //right vertical
            (numSquares[1][gridNum] = 1);
        }
        else if ((newUserBoard[gridNum][0][0] == newCorrectBoard1[gridNum][0][0]) && (newUserBoard[gridNum][1][1] == newCorrectBoard1[gridNum][1][1]) && (newUserBoard[gridNum][2][2] == newCorrectBoard1[gridNum][2][2])) {
            //top to bottom diagonal
            (numSquares[0][gridNum] = 1);
        }
        else if ((newUserBoard[gridNum][0][0] == newCorrectBoard2[gridNum][0][0]) && (newUserBoard[gridNum][1][1] == newCorrectBoard2[gridNum][1][1]) && (newUserBoard[gridNum][2][2] == newCorrectBoard2[gridNum][2][2])) {
            //top to bottom diagonal
            (numSquares[1][gridNum] = 1);
        }
        else if ((newUserBoard[gridNum][2][0] == newCorrectBoard1[gridNum][2][0]) && (newUserBoard[gridNum][1][1] == newCorrectBoard1[gridNum][1][1]) && (newUserBoard[gridNum][0][2] == newCorrectBoard1[gridNum][0][2])) {
            //bottom to top diagonal
            (numSquares[0][gridNum] = 1);
        }
        else if ((newUserBoard[gridNum][2][0] == newCorrectBoard2[gridNum][2][0]) && (newUserBoard[gridNum][1][1] == newCorrectBoard2[gridNum][1][1]) && (newUserBoard[gridNum][0][2] == newCorrectBoard2[gridNum][0][2])) {
            //bottom to top diagonal
            (numSquares[1][gridNum] = 1);
        }
    }
}
int main(void){
    char userBoard[9][9] = { //test board use top board
        {'2', '3', '7', '8', '4', '1', '5', '6', ' '},
        {' ', ' ', ' ', ' ', ' ', ' ', ' ', '4', '3'},
        {'5', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
        {' ', ' ', ' ', ' ', '7', ' ', '8', ' ', ' '},
        {' ', ' ', ' ', ' ', ' ', ' ', '1', ' ', ' '},
        {' ', '2', ' ', ' ', '3', ' ', ' ', ' ', ' '},
        {'6', ' ', ' ', ' ', ' ', ' ', ' ', '7', '5'},
        {' ', ' ', '3', '4', ' ', ' ', ' ', ' ', ' '},
        {' ', ' ', ' ', '2', ' ', ' ', '6', ' ', ' '}
    };
    char correctBoardPlayer1[9][9] = {
        {'2', '3', '7', '8', '4', '1', '5', '6', '9'},
        {'1', '8', '6', '7', '9', '5', '2', '4', '3'},
        {'5', '9', '4', '3', '2', '6', '7', '1', '8'},
        {'3', '1', '5', '6', '7', '4', '8', '9', '2'},
        {'4', '6', '9', '5', '8', '2', '1', '3', '7'},
        {'7', '2', '8', '1', '3', '9', '4', '5', '6'},
        {'6', '4', '2', '9', '1', '8', '3', '7', '5'},
        {'8', '5', '3', '4', '6', '7', '9', '2', '1'},
        {'9', '7', '1', '2', '5', '3', '6', '8', '4'}
      };
    char correctBoardPlayer2[9][9] = { //shift values, in assembly code I will use different colored numbers
        {'@', '#', '&', '*', '$', '!', '%', '^', '('},
        {'!', '*', '^', '&', '(', '%', '&', '$', '#'},
        {'%', '(', '$', '#', '@', '^', '&', '!', '*'},
        {'#', '!', '%', '^', '&', '$', '*', '(', '@'},
        {'$', '^', '(', '%', '*', '@', '!', '#', '&'},
        {'&', '@', '*', '!', '#', '(', '$', '%', '^'},
        {'^', '$', '@', '(', '!', '*', '#', '&', '%'},
        {'*', '%', '#', '$', '^', '&', '(', '@', '!'},
        {'(', '&', '!', '@', '%', '#', '^', '*', '$'}
      };
    int rowNum;
    int columnNum;
    char valueNum;
    int numSquares[2][9] = { //tracks squares in big grid each player has [playerNum][gridNum] (0 = player 1, 1 = player 2)
        {0, 0, 0, 0, 0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0, 0, 0, 0, 0}
    };
    
    while ((checkComplete(numSquares) != 0) && (checkComplete(numSquares) != 1)) {
        printBoard(userBoard);
        fflush(stdin);
        
        printf("Enter a row: ");
        scanf("%d", &rowNum);
        printf("Enter a column: ");
        scanf("%d", &columnNum);
        printf("Enter a number: ");
        scanf(" %c", &valueNum);
        
        if (checkValidMove(valueNum, userBoard[rowNum][columnNum], correctBoardPlayer1[rowNum][columnNum], correctBoardPlayer2[rowNum][columnNum])) {
            userBoard[rowNum][columnNum] = valueNum;
            checkSuperTicTacToe(numSquares, userBoard, correctBoardPlayer1, correctBoardPlayer2);
        }
    }
    printBoard(userBoard);
    fflush(stdin);
    
    if (checkComplete(numSquares) == 0) {
        printf("\nPlayer 1 won!\n");
    }
    else if (checkComplete(numSquares) == 1) {
        printf("\nPlayer 2 won!\n");
    }
    return 0;
}
