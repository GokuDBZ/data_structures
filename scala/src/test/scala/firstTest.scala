
import org.scalatest.Reporter
import org.scalatest.Stopper
import org.scalatest.Distributor
import org.scalatest.Filter
import org.scalatest.Tracker
import org.scalatest.FunSpec
import org.scalatest.events.Event
import org.scalatest.events.TestSucceeded
import org.scalatest.Args
import scala.collection.mutable.ListBuffer
import org.scalatest.Status
import org.scalatest.CompositeStatus


import org.scalatest.Matchers
import org.scalatest.SeveredStackTraces
import scala.collection._
import scala.collection.mutable.ListBuffer

class TestFunSpecDemo extends FunSpec with Matchers {
    val myArray:List[Int] = List(10,11,12,13,34)

    describe("List operations tests"){
        describe("test on list of numbers") {
            val nums = 1.to(20).toList
            val filtNums = nums.filter(_ %3 == 0)

            they(" use almost all matchers"){

                filtNums should have size(6)  // size of list should be 6
                filtNums should contain allOf (3,6,9,12,15,18) // filtNums should contain all elelments specified
                filtNums should not contain (10) // filtNums should not contain
                filtNums should be (Vector(3,6,9,12,15,18))

                filtNums should be (sorted) // filtNums should be sorted

                // if want check on each element of List

                all(filtNums) should be > (0)
                atLeast(num = 3, filtNums) should be > (10) 




            }
        }
    }

    describe("matchers with Case class") {
        case class Demo(first: String,second: String, age: Int)

        they("easy field checking with matchers") {
           val demo = Demo("suraj", "yadav", 27)

           // i don't want demo to be called on every attribute so i can import the object    
           {
               import demo._


               first should be ("suraj")
               second should be ("yadav")
               age should be (27)
           }



           // second way

           demo should have(
               'first ("suraj"), // if any variable starts with single quote then that is a symbol it is like demo.first
               'second ("yadav"),
               'age (27)
           )
        }
    }


    describe("Matching exceptions"){
        it("should expect and intercept exception") {
            // comapring exception
            an [IllegalArgumentException] should be thrownBy {
                require(1 > 2, "one equals two ?")
            }

            // intercepting an exception
            
            // intercepting an exception means i need to keep the exception object so that i can do matching on it
            val ae = intercept [ArithmeticException] {
                1/0
            }

            ae.getMessage should be("/ by zero")
            2 should (be > 1 and be < 3)
        }
    }

}