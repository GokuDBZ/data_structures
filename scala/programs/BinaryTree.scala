/**
 * Binary Tree is balanced tree in which left sub tree is having value less than value than sub tree at right
 */
object Tree1 {
    def main(args:Array[String]){
        val tree = new BinaryTree(5)
        println(tree.value)
        tree.insert(7)
        tree.insert(8)

        tree.inOrderTraversal()
    }
}

 class BinaryTree {

   var left: BinaryTree = null
   var right: BinaryTree = null
   var parent: BinaryTree = null
   var value: Int = 0

    def this(value:Int, parent:BinaryTree){
        this()
        this.left = null
        this.right = null
        this.parent = parent
        this.value = value
    }

    def this(value:Int) {
        this()
        this.value = value
        this.right = null
        this.left = null
        this.parent = null
    }

    def insert(value: Int, parent: BinaryTree = null) : BinaryTree = {
        if (value < this.value){ // Move to Left
            if(this.left == null){
               println("inserting into left") 
               this.left = new BinaryTree(value, this)
               this  
            }
            else {
               this.left.insert(value)
            }
        }    
        else { // Move to Right
            if(this.right == null) {
                println("inserting into right") 
                this.right = new BinaryTree(value, this)
                this   
            }
            else {
                println("left node is present")
                this.right.insert(value)
            }
        }  
    }

    /**
      * Pre Order Traversal
      * Order -> Root  Left Right
     
        
     */
    def preOrderTraversal(node: BinaryTree  = this):Unit = {
        if(node == null){
            return
        }
        println(s"${node.value}") // root value
        preOrderTraversal(node.left)
        preOrderTraversal(node.right)
    }

    /**
      * In Order Traversal

      * Left Root Right
     */
    def inOrderTraversal(node: BinaryTree  = this):Unit = {

        if(node == null){
            return
        }
        // root value
       preOrderTraversal(node.left)
       println(s"${node.value}")
       preOrderTraversal(node.right)
    }

    /**
      * Post Order Traversal
       
       Left Right Root
     */
    def postOrderTraversal(node: BinaryTree  = this):Unit = {
      if(node == null){
        return
      }  
      preOrderTraversal(node.left)
      preOrderTraversal(node.right)
      println(s"${node.value}")  


    }


 }