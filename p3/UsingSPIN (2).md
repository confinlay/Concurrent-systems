# Using SPIN

We assume we have our Promela model in file `model.pml`

## Interpretative/Interactive/Simulation mode

Run a simulation with default settings: `spin model.pml`

Run a simulation with random number generator seed *123* : `spin -n123 model.pml`

Run a simulation for a maximum of *42* steps: `spin -u42 model.pml`

## Verification mode

### Default verification:

The default verification checks for:

 - deadlock states, except when state has a label starting with  `end`
 - assertion violations
 

```
spin -run model.pml 
``` 
 
 or 

```
spin -a model.pml
cc -o pan pan.c
./pan
```

### Finding shortest counterexample
Given a failed verification, that has generated a trail file `model.pml.trail`, we can view the counter example with: `spin -p -t model.pml`

Note: we do not refer to the trail file directly in the above command.


If the trail is reported as having depth *42* (say),
then we can look for a shorter one by doing:

    cc -DREACH -o pan pan.c
    ./pan -i -m42
    
 This will return the shortest trail.

 
 It can also be found all at once by breadth-first search:
 
     cc -DBFS -o pan pan.c
     ./pan


### Verifying `progress` states

    cc -DNP -o pan pan.c
    ./pan -l
    
### Disabling default checks

Sometimes it is useful to disable deadlock and assertion checking, usually when looking for other kinds of errors that might occur elsewhere.

* To disable deadlock/end-state checking, use the `-E` flag.
* To disable assertion checking, use the `-A` flag.

### Verifying Linear Temporal Logic


Consider a property called `goodProperty` that asserts that it is always the case
that if `x < 3` now, that eventually `y > 10` will hold.
This can now be written directly in a PML file:

    ltl goodProperty { [] ( (x < 3) -> <> (y > 10) ) }

The Promela LTL syntax also uses keywords, so that `always` and `eventually`
are accepted as well as `[]` and `<>`. So the above example could be written:

    ltl goodProperty { always ( (x < 3) -> eventually (y > 10) ) }

If a Promela file contains linear temporal logic formulae then deadlock checking is disabled if `pan.c` is produced using `spin -a`.

To do deadlock checks in such a case, spin can compile and run in one go,
using `spin -run -safety model.pml`


