// pthreads.pml

// Task: modify lock, unlock, wait and signal to do the correct thing.

mtype = { unlocked, locked } ;

typedef mutexData {
  mtype mstate;
  byte mid;
  // may need more fields here
}


typedef condvarData {
  bool dummy;
  // may need different fields here
}

mutexData mtx;

condvarData cvars[2];
#define PRODCONDVAR 0
#define CONSCONDVAR 1

inline initsync() {
  mtx.mstate = unlocked;
  mtx.mid = 0;
  cvars[0].dummy = true;
  cvars[1].dummy = true;
  // may need more/different code to initialise fields here
}

// pthread_mutex_lock(&m);
inline lock(m) {
  printf("@@@ %d LOCKING : state is %e\n",_pid,m.mstate)
  // wait for mutex to be unlocked, and then lock it and claim ownership
  atomic{ m.mstate == unlocked -> m.mstate = locked; m.mid = _pid } 
  printf("@@@ %d LOCKED : state is %e\n",_pid,m.mstate)
}

// pthread_mutex_unlock(&m);
inline unlock(m) {
  printf("@@@ %d UNLOCKING : state is %e\n",_pid,m.mstate)
  atomic{                       // execute atomically, ensuring no interleaving of other processes
    assert(m.mid == _pid);      // assert that we own the mutex
    m.mstate = unlocked;        // unlock the mutex
    m.mid = 0;                  // revoke ownership
  }
  // will need code here
  printf("@@@ %d UNLOCKED : state is %e\n",_pid,m.mstate)
}

// pthread_cond_wait(&c,&m);
inline wait(c,m) {
  printf("@@@ %d WAIT for cond[%d]=%d with mutex=%e\n",_pid,
         c,cvars[c].dummy,m.mstate)

    
  atomic{ 
           assert(m.mid == _pid); m.mstate = unlocked; m.mid = 0;(cvars[c].dummy == true) 
        };

  atomic{ 
           m.mstate == unlocked -> m.mstate = locked; cvars[c].dummy = false; m.mid = _pid 
        };                  

  printf("@@@ %d DONE with cond[%d]=%d with mutex=%e\n",_pid,
         c,cvars[c].dummy,m.mstate)
}

// pthread_cond_signal(&c);
inline signal(c) {
  printf("@@@ %d SIGNAL cond[%d]=%d\n",_pid,c,cvars[c].dummy)
    if
  :: (cvars[c].dummy == false) -> atomic{ cvars[c].dummy = true };
  :: else -> skip;
  fi
  printf("@@@ %d SIGNALLED cond[%d]=%d\n",_pid,c,cvars[c].dummy)
}
