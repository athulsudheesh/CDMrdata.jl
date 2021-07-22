module CDMrdata
using CodecXz
using CodecBzip2    
using RData
const module_path = @__DIR__
    include("dataloaders.jl")
    export load_data
end
