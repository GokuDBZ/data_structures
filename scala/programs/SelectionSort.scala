


/**
  * Selection Sort

    * Selection Sort is bit similar to Insertion Sort where we kep two virtaul arrays i.e sorted and unsorted.
    * But logic of swapping is different. 
    * Step 1- Consider the whole array as unsorted array
    * Step 2- Find the minimum element from unsorted array with linear search
    * Step 3 - Once you find the minimum element then swap it with first element of unsroted array

    * After first pass value at index 0 is swapped with minimum element and now our unsorted array starts with index 1
    
    * Now again find minimum element from index 1 till end and then replace min element with index's 1 value (Second pass)

    * After second pass value at index 0 and index 1 belongs to sorted array and array starting from index 3 is unsorted


    * Perform this operation till array ends
*/

package programs

import scala.collection.mutable.ArrayBuffer

object SelectionSort {

}
 def selectionSort(inputArray: ArrayBuffer[Int]):  ArrayBuffer[Int] = {
    var unsorted_index = 0 // initially whole array is unsorted , so unsorted array will start from index
    
    
    while(unsorted_index < inputArray.length - 1) {
        var minimum =   inputArray(unsorted_index) // considering first element as smallest right now
        var minimum_index = unsorted_index
        var search_index =  unsorted_index + 1 // first element is considered as minimum so we will starte from + 1 position
        
        // loop for finding minimum element in a unsorted array
        while(search_index <= inputArray.length - 1) {
            if(inputArray(search_index) < minimum) {
                minimum = inputArray(search_index)
                minimum_index = search_index
            }
            search_index += 1
        }

        var tmp = inputArray(unsorted_index)
        inputArray(unsorted_index) = inputArray(minimum_index)
        inputArray(minimum_index) = tmp
        
        unsorted_index += 1    
    }
    
    inputArray
 }