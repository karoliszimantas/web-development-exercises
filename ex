#Create a program that asks the user to enter their name and their age. Print out a message addressed to them that tells them the year that they will turn 100 years old.
#Extras:
#Add on to the previous program by asking the user for another number and printing out that many copies of the previous message.
#Print out that many copies of the previous message on separate lines.


import datetime
import sys

print('Enter ''q'' to quit')

while True:
    name = input('What is your name?')
    if name =='q':
        sys.exit()
    age = int(input('How old are you?'))
    if age == 'q':
        sys.exit()
    if age < 0:
        print('negative integer')
    current_date = datetime.datetime.now()
    future_date = current_date.year + 100 - age
    message = (f'{name} will be one hundred years old in the year {future_date}')
    print(message)
    num_message = int(input('How many copies'))
    if num_message == 'q':
            sys.exit()
    if num_message < 0:
        print('Input needs to be a non-negative integer :(')
    for i in range(0, num_message, +1):
        print(message)
        
        
#Write a program that takes a list of numbers (for example, a = [5, 10, 15, 20, 25]) and makes a new list of only the first and last elements of the given list. For practice, write this code inside a function.


list = [3,4,5,6,7,8,9,0,12,43,33,0]

def new_list(list):
    new = [list[0], list[-1]]
    print(new)

new_list(list)


#Given a .txt file that has a list of a bunch of names, count how many of each name there are in the file, and print out the results to the screen. I have a .txt file for you, if you want to use nameslist.txt .


import collections
import os

with open('nameslist.txt') as file:
    names = file.read().splitlines()
    names_num = collections.Counter(names)
    print(names_num)





