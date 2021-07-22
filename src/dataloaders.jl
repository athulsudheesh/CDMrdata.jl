
function load_data(dataset_name)
    rda = dataset_name * ".rda"
    basename = joinpath(@__DIR__, "..")
    try 
        data = load(basename,joinpath("data",rda))[ "data." * dataset_name]
        return data 
    catch
        data = load(joinpath("data",rda))[dataset_name]
        return data 
    end
end
