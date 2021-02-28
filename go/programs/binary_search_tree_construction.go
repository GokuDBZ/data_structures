package programs
type Bst struct{
	value int
	left *Bst
	right *Bst
}
func (b *Bst) addNode(value int){
	if b == nil{
		b= new(Bst)
		b.value = value
	}

}
func (b *Bst)Insertion(value int){
	if b == nil{
		b = new(Bst)
		b.value = value
	}

}
func (b *Bst)Deletion(value int){

}
func (b *Bst)Searching(value int) bool{
	for b!=nil{

	}
	return false
}