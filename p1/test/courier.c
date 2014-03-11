#include "wtA4.h"

void Courier(){
	int parent;
	int receiver; 
	int type;
	ComReqStruct send, reply;

	Receiver(&parent, (char *)&reply, sizeof(ComReqStruct));
	receiver = reply.data1;

	FOREVER{
		send.type = COURIER;
		// Ask parent if something needs to be delivered. 
		// The reply is the thing to be deliver.
		Send(parent, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct));
		// Deliver. The "send" is the reply from the receiver
		Send(receiver, (char *)&reply, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct));
	}

}