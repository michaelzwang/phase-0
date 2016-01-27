# Pseudocode
# => Input: array of people
# => Output: arrays with 4 or 5 people
# => determine length of array (number of people in cohort)
# => determine how many groups are needed
# => create new arrays for the groups
# => add members to the groups
# => return the group arrays

#Initial Solution
def acct_groups(array)
    if array.length % 5 != 0
        num_groups = array.length/5 + 1
    end
    
    cohort = array.shuffle
    groups = Array.new(num_groups) {[]}
    
    groups.each do |group|
       5.times do 
           group << cohort.pop
       end
    end
    
    return groups
end


#Refactored Solution
def acct_groups(array)
    groups = array.shuffle.each_slice(5).to_a
    
    until groups.last.length > 3
    	groups.last << groups.sample.pop
    end

    count = 1
    groups.each do |group|
        puts "Group" + count.to_s + ": " + group.join(", ") 
        count += 1
    end
end

sealions = ["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","wolv","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"]

acct_groups(sealions)


#Reflection
#What was the most interesting and most difficult part of this challenge?
# => It was interesting because it was a real life applicable challenge. It was difficult to figure out a way to split one big array into smaller groups.
#Do you feel you are improving in your ability to write pseudocode and break the problem down?
# => I think I need to remember to go back to my pseudocode when I get stuck. I find that I kind of just move on from my pseudocode when I'm coding.
#Was your approach for automating this task a good solution? What could have made it even better?
# => I think my approach is a good solution. I think it could be improved by finding a simpler way to divide the groups evenly (like all groups of 5 but two groups of 4)
#What data structure did you decide to store the accountability groups in and why?
# => I used arrays because there was no key/value pair.
#What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# => I learned about the each_slice method to efficiently split a large array into smaller arrays. I also was able to add some style to the printed out list of groups.




