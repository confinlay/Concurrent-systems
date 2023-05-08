#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: // STATE 1 - writers-and-reader.pml:120 - [printf('A Model of pthreads\\n')] (0:17:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		Printf("A Model of pthreads\n");
		/* merge: printf('\\n Producer-Consumer example\\n')(17, 2, 17) */
		reached[2][2] = 1;
		Printf("\n Producer-Consumer example\n");
		_m = 3; goto P999; /* 1 */
	case 4: // STATE 3 - writers-and-reader.pml:16 - [in = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		(trpt+1)->bup.oval = ((int)now.in);
		now.in = 0;
#ifdef VAR_RANGES
		logval("in", ((int)now.in));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 4 - writers-and-reader.pml:18 - [((in<4))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!((((int)now.in)<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 5 - writers-and-reader.pml:18 - [buffer[in] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		(trpt+1)->bup.oval = ((int)now.buffer[ Index(((int)now.in), 4) ]);
		now.buffer[ Index(now.in, 4) ] = 0;
#ifdef VAR_RANGES
		logval("buffer[in]", ((int)now.buffer[ Index(((int)now.in), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 6 - writers-and-reader.pml:18 - [in = (in+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][6] = 1;
		(trpt+1)->bup.oval = ((int)now.in);
		now.in = (((int)now.in)+1);
#ifdef VAR_RANGES
		logval("in", ((int)now.in));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 8 - writers-and-reader.pml:19 - [in = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][8] = 1;
		(trpt+1)->bup.oval = ((int)now.in);
		now.in = 0;
#ifdef VAR_RANGES
		logval("in", ((int)now.in));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 13 - writers-and-reader.pml:21 - [out = (4-1)] (0:0:1 - 3)
		IfNotBlocked
		reached[2][13] = 1;
		(trpt+1)->bup.oval = ((int)now.out);
		now.out = (4-1);
#ifdef VAR_RANGES
		logval("out", ((int)now.out));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 14 - writers-and-reader.pml:22 - [bfull = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][14] = 1;
		(trpt+1)->bup.oval = ((int)now.bfull);
		now.bfull = 0;
#ifdef VAR_RANGES
		logval("bfull", ((int)now.bfull));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 15 - writers-and-reader.pml:22 - [bempty = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][15] = 1;
		(trpt+1)->bup.oval = ((int)now.bempty);
		now.bempty = 1;
#ifdef VAR_RANGES
		logval("bempty", ((int)now.bempty));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 16 - writers-and-reader.pml:23 - [printf('buffer zeroed\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[2][16] = 1;
		Printf("buffer zeroed\n");
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 18 - writers-and-reader.pml:30 - [printf('@@@ %d BUFFER in:%d, out:%d, empty:%d, full:%d [|',_pid,in,out,bempty,bfull)] (0:26:1 - 1)
		IfNotBlocked
		reached[2][18] = 1;
		Printf("@@@ %d BUFFER in:%d, out:%d, empty:%d, full:%d [|", ((int)((P2 *)_this)->_pid), ((int)now.in), ((int)now.out), ((int)now.bempty), ((int)now.bfull));
		/* merge: six = 0(26, 19, 26) */
		reached[2][19] = 1;
		(trpt+1)->bup.oval = ((int)now.six);
		now.six = 0;
#ifdef VAR_RANGES
		logval("six", ((int)now.six));
#endif
		;
		/* merge: .(goto)(0, 27, 26) */
		reached[2][27] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 14: // STATE 20 - writers-and-reader.pml:33 - [((six<4))] (26:0:1 - 1)
		IfNotBlocked
		reached[2][20] = 1;
		if (!((((int)now.six)<4)))
			continue;
		/* merge: printf(' %d |',buffer[six])(26, 21, 26) */
		reached[2][21] = 1;
		Printf(" %d |", ((int)now.buffer[ Index(((int)now.six), 4) ]));
		/* merge: six = (six+1)(26, 22, 26) */
		reached[2][22] = 1;
		(trpt+1)->bup.oval = ((int)now.six);
		now.six = (((int)now.six)+1);
#ifdef VAR_RANGES
		logval("six", ((int)now.six));
#endif
		;
		/* merge: .(goto)(0, 27, 26) */
		reached[2][27] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 15: // STATE 24 - writers-and-reader.pml:34 - [printf(']\\n')] (0:28:0 - 1)
		IfNotBlocked
		reached[2][24] = 1;
		Printf("]\n");
		/* merge: goto :b7(28, 25, 28) */
		reached[2][25] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 16: // STATE 31 - ./pthreads.pml:26 - [mtx.mstate = unlocked] (0:0:1 - 1)
		IfNotBlocked
		reached[2][31] = 1;
		(trpt+1)->bup.oval = now.mtx.mstate;
		now.mtx.mstate = 2;
#ifdef VAR_RANGES
		logval("mtx.mstate", now.mtx.mstate);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 32 - ./pthreads.pml:27 - [mtx.mid = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][32] = 1;
		(trpt+1)->bup.oval = ((int)now.mtx.mid);
		now.mtx.mid = 0;
#ifdef VAR_RANGES
		logval("mtx.mid", ((int)now.mtx.mid));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 33 - ./pthreads.pml:28 - [cvars[0].dummy = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][33] = 1;
		(trpt+1)->bup.oval = ((int)now.cvars[0].dummy);
		now.cvars[0].dummy = 1;
#ifdef VAR_RANGES
		logval("cvars[0].dummy", ((int)now.cvars[0].dummy));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 34 - ./pthreads.pml:29 - [cvars[1].dummy = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][34] = 1;
		(trpt+1)->bup.oval = ((int)now.cvars[1].dummy);
		now.cvars[1].dummy = 1;
#ifdef VAR_RANGES
		logval("cvars[1].dummy", ((int)now.cvars[1].dummy));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 36 - writers-and-reader.pml:125 - [(run producer(1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][36] = 1;
		if (!(addproc(II, 1, 0, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 37 - writers-and-reader.pml:126 - [(run producer(2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][37] = 1;
		if (!(addproc(II, 1, 0, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 38 - writers-and-reader.pml:127 - [(run consumer())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][38] = 1;
		if (!(addproc(II, 1, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 39 - writers-and-reader.pml:128 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][39] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC consumer */
	case 24: // STATE 1 - ./pthreads.pml:35 - [printf('@@@ %d LOCKING : state is %e\\n',_pid,mtx.mstate)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		Printf("@@@ %d LOCKING : state is %e\n", ((int)((P1 *)_this)->_pid), now.mtx.mstate);
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 2 - ./pthreads.pml:37 - [((mtx.mstate==unlocked))] (6:0:2 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((now.mtx.mstate==2)))
			continue;
		/* merge: mtx.mstate = locked(6, 3, 6) */
		reached[1][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.mtx.mstate;
		now.mtx.mstate = 1;
#ifdef VAR_RANGES
		logval("mtx.mstate", now.mtx.mstate);
#endif
		;
		/* merge: mtx.mid = _pid(6, 4, 6) */
		reached[1][4] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.mtx.mid);
		now.mtx.mid = ((int)((P1 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("mtx.mid", ((int)now.mtx.mid));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 26: // STATE 6 - ./pthreads.pml:38 - [printf('@@@ %d LOCKED : state is %e\\n',_pid,mtx.mstate)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		Printf("@@@ %d LOCKED : state is %e\n", ((int)((P1 *)_this)->_pid), now.mtx.mstate);
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 8 - writers-and-reader.pml:96 - [assert((mtx.mid==_pid))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		spin_assert((((int)now.mtx.mid)==((int)((P1 *)_this)->_pid)), "(mtx.mid==_pid)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 9 - writers-and-reader.pml:98 - [(!(bempty))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		if (!( !(((int)now.bempty))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 12 - ./pthreads.pml:55 - [printf('@@@ %d WAIT for cond[%d]=%d with mutex=%e\\n',_pid,1,cvars[1].dummy,mtx.mstate)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		Printf("@@@ %d WAIT for cond[%d]=%d with mutex=%e\n", ((int)((P1 *)_this)->_pid), 1, ((int)now.cvars[1].dummy), now.mtx.mstate);
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 13 - ./pthreads.pml:60 - [assert((mtx.mid==_pid))] (0:16:2 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		spin_assert((((int)now.mtx.mid)==((int)((P1 *)_this)->_pid)), "(mtx.mid==_pid)", II, tt, t);
		/* merge: mtx.mstate = unlocked(16, 14, 16) */
		reached[1][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.mtx.mstate;
		now.mtx.mstate = 2;
#ifdef VAR_RANGES
		logval("mtx.mstate", now.mtx.mstate);
#endif
		;
		/* merge: mtx.mid = 0(16, 15, 16) */
		reached[1][15] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.mtx.mid);
		now.mtx.mid = 0;
#ifdef VAR_RANGES
		logval("mtx.mid", ((int)now.mtx.mid));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 31: // STATE 16 - ./pthreads.pml:60 - [((cvars[1].dummy==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		if (!((((int)now.cvars[1].dummy)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 18 - ./pthreads.pml:64 - [((mtx.mstate==unlocked))] (23:0:3 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		if (!((now.mtx.mstate==2)))
			continue;
		/* merge: mtx.mstate = locked(23, 19, 23) */
		reached[1][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.mtx.mstate;
		now.mtx.mstate = 1;
#ifdef VAR_RANGES
		logval("mtx.mstate", now.mtx.mstate);
#endif
		;
		/* merge: cvars[1].dummy = 0(23, 20, 23) */
		reached[1][20] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cvars[1].dummy);
		now.cvars[1].dummy = 0;
#ifdef VAR_RANGES
		logval("cvars[1].dummy", ((int)now.cvars[1].dummy));
#endif
		;
		/* merge: mtx.mid = _pid(23, 21, 23) */
		reached[1][21] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.mtx.mid);
		now.mtx.mid = ((int)((P1 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("mtx.mid", ((int)now.mtx.mid));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 33: // STATE 23 - ./pthreads.pml:67 - [printf('@@@ %d DONE with cond[%d]=%d with mutex=%e\\n',_pid,1,cvars[1].dummy,mtx.mstate)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		Printf("@@@ %d DONE with cond[%d]=%d with mutex=%e\n", ((int)((P1 *)_this)->_pid), 1, ((int)now.cvars[1].dummy), now.mtx.mstate);
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 28 - writers-and-reader.pml:101 - [assert((mtx.mid==_pid))] (0:0:0 - 3)
		IfNotBlocked
		reached[1][28] = 1;
		spin_assert((((int)now.mtx.mid)==((int)((P1 *)_this)->_pid)), "(mtx.mid==_pid)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 29 - writers-and-reader.pml:54 - [assert(!(bempty))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		spin_assert( !(((int)now.bempty)), " !(bempty)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 30 - writers-and-reader.pml:55 - [out = ((out+1)%4)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][30] = 1;
		(trpt+1)->bup.oval = ((int)now.out);
		now.out = ((((int)now.out)+1)%4);
#ifdef VAR_RANGES
		logval("out", ((int)now.out));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 31 - writers-and-reader.pml:56 - [cout = buffer[out]] (0:0:1 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		(trpt+1)->bup.oval = ((int)cout);
		cout = ((int)now.buffer[ Index(((int)now.out), 4) ]);
#ifdef VAR_RANGES
		logval("cout", ((int)cout));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 32 - writers-and-reader.pml:56 - [buffer[out] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		(trpt+1)->bup.oval = ((int)now.buffer[ Index(((int)now.out), 4) ]);
		now.buffer[ Index(now.out, 4) ] = 0;
#ifdef VAR_RANGES
		logval("buffer[out]", ((int)now.buffer[ Index(((int)now.out), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 33 - writers-and-reader.pml:57 - [printf('@@@ %d **** EXTRACT cout := buf[%d] is %d\\n',_pid,out,cout)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		Printf("@@@ %d **** EXTRACT cout := buf[%d] is %d\n", ((int)((P1 *)_this)->_pid), ((int)now.out), ((int)cout));
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 34 - writers-and-reader.pml:58 - [bfull = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		(trpt+1)->bup.oval = ((int)now.bfull);
		now.bfull = 0;
#ifdef VAR_RANGES
		logval("bfull", ((int)now.bfull));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 35 - writers-and-reader.pml:59 - [bempty = (((out+1)%4)==in)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][35] = 1;
		(trpt+1)->bup.oval = ((int)now.bempty);
		now.bempty = (((((int)now.out)+1)%4)==((int)now.in));
#ifdef VAR_RANGES
		logval("bempty", ((int)now.bempty));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 36 - writers-and-reader.pml:30 - [printf('@@@ %d BUFFER in:%d, out:%d, empty:%d, full:%d [|',_pid,in,out,bempty,bfull)] (0:44:1 - 1)
		IfNotBlocked
		reached[1][36] = 1;
		Printf("@@@ %d BUFFER in:%d, out:%d, empty:%d, full:%d [|", ((int)((P1 *)_this)->_pid), ((int)now.in), ((int)now.out), ((int)now.bempty), ((int)now.bfull));
		/* merge: six = 0(44, 37, 44) */
		reached[1][37] = 1;
		(trpt+1)->bup.oval = ((int)now.six);
		now.six = 0;
#ifdef VAR_RANGES
		logval("six", ((int)now.six));
#endif
		;
		/* merge: .(goto)(0, 45, 44) */
		reached[1][45] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 43: // STATE 38 - writers-and-reader.pml:33 - [((six<4))] (44:0:1 - 1)
		IfNotBlocked
		reached[1][38] = 1;
		if (!((((int)now.six)<4)))
			continue;
		/* merge: printf(' %d |',buffer[six])(44, 39, 44) */
		reached[1][39] = 1;
		Printf(" %d |", ((int)now.buffer[ Index(((int)now.six), 4) ]));
		/* merge: six = (six+1)(44, 40, 44) */
		reached[1][40] = 1;
		(trpt+1)->bup.oval = ((int)now.six);
		now.six = (((int)now.six)+1);
#ifdef VAR_RANGES
		logval("six", ((int)now.six));
#endif
		;
		/* merge: .(goto)(0, 45, 44) */
		reached[1][45] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 44: // STATE 42 - writers-and-reader.pml:34 - [printf(']\\n')] (0:46:0 - 1)
		IfNotBlocked
		reached[1][42] = 1;
		Printf("]\n");
		/* merge: goto :b5(46, 43, 46) */
		reached[1][43] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 45: // STATE 50 - ./pthreads.pml:73 - [printf('@@@ %d SIGNAL cond[%d]=%d\\n',_pid,0,cvars[0].dummy)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][50] = 1;
		Printf("@@@ %d SIGNAL cond[%d]=%d\n", ((int)((P1 *)_this)->_pid), 0, ((int)now.cvars[0].dummy));
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 51 - ./pthreads.pml:75 - [((cvars[0].dummy==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][51] = 1;
		if (!((((int)now.cvars[0].dummy)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 52 - ./pthreads.pml:75 - [cvars[0].dummy = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		(trpt+1)->bup.oval = ((int)now.cvars[0].dummy);
		now.cvars[0].dummy = 1;
#ifdef VAR_RANGES
		logval("cvars[0].dummy", ((int)now.cvars[0].dummy));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 58 - ./pthreads.pml:78 - [printf('@@@ %d SIGNALLED cond[%d]=%d\\n',_pid,0,cvars[0].dummy)] (0:0:0 - 3)
		IfNotBlocked
		reached[1][58] = 1;
		Printf("@@@ %d SIGNALLED cond[%d]=%d\n", ((int)((P1 *)_this)->_pid), 0, ((int)now.cvars[0].dummy));
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 60 - writers-and-reader.pml:105 - [assert((mtx.mid==_pid))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][60] = 1;
		spin_assert((((int)now.mtx.mid)==((int)((P1 *)_this)->_pid)), "(mtx.mid==_pid)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 61 - ./pthreads.pml:43 - [printf('@@@ %d UNLOCKING : state is %e\\n',_pid,mtx.mstate)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][61] = 1;
		Printf("@@@ %d UNLOCKING : state is %e\n", ((int)((P1 *)_this)->_pid), now.mtx.mstate);
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 62 - ./pthreads.pml:45 - [assert((mtx.mid==_pid))] (0:66:2 - 1)
		IfNotBlocked
		reached[1][62] = 1;
		spin_assert((((int)now.mtx.mid)==((int)((P1 *)_this)->_pid)), "(mtx.mid==_pid)", II, tt, t);
		/* merge: mtx.mstate = unlocked(66, 63, 66) */
		reached[1][63] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.mtx.mstate;
		now.mtx.mstate = 2;
#ifdef VAR_RANGES
		logval("mtx.mstate", now.mtx.mstate);
#endif
		;
		/* merge: mtx.mid = 0(66, 64, 66) */
		reached[1][64] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.mtx.mid);
		now.mtx.mid = 0;
#ifdef VAR_RANGES
		logval("mtx.mid", ((int)now.mtx.mid));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 52: // STATE 66 - ./pthreads.pml:50 - [printf('@@@ %d UNLOCKED : state is %e\\n',_pid,mtx.mstate)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][66] = 1;
		Printf("@@@ %d UNLOCKED : state is %e\n", ((int)((P1 *)_this)->_pid), now.mtx.mstate);
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 72 - writers-and-reader.pml:113 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][72] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC producer */
	case 54: // STATE 1 - ./pthreads.pml:35 - [printf('@@@ %d LOCKING : state is %e\\n',_pid,mtx.mstate)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		Printf("@@@ %d LOCKING : state is %e\n", ((int)((P0 *)_this)->_pid), now.mtx.mstate);
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 2 - ./pthreads.pml:37 - [((mtx.mstate==unlocked))] (6:0:2 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.mtx.mstate==2)))
			continue;
		/* merge: mtx.mstate = locked(6, 3, 6) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.mtx.mstate;
		now.mtx.mstate = 1;
#ifdef VAR_RANGES
		logval("mtx.mstate", now.mtx.mstate);
#endif
		;
		/* merge: mtx.mid = _pid(6, 4, 6) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.mtx.mid);
		now.mtx.mid = ((int)((P0 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("mtx.mid", ((int)now.mtx.mid));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 56: // STATE 6 - ./pthreads.pml:38 - [printf('@@@ %d LOCKED : state is %e\\n',_pid,mtx.mstate)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		Printf("@@@ %d LOCKED : state is %e\n", ((int)((P0 *)_this)->_pid), now.mtx.mstate);
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 8 - writers-and-reader.pml:68 - [assert((mtx.mid==_pid))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		spin_assert((((int)now.mtx.mid)==((int)((P0 *)_this)->_pid)), "(mtx.mid==_pid)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 9 - writers-and-reader.pml:70 - [(!(bfull))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!( !(((int)now.bfull))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 12 - ./pthreads.pml:55 - [printf('@@@ %d WAIT for cond[%d]=%d with mutex=%e\\n',_pid,0,cvars[0].dummy,mtx.mstate)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		Printf("@@@ %d WAIT for cond[%d]=%d with mutex=%e\n", ((int)((P0 *)_this)->_pid), 0, ((int)now.cvars[0].dummy), now.mtx.mstate);
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 13 - ./pthreads.pml:60 - [assert((mtx.mid==_pid))] (0:16:2 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		spin_assert((((int)now.mtx.mid)==((int)((P0 *)_this)->_pid)), "(mtx.mid==_pid)", II, tt, t);
		/* merge: mtx.mstate = unlocked(16, 14, 16) */
		reached[0][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.mtx.mstate;
		now.mtx.mstate = 2;
#ifdef VAR_RANGES
		logval("mtx.mstate", now.mtx.mstate);
#endif
		;
		/* merge: mtx.mid = 0(16, 15, 16) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.mtx.mid);
		now.mtx.mid = 0;
#ifdef VAR_RANGES
		logval("mtx.mid", ((int)now.mtx.mid));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 61: // STATE 16 - ./pthreads.pml:60 - [((cvars[0].dummy==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		if (!((((int)now.cvars[0].dummy)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 18 - ./pthreads.pml:64 - [((mtx.mstate==unlocked))] (23:0:3 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		if (!((now.mtx.mstate==2)))
			continue;
		/* merge: mtx.mstate = locked(23, 19, 23) */
		reached[0][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.mtx.mstate;
		now.mtx.mstate = 1;
#ifdef VAR_RANGES
		logval("mtx.mstate", now.mtx.mstate);
#endif
		;
		/* merge: cvars[0].dummy = 0(23, 20, 23) */
		reached[0][20] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cvars[0].dummy);
		now.cvars[0].dummy = 0;
#ifdef VAR_RANGES
		logval("cvars[0].dummy", ((int)now.cvars[0].dummy));
#endif
		;
		/* merge: mtx.mid = _pid(23, 21, 23) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.mtx.mid);
		now.mtx.mid = ((int)((P0 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("mtx.mid", ((int)now.mtx.mid));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 63: // STATE 23 - ./pthreads.pml:67 - [printf('@@@ %d DONE with cond[%d]=%d with mutex=%e\\n',_pid,0,cvars[0].dummy,mtx.mstate)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		Printf("@@@ %d DONE with cond[%d]=%d with mutex=%e\n", ((int)((P0 *)_this)->_pid), 0, ((int)now.cvars[0].dummy), now.mtx.mstate);
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 28 - writers-and-reader.pml:73 - [assert((mtx.mid==_pid))] (0:0:0 - 3)
		IfNotBlocked
		reached[0][28] = 1;
		spin_assert((((int)now.mtx.mid)==((int)((P0 *)_this)->_pid)), "(mtx.mid==_pid)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 29 - writers-and-reader.pml:42 - [assert(!(bfull))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		spin_assert( !(((int)now.bfull)), " !(bfull)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 30 - writers-and-reader.pml:43 - [buffer[in] = (p+pno)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		(trpt+1)->bup.oval = ((int)now.buffer[ Index(((int)now.in), 4) ]);
		now.buffer[ Index(now.in, 4) ] = (((P0 *)_this)->p+((P0 *)_this)->pno);
#ifdef VAR_RANGES
		logval("buffer[in]", ((int)now.buffer[ Index(((int)now.in), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 31 - writers-and-reader.pml:44 - [printf('@@@ %d INSERT buf[%d] := %d\\n',_pid,in,(p+pno))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][31] = 1;
		Printf("@@@ %d INSERT buf[%d] := %d\n", ((int)((P0 *)_this)->_pid), ((int)now.in), (((P0 *)_this)->p+((P0 *)_this)->pno));
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 32 - writers-and-reader.pml:45 - [bempty = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		(trpt+1)->bup.oval = ((int)now.bempty);
		now.bempty = 0;
#ifdef VAR_RANGES
		logval("bempty", ((int)now.bempty));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 33 - writers-and-reader.pml:46 - [bfull = (in==out)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][33] = 1;
		(trpt+1)->bup.oval = ((int)now.bfull);
		now.bfull = (((int)now.in)==((int)now.out));
#ifdef VAR_RANGES
		logval("bfull", ((int)now.bfull));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 34 - writers-and-reader.pml:47 - [in = ((in+1)%4)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][34] = 1;
		(trpt+1)->bup.oval = ((int)now.in);
		now.in = ((((int)now.in)+1)%4);
#ifdef VAR_RANGES
		logval("in", ((int)now.in));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 35 - writers-and-reader.pml:30 - [printf('@@@ %d BUFFER in:%d, out:%d, empty:%d, full:%d [|',_pid,in,out,bempty,bfull)] (0:43:1 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		Printf("@@@ %d BUFFER in:%d, out:%d, empty:%d, full:%d [|", ((int)((P0 *)_this)->_pid), ((int)now.in), ((int)now.out), ((int)now.bempty), ((int)now.bfull));
		/* merge: six = 0(43, 36, 43) */
		reached[0][36] = 1;
		(trpt+1)->bup.oval = ((int)now.six);
		now.six = 0;
#ifdef VAR_RANGES
		logval("six", ((int)now.six));
#endif
		;
		/* merge: .(goto)(0, 44, 43) */
		reached[0][44] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 72: // STATE 37 - writers-and-reader.pml:33 - [((six<4))] (43:0:1 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		if (!((((int)now.six)<4)))
			continue;
		/* merge: printf(' %d |',buffer[six])(43, 38, 43) */
		reached[0][38] = 1;
		Printf(" %d |", ((int)now.buffer[ Index(((int)now.six), 4) ]));
		/* merge: six = (six+1)(43, 39, 43) */
		reached[0][39] = 1;
		(trpt+1)->bup.oval = ((int)now.six);
		now.six = (((int)now.six)+1);
#ifdef VAR_RANGES
		logval("six", ((int)now.six));
#endif
		;
		/* merge: .(goto)(0, 44, 43) */
		reached[0][44] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 73: // STATE 41 - writers-and-reader.pml:34 - [printf(']\\n')] (0:45:0 - 1)
		IfNotBlocked
		reached[0][41] = 1;
		Printf("]\n");
		/* merge: goto :b2(45, 42, 45) */
		reached[0][42] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 74: // STATE 49 - ./pthreads.pml:73 - [printf('@@@ %d SIGNAL cond[%d]=%d\\n',_pid,1,cvars[1].dummy)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][49] = 1;
		Printf("@@@ %d SIGNAL cond[%d]=%d\n", ((int)((P0 *)_this)->_pid), 1, ((int)now.cvars[1].dummy));
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 50 - ./pthreads.pml:75 - [((cvars[1].dummy==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][50] = 1;
		if (!((((int)now.cvars[1].dummy)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 51 - ./pthreads.pml:75 - [cvars[1].dummy = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][51] = 1;
		(trpt+1)->bup.oval = ((int)now.cvars[1].dummy);
		now.cvars[1].dummy = 1;
#ifdef VAR_RANGES
		logval("cvars[1].dummy", ((int)now.cvars[1].dummy));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 57 - ./pthreads.pml:78 - [printf('@@@ %d SIGNALLED cond[%d]=%d\\n',_pid,1,cvars[1].dummy)] (0:0:0 - 3)
		IfNotBlocked
		reached[0][57] = 1;
		Printf("@@@ %d SIGNALLED cond[%d]=%d\n", ((int)((P0 *)_this)->_pid), 1, ((int)now.cvars[1].dummy));
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 59 - writers-and-reader.pml:77 - [assert((mtx.mid==_pid))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][59] = 1;
		spin_assert((((int)now.mtx.mid)==((int)((P0 *)_this)->_pid)), "(mtx.mid==_pid)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 60 - ./pthreads.pml:43 - [printf('@@@ %d UNLOCKING : state is %e\\n',_pid,mtx.mstate)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][60] = 1;
		Printf("@@@ %d UNLOCKING : state is %e\n", ((int)((P0 *)_this)->_pid), now.mtx.mstate);
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 61 - ./pthreads.pml:45 - [assert((mtx.mid==_pid))] (0:65:2 - 1)
		IfNotBlocked
		reached[0][61] = 1;
		spin_assert((((int)now.mtx.mid)==((int)((P0 *)_this)->_pid)), "(mtx.mid==_pid)", II, tt, t);
		/* merge: mtx.mstate = unlocked(65, 62, 65) */
		reached[0][62] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.mtx.mstate;
		now.mtx.mstate = 2;
#ifdef VAR_RANGES
		logval("mtx.mstate", now.mtx.mstate);
#endif
		;
		/* merge: mtx.mid = 0(65, 63, 65) */
		reached[0][63] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.mtx.mid);
		now.mtx.mid = 0;
#ifdef VAR_RANGES
		logval("mtx.mid", ((int)now.mtx.mid));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 81: // STATE 65 - ./pthreads.pml:50 - [printf('@@@ %d UNLOCKED : state is %e\\n',_pid,mtx.mstate)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][65] = 1;
		Printf("@@@ %d UNLOCKED : state is %e\n", ((int)((P0 *)_this)->_pid), now.mtx.mstate);
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 68 - writers-and-reader.pml:86 - [p = ((p+2)%8)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][68] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->p;
		((P0 *)_this)->p = ((((P0 *)_this)->p+2)%8);
#ifdef VAR_RANGES
		logval("producer:p", ((P0 *)_this)->p);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 72 - writers-and-reader.pml:90 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][72] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

