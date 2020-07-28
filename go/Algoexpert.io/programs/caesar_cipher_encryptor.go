package programs
/*
	It just a program which shows how we can secretly send some
	message to someone, without knowing the message tp another person
 */
func Encryptor(message string)(string , string){
	var encryptMessage string
	var decryptMessage string
	for index, _ := range message{
		encryptMessage += string(byte(message[index]+2))
	}
	for index, _:= range encryptMessage {
		decryptMessage += string(byte(encryptMessage[index]-2))
	}
	//fmt.Println("encrypt message:", encryptMessage)
	//fmt.Println("decrypt message:", decryptMessage)
	return "Encrypt Message: "+encryptMessage, "\nDecrypt Message: "+decryptMessage
}

