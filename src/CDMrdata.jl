module CDMrdata

    using CodecXz
    using CodecBzip2    
    using RData
    export load_data
    include("dataloaders.jl")
end
