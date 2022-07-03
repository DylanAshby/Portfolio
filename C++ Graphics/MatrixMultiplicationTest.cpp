// MatrixMultiplicationTest.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
#include <fstream>
#include <string>
#include <queue>

using namespace std;

struct coord {
    int x;
    int y;
} ;

int print_intro()
{
    string input = "";
    int output = 0;

    cout << "Welcome to the image transformer! (press ENTER to contine...)";
    cin.ignore();
    cout << "Enter the number of coordinates you want to input ";
    cin >> output;

    return output;
}

queue<coord> manual_fill_matrix(int n) {
    queue<coord> matrix;
    coord temp;


    for (int i = 0; i < n; i++) {
        cout << "Enter the X and Y components of the next coord: \n";
        cin >> temp.x;
        cin >> temp.y;

        matrix.push(temp);
    }

    cout << "\n\n";

    return matrix;
}

queue<coord> file_fill_matrix(string filename) {
    queue<coord> matrix;
    coord temp;

    ifstream file (filename);
    char nextChar = '0';

    if (file.is_open()) {
        while (file) {
            nextChar = file.get();
            temp.x = int(nextChar);
            nextChar = file.get();
            temp.y = int(nextChar);

            matrix.push(temp);
        }
        file.close();
    }

    return matrix;
}

queue<coord> linear_transform(queue<coord> matrix) {
    // This is formatted as if it were in row-major-order
    queue<coord> output;
    struct temp;
    short rotate90[2][2] = {{0, -1}, {1, 0}};

    // Start multiplying columns at a time
    int size = matrix.size();
    int multComp1 = 0;
    int multComp2 = 0;
    coord next;
    coord out;

    for (int i = 0; i < size; i++) {
        next = matrix.front();
        matrix.pop();

        multComp1 = (rotate90[0][0] * next.x) + (rotate90[0][1] * next.y);
        multComp2 = (rotate90[1][0] * next.x) + (rotate90[1][1] * next.y);

        out.x = multComp1;
        out.y = multComp2;

        output.push(out);
    }

    return output;
}

int main()
{
    int n = print_intro();
    queue<coord> matrix = manual_fill_matrix(n);
    queue<coord> translated = linear_transform(matrix);

    for (int i = 0; i < n; i++) {
        cout << translated.front().x << endl << translated.front().y << "\n\n";
        translated.pop();
    }
}