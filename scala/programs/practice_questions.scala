package programs

import scala.collection.mutable.ArrayBuffer

object PracticeQuestions {
    def main(arsg:Array[String]){
        // Last elements in the list

        val array1:List[_] = List(1,2,3,4,5,6,7,8)

        println(array1(array1.length -1)) // last element in a list
        /*
          In scala we cannot use array(-1) to access last element as it will throw array out of bound exception
        */

        println(array1(array1.length -2)) // second last element in a list

        // using implicit class method here
        println( 2.kthElement(array1) )   // in back ground it will behave like (new ArrayMethods(2)).kthElement(array1)

        // reversing a list with help of recursion

        /*
          List is immutbale so it will be perform operations on List as each time it will return new List
          Instead we should use some mutable data structure like ArrayBuffer
        */
        println(  reverseList(ArrayBuffer(1,2, 3, 4, 5, 6))) // reversing a interger array

        println(  reverseList(ArrayBuffer("s", "u", "r", "a", "j"))) // reversing a string array

        println( pallindrome(ArrayBuffer(1,2,2,1)) )

        println( flatten_list( ArrayBuffer(1,2, ArrayBuffer(3,4, ArrayBuffer(3, 5))),      ArrayBuffer())  ) // faltten array of arrays


    }

    implicit class ArrayMethods(val n: Int) {
        def kthElement(list:List[_]):Option[_] = n match {
                case n if 1.to(list.length).contains(n) => Some(list(n-1))
                case _ => None
            }
    }

    def reverseList[T](list: ArrayBuffer[T], count: Int = 0): ArrayBuffer[T]= { //  T is type paramter as we can pass array of Array Buffer of any type like string , integer etc
        
        if (count > list.length/2){
          return list
        }
        
        var acutal_length = list.length - 1
        // swap here
        var tmp:T = list(acutal_length - count)
        list(acutal_length - count) = list(count)
        list(count) = tmp
        // swapping ends

        println(list)
        // call method again witn new counter and updated values
        reverseList(list, count + 1 )
    }

    def pallindrome[T](list: ArrayBuffer[T], count: Int = 0): Boolean= { //  T is type paramter as we can pass array of Array Buffer of any type like string , integer etc
        
        if (count > list.length/2){
          return true
        }

        var acutal_length = list.length - 1
        if (list(acutal_length - count) == list(count)) {
            pallindrome(list, count + 1 )
        }
        else {
            return false
        }        
    }

    def flatten_list[T](inputList: ArrayBuffer[T], outPutList: ArrayBuffer[T]): ArrayBuffer[T] = {
        for(input <- inputList) {
            input match {    
              case newInput: ArrayBuffer[T] => flatten_list(newInput, outPutList)
              case _:Int => { outPutList += input}
            }
        }
        return outPutList
    }
}