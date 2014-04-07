/*
 * wtA4.c
 */
#include "wtA4.h"
#include "syscalls.h"
#include "nameServer.h"
#include "clockServer.h"
#include "calibrateServer.h"
#include "notifier.h"
#include "io.h"
#include "routeFinder.h"
#include "trainDriver.h"
#include "track_data.h"
#include "courier.h"
#include "trackMonitor.h"

/*
 * User tasks are below
 */

void Terminal() {
	int server = WhoIs( "u2g" );
	// int router = WhoIs( "route" );
	// int driver = WhoIs( "driver" );
	// int myAdmin = MyParentTid();
	ComReqStruct send, reply;
	char input[MAX_INPUT];
	unsigned int inputIndex = 0;

	int myAdmin, driver;
	Receive(&myAdmin, (char *)&send, sizeof(ComReqStruct));
	Reply(myAdmin, (char *)&send, sizeof(ComReqStruct));
	int train1 = send.data1;
	int train2 = send.data2;

	FOREVER {
		char c = Getc( server, COM2 );
		if ( inputIndex == MAX_INPUT && c != '\r' && c != '\b' ) continue;

		if ( c == '\r' ) {
			unsigned int i;
			send.type = BAD_INPUT;
			for ( i = 0; i < inputIndex; i++ ) {
				if ( input[i] != ' ' ) {
					if ( input[i] == 'q' ) {
						for ( i = i+1; i < inputIndex; i++ ) {
							if ( input[i] != ' ') break;
						}
						if ( i == inputIndex ) send.type = QUIT_COMMAND;
					} else if ( input[i] == 't' && input[i+1] == 'r' ) {
						int speed = -1;
						int train = -1;
						int cmdBad = 1;
						for ( i = i+2; i < inputIndex; i++ ) {
							if ( input[i] != ' ' ) {
								if ( input[i] >= '1' && input[i] <= '9' && input[i+1] == ' ' ) {
									train = input[i] - NUM_OFFSET;
									i += 2;
									cmdBad = 0;
									break;
								} else if ( input[i] >= '1' && input[i] <= '7' && input[i+1] >= '0' && input[i+1] <= '9' && input[i+2] == ' ') {
									train = input[i+1] - NUM_OFFSET + ( input[i] - NUM_OFFSET )*10;
									i += 3;
									cmdBad = 0;
									break;
								} else if ( input[i] == '8' && input[i+1] == '0' && input[i+2] == ' ' ) {
									train = 80;
									i += 3;
									cmdBad = 0;
									break;
								}
								break;
							}
						}
						if ( cmdBad == 1 ) {
							inputIndex = 0;
							break;
						}
						for ( ; i < inputIndex; i++ ) {
							if ( input[i] != ' ' ) {
								if ( input[i] >= '0' && input[i] <= '9' && ( input[i+1] == ' ' || (i+1 == inputIndex) )  ) {
					   				speed = input[i] - NUM_OFFSET;
					   				i += 1;
					   				cmdBad = 0;
					   				break;
					   			} else if ( input[i] == '1' && input[i+1] >= '0' && input[i+1] <= '4' ) {
					   				speed = input[i+1] - NUM_OFFSET + 10;
					   				i += 2;
					   				cmdBad = 0;
					   				break;
					   			} 
					   			break;
							}
						}
						if ( cmdBad == 1 ) {
							inputIndex = 0;
							break;
						}
						for ( ; i < inputIndex; i++ ) {
							if ( input[i] != ' ' ) break;
						}
						if ( i == inputIndex && speed != -1 && train != -1) {
							send.type = SPEED_COMMAND;
							send.data1 = speed;
							send.data2 = train;
						} else if ( i <= inputIndex && speed != -1 && train != -1 ) {
							int trackIndex = -1;
							for ( ; i < inputIndex; i++ ) {
								if ( input[i] != ' ' ) {
									if ( input[i] == 'B' && input[i+1] == 'R' ) {
										if ( input[i+2] >= '1' && input[i+2] <= '9' && ( input[i+3] == ' ' || (i+3 == inputIndex) ) ) {
											trackIndex = 80 + (input[i+2] - NUM_OFFSET - 1)*2;
											i += 3;
											break;
										} else if ( input[i+2] == '1' && input[i+3] >= '0' && input[i+3] <= '8' && ( input[i+4] == ' ' || (i+4 == inputIndex) ) ) {
											trackIndex = 80 + (input[i+3] - NUM_OFFSET + 10 - 1)*2;
											i += 4;
											break;
										} else if ( input[i+2] == '1' && input[i+3] == '5' && input[i+4] >= '3' && input[i+4] <= '6' && ( input[i+5] == ' ' || (i+5 == inputIndex) ) ) {
											trackIndex = 116 + (input[i+4] - NUM_OFFSET + 150 - 153)*2;
											i += 5;
											break;
										}
									} else if ( input[i] == 'M' && input[i+1] == 'R' ) {
										if ( input[i+2] >= '1' && input[i+2] <= '9' && ( input[i+3] == ' ' || (i+3 == inputIndex) ) ) {
											trackIndex = 81 + (input[i+2] - NUM_OFFSET - 1)*2;
											i += 3;
											break;
										} else if ( input[i+2] == '1' && input[i+3] >= '0' && input[i+3] <= '8' && ( input[i+4] == ' ' || (i+4 == inputIndex) ) ) {
											trackIndex = 81 + (input[i+3] - NUM_OFFSET + 10 - 1)*2;
											i += 4;
											break;
										} else if ( input[i+2] == '1' && input[i+3] == '5' && input[i+4] >= '3' && input[i+4] <= '6' && ( input[i+5] == ' ' || (i+5 == inputIndex) ) ) {
											trackIndex = 117 + (input[i+4] - NUM_OFFSET + 150 - 153)*2;
											i += 5;
											break;
										}
									} else if ( input[i] >= 'A' && input[i] <= 'E' ) {
										if ( input[i+1] >= '1' && input[i+1] <= '9' && ( input[i+2] == ' ' || (i+2 == inputIndex) ) ) {
											trackIndex = (input[i]-65) * 16 + (input[i+1] - NUM_OFFSET - 1);
											i += 2;
											break;
										} else if ( input[i+1] == '1' && input[i+2] >= '0' && input[i+2] <= '6' && ( input[i+3] == ' ' || (i+3 == inputIndex) ) ) {
											trackIndex = (input[i]-65) * 16 + (input[i+2] - NUM_OFFSET + 10 - 1);
											i += 3;
											break;
										}
									}
								}
							}
							for ( ; i < inputIndex; i++ ) {
								if ( input[i] != ' ' ) break;
							}
							if ( i == inputIndex && trackIndex != -1 ) {
								send.type = GOTO_COMMAND;
								send.data1 = trackIndex;
								send.data2 = speed;
								send.data3 = train;
								// Pass the command to the driver
								if (train == 49)
								{
									Send( train1, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );
								} else if(train == 45){
									Send( train2, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );
								}
							}
						}
					} else if ( input[i] == 'r' && input[i+1] == 'v' ) {
						int train = -1;
						int cmdBad = -1;
						for ( i = i+2; i < inputIndex; i++ ) {
							if ( input[i] != ' ' ) {
								if ( input[i] >= '1' && input[i] <= '9' && ( input[i+1] == ' ' || (i+1 == inputIndex) ) ) {
									train = input[i] - NUM_OFFSET;
									i += 1;
									cmdBad = 0;
									break;
								} else if ( input[i] >= '1' && input[i] <= '7' && input[i+1] >= '0' && input[i+1] <= '9') {
									train = input[i+1] - NUM_OFFSET + ( input[i] - NUM_OFFSET )*10;
									i += 2;
									cmdBad = 0;
									break;
								} else if ( input[i] == '8' && input[i+1] == '0' ) {
									train = 80;
									i += 2;
									cmdBad = 0;
									break;
								}
								break;
							}
						}
						if ( cmdBad == 1 ) {
							inputIndex = 0;
							break;
						}
						for ( ; i < inputIndex; i++ ) {
							if ( input[i] != ' ' ) break;
						}
						if ( i == inputIndex && train != -1 ) {
							send.type = REVERSE_COMMAND;
							send.data1 = train;
						}
					} else if ( input[i] == 's' && input[i+1] == 'w' ) {
						int switchNo = -1;
						int state = -1;
						int cmdBad = 1;
						for ( i = i+2; i < inputIndex; i++ )  {
							if ( input[i] != ' ' ) {
								if ( input[i] >= '1' && input[i] <= '9' && input[i+1] == ' ' ) {
									switchNo = input[i] - NUM_OFFSET;
									i += 2;
									cmdBad = 0;
									break;
								} else if ( input[i] == '1' && input[i+1] >= '0' && input[i+1] <= '8' && input[i+2] == ' ') {
									switchNo = input[i+1] - NUM_OFFSET + 10;
									i += 3;
									cmdBad = 0;
									break;
								} else if ( input[i] == '1' && input[i+1] == '5' && input[i+2] >= '3' && input[i+2] <= '6' && input[i+3] == ' ' ) {
									switchNo = input[i+2] - NUM_OFFSET + 100 + 50;
									i += 4;
									cmdBad = 0;
									break;
								}
								break;
							}
						}
						if ( cmdBad == 1 ) {
							inputIndex = 0;
							break;
						}
						for ( ; i < inputIndex; i++ ) {
							if ( input[i] != ' ' ) {
								if ( input[i] == 'S' ) {
					   				state = 33;
					   				i += 1;
					   				cmdBad = 0;
					   				break;
					   			} else if ( input[i] == 'C' ) {
					   				state = 34;
					   				i += 1;
					   				cmdBad = 0;
					   				break;
					   			} 
					   			break;
							}
						}
						if ( cmdBad == 1 ) {
							inputIndex = 0;
							break;
						}
						for ( ; i < inputIndex; i++ ) {
							if ( input[i] != ' ' ) break;
						}
						if ( i == inputIndex && state != -1 && switchNo != -1) {
							send.type = SWITCH_COMMAND;
							send.data1 = state;
							send.data2 = switchNo;
						}
					} else if ( input[i] == 's' && input[i+1] == 's' ) {
						int sensor = -1;
						int cmdBad = -1;
						for ( i = i+2; i < inputIndex; i++ ) {
							if ( input[i] != ' ' ) {
								if ( input[i] >= '0' && input[i] <= '9' && ( input[i+1] == ' ' || (i+1 == inputIndex) ) ) {
									sensor = input[i] - NUM_OFFSET;
									i += 1;
									cmdBad = 0;
									break;
								} else if ( input[i] >= '1' && input[i] <= '7' && input[i+1] >= '0' && input[i+1] <= '9') {
									sensor = input[i+1] - NUM_OFFSET + ( input[i] - NUM_OFFSET )*10;
									i += 2;
									cmdBad = 0;
									break;
								} 
								break;
							}
						}
						if ( cmdBad == 1 ) {
							inputIndex = 0;
							break;
						}
						for ( ; i < inputIndex; i++ ) {
							if ( input[i] != ' ' ) break;
						}
						if ( i == inputIndex && sensor != -1 ) {
							send.type = STOP_COMMAND;
							send.data1 = sensor;
						}
					}
					break;
				}
			}
			inputIndex = 0;
		} else if ( c == '\b' ) {
			if ( inputIndex == 0 ) continue;
			send.type = BACKSPACE;
			inputIndex--;
		} else {
			send.type = PRINT_CHAR;
			send.data1 = c;
			input[inputIndex] = c;
			inputIndex++;
		}
		if (send.type != GOTO_COMMAND)
		{	// We want the trainDriver to send the command itself
			Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );
		}
	}
}

void Train() {
	int u1g = WhoIs( "u1g" );
	int u1x = WhoIs( "u1x" );
	int myAdmin = MyParentTid();
	ComReqStruct send, reply;

	// Hacking ........
	Putc( u1x, COM1, 133 );
	Getc( u1g, COM1 );
	Getc( u1g, COM1 );
	Getc( u1g, COM1 );

	char upper, lower;
	FOREVER {
		Putc( u1x, COM1, 133 );
		int i;
		for ( i=0; i < 10; i++ ) {
			if ( i % 2 == 0 ) {
				upper = Getc( u1g, COM1 );
			} else {
				lower = Getc( u1g, COM1 );
				send.type = SENSOR_UPDATE;
				send.data1 = i/2 + 1;
				send.data2 = upper;
				send.data3 = lower;
				Send( myAdmin, (char *)&send, sizeof( ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );
			}
		}
	}
}

void reverseTask( ) {
	int printer = MyParentTid();
	int server = WhoIs( "clock" );
	ComReqStruct send, reply;
	int loc;

	FOREVER {
		send.type = WAITING_STOP;
		Send( printer, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );
		loc = reply.data2;
		Delay( server, reply.data1 );
		send.type = DONE_STOP;
		send.data1 = loc;
		Send( printer, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );
	}
}

void Printer( ) {
	// int u2get = WhoIs( "u2g" );
	// char throwAway = Getc( u2get, COM2 );
	int sender;
	ComReqStruct recv, reply;

	Receive(&sender, (char *)&recv, sizeof(ComReqStruct));
	int train49 = recv.data1;
	int train45 = recv.data2;
	reply.type = REQUEST_OK;
	Reply(sender, (char *)&reply, sizeof(ComReqStruct));


	RegisterAs( "printer" );
	track_node track[TRACK_MAX];
	init_tracka(track);

	int myAdmin = MyParentTid();
	int clk = WhoIs( "clock" );
	int uart2XServer = WhoIs( "u2x" );
	int uart1XServer = WhoIs( "u1x ");
	int monitor = 0;
	myprintf( uart2XServer, COM2, "\033[2J");

	myprintf( uart2XServer, COM2, "\033[H\033[KTIME 00:00:0");

	myprintf( uart2XServer, COM2, "\033[7;1HTimeInterval: 0\n");


	myprintf( uart2XServer, COM2, "\033[3;1HSwitches\n");
	myprintf( uart2XServer, COM2, "1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|153|154|155|156\n");
	myprintf( uart2XServer, COM2, "------------------------------------------------------------\n");
	myprintf( uart2XServer, COM2, "?|?|?|?|?|?|?|?|?|? |? |? |? |? |? |? |? |? | ? | ? | ? | ?");

	myprintf( uart2XServer, COM2, "\033[9;1HSensors:  1 = train passing, 0 = nothing\n" );
	myprintf( uart2XServer, COM2, "---------------------------------------------------------------\n");
	myprintf( uart2XServer, COM2, "A1 |A2 |A3 |A4 |A5 |A6 |A7 |A8 |A9 |A10|A11|A12|A13|A14|A15|A16\n");
	myprintf( uart2XServer, COM2, "---------------------------------------------------------------\n");
	myprintf( uart2XServer, COM2, " 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 \n");
	myprintf( uart2XServer, COM2, "---------------------------------------------------------------\n");
	myprintf( uart2XServer, COM2, "B1 |B2 |B3 |B4 |B5 |B6 |B7 |B8 |B9 |B10|B11|B12|B13|B14|B15|B16\n");
	myprintf( uart2XServer, COM2, "---------------------------------------------------------------\n");
	myprintf( uart2XServer, COM2, " 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 \n");
	myprintf( uart2XServer, COM2, "---------------------------------------------------------------\n");
	myprintf( uart2XServer, COM2,  "C1 |C2 |C3 |C4 |C5 |C6 |C7 |C8 |C9 |C10|C11|C12|C13|C14|C15|C16\n");
	myprintf( uart2XServer, COM2,  "---------------------------------------------------------------\n");
	myprintf( uart2XServer, COM2,  " 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 \n");
	myprintf( uart2XServer, COM2,  "---------------------------------------------------------------\n");
	myprintf( uart2XServer, COM2,  "D1 |D2 |D3 |D4 |D5 |D6 |D7 |D8 |D9 |D10|D11|D12|D13|D14|D15|D16\n");
	myprintf( uart2XServer, COM2,  "---------------------------------------------------------------\n");
	myprintf( uart2XServer, COM2,  " 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 \n");
	myprintf( uart2XServer, COM2,  "---------------------------------------------------------------\n");
	myprintf( uart2XServer, COM2,  "E1 |E2 |E3 |E4 |E5 |E6 |E7 |E8 |E9 |E10|E11|E12|E13|E14|E15|E16\n");
	myprintf( uart2XServer, COM2,  "---------------------------------------------------------------\n");
	myprintf( uart2XServer, COM2,  " 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 \n");
	myprintf( uart2XServer, COM2,  "---------------------------------------------------------------");

	myprintf( uart2XServer, COM2,  "\033[33;1H>>\033[33;4H");	

	// Start Train Controller Here
	Putc(uart1XServer, COM1, (char) 0x60);

	int cursor = 4;

	int min = 0;
	int sec = 0;
	int tenth = 0;
	int first = 0;
	int second = 0;

	int reverseTrains[80];
	int speedTrains[80];
	char sensorStates[80];
	int trainDrivers[80];
	// subscriber: Used to find out who is subscribing for sensor data.
	//        	   Should be an array in the future
	int subscriber = 0; 
	int timeCount = 0;

	int counter;
	for ( counter = 0; counter < 80; counter++ ) {
		speedTrains[counter] = -1;
		sensorStates[counter] = 0;
		reverseTrains[counter] = 0;
		trainDrivers[counter] = 0;
	}

	void (*func)();
	func = Courier;
	int adminCour = Create( 2, func );

	func = Courier;
	int timeCour = Create( 2, func );

	reply.data1 = myAdmin;
	Send( adminCour, (char *)&reply, sizeof(ComReqStruct), (char *)&recv, sizeof(ComReqStruct) );

	reply.data1 = clk;
	Send( timeCour, (char *)&reply, sizeof(ComReqStruct), (char *)&recv, sizeof(ComReqStruct) );

	// myprintf( uart2XServer, COM2, "\033[32m" );
	// for ( counter = 0; counter < 22; counter++ ) {
	// 	char swn;
	// 	char pos;
	// 	if ( counter < 18 ) {
	// 		swn = counter + 1;
	// 	} else {
	// 		swn = counter + 134 + 1;
	// 	}
	// 	Putc( uart1XServer, COM1, 34 );
	// 	Putc( uart1XServer, COM1, swn );
	// 	if ( swn >= 1 && swn <= 10 ) {
	// 		pos = swn*2 - 1;
	// 	} else if ( swn >= 11 && swn <= 18 ) {
	// 		pos = 22 + 3*(swn % 11);
	// 	} else {
	// 		pos = 47 + 4*(swn % 153);
	// 	}
	// 	myprintf( uart2XServer, COM2, "\033[6;%dHC", pos);
	// }
	// myprintf( uart2XServer, COM2, "\033[0m" );



	myprintf( uart2XServer, COM2, "\033[32;1H\033[K\033[32mLoading, Please Wait\n\033[0m\033[33;4H");
	Delay( clk, 300 );
	myprintf( uart2XServer, COM2, "\033[32;1H\033[K\033[33;4H");

	int stopSensor = -1;
	int stopping = 0;
	// int waitForTrip = 0;

	// int first;
	// int second;
	// int capture = 0;

	// Flag for stopping sensor queries
	StopSensor sensorTrain49;
	sensorTrain49.sensor = -1;
	sensorTrain49.triggered = 0;

	StopSensor sensorTrain45;
	sensorTrain45.sensor = -1;
	sensorTrain45.triggered = 0;

	int train49sub = 0;
	int train45sub = 0;

	FOREVER {
		Receive( &sender, (char *)&recv, sizeof(ComReqStruct) );

		switch (recv.type) {
			case TIME_UPDATE:
				{
					timeCount++;
					int percent = IdleTime( );
					tenth = (tenth + 1) % 10;
					if ( tenth == 0 ) {
						sec = (sec + 1 ) % 60;
						if ( sec == 0 ) {
							min = min + 1;
						}
					}
					//myprintf( uart2XServer, COM2, "\033[H\033[KTIME %d%d:%d%d:%d\033[33;%dH", min/10, min%10, sec/10, sec%10, tenth, cursor );
					myprintf( uart2XServer, COM2, "\033[H\033[KTIME %d%d:%d%d:%d\n", min/10, min%10, sec/10, sec%10, tenth );
					myprintf( uart2XServer, COM2, "Idle Usage: %d%%\033[33;%dH", percent, cursor );
					// if (locationInfo != -1)
					// { 
					// 	int t = Time(clk);
					// 	int d = ((double)(t - locationInfo[2]) / 100) * locationInfo[1];
					// 	myprintf( uart2XServer, COM2, "\033[8;1H\033[KLocation: %dmm past sensor: %s\033[33;%dH",  d, track[locationInfo[0]].name, cursor);
					// }
				}
				break;
			case TRAIN_POS:
				{
				}
				break;
			case PRINT_CHAR:
				{
					Putc( uart2XServer, COM2, recv.data1 );
					cursor++;
				}
				break;
			case BAD_INPUT:
				{
					myprintf( uart2XServer, COM2, "\033[32;1H\033[K\033[31mBAD COMMAND\n");
					myprintf( uart2XServer, COM2, "\033[0m\033[33;4H\033[K" );
					cursor = 4;
				}
				break;
			case BACKSPACE:
				{
					cursor--;
					myprintf( uart2XServer, COM2, "\033[33;%dH\033[K", cursor );
				}
				break;
			case QUIT_COMMAND:
				{
					Putc( uart1XServer, COM1, 0x61 );
					myprintf( uart2XServer, COM2, "\033[32;1H\033[K\033[32mShutting down\n");
					myprintf( uart2XServer, COM2, "\033[0m\033[33;4H\033[K" );
					Delay( clk, 300 );
					stopping = 1;
				}
				break;
			case SPEED_COMMAND:
				{
					// first = Time(clk);
					Putc( uart1XServer, COM1, recv.data1 );
					Putc( uart1XServer, COM1, recv.data2 );
					// capture = 1;
					myprintf( uart2XServer, COM2, "\033[32;1H\033[K\033[32mSetting Train: %d Speed: %d\n", recv.data2, recv.data1);
					myprintf( uart2XServer, COM2, "\033[0m\033[33;4H\033[K" );
					int loc = recv.data2;
					int spd = recv.data1;
					if ( reverseTrains[loc-1] == 0 ) {
						func = reverseTask;
						int tid = Create( 2, func );
						reverseTrains[loc-1] = tid;
						speedTrains[loc-1] = spd;
					} else {
						speedTrains[loc-1] = spd;
					}
					cursor = 4;
				}
				break;
			case SWITCH_COMMAND:
				{
					Putc( uart1XServer, COM1, recv.data1 );
					Putc( uart1XServer, COM1, recv.data2 );
					char sOrC = recv.data1 == 33 ? 'S' : 'C';
					int pos = recv.data2;
					if ( pos >= 1 && pos <= 10 ) {
						pos = pos*2 - 1;
					} else if ( pos >= 11 && pos <= 18 ) {
						pos = 22 + 3*(pos % 11);
					} else {
						pos = 47 + 4*(pos % 153);
					}
					myprintf( uart2XServer, COM2, "\033[32m\033[6;%dH%c\033[0m", pos, sOrC);
					myprintf( uart2XServer, COM2, "\033[32;1H\033[K\033[32mSetting Switch: %d State: %c\n", recv.data2, sOrC);
					myprintf( uart2XServer, COM2, "\033[0m\033[33;4H\033[K" );
					cursor = 4;
				}
				break;
			case SENSOR_UPDATE:
				{
					int high = (recv.data1 + 4) % 5;
					if ( high == 0 ) high = 5;
					int low = (recv.data1 + 3) % 5;
					if ( low == 0 ) low = 5;
					int row;
					char mask = 0x80;
					int index;
					int col;
					int counter;
					for ( counter = 1; counter <=16; counter++ ) {
						col = (counter - 1)*4 + 2;
						char onOrOff = 0;
						if ( counter < 9 ) {
							if ( high == 2 ) row = 29;
							else if ( high == 1 ) row = 25;
							else row = high*4 + 1;
							if ( (recv.data3 & mask ) == mask ) onOrOff = 1;
						} else {
							if ( low == 2 ) row = 29;
							else if ( low == 1 ) row = 25;
							else row = low*4 + 1;
							if ( (recv.data2 & mask ) == mask ) onOrOff = 1;
						}
						index = (((row - 1)/4 - 2 ) - 1 ) * 16 + counter - 1;
						// if ( stopSensor != -1 ) {
						// 	if ( index == stopSensor && onOrOff == 1 ) {
						// 		Putc( uart1XServer, COM1, 0 );
						// 		Putc( uart1XServer, COM1, 45 );
						// 		stopSensor = -1;
						// 	}
						// }

						if ( sensorTrain49.sensor != -1 ) {
							if ( index == sensorTrain49.sensor && onOrOff == 1 ) {
								sensorTrain49.triggered = 1;
							}
						}

						if ( sensorTrain45.sensor != -1 ) {
							if ( index == sensorTrain45.sensor && onOrOff == 1 ) {
								sensorTrain45.triggered = 1;
							}
						}

						// if ( index == 16 && onOrOff == 1 ) {
						// 	first = Time(clk);
						// }
						// if ( index == 61 && onOrOff == 1 ) {
						// 	second = Time(clk);
						// 	int wtfReal = 398/(((double)second - first)/100);
						// 	myprintf( uart2XServer, COM2, "\033[K\033[34;1H%d\033[33;%dH", wtfReal, cursor);
						// }

						// if ( index == 38 && onOrOff == 1 && capture ) {
						// 	second = Time(clk);
						// 	int wtf = second - first;
						// 	myprintf( uart2XServer, COM2, "\033[K\033[34;1H%d\033[33;%dH", wtf, cursor);
						// 	Putc( uart1XServer, COM1, 0 );
						// 	Putc( uart1XServer, COM1, 45 );
						// 	capture = 0;
						// }
						// if ( index == 16 && onOrOff == 1 ) {
						// 	first = Time(clk);
						// }
						// if ( index == 61 && onOrOff == 1 ) {
						// 	second = Time(clk);
						// 	int wtfReal = 398/(((double)second - first)/100);
						// 	myprintf( uart2XServer, COM2, "\033[K\033[34;1H%d\033[33;%dH", wtfReal, cursor);
						// }

						if ( sensorStates[index] != onOrOff ) {
							if ( subscriber && onOrOff == 1 ) {  // Someone has subscribe for data!! Give him.
								ComReqStruct junk;
								reply.type = SENSOR_TRIGGERED;
								reply.data1 = index;
								// Notify the trainDriver
								if (monitor == 0)
								{
									monitor = WhoIs("monitor");
								}
								Send( monitor, (char *)&reply, sizeof(ComReqStruct), (char *)&junk, sizeof(ComReqStruct) );
							}
							if ( train49sub && onOrOff == 1 ) {
								//myprintf( uart2XServer, COM2, "\033[44;1H\033[K49 bug\033[33;%dH", cursor );

								ComReqStruct junk;
								reply.type = SENSOR_TRIGGERED;
								reply.data1 = index;
								Send( train49, (char *)&reply, sizeof(ComReqStruct), (char *)&junk, sizeof(ComReqStruct) );
							}
							if ( train45sub && onOrOff == 1 ) {
								//myprintf( uart2XServer, COM2, "\033[45;1H\033[K45 bug\033[33;%dH", cursor );

								ComReqStruct junk;
								reply.type = SENSOR_TRIGGERED;
								reply.data1 = index;
								Send( train45, (char *)&reply, sizeof(ComReqStruct), (char *)&junk, sizeof(ComReqStruct) );
							}
							if ( onOrOff == 1 ) {
								myprintf( uart2XServer, COM2, "\033[32m\033[%d;%dH%d\033[0m", row, col, onOrOff );
							} else {
								myprintf( uart2XServer, COM2, "\033[%d;%dH%d", row, col, onOrOff );
							}
							myprintf( uart2XServer, COM2, "\033[33;%dH", cursor );
							sensorStates[index] = onOrOff;
						}
						if ( counter == 8 ) mask = 0x80;
						else mask = mask >> 1;
					}
				}
				break;
			case REVERSE_COMMAND:
				{
					int loc = recv.data1;
					if ( reverseTrains[loc-1] == 0 ) {
						myprintf( uart2XServer, COM2, "\033[32;1H\033[K\033[31mSet Train %d's Speed First\n", loc);
						myprintf( uart2XServer, COM2, "\033[0m\033[33;4H\033[K" );
					} else {
						Putc( uart1XServer, COM1, 0 );
						Putc( uart1XServer, COM1, recv.data1 );
						myprintf( uart2XServer, COM2, "\033[32;1H\033[K\033[32mReversing Train %d\n", recv.data1);
						myprintf( uart2XServer, COM2, "\033[0m\033[33;4H\033[K" );
						reply.type = REQUEST_OK;
						reply.data1 = 400;
						reply.data2 = loc;
						Reply( reverseTrains[loc-1], (char *)&reply, sizeof(ComReqStruct) );
					}
					cursor = 4;
				}
				break;
			case DONE_STOP:
				{
					int loc = recv.data1;
					int spd = speedTrains[loc-1];
					Putc( uart1XServer, COM1, 0xf );
					Putc( uart1XServer, COM1, loc );
					Putc( uart1XServer, COM1, spd );
					Putc( uart1XServer, COM1, loc );
				}
				break;
			case STOP_COMMAND:
				{
					stopSensor = recv.data1;
					myprintf( uart2XServer, COM2, "\033[32;1H\033[K\033[32mStop at sensor: %d\n", recv.data1);
					myprintf( uart2XServer, COM2, "\033[0m\033[33;4H\033[K" );
					cursor = 4;
				}
				break;
			case GOTO_COMMAND:
				{
					Putc( uart1XServer, COM1, recv.data1 );
					Putc( uart1XServer, COM1, recv.data2 );
					myprintf( uart2XServer, COM2, "\033[32;1H\033[K\033[32mSetting Train: %d Speed: %d Loc: %s\n", recv.data2, recv.data1, track[recv.data3].name );
					myprintf( uart2XServer, COM2, "\033[0m\033[33;4H\033[K" );
					cursor = 4;
				}
				break;
			case SUBSCRIBE:
				{
					if ( recv.data1 == train49 ) {
						train49sub = 1;
					} else if ( recv.data1 == train45 ) {
						train45sub = 1;
					} else {
						subscriber = recv.data1;
					}
				}
				break;
			case UNSUBSCRIBE:
				{   // Do not send sensor data to driver anymore!!
					if ( recv.data1 == train49 ) {
						train49sub = 0;
					} else if ( recv.data1 == train45 ) {
						train45sub = 0;
					} else {
						subscriber = 0;
					}
				}
				break;
			case UPDATE_STAT:
				{
					// myprintf( uart2XServer, COM2, "\033[31;1H\033[KRun For %d, Speed: %d, Distance:%d\n", recv.data1, recv.data2, recv.data3);
					if ( recv.data4 == train49 ) {
						int l;
						myprintf( uart2XServer, COM2, "\033[47;1H\033[KTrain49: ");
						for ( l = ((Path *)recv.data1)->startIndex; l >= 0; l-- ) {
							myprintf( uart2XServer, COM2, "%s ", track[((Path *)recv.data1)->path[l].index] );
						}

						// myprintf( uart2XServer, COM2, "\033[48;1H\033[K");
						// for ( l = ((Path *)recv.data1)->startIndex; l >= 0; l-- ) {
						// 	myprintf( uart2XServer, COM2, "%d ", ((Path *)recv.data1)->path[l].reverse );
						// }
						myprintf( uart2XServer, COM2, "\033[33;%dH", cursor);
					} else if ( recv.data4 == train45 ) {
						int l;
						myprintf( uart2XServer, COM2, "\033[49;1H\033[KTrain45: ");
						for ( l = ((Path *)recv.data1)->startIndex; l >= 0; l-- ) {
							myprintf( uart2XServer, COM2, "%s ", track[((Path *)recv.data1)->path[l].index] );
						}

						// myprintf( uart2XServer, COM2, "\033[50;1H\033[K");
						// for ( l = ((Path *)recv.data1)->startIndex; l >= 0; l-- ) {
						// 	myprintf( uart2XServer, COM2, "%d ", ((Path *)recv.data1)->path[l].reverse );
						// }
						myprintf( uart2XServer, COM2, "\033[33;%dH", cursor);
					}
				}
				break;
			case SPEED_NOPRINT:
				{
					Putc( uart1XServer, COM1, recv.data1 );
					Putc( uart1XServer, COM1, recv.data2 );
				}
				break;
			case GOTO_NOSPEED:
				{
					myprintf( uart2XServer, COM2, "\033[32;1H\033[K\033[32mSetting Train: %d Speed: %d Loc: %s\n", recv.data2, recv.data1, track[recv.data3].name );
					myprintf( uart2XServer, COM2, "\033[0m\033[33;4H\033[K" );
					cursor = 4;
				}
				break;
			case DEBUG:
				if ( recv.data4 == train49 ) {
					myprintf( uart2XServer, COM2, "\033[34;1H\033[KTrain 49: How far: %d Offset: %d Speed: %d\033[33;%dH", recv.data1, recv.data2, recv.data3, cursor );
				} else if ( recv.data4 == train45 ) {
					myprintf( uart2XServer, COM2, "\033[35;1H\033[KTrain 45: How far: %d Offset: %d Speed: %d\033[33;%dH", recv.data1, recv.data2, recv.data3, cursor );
				}
				break;
			case MARK_SENSOR:
				if ( recv.data2 == train49 ) {
					sensorTrain49.sensor = recv.data1;
					myprintf( uart2XServer, COM2, "\033[40;1H\033[KStop at sensor %s train 49\033[33;%dH", track[recv.data1].name, cursor );
				} else if ( recv.data2 == train45 ) {
					sensorTrain45.sensor = recv.data1;
					myprintf( uart2XServer, COM2, "\033[41;1H\033[KStop at sensor %s train 45\033[33;%dH", track[recv.data1].name, cursor );
				}
				break;
			case SENSOR_QUERY:
				reply.type == SENSOR_QUERY;
				if ( sender == train49 ) {
					if ( sensorStates[sensorTrain49.sensor] == 1 ) {
						reply.data1 = ON_SENSOR;
						myprintf( uart2XServer, COM2, "\033[36;1H\033[KTrain 49 On Sensor\033[33;%dH", cursor );
					} else if ( sensorTrain49.triggered == 1 ) {
						reply.data1 = PASSED_SENSOR;
						myprintf( uart2XServer, COM2, "\033[36;1H\033[KTrain 49 Passed Sensor\033[33;%dH", cursor );
					} else {
						reply.data1 = NOT_PASSED_SENSOR;
						myprintf( uart2XServer, COM2, "\033[36;1H\033[KTrain 49 Have not hit Sensor\033[33;%dH", cursor );
					}
					sensorTrain49.sensor = -1;
					sensorTrain49.triggered = 0;
					Reply( sender, (char *)&reply, sizeof(ComReqStruct) );
				} else if ( sender == train45 ) {
					if ( sensorStates[sensorTrain45.sensor] == 1 ) {
						reply.data1 = ON_SENSOR;
						myprintf( uart2XServer, COM2, "\033[37;1H\033[KTrain 45 On Sensor\033[33;%dH", cursor );
					} else if ( sensorTrain45.triggered == 1 ) {
						reply.data1 = PASSED_SENSOR;
						myprintf( uart2XServer, COM2, "\033[37;1H\033[KTrain 45 Passed Sensor\033[33;%dH", cursor );
					} else {
						reply.data1 = NOT_PASSED_SENSOR;
						myprintf( uart2XServer, COM2, "\033[37;1H\033[KTrain 45 Have not hit Sensor\033[33;%dH", cursor );
					}
					sensorTrain45.sensor = -1;
					sensorTrain45.triggered = 0;
					Reply( sender, (char *)&reply, sizeof(ComReqStruct) );
				}
				break;
			case DEBUG_AGAIN:
				myprintf( uart2XServer, COM2, "\033[42;1H\033[KGot this %d and %d\033[33;%dH", recv.data1, recv.data2, cursor );
				break;
			case LINE_DEBUG:
				myprintf( uart2XServer, COM2, "\033[%d;1H\033[KData1: %d, Data2: %d, Data3: %d\033[33;%dH", recv.data4, recv.data1, recv.data2, recv.data3, cursor );
				break;
			case TRAIN_NUM:
				if ( recv.data4 == train49 ) {
					myprintf( uart2XServer, COM2, "\033[51;1H\033[KTrain 49: startpos: %s\033[33;%dH", track[recv.data1].name, cursor );
				} else if ( recv.data4 == train45 ) {
					myprintf( uart2XServer, COM2, "\033[52;1H\033[KTrain 45: startpos: %s\033[33;%dH", track[recv.data1].name, cursor );
				}
				break;
		}

		if ( stopping ) break;

		if ( recv.type != WAITING_STOP && recv.type != SENSOR_QUERY ) {
			reply.type = REQUEST_OK;
			Reply( sender, (char *)&reply, sizeof(ComReqStruct) );
		}
	} // FOREVER

	Quit();
	Exit();
} // Printer

void admin() {
	ComReqStruct requests[MAX_REQUESTS];
	int startIndex 	= 0;
	int endIndex 	= 0;

	ComReqStruct send, reply;
	int sender;

	void (*func)();
	func = trackMonitor;
	Create( 2, func );

	func = Printer;
	int ptr = Create( 3, func );

	func = routeFinder;
	Create( 1, func );
	func = trainDriver;
	int tid1 = Create( 3, func );
	int tid2 = Create( 3, func );

	send.data1 = 49;
	Send(tid1, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct));

	send.data2 = 45;
	Send(tid2, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct));

	send.data1 = tid1;
	send.data2 = tid2;
	Send(ptr, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct));

	func = Train;
	Create( 4, func );

	func = Terminal;
	int tid3 = Create( 4, func );

	send.data1 = tid1;
	send.data2 = tid2;
	Send(tid3, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct));

	int waitingCourier = -1;
	FOREVER {
		Receive( &sender, (char *)&reply, sizeof(ComReqStruct) );
		switch( reply.type ) {
			case COURIER:
				if ( startIndex == endIndex ) {
					waitingCourier = sender;
				} else {
					Reply( sender, (char *)&(requests[startIndex]), sizeof(ComReqStruct) );
					startIndex = (startIndex + 1) % MAX_REQUESTS;
				}
				break;
			default:
				if ( waitingCourier != -1 ) {
					Reply( waitingCourier, (char *)&reply, sizeof(ComReqStruct) );
					waitingCourier = -1;
				} else {
					requests[endIndex].type = reply.type;
					requests[endIndex].data1 = reply.data1;
					requests[endIndex].data2 = reply.data2;
					requests[endIndex].data3 = reply.data3;
					requests[endIndex].data4 = reply.data4;
					endIndex = (endIndex + 1) % MAX_REQUESTS;
				}
				send.type = REQUEST_OK;
				Reply( sender, (char *)&send, sizeof(ComReqStruct) );
		}
	}
}

void T2(){

	FOREVER{

	}
}

//-----------------------------------------------------------------------------------------------
//	First user task that will be placed by the kernel into the priority queue
//-----------------------------------------------------------------------------------------------
void firstUserTask(){
	void (*func)();
	func = nameServer;
	unsigned int tid;
	tid = Create( 0, func );
	// bwprintf(COM2, "First: created Name Server\n\r");

	func = uart2GetServer;
	tid = Create( 1, func );

	func = uart2PutServer;
	tid = Create( 1, func );

	func = uart1PutServer;
	tid = Create( 1, func );

	func = uart1GetServer;
	tid = Create( 1, func );

	func = clockServer;
	tid = Create( 1, func );

	func = admin;
	tid = Create( 2, func );

	// Idle task
	func = T2;
	tid = Create(9, func);


	// bwprintf(COM2, "First: exiting\n\r");
	Exit();
} // firstUserTask


//-----------------------------------------------------------------------------------------------
//	Tasks that will be created by the first user task contains the following
//-----------------------------------------------------------------------------------------------
void theOtherTask(){
	int myTid, myParentTid;
	myTid = MyTid();
	myParentTid = MyParentTid();
	bwprintf(COM2, "MyTid: %d, MyParentTid: %d\n\r", myTid, myParentTid);
	Pass();
	bwprintf(COM2, "MyTid: %d, MyParentTid: %d\n\r", myTid, myParentTid);
	Exit();
} // theOtherTask

/*
 *	The function getNextRequest will allow for context
 *	switching between user and kernel. And initialize
 *	will be setup for bootstrapping kernel.
 */

//-----------------------------------------------------------------------------------------------
//	Before kerent: this portion is for setting up and switching from kernel to the user code
//	
//	After kerent: this portion will be accessed after the user raises a software interrupt, and 
//	will switch to kernel execution
//-----------------------------------------------------------------------------------------------
void getNextRequest(TD *active, Request *req){
	// Setup the jump table to branch to kerent on swi
	void (*labelAddr)();
	labelAddr = &&kerent;
	*(int *)(0x28) = (int)labelAddr;
	labelAddr = &&HWint;
	*(int *)(0x38) = (int)labelAddr;

	asm("stmfd sp!, {r4-r9, sl, fp, ip, lr}");
	asm("ldr r1, [r0, #0]\n\t"
		"ldr r2, [r0, #4]\n\t"
		"ldr r3, [r0, #8]\n\t"
		"ldr r4, [r0, #12]\n\t"
		"stmfd sp!, {r2-r4}");
	asm("msr CPSR, #0xdf");
	asm("mov sp, r1");
	asm("ldmfd sp!, {r0-r9, sl, fp, ip, lr}");
	asm("msr CPSR, #0xd3");
	asm("ldmfd sp!, {r0}\n\t"
		"msr SPSR, r0");
	asm("ldmfd sp!, {r0, lr}");
	asm("movs pc, lr");

HWint:
	asm("stmfd sp!, {r0, r1, lr}\n\t"
		"mov r0, sp\n\t"
		"mrs r1, SPSR\n\t"
		"add sp, sp, #12");
	asm("msr CPSR, #0xd3");
	asm("msr SPSR, r1\n\t"
		"ldmfd r0, {r0, r1, lr}\n\t"
		"sub lr, lr, #4");
	asm("msr CPSR, #0xdf");
	asm("stmfd sp!, {r0-r9, sl, fp, ip, lr}\n\t"
		"mov r0, sp\n\t");
	asm("msr CPSR, #0xd3");
	asm("ldmfd sp!, {r4-r9, sl, fp, ip}");
	asm("ldr r2, [fp, #-24]");
	asm("mrs r1, SPSR\n\t"
		"str r0, [r2, #0]\n\t"
		"str r1, [r2, #4]\n\t"
		"ldmfd r0, {r1}\n\t"
		"str r1, [r2, #8]\n\t"
		"str lr, [r2, #12]\n\t");
	asm("ldr r3, [fp, #-28]\n\t"
		"mov r1, #0\n\t"
		"str r1, [r3, #20]");
	asm("b endCS");

kerent:
	asm("msr CPSR, #0xdf");
	asm("stmfd sp!, {r0-r9, sl, fp, ip, lr}\n\t"
		"mov r0, sp\n\t"
		"ldr r1, [fp, #4]");
	asm("msr CPSR, #0xd3");
	asm("ldmfd sp!, {r4-r9, sl, fp, ip}");
	asm("ldr r2, [fp, #-24]\n\t"
		"ldr r3, [fp, #-28]");
	asm("str r1, [r3, #16]\n\t"
		"mrs r1, SPSR\n\t"
		"str r0, [r2, #0]\n\t"
		"str r1, [r2, #4]\n\t"
		"str lr, [r2, #12]");
	asm("ldmfd r0!, {r1, r2}\n\t"
		"str r1, [r3, #0]\n\t"
		"str r2, [r3, #4]\n\t"
		"ldmfd r0!, {r1-r2}\n\t"
		"str r1, [r3, #8]\n\t"
		"str r2, [r3, #12]\n\t"
		"ldr r1, [lr, #-4]\n\t"
		"bic r1, r1, #0xFF000000\n\t"
		"str r1, [r3, #20]");
	asm("endCS:");
	asm("ldmfd sp!, {lr}");
} // getNextRequest

//-----------------------------------------------------------------------------------------------
//	Same functionality as memcpy().
//-----------------------------------------------------------------------------------------------
void copyMsg( char *destBuf, char *srcBuf, int len){
        int i;
        for (i = 0; i < len; i++)
        {
                destBuf[i] = srcBuf[i];
        }
        //destBuf[i] = 0;   //Indicate the end of message
} // copyMsg

//-----------------------------------------------------------------------------------------------
//	Gets the stack size to use for each user task
//-----------------------------------------------------------------------------------------------
unsigned int getStackSize( ) {
	// make sure the size is an integer
	unsigned int size = (MEM_END - MEM_START) / MAX_TASKS;
	// make sure the size mod 4 is zero
	unsigned int tmp = size % 4;
	size -= tmp;
	return size;

} // getStackSize

//-----------------------------------------------------------------------------------------------
//	This will boostrap the kernel by creating a first task which looks as if it has just left 
//	kernel execution; i.e. the first user stack will be filled with placeholder values, and the 
//	lr will be the program counter for the code of the first task
//-----------------------------------------------------------------------------------------------
void initialize( TD *tds, Queue *priorityQueues, Request *req, Notifier *notifiers, sendQueue* sendQ) {
	int i;

	// Initialize the sendQ
	for (i = 0; i < MAX_TASKS; i++)
	{
		sendQ[i].startIndex = 0;
		sendQ[i].endIndex = 0;
	}

	// Initialize the queue to be all empty
	for ( i = 0; i <MAX_PRIORITIES; i++ ) {
		priorityQueues[i].headOfQueue = 0;
	}

	// Set stack pointer, PSR, and return value
	tds[0].sp = (int *)(MEM_END - getStackSize());
										// First user stack starts below kernel stack
	tds[0].spsr = PSR_USR;				// Initialize to user mode
	tds[0].retVal = 0;					// Initialize return value to 0

	void (*syscall)();
	syscall = firstUserTask;
	tds[0].lr = (int)syscall+LOAD_LOC;	// Init lr

	tds[0].state = READY;				// Task is ready
	tds[0].tid = 1;						// First user task has ID 1
	tds[0].parentTid = 0;				// Parent is 0 (kernel)
	tds[0].nextTask = 0;				// No next task in priority queue
	tds[0].priority = 2;
	tds[0].nextSender = 0;
	tds[0].lastSender = 0;

	// Fill user stack with placeholder values, and put the pc of firstUserTask into lr
	tds[0].sp++;
	for ( i = 12; i >= 0; i-- ) {
		tds[0].sp--;
		*(tds[0].sp) = i;
	}
										// Setup the first user task to be
										// both head and tail of queue,
										// since only one in the queue
	priorityQueues[2].headOfQueue = &(tds[0]);
	priorityQueues[2].tailOfQueue = &(tds[0]);

	req->freeIndex = 1;					// Next index to place TD in tds array
	req->tds = tds;						// Reference the tds array
	req->priorityQueues = priorityQueues;
										// Reference the priority queues array

	// Fill Notifier array
	for (i = 0; i < NUM_NOTIFIERS; i++)
	{
		notifiers[i].task = 0;
		notifiers[i].start = 0;
		notifiers[i].end = 0;
		notifiers[i].eventWaiting = 0;
	}

	setTrainConnectionn();


	asm("mrs r0, CPSR\n\t"
		"bic r0, r0, #0x1F\n\t"
		"orr r0, r0, #0x12\n\t"
		"msr CPSR, r0");

	asm("ldr r0, =0x44FA4\n\t"
		"mov sp,r0");
	asm(".ltorg");

	asm("mrs r0, CPSR\n\r"
		"bic r0, r0, #0x1F\n\t"
		"orr r0, r0, #0x13\n\t"
		"msr CPSR, r0");
} // initialize

//-----------------------------------------------------------------------------------------------
//	Get the task at the highest priority queue's front and return it
//-----------------------------------------------------------------------------------------------
TD *schedule( Queue *priorityQueues, Request *req, int *beforeIdle ) {
	unsigned int i;
	for ( i = 0; i < MAX_PRIORITIES; i++ ) {
		if ( i == 9 ) {
			int *low = (int *)0x80810060;
			*beforeIdle = *low;
		}
		if ( priorityQueues[i].headOfQueue != 0 ) {
			TD *scheduled = priorityQueues[i].headOfQueue;
			req->taskPriority = i;
			// bwprintf(COM2, "tid: %d, sp: %x\n\r", scheduled->tid, scheduled->sp);
			return scheduled;
		} // if
	} // for

	return 0;							// Nothing in priority queues to schedule
} // schedule

//-----------------------------------------------------------------------------------------------
//	Place the last active task at the back of the priority queue that it is in
//-----------------------------------------------------------------------------------------------
void rescheduleActive( Queue *priorityQueues, Request *req, int *beforeIdle, int *afterIdle, int *idleTime ) {
	unsigned int whichQueue	= req->taskPriority;

	if ( whichQueue == 9 ) {
		int *low = (int *) 0x80810060;
		*afterIdle = *low;
		*idleTime = *idleTime + ( *afterIdle - *beforeIdle ); 
	}

	Queue *currQueue = &(priorityQueues[whichQueue]);

	TD *lastActive = currQueue->headOfQueue;
	// Only move to the back if queue has more than 1 task
	if ( currQueue->headOfQueue != currQueue->tailOfQueue ) {
		currQueue->headOfQueue = (TD *)lastActive->nextTask;
		currQueue->tailOfQueue->nextTask = (struct TD *)lastActive;
		currQueue->tailOfQueue = lastActive;
		lastActive->nextTask = 0;
	} // if
} // rescheduleActive

//-----------------------------------------------------------------------------------------------
//	Place a block task at the back of the priority queue that it is in
//-----------------------------------------------------------------------------------------------
void rescheduleBlock( Queue *priorityQueues, int priority , TD *blockedTD) {
	unsigned int whichQueue	= priority;
	Queue *targetQ = &(priorityQueues[whichQueue]);

	if(targetQ->headOfQueue == 0){			// empty priority queue
		targetQ->headOfQueue = blockedTD;
		targetQ->tailOfQueue = blockedTD;
	}
	else {
		targetQ->tailOfQueue->nextTask = (struct TD *)blockedTD;
		targetQ->tailOfQueue = blockedTD;
	}
} // rescheduleBlock

//-----------------------------------------------------------------------------------------------
//	Remove a task descriptor from the priority queues in order to block it
//-----------------------------------------------------------------------------------------------
void blockActive(int priority, Queue *priorityQueues){
	Queue *currQueue = &(priorityQueues[priority]);
	TD *lastActive = currQueue->headOfQueue;
	if (lastActive->nextTask == 0)
	{
		currQueue->tailOfQueue = 0;
	}
	currQueue->headOfQueue = (TD *)lastActive->nextTask;
	lastActive->nextTask = 0;
} // blockActive

//-----------------------------------------------------------------------------------------------
//	Remove the last active task from its priority queue so it will no longer be scheduled
//-----------------------------------------------------------------------------------------------
void closeActive( Queue *priorityQueues, Request *req ) {
	unsigned int whichQueue	= req->taskPriority;
	Queue *currQueue = &(priorityQueues[whichQueue]);
	TD *lastActive = currQueue->headOfQueue;

	if ( currQueue->headOfQueue != currQueue->tailOfQueue ) {
		currQueue->headOfQueue = (TD *)lastActive->nextTask;
	} else {
		currQueue->headOfQueue = 0;
		currQueue->tailOfQueue = 0;
	} // if

	lastActive->state = ZOMBIE;			// Update the closed task to be in zombie state
} // closeActive

//-----------------------------------------------------------------------------------------------
//	Handle each kernel primitive (Create, MyTid, MyParentTid, Pass, Exit), last active task will
//	be the task that called the kernel primitive
//-----------------------------------------------------------------------------------------------
void handle( TD *tds, Queue *priorityQueues, Request *req, Notifier *notifiers, int *beforeIdle, int *afterIdle, int *idleTime, int *startClock, sendQueue *sendQ) {
	switch( req->type ) {
		case HWINTERRUPT:
			{
				int VIC2IRQ = *((int *)VIC2);
				if ( VIC2IRQ & VIC_CLK ) {
					int *clr = (int *)TIME_CLR;
					*clr = 1;

					rescheduleActive( priorityQueues, req, beforeIdle, afterIdle, idleTime );

					// Currently not checking the IRQ state register for which interrupt type occured
					if (notifiers[CLOCK].task == 0)  // No body is waiting
					{
						notifiers[CLOCK].data[notifiers[CLOCK].end] = 0;
						notifiers[CLOCK].end = ( notifiers[CLOCK].end + 1 ) % DATA_BUFFER;
						notifiers[CLOCK].eventWaiting++;
					} 
					else {    // Notifier is waiting, reschedule the task and put in the retVal
						TD *notifier = (TD *)notifiers[CLOCK].task;
						notifiers[CLOCK].task = 0;
						notifier->retVal = 0;
						rescheduleBlock(priorityQueues, notifier->priority, notifier);
					}

					unsigned int *timeLoad = (unsigned int *)TIME_LOAD;
					*timeLoad = ONE_TICK;
					unsigned int *control = (unsigned int *)TIME_CTRL;
					*control = *control | 0x40;
					*control = *control | FREQ_BIT;
					*control = *control | ENABLE_BIT;
				} else {
					rescheduleActive( priorityQueues, req, beforeIdle, afterIdle, idleTime );

					int UART1Int = *((int *)UART1IntDIntClr);
					int UART2Int = *((int *)UART2IntDIntClr);
					if ( UART1Int & 0x2 ) {						
						int *data = (int *)( UART1_BASE + UART_DATA_OFFSET );
						// Currently not checking the IRQ state register for which interrupt type occured
						if (notifiers[UART1GET].task == 0)  // No body is waiting
						{
							// notifiers[UART1GET].data[notifiers[UART1GET].end] = *data;
							// notifiers[UART1GET].end = ( notifiers[UART1GET].end + 1 ) % DATA_BUFFER;
							// notifiers[UART1GET].eventWaiting++;
						} 
						else {    // Notifier is waiting, reschedule the task and put in the retVal
							TD *notifier = (TD *)notifiers[UART1GET].task;
							notifiers[UART1GET].task = 0;
							notifier->retVal = *data;
							rescheduleBlock(priorityQueues, notifier->priority, notifier);
						}
					} 
					else if (UART1Int & 0x4){		// UART1 Xmit ready
						int *ctrl = (int *)UART1CTRL;
						*ctrl = *ctrl & (~0x00000020);
						// make sure the notifier is waiting
						if (notifiers[UART1XMIT].task != 0)
						{
							TD *notifier = (TD *)notifiers[UART1XMIT].task;
							notifiers[UART1XMIT].task = 0;
							notifier->retVal = 0;       // this value is not used for uart1
							rescheduleBlock(priorityQueues, notifier->priority, notifier);
						}
						else {
							notifiers[UART1XMIT].data[notifiers[UART1XMIT].end] = 0;
							notifiers[UART1XMIT].end = ( notifiers[UART1XMIT].end + 1 ) % DATA_BUFFER;
							notifiers[UART1XMIT].eventWaiting++;
						}
					}
					else if (UART1Int & 0x1) {        //MSI asserted 
						//clear and turn off the interrut
						 *((int *)UART1IntDIntClr) = 1;
						// int *ctrl = (int *)UART1CTRL;
						// *ctrl = *ctrl & (~0x00000008);
						// check if the notifier is waiting
						if (notifiers[MSI].task == 0)  // No body is waiting
						{
							notifiers[MSI].data[notifiers[MSI].end] = 0;
							notifiers[MSI].end = ( notifiers[MSI].end + 1 ) % DATA_BUFFER;
							notifiers[MSI].eventWaiting++;
						} 
						else {    // Notifier is waiting, reschedule the task and put in the retVal
							TD *notifier = (TD *)notifiers[MSI].task;
							notifiers[MSI].task = 0;
							notifier->retVal = 0;
							rescheduleBlock(priorityQueues, notifier->priority, notifier);
						}
					}
					else if ( UART2Int & 0x2 ) {
						int *data = (int *)( UART2_BASE + UART_DATA_OFFSET );
						// Currently not checking the IRQ state register for which interrupt type occured
						if (notifiers[UART2GET].task == 0)  // No body is waiting
						{
							// notifiers[UART2GET].data[notifiers[UART2GET].end] = *data;
							// notifiers[UART2GET].end = ( notifiers[UART2GET].end + 1 ) % DATA_BUFFER;
							// notifiers[UART2GET].eventWaiting++;
						} 
						else {    // Notifier is waiting, reschedule the task and put in the retVal
							TD *notifier = (TD *)notifiers[UART2GET].task;
							notifiers[UART2GET].task = 0;
							notifier->retVal = *data;
							rescheduleBlock(priorityQueues, notifier->priority, notifier);
						}
					} 
					else if (UART2Int & 0x4 )
					{
						int *ctrl = (int *)UART2CTRL;
						*ctrl = *ctrl & (~0x00000020);
						// make sure the notifier is waiting
						if (notifiers[UART2XMIT].task != 0)
						{
							TD *notifier = (TD *)notifiers[UART2XMIT].task;
							notifiers[UART2XMIT].task = 0;
							notifier->retVal = 0;       // this value is not used for uart2
							rescheduleBlock(priorityQueues, notifier->priority, notifier);
						}
						else {
							notifiers[UART2XMIT].data[notifiers[UART2XMIT].end] = 0;
							notifiers[UART2XMIT].end = ( notifiers[UART2XMIT].end + 1 ) % DATA_BUFFER;
							notifiers[UART2XMIT].eventWaiting++;
						}
					}
				}
			}
			break;
		case CREATE:
			{	/*	Create */
				unsigned int freeIndex 	= req->freeIndex;			// Where to place new TD
				unsigned int newTid		= freeIndex + 1;			// Next tid free to use
				unsigned int whichQueue	= req->taskPriority;		// Priority of last active task
				unsigned int parentTid 	= priorityQueues[whichQueue].headOfQueue->tid;
																	// Tid of last active task
				unsigned int priority 	= req->arg0;				// Priority of new task

				TD *newTask	= &(tds[freeIndex]);					// The TD that will hold this
				Queue *newQueue = &(priorityQueues[priority]);		// The queue the TD will be in

				priorityQueues[whichQueue].headOfQueue->retVal = newTid;
																	// Update the return value of
																	// calling task
				void (*syscall)();
				syscall = (void *)req->arg1;						// The code of the created task

				// Populate the new TD
				newTask->sp = (int *)(MEM_END - newTid * getStackSize());
																	// Position of new stack in memory
				newTask->spsr = PSR_USR;							// Initialize to user mode
				newTask->retVal = 0;								// Initialize return value to 0

				newTask->lr = (int)syscall+LOAD_LOC;				// Init the lr

				newTask->state = READY;								// Task is ready
				newTask->tid = newTid;								// First user task has ID 1
				newTask->parentTid = parentTid;						// Parent is 0 (kernel)
				newTask->nextTask = 0;								// No next task in priority queue
				newTask->priority = priority;
				newTask->nextSender = 0;							// This task has no next sender
				newTask->lastSender = 0;

				// Fill user stack with placeholder values, and put the pc of firstUserTask into lr
				int i;
				newTask->sp++;
				for ( i = 12; i >= 0; i-- ) {
					newTask->sp--;
					*(newTask->sp) = i;
				}

				if ( newQueue->headOfQueue == 0 ) {
					newQueue->headOfQueue = newTask;
					newQueue->tailOfQueue = newTask;
				} else {
					newQueue->tailOfQueue->nextTask = (struct TD *)newTask;
					newQueue->tailOfQueue = newTask;
				} // if

				req->freeIndex++;									// Update the index for next TD

				rescheduleActive( priorityQueues, req, beforeIdle, afterIdle, idleTime );			// Place last active task at back of 
																	// queue behind the created task
			}
			break;
		case MYTID:
			{	/*	MyTid */
				unsigned int whichQueue	= req->taskPriority;
				priorityQueues[whichQueue].headOfQueue->retVal = priorityQueues[whichQueue].headOfQueue->tid;
				rescheduleActive( priorityQueues, req, beforeIdle, afterIdle, idleTime );			// Place last active task at back of 
																	// queue behind the created task
			}
			break;
		case MYPARENTTID:
			{	/*	MyParentTid */
				unsigned int whichQueue	= req->taskPriority;
				priorityQueues[whichQueue].headOfQueue->retVal = priorityQueues[whichQueue].headOfQueue->parentTid;
				rescheduleActive( priorityQueues, req, beforeIdle, afterIdle, idleTime );			// Place last active task at back of 
																	// queue behind the created task
			}
			break;
		case PASS:
			{	/*	Pass */
				rescheduleActive( priorityQueues, req, beforeIdle, afterIdle, idleTime );			// Place last active task at back of 
																	// queue behind the created task
			}
			break;
		case EXIT:
			{	/*	Exit */
				closeActive( priorityQueues, req );					// Remove last active task from the queue
			}
			break;
		case SEND:
			{   /*  Send */
				// Fill the request arguments into the sender's TD and senderInfo
				unsigned int whichQueue	= req->taskPriority;		// Priority of last active task
				unsigned int senderTid 	= priorityQueues[whichQueue].headOfQueue->tid;
				TD *sender        = &(tds[senderTid - 1]);
				int receiverTid   = req->arg0;
				sender->msgToSend = (char *)req->arg1;
				sender->msgLen    = req->arg2;
				sender->rcvAddr   = (char *)req->arg3;
				sender->rcvLen    = req->arg4;
				TD *receiver      = &(tds[receiverTid - 1]);				
				// Checking if the target Tid is valid.

				if (receiverTid < 1 || receiverTid > MAX_TASKS)
				{
					sender->retVal = -1;
					break;
				}

				blockActive(whichQueue, priorityQueues);     //block the current send task 
				// Check if Receive() is called before Send()
				if (receiver->state == SND_BLOCKED)
				{   /* Receive() before Send(). Copy the msg to receiver directly */
					sender->state = RPL_BLOCKED;
					receiver->state = READY;

					rescheduleBlock(priorityQueues, receiver->priority, receiver);
					unsigned int copyLen = (sender->msgLen <= receiver->rcvLen) ? sender->msgLen : receiver->rcvLen; // send the bottle neck len
					copyMsg(receiver->rcvAddr, sender->msgToSend, copyLen);
					sender->retVal = copyLen;
					receiver->retVal = copyLen;
					*(receiver->senderTid) = senderTid;        // Indicate who the sender is
				}
				else {
					sender->state = RCV_BLOCKED;
					// Add the sender to receiver's sendQ
					sendQ[receiverTid-1].queue[sendQ[receiverTid-1].endIndex] = senderTid;
					sendQ[receiverTid-1].endIndex = (sendQ[receiverTid-1].endIndex + 1) % MAX_TASKS;
				}
			}
			break;
		case RECEIVE:
		    {
		    	unsigned int whichQueue	 = req->taskPriority;		// Priority of last active task
				unsigned int receiverTid = priorityQueues[whichQueue].headOfQueue->tid;
				TD *receiver        = &(tds[receiverTid - 1]);
				receiver->senderTid = (int *)req->arg0;      // Use to record which task I reply to
				receiver->rcvAddr   = (char *)req->arg1;     // Place to store sent message
				receiver->rcvLen    = req->arg2;             // Maximum size of msg I can store

				// Check if sendQ is empty
				if (sendQ[receiverTid-1].startIndex == sendQ[receiverTid-1].endIndex)
				{
					receiver->state = SND_BLOCKED;
					blockActive(whichQueue, priorityQueues);
				}
				else {   // Not empty, copy the msg
					int senderId = sendQ[receiverTid-1].queue[sendQ[receiverTid-1].startIndex];
					TD *sender = (TD *)&(tds[senderId - 1]);    // get the sender from the sendQ
					sendQ[receiverTid-1].startIndex = (sendQ[receiverTid-1].startIndex + 1) % MAX_TASKS;     //increment startIndex
					unsigned int copyLen = (sender->msgLen <= receiver->rcvLen) ? sender->msgLen : receiver->rcvLen; // send the bottle neck len
					copyMsg(receiver->rcvAddr, sender->msgToSend, copyLen);
					receiver->retVal = copyLen;
					sender->retVal   = copyLen;
					*(receiver->senderTid) = sender->tid;        // Indicate who the sender is
					rescheduleActive(priorityQueues, req, beforeIdle, afterIdle, idleTime);
					// Remove sender from sendQ
					sender->state = RPL_BLOCKED;
					receiver->nextSender = sender->nextSender;
				}
		    }
		    break;
		case REPLY:
		    {
		    	unsigned int whichQueue	= req->taskPriority;
				TD *sender   = &(tds[req->arg0 - 1]);
				char *reply  = (char *) req->arg1;
				int replyLen = req->arg2;

				unsigned int copyLen = (replyLen <= sender->rcvLen) ? replyLen : sender->rcvLen; // send the bottle neck len
				copyMsg(sender->rcvAddr, reply, copyLen);

				priorityQueues[whichQueue].headOfQueue->retVal = copyLen;

				// Put both tasks back to ready queue
				sender->state = READY;

				rescheduleBlock(priorityQueues, sender->priority, sender);
				rescheduleActive(priorityQueues, req, beforeIdle, afterIdle, idleTime);
		    }
		    break;
		case AWAIT_EVENT:
		    {
		    	unsigned int whichQueue	 = req->taskPriority;		// Priority of last active task
				unsigned int notifierTid = priorityQueues[whichQueue].headOfQueue->tid;
				TD *notifier             = &(tds[notifierTid - 1]);
				int eventType = req->arg0;

				// // Turn on the transmit ready interrupt
				if (eventType == UART2XMIT)
				{
					int *ctrl = (int *)UART2CTRL;
				 	*ctrl = *ctrl | 0x00000020;
				}
				else if (eventType == UART1XMIT)
				{
					int *ctrl = (int *)UART1CTRL;
					*ctrl = *ctrl | 0x00000020;
				}

				// Check if there's already an event in the queue
				if ( notifiers[eventType].eventWaiting > 0 )   // has event waiting
				{
					notifiers[eventType].task = 0;
					notifier->retVal = notifiers[eventType].data[notifiers[eventType].start];
					notifiers[eventType].start = ( notifiers[eventType].start + 1 ) % DATA_BUFFER;
					rescheduleActive(priorityQueues, req, beforeIdle, afterIdle, idleTime);
					notifiers[eventType].eventWaiting--;
				} else{
					//Just block the notifier and wait for event
					notifier->state = AWAIT_BLOCKED;
					notifiers[eventType].task = (struct TD*)notifier;             // put the task descriptor into the event array
					blockActive(whichQueue, priorityQueues);
				}
		    }
		    break;
		case QUIT:
			{
				// Turn off MSI interrupt
				int *ctrl = (int *)UART1CTRL;
				*ctrl = *ctrl & ~0x8;

				unsigned int whichQueue = 9;
				TD *idleTask = priorityQueues[whichQueue].headOfQueue;
				idleTask->state = ZOMBIE;
				blockActive(whichQueue, priorityQueues);
			}
			break;
		case IDLE_TIME:
			{
				int *low = (int *) 0x80810060;
				int totalTime = *low - *startClock;
				//int percent = (*idleTime * 100) / totalTime;
				priorityQueues[req->taskPriority].headOfQueue->retVal = ((double)*idleTime / totalTime) * 100;
				rescheduleActive(priorityQueues, req, beforeIdle, afterIdle, idleTime);
			}
			break;
	} // switch
} // handle

//-----------------------------------------------------------------------------------------------
//	Starting the kernel execution, which will initialize all memory needed and bootstrap the 
//	first user task.
//-----------------------------------------------------------------------------------------------
int main( int argc, char *argv[] ) {

	/* COMMENT TURNS INSTRUCTION/DATA CACHING ON */
	asm( "MRC p15, 0, r0, c1, c0, 0\n\t"
		 "ldr r1, =4100\n\t"
		 "bic r0, r0, r1\n\t"
		 "ORR r0, r0, r1\n\t"
		 "MCR p15, 0, r0, c1, c0, 0" );

	bwsetfifo( COM1, OFF );
	bwsetfifo( COM2, OFF );

	int *timer4 = (int *) 0x80810064;
	int *low = (int *) 0x80810060;
	*timer4 = *timer4 | 256;

	// Declare kernel data structures
	TD tds[MAX_TASKS];						
	Queue priorityQueues[MAX_PRIORITIES];
	Notifier notifiers[NUM_NOTIFIERS];    		//for now, only one notifiers
	sendQueue sendQ[MAX_TASKS];

	TD *active;									// The task that will run
	Request req;								// The requests of the task along with other info
	initialize( tds, priorityQueues, &req, notifiers, sendQ );	
												// tds is an array of TDs
	
	int beforeIdle = 0;
	int afterIdle = 0;
	int idleTime = 0;
	int startClock = *low;

	// Begin kernel execution
	FOREVER {
		active = schedule( priorityQueues, &req, &beforeIdle );
		//bwprintf(COM2, "next task: %d\n\r", active->tid);
        										// Active will be scheduled to run next
		if ( active == 0 ) break;				// Return cleanly if all tasks exited
		getNextRequest( active, &req );			// req is a pointer to a Request
		handle( tds, priorityQueues, &req, notifiers, &beforeIdle, &afterIdle, &idleTime, &startClock, sendQ );	
												// Execute the kernel code of the kernel primitive-h
	} // for

	unsigned int *timeLoad = (unsigned int *)TIME_LOAD;
	*timeLoad = 0;
	// Disable the clock
	unsigned int *control = (unsigned int *)TIME_CTRL;
	*control = *control & (~0x40);
	*control = *control & (~FREQ_BIT);
	*control = *control & (~ENABLE_BIT);

	// Disable the clock 
	int *vicDisable = (int *)(0x800C0014);
	*(vicDisable) = 0x00080000;

	return 0;
} // main
