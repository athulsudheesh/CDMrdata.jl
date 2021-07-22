module CDMrdata
using CodecXz
using CodecBzip2    
using RData
    include("dataloaders.jl")
    
    export load_data
end
