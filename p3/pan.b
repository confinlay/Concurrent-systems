	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 3
		;
		now.in = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 6: // STATE 5
		;
		now.buffer[ Index(now.in, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 7: // STATE 6
		;
		now.in = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 8
		;
		now.in = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 13
		;
		now.out = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 14
		;
		now.bfull = trpt->bup.oval;
		;
		goto R999;

	case 11: // STATE 15
		;
		now.bempty = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 13: // STATE 19
		;
		now.six = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 22
		;
		now.six = trpt->bup.oval;
		;
		goto R999;
;
		
	case 15: // STATE 24
		goto R999;

	case 16: // STATE 31
		;
		now.mtx.mstate = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 32
		;
		now.mtx.mid = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 33
		;
		now.cvars[0].dummy = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 34
		;
		now.cvars[1].dummy = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 36
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 21: // STATE 37
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 22: // STATE 38
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 23: // STATE 39
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC consumer */
;
		;
		
	case 25: // STATE 4
		;
		now.mtx.mid = trpt->bup.ovals[1];
		now.mtx.mstate = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		
	case 30: // STATE 15
		;
		now.mtx.mid = trpt->bup.ovals[1];
		now.mtx.mstate = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 32: // STATE 21
		;
		now.mtx.mid = trpt->bup.ovals[2];
		now.cvars[1].dummy = trpt->bup.ovals[1];
		now.mtx.mstate = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 36: // STATE 30
		;
		now.out = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 31
		;
		cout = trpt->bup.oval;
		;
		goto R999;

	case 38: // STATE 32
		;
		now.buffer[ Index(now.out, 4) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 40: // STATE 34
		;
		now.bfull = trpt->bup.oval;
		;
		goto R999;

	case 41: // STATE 35
		;
		now.bempty = trpt->bup.oval;
		;
		goto R999;

	case 42: // STATE 37
		;
		now.six = trpt->bup.oval;
		;
		goto R999;

	case 43: // STATE 40
		;
		now.six = trpt->bup.oval;
		;
		goto R999;
;
		
	case 44: // STATE 42
		goto R999;
;
		;
		;
		;
		
	case 47: // STATE 52
		;
		now.cvars[0].dummy = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 51: // STATE 64
		;
		now.mtx.mid = trpt->bup.ovals[1];
		now.mtx.mstate = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 53: // STATE 72
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC producer */
;
		;
		
	case 55: // STATE 4
		;
		now.mtx.mid = trpt->bup.ovals[1];
		now.mtx.mstate = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		
	case 60: // STATE 15
		;
		now.mtx.mid = trpt->bup.ovals[1];
		now.mtx.mstate = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 62: // STATE 21
		;
		now.mtx.mid = trpt->bup.ovals[2];
		now.cvars[0].dummy = trpt->bup.ovals[1];
		now.mtx.mstate = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 66: // STATE 30
		;
		now.buffer[ Index(now.in, 4) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 68: // STATE 32
		;
		now.bempty = trpt->bup.oval;
		;
		goto R999;

	case 69: // STATE 33
		;
		now.bfull = trpt->bup.oval;
		;
		goto R999;

	case 70: // STATE 34
		;
		now.in = trpt->bup.oval;
		;
		goto R999;

	case 71: // STATE 36
		;
		now.six = trpt->bup.oval;
		;
		goto R999;

	case 72: // STATE 39
		;
		now.six = trpt->bup.oval;
		;
		goto R999;
;
		
	case 73: // STATE 41
		goto R999;
;
		;
		;
		;
		
	case 76: // STATE 51
		;
		now.cvars[1].dummy = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 80: // STATE 63
		;
		now.mtx.mid = trpt->bup.ovals[1];
		now.mtx.mstate = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 82: // STATE 68
		;
		((P0 *)_this)->p = trpt->bup.oval;
		;
		goto R999;

	case 83: // STATE 72
		;
		p_restor(II);
		;
		;
		goto R999;
	}

