module CDMrdata
    using CodecXz
    using CodecBzip2    
    using RData
    export load_data, list_datasets
    include("dataloaders.jl")
end
