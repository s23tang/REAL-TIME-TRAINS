#define SENSOR_SUBSCRIBE 0
#define SENSOR_TRIGGERED 1
#define RESERVE_TRACK 2
#define SENSOR_UNSUBSCRIBE 3
#define UPDATE_LOCATION 4

// typedef struct Edge Edge;
typedef struct Sensor Sensor;

// a structure to store the reserved edge
// struct Edge {
// 	int start;
// 	int end;
// 	int reserved;
// 	int reservedBy;   // tid of the driver that reserved the edge
// 	int len;
// };
struct Sensor {
	int index;
	int reserved;
	int reservedBy;
};

void trackMonitor();
