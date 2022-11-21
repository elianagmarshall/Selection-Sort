String[] readNumbers; //array of strings to read the data from the file
String joinNumbers; //string to join the data from the file
String[] splitNumbers; //array of strings to split the data from the file
int[] displayNumbers; //array of integers to convert the data from the file to integers

void setup() {
  readNumbers = loadStrings("random_numbers.csv"); //loads the data from the file
  joinNumbers = join(readNumbers, ","); //joins the data from the file
  splitNumbers = split(joinNumbers, ","); //splts the data from the file
  displayNumbers = int(splitNumbers); //converts the data from the file to integers

  selectionSort();

  splitNumbers = str(displayNumbers); //converts the data from the file from integers back to strings
  saveStrings("random_numbers.csv", splitNumbers); //saves the sorted data to the file

  println(displayNumbers);
}

void selectionSort() { //sorts the values of displayNumbers in ascending order
  for (int index1=0; index1<displayNumbers.length-1; index1++) { //index1 variable has an initial value of 0, must be less than the length of splitNumbers array minus 1, and increases by increments of 1
    int minimumNumber = index1; //minimumNumber is equal to a value in the displayNumbers array

    for (int index2=index1+1; index2<displayNumbers.length; index2++) { //index1 variable has an initial value of index1 plus 1, must be less than the length of splitNumbers array, and increases by increments of 1
      if (displayNumbers[index2]<displayNumbers[minimumNumber]) { //if the selected minimum unsorted number is greater than an unsorted number in the displayNumbers array
        int temporaryNumber = displayNumbers[minimumNumber]; //the value of the selected minimum unsorted number is temporarily stored
        displayNumbers[minimumNumber]=displayNumbers[index2]; //the value of the selected minimum number replaces the position of the lesser number in the array
        displayNumbers[index2]=temporaryNumber; //the lesser number moves to the original position of the greater number
      }
    }
  }
}
