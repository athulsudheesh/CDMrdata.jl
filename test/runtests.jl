using CDMrdata
using Test

@testset "CDMrdata.jl" begin
    for data in readdir("data")
        data = chop(data,tail=4)
        dataset = load_data(data)
        @info data
        @info typeof(dataset)
        println(" ")
    end
end

# cdm01 checked 
    # - Vector of 3, data, q.matrix, group, best way to acces data["group"]

# cdm02,cdm03,cdm08,cdm09,cdm10,dcm - checked 
    # Vector of 2, data, q.matrix 

#cdm04
    # Vector of 3, q.matrix1, q.matrix2, data 

# cdm05, cdm06
    # data, q.matrix, skills
# cdm07 
    # items, data, q.matrix 

# dtmr 
 # skills.distribution, sim_data, data, itempars, q.matrix 

