import'dart:math';

class PuzzleGame{
  List<int> values = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,0];

  int GetValue(int index){
    return values[index];
  }

  void Shuffle(){...}

  void SwapPosition(int index){
    int zeroPosition = FindZeroPosition(index);
    if(zeroPosition == -1)return;
    values[zeroPosition] = values[index];
    values[index] = 0;
  }

  int FindZeroPosition(int index){
    int zeroIndex = -1;
    int maxX = 4;
    int indexX = index % maxX;

    if(indexX !=0){
      zeroIndex = indexY * maxX + indexX + 1;
      if(values[zeroIndex] == 0)return zeroIndex;
    }

    if(indexX !=0){
    zeroIndex = indexY * maxX + indexX + 1;
    if(values[zeroIndex] == 0)return zeroIndex;
    }

    if(indexX !=0){
    zeroIndex = (indexY-1) * maxX + indexX;
    if(values[zeroIndex] == 0)return zeroIndex;
    }

    if(indexX != maxY-1){
    zeroIndex = (indexY-1) * maxX + indexX;
    if(values[zeroIndex] == 0)return zeroIndex;
    }

    return -1;
  }
}