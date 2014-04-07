#include "wtA4.h"
#include "syscalls.h"

void Courier(){
	int parent;
	int receiver; 
	int type;
	ComReqStruct send, reply;

	// The courier will transfer data between "parent" and "receiver"
	Receive(&parent, (char *)&reply, sizeof(ComReqStruct));
	receiver = reply.data1;
	send.type = REQUEST_OK;
	Reply(parent, (char *)&send, sizeof(ComReqStruct));

	FOREVER{
		send.type = COURIER;
		// First ask if anything needed to be sent
		Send(receiver, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct));
		// Deliver. The "send" is the reply from the parent
		Send(parent, (char *)&reply, sizeof(ComReqStruct), (char *)&send, sizeof(ComReqStruct));
	}

}
