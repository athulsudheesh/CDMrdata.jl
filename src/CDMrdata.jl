module CDMrdata
    if isdefined(Base, :Experimental) && isdefined(Base.Experimental, Symbol("@optlevel"))
        @eval Base.Experimental.@optlevel 1
    end
    using CodecXz
    using CodecBzip2    
    using RData
    export load_data
    include("dataloaders.jl")
end
