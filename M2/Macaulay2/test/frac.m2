temp = z -> (
     R := ZZ/101[x,y,w];
     oldw = w;
     x/y;
     )

temp()

assert( w === oldw )

-----------------------------------------------------------------------------

-- From: Allen Knutson <allenk@Math.Berkeley.EDU>
-- Subject: Reproducible segfault in rational function arithmetic
-- To: Macaulay2@math.uiuc.edu
-- Date: Sat, 19 Jul 2003 10:39:01 -0700 (PDT)

R = ZZ[d,e];
d + (e/d)						   -- this may crash or give "zero divisor found"

-----------------------------------------------------------------------------

R = ZZ[x]
F = frac R
f = x * (x^2 + 1)
g = (x^3+1) * (x^2 + 1)
assert(numerator (f/g) == x)

-- We should have canonical forms for fractions
-- This is more a wish than a bug report
-- It depends on having a coefficient ring where the orbits of the group of units acting on the ring
--    have canonical representative.  E.g., if the coefficient ring is a field, we can make the coefficient
--    of the leading term be 1.
assert(numerator((-f)/(-g)) == numerator(f/g))

-----------------------------------------------------------------------------
R = QQ[x]
F = frac R
f = ((x^3*(x-1)*(1/2))/((x^5-1)))
g = ((x^3*(x-1))/(2*(x^5-1)))
assert( f === g )
assert( numerator f === numerator g )

debug Macaulay2Core
h = rawGCD(raw numerator f, raw denominator f)
(raw numerator f)//h
(raw denominator f)//h
use R
f1 = x^3*(x-1)*(1/2)
g1 = x^5-1
gcd(f1,g1)
assert(rawGCD(raw f1,raw g1) =!= raw(1/8*x-1/8))
assert(rawGCD(raw f1,raw g1) === raw(x-1))
-----------------------------------------------------------------------------
R = ZZ[x]
F = frac R
f = ((x^3*(x-1)*(1/2))/((x^5-1)))
g = ((x^3*(x-1))/(2*(x^5-1)))
assert( f === g )
assert( numerator f === numerator g )
-----------------------------------------------------------------------------
R = QQ[x,y]/(y)
F = frac R
f = ((x^3*(x-1)*(1/2))/((x^5-1)))
g = ((x^3*(x-1))/(2*(x^5-1)))
assert( f === g )
assert( numerator f === numerator g )

-- Local Variables:
-- compile-command: "make -C $M2BUILDDIR/Macaulay2/test frac.out"
-- End:
