
a = [ 1,2,3]

def no_mutate(array)
  array.last
end

p "before no_mutate method: #{a}"

no_mutate(a)
p "after no_mutate method: #{a}"
