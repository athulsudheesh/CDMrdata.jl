module CDMrdata
    if isdefined(Base, :Experimental) && isdefined(Base.Experimental, Symbol("@optlevel"))
        @eval Base.Experimental.@optlevel 1
    end
    using CodecXz
    using CodecBzip2    
    using RData
    const module_path = @__DIR__
        include("dataloaders.jl")
        export load_data
    end
