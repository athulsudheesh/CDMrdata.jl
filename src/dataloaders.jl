
function load_data(dataset_name)
    rda = dataset_name * ".rda"
    basename = joinpath(@__DIR__, "..", "data")
    try 
        data = load(joinpath(basename,rda))[ "data." * dataset_name]
        return data 
    catch
        data = load(joinpath("data",rda))[dataset_name]
        return data 
    end
end
