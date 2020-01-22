# @param {Integer[]} a
# @return {Integer[]}
def pancake_sort(a)
    current_max = get_max(a)
    new_arr = a
    i = 0
    k_vals = []
    while i < 10*a.length do
        puts "#{new_arr.to_a}, current_max: #{current_max}"
        if new_arr == a.sort
            puts "#{k_vals}"
            return
        end
        if new_arr[0] == current_max
            k_vals << current_max
            new_arr = flip(new_arr,current_max)
        else
            k_vals << new_arr.index(current_max) + 1
            new_arr = flip(new_arr,new_arr.index(current_max)+1)
        end

        current_max = get_max(new_arr)
        i += 1
    end
end

def get_max(a)
    b = a.reverse
    a.length.times do |x|
        return (a.length - x) if b[x] != (a.length - x)
        # if b[x] != (a.length - x)
        #     puts (a.length - x)
        #     return
        # end
    end
end

def flip(arr,ind)
    new_arr = arr[0,ind].reverse
    arr[ind,arr.length].each do |x|
        new_arr << x
    end

    return new_arr
end

a = [3,2,4,1] #[3,6,2,4,1,5]
pancake_sort(a)
#flip(a,2)
#get_max([3, 2, 4, 1, 5, 6])