
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <string.h>
#include <time.h>
#include <unistd.h>
#include "cond.c"


int pnum;  // number updated when producer runs.
int csum;  // sum computed using pnum when consumer runs.
int should_consume = 1; // variable for checking whether it's time to consume
int (*pred)(int); // predicate indicating if pnum is to be consumed

// Declaring and initialising mutex and condition variables
pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
pthread_cond_t condition = PTHREAD_COND_INITIALIZER;

int produceT() {
  scanf("%d",&pnum); // read a number from stdin
  return pnum; // return it from the function
}

// produce thread
void *Produce(void *a) {
  int p;
  
  pthread_mutex_lock(&mutex); // lock mutex at the beginning of the thread

  p=1; // let p = 1 so while loop can be initially entered
  while (p) { // while there are ints left to produce
    printf("@P-READY\n");
    p = produceT(); // produce an int
    printf("@PRODUCED %d\n",p);

    should_consume = 1; // allow consume thread to consume
    pthread_cond_wait(&condition, &mutex); // unlock mutex and wait for signal from consume thread
  }

  pthread_mutex_unlock(&mutex); // unlock mutex at the end of the thread

  printf("@P-EXIT\n");
  pthread_exit(NULL); // exit thread
}


int consumeT() {
  if ( pred(pnum) ) { csum += pnum; } // add pnum to csum if it satisfies predicate condition
  return pnum;  // return pnum
}

// consume thread
void *Consume(void *a) {
  int p;

  p=1; // let p = 1 so while loop can be initially entered
  while (p) { // while there are ints left to consume
    if(should_consume){ // check whether it's time to consume (an int has been produced)
    pthread_mutex_lock(&mutex); // lock mutex at beginning of operation

    printf("@C-READY\n");
    p = consumeT(); // consume the int
    printf("@CONSUMED %d\n",csum);
    
    should_consume = 0; //consumption finished, prevent loop from consuming again
    pthread_cond_signal(&condition); //signal produce thread to continue
    pthread_mutex_unlock(&mutex); // unlock mutex at the end of operation
    }
  }
  printf("@C-EXIT\n");
  pthread_exit(NULL); // exit thread
}


int main (int argc, const char * argv[]) {
  // the current number predicate
  static pthread_t prod,cons;
  long rc;

  // sets condition according to command line argument
  pred = &cond1;
  if (argc>1) {
    if      (!strncmp(argv[1],"2",10)) { pred = &cond2; }
    else if (!strncmp(argv[1],"3",10)) { pred = &cond3; }
  }

  // initialise pnum and csum
  pnum = 999;
  csum=0;
  
  // create threads
  printf("@P-CREATE\n");
 	rc = pthread_create(&prod,NULL,Produce,(void *)0);
	if (rc) {
			printf("@P-ERROR %ld\n",rc);
			exit(-1);
		}
  printf("@C-CREATE\n");
 	rc = pthread_create(&cons,NULL,Consume,(void *)0);
	if (rc) {
			printf("@C-ERROR %ld\n",rc);
			exit(-1);
		}

  // join threads
  printf("@P-JOIN\n");
  pthread_join( prod, NULL);
  printf("@C-JOIN\n");
  pthread_join( cons, NULL);

  // print csum 
  printf("@CSUM=%d.\n",csum);

  // destroy mutex and condition variables
  pthread_mutex_destroy(&mutex);
  pthread_cond_destroy(&condition);

  return 0;
}