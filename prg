1
a = int(input())
b = int(input())
for x in range (a, b+1):
    if x > 1:
        for i in range (2, x):
            if (x%i)== 0:
                break
        else:
            print (x)
2
date = input("Enter the date to be checked: ")
c=date.split("/")
b = list(map(int,c))
input_year=(b[2])

if(input_year%4 == 0):
    if(input_year%100 == 0):
        if(input_year%400 == 0):
            print("%d is Leap Year" %input_year)
        else:
            print("%d is not the Leap Year" %input_year)
    else:
        print("%d is the Leap Year" %input_year)
else:
    print("%d is not the Leap Year" %input_year)

x=input_year%4
if x!=0:
    print("Previous Leap year:", input_year-x)
else:
    print("Next leap year:", input_year+4)
3
Number = int(input(" Please Enter any Number: "))
Sum = 0
for i in range(1, Number):
    if(Number % i == 0):
        Sum = Sum + i
if (Sum == Number):
    print(" %d is a Perfect Number" %Number)
else:
    print(" %d is not a Perfect Number" %Number)
4
A=input("Enter upper limit:")
c=0
m=2
if A.isnumeric():
    x=int(A)
    while(c<x):
        for n in range(1,m+1):
            a=m*m-n*n
            b=2*m*n
            c=m*m+n*n
            if(c>x):
                break
            if(a==0 or b==0 or c==0):
                break
            print(a,b,c)
        m=m+1
else:
    print("invalid input")
5
num=int(input("Enter the number:"))
Sum=0
temp=num
while temp>0:
    digit=temp%10
    Sum+=digit
    temp=temp//10
print("Sum of Digits:", Sum)
6
num=int(input("Enter the number:"))
Sum=0
temp=num
while temp>0:
    digit=temp%10
    Sum+=digit**3
    temp=temp//10
if Sum==num:
    print("Armstrong Number")
else:
    print("Not a Armstrong Number")
7
num=int(input("Enter the number:"))
Sum=0
temp=num
while temp>0:
    digit=temp%10
    Sum+=digit
    temp=temp//10
if num%Sum==0:
    print("Harshad Number")
else:
    print("Not a Harshad Number")
8
def happy(n):
    temp=n
    sum=0
    while temp>0:
        digit=temp%10
        sum=digit**2+sum
        temp=temp//10
    return sum
    
# Main Program

num=int(input("Enter the number:"))
result=num
while result!=1 and result!=4:
    result=(happy(result))
if result==1:
    print("True")
elif result==4:
    print("False")
9
n = 3025
m = str(n)
a = m[:len(m)//2]
b = m[len(m)//2:]
c = int(a)+int(b)
d = c**2

if(d==n):
    print("Tech number")
else:
    print("Not a Tech number")
10
p=int(input("Enter the Principle amount:"))
n=int(input("Enter the number of years:"))
SC=input("Senior Citizen Yes/No:")
G=input("Male/Female:")
if SC=='Y' and G=='M':
    print("SI=",(p*n*12)/100)
elif SC=='Y' and G=='F':
    print("SI=",(p*n*15)/100)
else:
    print("SI=",(p*n*10)/100)
11
x=int(input("Enter the number:"))
y=[]
print("The factors of",x,"are:")
for i in range(1, x):
    if x % i == 0:
        y.append(i)
print(y)
print("Number of factors:", len(y))
n=int(input("Enter N value:"))
if n>len(y):
    print("Invalid")
else:
    print("First", n, "factors:")
    for k in range(0,n):
        print(y[k], end=' ')
12
x=int(input("Enter the number:"))
y=[]
print("The factors of",x,"are:")
for i in range(1, x + 1):
    if x % i == 0:
        y.append(i)
print(y)
print("Number of factors:", len(y))
n=int(input("Enter N value:"))
print(n, "th factor is:",y[n-1])
13
import itertools
n=input("Enter the number")
P=list(itertools.permutations(n))
print(*[''.join(p) for p in P])
14
import math
num=float(input("Enter the number:"))
print("Square number=",math.pow(num,2))
print("Cube number=",round(math.pow(num,3),3))
15
num=input("Enter the binary number:")
bin_num="01"
for i in range(len(num)):
    binary=True
    if num[i] not in bin_num:
        print("Invalid input")
        binary=False
        break
if binary:
    dec_number=int(num,2)
    oct_number=oct(dec_number)
    hexa=hex(dec_number)
    print("Decimal Equivalent=",dec_number)
    print("Octal Equivalent=",oct_number)
    print("Hexa Equivalent=",hexa)
16
num1=input("Enter the binary number 1=")
num2=input("Enter the binary number 2=")
sum=bin(int(num1,2)+int(num2,2))
print("Sum of binary numbers: ",sum[2:])
17
a='1101'
b='1110'
c='1111'

bina=int(a,2)
binb=int(b,2)
binc=int(c,2)

if bina>binb and bina>binc:
    print("Greatest is", a)
elif binb>bina and binb>binc:
    print("Greatest is", b)
else:
    print("Greatest is", c)
18
# Matrix addition and multiplication without using functions

# Input for the first matrix
rows1 = int(input("Enter the number of rows for the first matrix: "))
cols1 = int(input("Enter the number of columns for the first matrix: "))

matrix1 = []
print("Enter elements of the first matrix:")
for i in range(rows1):
    row = []
    for j in range(cols1):
        element = int(input(f"Enter element at position ({i + 1}, {j + 1}): "))
        row.append(element)
    matrix1.append(row)

# Input for the second matrix
rows2 = int(input("Enter the number of rows for the second matrix: "))
cols2 = int(input("Enter the number of columns for the second matrix: "))

matrix2 = []
print("Enter elements of the second matrix:")
for i in range(rows2):
    row = []
    for j in range(cols2):
        element = int(input(f"Enter element at position ({i + 1}, {j + 1}): "))
        row.append(element)
    matrix2.append(row)

# Matrix addition
if rows1 == rows2 and cols1 == cols2:
    result_addition = [[matrix1[i][j] + matrix2[i][j] for j in range(cols1)] for i in range(rows1)]
    print("\nMatrix Addition Result:")
    for row in result_addition:
        print(row)
else:
    print("\nMatrix addition is not possible due to mismatched dimensions.")

# Matrix multiplication
if cols1 == rows2:
    result_multiplication = [[sum(matrix1[i][k] * matrix2[k][j] for k in range(cols1)) for j in range(cols2)] for i in range(rows1)]
    print("\nMatrix Multiplication Result:")
    for row in result_multiplication:
        print(row)
else:
    print("\nMatrix multiplication is not possible due to mismatched dimensions.")
19
input_string = input("Enter a string: ")

uppercase_count = 0
lowercase_count = 0
digit_count = 0
special_character_count = 0
word_count = len(input_string.split())

for char in input_string:
    if char.isupper():
        uppercase_count += 1
    elif char.islower():
        lowercase_count += 1
    elif char.isdigit():
        digit_count += 1
    else:
        special_character_count += 1

print("\nAnalysis of the input string:")
print(f"Uppercase letters: {uppercase_count}")
print(f"Lowercase letters: {lowercase_count}")
print(f"Digits: {digit_count}")
print(f"Special characters: {special_character_count}")
print(f"Number of words: {word_count}")
24
N=int(input("Enter the limit:"))
count=0
for i in range(1,N+1):
    count+=i
print("Sum of N natural numbers",count)
25
N=int(input("Enter the limit:"))
count=0
for i in range(1,N+1):
    count+=i*i
print("Sum of square of N natural numbers",count)
26
def fact(n):
    if n==0 or n==1:
        return 1
    if n>1:
        return n*fact(n-1)

# Main program
num=int(input("Enter the number: "))
print(fact(num))
27
def fact(n):
    if n==0 or n==1:
        return 1
    if n>1:
        return n*fact(n-1)

# Main program
num=int(input("Enter the number: "))
sum=0
for i in range(1,num+1):
    sum+=fact(i)
print(sum)        
28
def fact(n):
    if n==0 or n==1:
        return 1
    if n>1:
        return n*fact(n-1)

# Main program
num=int(input("Enter the number: "))
sum=0
for i in range(1,num+1):
    sum+=fact(i)/i
print(sum)        
29
n=20
x=(n*(n+1)*(2*n+1))/6
y=((n*(n+1))/2)**2
print("Difference:",y-x)
30
def digits_sum():
	for i in reversed(range(len(triangle_num) - 1)):
		for j in range(len(triangle_num[i])):
			triangle_num[i][j] += max(triangle_num[i + 1][j], triangle_num[i + 1][j + 1])
	return str(triangle_num[0][0])

#Main Program
triangle_num = 
	[[3],
           [4,6],
          [2,7,6],
        [8,5,9,3]]
print(digits_sum())
31
def Fibonacci(n):

    if n < 0:
        print("Incorrect input")

    elif n == 0:
        return 0
 
    elif n == 1 or n == 2:
        return 1
 
    else:
        return Fibonacci(n-1) + Fibonacci(n-2)
 
# Driver Program
num=int(input("Enter the number of terms="))
for i in range(num):
    print(Fibonacci(i))
32
def fib(n):
    if n <= 1:
        return n
    return fib(n-1) + fib(n-2)
 
# Driver program
s = int(input("Enter the value of n: "))
print ("Number of ways = ", end="")
print (fib(s+1))
33
M=int(input("Enter the number of vehicles:"))
N=int(input("Enter number of children: "))
x=M%N
if x==0:
    print("You are so lucky")
elif x!=0 and x%2!=0:
    print("Mr.Peter gets", x, "Vehicles")
elif x!=0 and x%2==0:
    print("Mr.Peter gets", x, "Vehicles. He is lucky")
34
from datetime import datetime
from dateutil import relativedelta

# get two dates
d1 = '17/7/1980'
d2 = '16/3/2007'

# convert string to date object
start_date = datetime.strptime(d1, "%d/%m/%Y")
end_date = datetime.strptime(d2, "%d/%m/%Y")

# Get the relativedelta between two dates
delta = relativedelta.relativedelta(end_date, start_date)
print('Years, Months, Days between two dates is')
print(delta.years, 'Years,', delta.months, 'months,', delta.days, 'days')

delta.years
d3=d1.split('/')
d4=d2.split('/')
BY=int(d3[2])
JY=int(d4[2])

if(delta.years>=19 and BY%4==0):
    print("I m a lucky adult")
elif delta.years<19:
    print("I m aspiring to become adult")
    
if BY%4==0:
    print("Birth year is leap Year")
else:
    print("Birth year is not a leap Year")

if JY%4==0:
    print("Joining year is leap Year")
else:
    print("Joining year is not a leap Year")
35
# Current time
from datetime import datetime
now=datetime.now()
print(now)

# Current date
from datetime import datetime
now=datetime.today()
print(now)

# Entire month in a year
import calendar
y = int(input("Enter the Year :"))
print(calendar.prcal(y))

# Particular month in a year
import calendar
y = int(input("Enter the Year :"))
m=int(input("Enter the month :"))
print(calendar.month(y,m))

#Program to find number of weekdays in(mm/yyyy)
import numpy as np
# Number of weekdays in March 2017
print("Number of weekdays in March 2017:",
      np.busday_count('2017-03', '2017-04'))

  
# Number of sundays in Nov 2020
print("Number of Sunday in november 2020:",
      np.busday_count('2020-11', '2020-12',weekmask='Sun'))
# input year and month
yearMonth = '2017-05'
  
# getting date of first monday
date = np.busday_offset(yearMonth, 0, roll='forward',weekmask='Mon')
# display date
print(date)

1
#Python code to Count Alphabets, Special character Numeric values and space 
string=input("Please enter a string: ")#take input from the user 
alphabets,num,special,space=0,0,0,0;#variable declaration and initilization
a=[]
d=[]
spl=[]
for i in range(len(string)): 
  if(string[i].isalpha()): #check Alphabets letters 
      #print(string[i],end="")
      alphabets+=1
      a.append(string[i])
  elif(string[i].isdigit()):#check numeric value 
      #print(string[i],end="")
      num+=1
      d.append(string[i])
  elif(string[i].isspace()):#check space 
      space+=1 
  else: 
      #print(string[i],end="")
      special+=1
      spl.append(string[i])
print("Alpabets letters: ",alphabets, a) 
print("\nnumbers: ",num, d) 
print("\nSpace: ",space) 
print("\nSpecial characters: ",special, spl)
2
str = input("Enter the string:")
vcount, ccount= 0,0 
Vowels = "AaEeIiOoUu"
c=[]
v=[]
#Converting entire string to lower case to reduce the comparisons  
#str = str.lower()  
for i in range(0,len(str)):   
    #Checks whether a character is a vowel  
    if str[i] in (Vowels):  
        vcount = vcount + 1
        v.append(str[i])
        #count = [each for each in str if each in Vowels]
     
    elif (str[i] !=" " and str[i] not in (Vowels)):
        ccount = ccount + 1
        c.append(str[i])
print("Total number of vowel and consonant are" );  
print(vcount,v) 
print(ccount,c)  

3
def match(s1,s2):
    count=0
    
    for i in range(min(len(s1),len(s2))):
        if s1[i].lower()==s2[i].lower():
            count=count+1
    return count

#Driver Program
S1="What"
S2="watch"
print("Total number of matches:")
print(match(S1,S2))

4
#Program to print number of words in a line and number of lines in a para

string='''This is the most straightforward way to count the number
of lines in a text file in Python. The readlines() method reads all
lines from a file and stores it in a list. Next, use the len() function
to find the length of the list which is nothing but total lines present in a file.'''
str1=string.split(".")
str1.pop()
print("Number of lines: ",len(str1))
print("Number of words in each line:")
for i in range(len(str1)):
    words=str1[i].split()
    #print(words)
    print("Line",i+1,len(words))
5
# Program to find number of sentences starts with "B"

string=input(“Enter the Para: ”)
str1=string.split(" ...")
str1.pop()
print("Total number of lines:",len(str1))
count=0
for i in str1:
    str2=i.split()
    #print(str2)
    for j in str2:
        if j[0]=="B":
            count=count+1
print("Number of Sentences that start with letter B :",count)

   
6
str = input("Enter the String:")

# Character to find
c = input("Enter the character to find:")

# Using Naive Method
res = None
j=0
while j<len(str):
    for i in range(0,len(str),1):
        if str[i] == c:
            res = True
            print(str[i], "Index:",i)
        j=j+1
if res==None:
    print("Character not found")
     
7
str=input("Enter the string:")
str=str.upper()
sort_str=sorted(str)
print(sort_str)
join_str="".join(sort_str)
rev_str=join_str[::-1]
print(join_str)
print(rev_str)

8
string = input("Enter the string:")
string=string.lower()
repeat=[]
print("Duplicate characters in a given string: ");  
#Counts each character present in the string  
for i in range(0, len(string)):  
    count = 1
    
    for j in range(i+1, len(string)):
        
        if(string[i] == string[j] and string[i] != ' '):  
            count = count + 1;
            
            #Set string[j] to 0 to avoid printing visited character  
            string = string[:j] + '0' + string[j+1:]  
   
    #A character is considered as duplicate if count is greater than 1  
    if(count > 1 and string[i] != '0'):
        repeat.append(string[i])
        print(string[i],count)
        
print("Number of repeated characters:", len(repeat),repeat)

9
s1 = "welcome"
s2 = "homely"
n = int(input("n="))
output = ""
i = 0
j = 0
while i < len(s1) and j < len(s2):
    output += s1[i:i+n] + s2[j:j+n]
    i += n
    j += n
output += s1[i:] + s2[j:]
print(output)

10
text = input("Enter the String: ")

vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
newtext = ""
for i in range(len(text)):
    if text[i] not in vowels:
        newtext = newtext + text[i]

print("\nString after removing Vowels: ")
text = newtext
print(text)
11
def isisomorphic(str1, str2):
    if len(str1) != len(str2):
        return False
    else:
        map1, map2 = {}, {}
        for i in range(len(str1)):
            ch1, ch2 = str1[i], str2[i]
            if ch1 not in map1:
                map1[ch1] = ch2
            print(map1)
            if ch2 not in map2:
                map2[ch2] = ch1
            print(map2)
            if map1[ch1] != ch2 or map2[ch2] != ch1:
                return False
    return True

str1 = input("String 1=")
str2 = input("String 2=")
print(isisomorphic(str1, str2))

12
def countstrings(n, start):
    if n == 0:
        return 1
    cnt = 0
     
    for i in range(start, 5):
       
        # decrease the length of string
        cnt += countstrings(n - 1, i)
    return cnt
     
def countVowelStrings(n):
    return countstrings(n, 0)
 
n = int(input("n="))
print(countVowelStrings(n))

13
def modify_string(S):
    frequency = {}  
    
    # Count the frequency of each character
    for char in S:
        frequency[char] = frequency.get(char, 0) + 1
    
    result = ""
    
    # Replace characters with the corresponding circular distance
    for char in S:
        circular_distance = ord(char) + frequency[char]
        
        if circular_distance > 122:
            circular_distance -= 26
        
        result += chr(circular_distance)
    
    return result

# Example usage:
S = "ghee"
modified_string = modify_string(S)
print(modified_string)  # Output: higg

14
def removeCommonWords(s1,s2):
  com=[]
  sent1=list(s1.split())
  sent2=list(s2.split())
  for i in sent1:
    if i in sent2:
      sent1.remove(i)
      sent2.remove(i)
      com.append(i)
      continue
  print(*sent1)
  print(*sent2)
  print("common words",*com)
sentence1 = input("Enter string1: ")
sentence2 = input("Enter string2: ")
removeCommonWords(sentence1,sentence2)
        
15
s=input("Enter the string:")
s1=s.split()
n=len(s1)
print("Number of words: ",n)
print("Last word: ",s1[n-1], len(s1[n-1]))

16
def Substring(s):
    ans, temp = 1, 1
    for i in range(1, len(s)):
        if (s[i] == s[i - 1]):
            temp += 1
        else:
            ans = max(ans, temp)
            temp = 1
 
    ans = max(ans, temp)
    return ans

s = input("Enter the string: ")
print(Substring(s))

17
str1=input("Enter the string: ")
str2=str1.split()[::-1]
print(*str2)

18
num= int(input("Enter the integer: "))
num1=str(num)
num2=num1[::-1]
print(num2)

19
def Anagrams(li ):
    dictionary = {}
    for word in li:
        sortedWord = ''.join(sorted(word))
        print(sortedWord)
        if sortedWord not in dictionary:
            dictionary[sortedWord] = [word]
        else:
            dictionary[sortedWord] += [word]
    return [dictionary[i] for i in dictionary]

li = ['pop','bat','tab','opp','cat']
print(Anagrams(li))

20
string="The cat on the wall"
l1=list(string.split())
print(l1)

for i in range(len(l1)):
    print(l1[i][0].upper(),end=".")
    continue

21
n="A man, a plan, a canal: Panam"
s=n.lower()
text=''
for i in s:
    if i.isalpha():
        text+=i
x=text[::-1]
if(x==text):
    print("Valid Palindrome")
else:
    print("Invalid Palindrome")

22
#Display String after removing the given character

text = input("Enter the String: ")
char= input("Enter the char: ")
newtext = ""
for i in range(len(text)):
    if text[i]!=char:
        newtext = newtext + text[i]

print("\nString after removing the char: ")
text = newtext
print(text)

23
def strStr(haystack,needle):
    l=[]
    if needle==" ":
        return 0
    else:
        for i in range(len(haystack)):
            if haystack[i]==needle[0]:
                if haystack[i:i+len(needle)]==needle:
                    l.append(i)
                    continue
                else:
                    return -1
        return l

# Driver Program

haystack="sadsad"
needle="sad"
print(strStr(haystack,needle))

24
def evaluate(string):
    string = string.replace(" ", "")

    def splitby(string, separators):

        lis = []
        current = ""
        for ch in string:
            if ch in separators:
                lis.append(current)
                lis.append(ch)
                current = ""
            else:
                current += ch
        lis.append(current)
        return lis

    lis = splitby(string, "+-")

    def evaluate_mul_div(string):
        lis = splitby(string, "x/")
        if len(lis) == 1:
            return lis[0]
        
        output = float(lis[0])
        lis = lis[1:]

        while len(lis) > 0:
            operator = lis[0]
            number = float(lis[1])
            lis = lis[2:]

            if operator == "x":
                output *= number

            elif operator == "/":
                output /= number

        return output

    
    for i in range(len(lis)):
        lis[i] = evaluate_mul_div(lis[i])

    output = float(lis[0])
    lis = lis[1:]

    while len(lis) > 0:
        operator = lis[0]
        number = float(lis[1])
        lis = lis[2:]

        if operator == "+":
            output += number
        elif operator == "-":
            output -= number

    return output

# Main Program
testcases = "1+2x3-4"
print(evaluate(testcases))
26
# Largest Palindrome
n = 0
for a in range(999, 100, -1):
    for b in range(a, 100, -1):
        x = a * b
        if x > n:
            s = str(a * b)
            if s == s[::-1]:
                n = a * b
print(n)
27
def removeKdigits(num,k):    
    stack = []
    for digit in num:
        while k > 0 and len(stack) > 0 and stack[-1] > digit:
            k -= 1
            stack.pop()  
        stack.append(digit)
    if k > 0:
        stack = stack[:-k]     
    return "".join(stack).lstrip("0") or "0"

num="143219"
k=2
print(removeKdigits(num,k))

28. Return the Unicode of Uppercase letters

import string
import re
alphabets = list(string.ascii_uppercase)
for i in alphabets:
    print(i,"=",ord(i))
print(chr(65))
  
29
def editDistance(str1, str2, m, n):
 
    if m == 0:
        return n
 
    if n == 0:
        return m
 
    if str1[m-1] == str2[n-1]:
        return editDistance(str1, str2, m-1, n-1)

    return 1 + min(editDistance(str1, str2, m, n-1),    # Insert
                   editDistance(str1, str2, m-1, n),    # Remove
                   editDistance(str1, str2, m-1, n-1)    # Replace
                   )
 
# Driver code
str1 = "sunday"
str2 = "saturday"
print (editDistance(str1, str2, len(str1), len(str2)))

1
l=[1,1,2,3]
u=[]
for i in l:
    if i not in u and l.count(i)==1:
        u.append(i)
print(list(u))
2
import statistics
l=[1,2,3,4,5,5,1,1]
print("mean:",statistics.mean(l))
print("median:",statistics.median(l))
print("mode:",statistics.mode(l))
3
lower_range = int(input("Enter lower range: "))
upper_range = int(input("Enter upper range: "))
result = []
for num in range(lower_range, upper_range + 1):
    sqrt = int(num ** 0.5)
    if sqrt * sqrt == num:
        digit_sum = sum(map(int, str(num)))
        if digit_sum < 10:
            result.append(num)
print(result)
4
lst = [14, 67, 48, 23, 5, 62]
N = int(input("which largest number:"))
if N <= 0 or N > len(lst):
    print("Invalid input for N.")
else:
    sorted_list = sorted(lst, reverse=True)
    nth_largest = sorted_list[N-1]
    print(f"{N}th Largest number: {nth_largest}")
5
lower_range = int(input("Enter the lower range: "))
upper_range = int(input("Enter the upper range: "))
if lower_range > upper_range:
    print("Invalid input: Lower range is greater than upper range.")
else:
    result = [(num, num**2) for num in range(lower_range, upper_range + 1)]
    print(result)
6
# Sample input
array = [16, 18, 27, 16, 23, 21, 19]
# Count the number of composite numbers
count = 0
for num in array:
    if num < 4:
        continue
    for i in range(2, num):
        if num % i == 0:
            count += 1
            break
# Output the result
print("Number of Composite Numbers =", count)
7
# Sample input
array = [16, 18, 27, 16, 23, 21, 19]
# Reverse the array using reverse indexing
reversed_array = array[::-1]
# Output the result
print("Reverse Array elements =", reversed_array)
8
# Sample input
array = [26, 28, 47, 26, 43, 51, 29]
# Find the non-composite numbers
non_composite_numbers = []
for num in array:
    if num < 2:
        continue
    count = 0
    for i in range(2, num):
        if num % i == 0:
            count += 1
            break
    if count == 0:
        non_composite_numbers.append(num)
# Output the result
print("Non-composite numbers in Array elements =", non_composite_numbers)
9
numbers = [16, -18, 27, -16, 23, -21, 19]
count = 0
for num in numbers:
    if num < 0:
        count += 1
print("Number of negative numbers in the list:", count)
10
l=[14,67,48,23,5,62]
asc=sorted(l)
dsc=asc[::-1]
n=int(input("enter which largest number:"))
m=int(input("enter which smallestnumber:"))
print(n,"largest:",dsc[n-1])
print(m,"smallest:",asc[m-1])
print("sum:",dsc[n-1]+asc[m-1])
print("difference:",dsc[n-1]-asc[m-1])
print("product:",dsc[n-1]*asc[m-1])
11
list1=[1,2,4]
list2=[1,2,4]
output=list1+list2
print(output)
12
arr = [1, 3, 2, 4, 6, 5]
peaks = []
# Check if the first or last element is a peak
if len(arr) == 1 or arr[0] >= arr[1]:
    peaks.append(arr[0])
if arr[-1] >= arr[-2]:
    peaks.append(arr[-1])
# Iterate through the array and check for peaks
for i in range(1, len(arr) - 1):
    if arr[i] >= arr[i - 1] and arr[i] >= arr[i + 1]:
        peaks.append(arr[i])
if peaks:
    print("Peak elements:", peaks)
else:
    print("No peak elements found")
13
l=[]
while True:
    num=int(input("enter list elements:"))
    if num==-1:
        break
    else:
        l.append(num)
pos_nums,neg_nums=[],[]
pos_avg,neg_avg=0.0,0.0
for i in range(len(l)):
    if l[i]>0:
        pos_nums.append(l[i])
        pos_avg+=l[i]
    else:
        neg_nums.append(l[i])
        neg_avg+=l[i]
print("positive avg:",pos_avg/len(pos_nums))
print("negative avg:",neg_avg/len(neg_nums))
14
def sumsquare(l):
    odd_sum = 0
    even_sum = 0
    for num in l:
        if num % 2 == 0:
            even_sum += num ** 2
        else:
            odd_sum += num ** 2
    return [odd_sum, even_sum]
n = int(input("Enter the number of elements: "))
l = []
for i in range(n):
    l.append(int(input("Enter the element: ")))
output = sumsquare(l)
print(output)
15
l=[1,2,3,1,1,3]
c=0
for i in range(0,len(l)):
    for j in range(i+1,len(l)):
        if l[i]==l[j]:
            print("(",i,j,")")
            c+=1
16
l=[8,1,2,2,3]
l1=[]
for i in range(len(l)):
    c=0
    for j in range(len(l)):
        if l[i]>l[j]:
            c+=1
    l1.append(c)
print(l1)
17
t=int(input("enter instance time:"))
e=[7,0,5,1,3]
l=[1,2,1,3,4]
x=[0,0,0,0,0] 
for i in range(t):
    if t>len(e) or t>len(l):
        print("out of index")
    else:
        x[i]=(x[i-1]+e[i])-l[i] 
        print(x[i],end=" ")
print("\nmax:",max(x))
18
import itertools
p = itertools.permutations([1, 1, 2])
unique = list(dict.fromkeys(list(p)))
output = [list(perm) for perm in unique]
print(output)
19
n = 5
result = []
for i in range(1, n+1):
    if i % 3 == 0 and i % 5 == 0:
        result.append("FizzBuzz")
    elif i % 3 == 0:
        result.append("Fizz")
    elif i % 5 == 0:
        result.append("Buzz")
    else:
        result.append(str(i))
print(result)
20
n = int(input("Enter the number of elements in the list: "))
lst = []
for i in range(n):
    element = int(input(f"Enter element{i+1}: "))
    lst.append(element)
non_duplicate = list(set(lst))
print("Non-duplicate items:", non_duplicate)
21
nums = [3, 4, 5, 1, 2]
left = 0
right = len(nums) - 1
while left < right:
    mid = left + (right - left) // 2
    if nums[mid] > nums[right]:
        left = mid + 1
    else:
        right = mid
min_element = nums[left]
print(min_element)
22
nums = [5, 7, 7, 8, 8, 10]
target = 7
start = -1
end = -1
for i in range(len(nums)):
    if nums[i] == target:
        if start == -1:
            start = i
        end = i
result = [start, end]
print(result)
23
elements = [47, 34, 21, 89, 12]
element_to_insert = 100
position = 4
elements.insert(position, element_to_insert)
print("Modified list:", elements)
24
import datetime

def findDay(day, month, year):
    # Create a datetime object for the given date
    date = datetime.datetime(year, month, day)

    # Get the weekday as an integer (0 = Monday, 1 = Tuesday, ..., 6 = Sunday)
    weekday = date.weekday()

    # Define a list of weekday names
    weekdays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

    # Return the corresponding weekday name based on the weekday index
    return weekdays[weekday]
# Example usage
day = 31
month = 8
year = 2019
result = findDay(day, month, year)
print(result)
25
s=input("enter number:")
print("lsb:",s[0])
print("msb:",s[-1])
26
l = [2, 3, 4]
t = 6
left = 0
right = len(l) - 1
while left < right:
    c_sum = l[left] + l[right]
     if c_sum == t:
        print([left + 1, right + 1])
        break
    elif c_sum > t:
        right -= 1
    else:
        left += 1
else:
    result = []
    print(result)
27
l = [-1, 2, 3, -4, 6]
avg = sum(l) / len(l)
for i in range(len(l)):
    if l[i] < 0:
        l[i] = avg
print(l)
28
c=0 
l=[]
for i in range(1,200):
    if i%3==0 and i%5==0:
        l.append(i) 
print(sum(l))
29
def maxProfitAssignment(difficulty, profit, worker):
    jobs = sorted(zip(difficulty, profit))
    res = i = best = 0
    for ability in sorted(worker):
        while i < len(jobs) and ability >= jobs[i][0]:
            best = max(jobs[i][1], best)
            i += 1
            print(jobs,best)
        res += best
    return res

#Main Program
diff = [2,4,6,8,10]
pro = [10,20,30,40,50]
w = [4,5,6,7]
print(maxProfitAssignment(diff, pro, w))
30
import pandas as pd
 # declaring the list
l = [1, 1, 2, 2, 2, 3, 3, 4, 4, 5, 5]
 count = pd.Series(l).value_counts()
print("Element Count")
print(count)
31
l = [1, 3, 4, 2, 2]
l1 = []
for i in l:
    if l.count(i) > 1:
        l1.append(i)
s=set(l1) 
print(list(s))
32
def searchMatrix(matrix, target):
    for row in matrix:
        if target in row:
            return True
    return False

matrix = [[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]]
target=5
print(searchMatrix(matrix,target))
33
import itertools      
d ={'1':['a','b'], '2':['c','d']}
for combo in itertools.product(*[d[k] for k in sorted(d.keys())]):
    print(''.join(combo))
