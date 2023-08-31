# Examples

## Hello World
```ruby
print("Hello, World!")
```

## Fizz Buzz
```ruby
let i = 0
loop 100
  i += 1
  let fizzbuzz = ""
  if i % 3 == 0
    fizzbuzz += "fizz"
  end
  if i % 5 == 0
    fizzbuzz += "buzz"
  end
  if fizzbuzz
    print(fizzbuzz)
    next
  end
  print(i)
end
```

## Fibonacci Sequence
```ruby
let a = 0
let b = 1
print(a)
print(b)
loop 20
  let c = a + b
  a = b
  b = c
  print(c)
end
```