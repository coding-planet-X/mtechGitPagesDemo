def square(x):
  return x * x
if __name__ == "__main__":
  number = float(input("please enter a number: "))
  result = square(number)
  print(f"your number squared is {result}.")