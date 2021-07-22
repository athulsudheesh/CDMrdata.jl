
function load_data(dataset_name)
    rda = dataset_name * ".rda"
    basename = joinpath(dirname(dirname(pathof(CDMrdata))),"..","data")
    try 
        data = load(joinpath(basename,rda))[ "data." * dataset_name]
        return data 
    catch
        data = load(joinpath(basename,rda))[dataset_name]
        return data 
    end
end
