# mathextended
Simple module providing more annotated mathematical functions in lua.

> [!WARNING]  
> `math.comb()` is currently quite slow. Please be patient as I figure out a better implementation.

### Usage
Drop the module inside your project folder and require it like this:
```lua
require("mathextended")
```

### Functions

#### `math.fact(n: number)`
Returns the factorial of the specified number.

#### `math.clamp(n: number, min: number, max: number)`
Returns the specified number limited between a minimum and a maximum.

#### `math.sign(n: number)`
Returns the sign of a number.

#### `math.round(n: number, decimals: integer)`
Rounds the specified number to the defined amount of decimals. The default decimal amount is 0.

#### `math.lerp(n: number, d: number, t: number)`
Linearly interpolates a value *n* to a destination *d* by a given alpha.

#### `math.comb(n: number, p: number)`
Returns the number of ways picking p unordered outcomes from n possibilities, without repetition.
