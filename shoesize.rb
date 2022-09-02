#!/usr/bin/env ruby

def prompt(question)
  print question + "\n>"
  return gets.strip
end

QuestionName     = "Please enter name for person "
QuestionAge      = "Please enter age for person "
QuestionShoeSize = "Please enter shoe size for person "

people =
  [
    {
      name:      prompt(QuestionName     + "1").capitalize,
      age:       prompt(QuestionAge      + "1"),
      shoe_size: prompt(QuestionShoeSize + "1")
    },
    {
      name:      prompt(QuestionName     + "2").capitalize,
      age:       prompt(QuestionAge      + "2"),
      shoe_size: prompt(QuestionShoeSize + "2")
    },
    {
      name:      prompt(QuestionName     + "3").capitalize,
      age:       prompt(QuestionAge      + "3"),
      shoe_size: prompt(QuestionShoeSize + "3")
    }
  ]

oldest = people.sort_by{|person| person[:age] }.last
puts "The oldest person is " + oldest[:name] + " who has shoe size " + oldest[:shoe_size]

median_shoe_size = people.sort_by{|person| person[:shoe_size] }[1]
puts "The person with median shoe size is " + median_shoe_size[:name] + " who is " + median_shoe_size[:age] + " years old"

puts "Please enter seach value, name, age or size followed by value"
type, value = gets.strip.split(" ")
type = type.to_sym

found_person = people.select{|person| person[type] == value }.first
puts "Found person"
puts "        Name: " + found_person[:name]
puts "        Age: "  + found_person[:age]
puts "        Size: " + found_person[:shoe_size]
