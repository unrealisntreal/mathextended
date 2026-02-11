---Returns the factorial of the specified number.
---@param n integer
function math.fact(n)
  if n == 0 or n == 1 then
    return 1
  elseif n < 0 then
    error("Factorial numbers must be positive integers.", 2)
  end
  local m = 1
  for i = 2, n do
    m = m * i
  end
  return m
end

---Returns a value limited between a minimum and a maximum.
---@param n number
---@param min number
---@param max number
function math.clamp(n, min, max)
  if min <= max then
    return (n < min) and min or (n > max) and max or n
  else
    error("Clamp's minimum value is greater than it's maximum value.", 2)
  end
end

---Returns the sign of a number.
---@param n number
function math.sign(n)
  return (n > 0) and 1 or (n < 0) and -1 or 0
end

local floor = math.floor

---Rounds a numbers to the defined amount of decimals. The default decimal amount is 0.
---@param n number
---@param decimals number
function math.round(n, decimals)
  local p = 10 ^ (decimals or 0)
  return floor(n * p + .5) / p
end

---Interpolates two values.
---@param a number
---@param b number
---@param t number
function math.lerp(a, b, t)
  return a + (b - a) * t
end

local fact = math.fact

---Returns the number of ways picking p unordered outcomes from n possibilities, without repetition.
---@param n number
---@param p number
function math.comb(n, p)
  return fact(n) / (fact(p) * fact(n - p))
end

---The value of Euler's number.
math.e = math.exp(1)
