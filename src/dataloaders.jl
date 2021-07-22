
const DATA_DIR = joinpath(dirname(dirname(pathof(CDMrdata))),"data")

function load_data(dataset_name)
    rda = dataset_name * ".rda"
    try 
        data = load(joinpath(DATA_DIR,rda))[ "data." * dataset_name]
        return data 
    catch
        data = load(joinpath(DATA_DIR,rda))[dataset_name]
        return data 
    end
end
