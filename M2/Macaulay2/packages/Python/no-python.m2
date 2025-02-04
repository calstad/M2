-- definitions for when Macaulay2 is built w/o Python support

exportFrom_Core {"PythonObject"}
export {
    "addPyToM2Function",
    "getattr",
    "getitem",
    "hasattr",
    "import",
    "pythonValue",
    "setattr",
    "setitem",
    "toFunction",
    "toPython",
    "objectType",
    "runSimpleString"}

errmsg = "Macaulay2 was built without Python support"
err = x -> error errmsg

addPyToM2Function = method()
addPyToM2Function(String, Function, String) :=
addPyToM2Function(List, Function, String) := err

getattr = method()
getattr(PythonObject, String) := err

getitem = method()
getitem(PythonObject, Thing) := err

hasattr = method()
hasattr(PythonObject, String) := err

import = method()
import String := err

iterator PythonObject := err

next PythonObject := err

pythonValue = method(Dispatch => Thing)
pythonValue String :=
pythonValue Sequence := err

setattr = method()
setattr(PythonObject, String, Thing) := err

setitem = method()
setitem(PythonObject, Thing, Thing) := err

toFunction = method()
toFunction PythonObject := err

toPython = method()
for type in {
    Boolean,
    CC,
    Constant,
    Function,
    HashTable,
    Nothing,
    PythonObject,
    QQ,
    RR,
    Sequence,
    Set,
    String,
    VisibleList,
    ZZ
    } do installMethod(toPython, type, err)

for op in {symbol +, symbol -, symbol *, symbol /, symbol //, symbol %,
    symbol ^, symbol <<, symbol >>, symbol &, symbol |, symbol ^^, symbol and,
    symbol or, symbol xor, symbol ==, symbol ?, symbol @} do (
    installMethod(op, PythonObject, PythonObject, err);
    installMethod(op, PythonObject, Thing, err);
    installMethod(op, Thing, PythonObject, err))

-- unary methods
for m in {
    length,
    value,
    symbol +,
    symbol -,
    abs,
    symbol ~,
    round,
    truncate,
    floor,
    ceiling,
    help#0
    } do installMethod(m, PythonObject, err)

-- binary methods (PythonObject, Thing)
for m in {
    symbol SPACE,
    symbol @@,
    symbol_,
    quotientRemainder
    } do installMethod(m, PythonObject, Thing, err)

-- others
member(Thing, PythonObject) :=
member(PythonObject, PythonObject) :=
quotientRemainder(PythonObject, PythonObject) :=
quotientRemainder(Thing, PythonObject) :=
round(ZZ, PythonObject) :=
round(PythonObject, PythonObject) := err

objectType = x -> error errmsg
runSimpleString = x -> error errmsg
