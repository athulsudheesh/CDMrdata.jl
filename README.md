# CDMrdata.jl

This package is a simplistic port of the data repo created by @alexanderrobitzsch as part of their CDM R package. 

### Installation 

As of July 22nd, this is still an un-registered package and hence to install this package, go to the package manager mode and run:
```julia
add https://github.com/athulsudheesh/CDMrdata.jl
```
Once you have installed the package, you can use it just like any other Julia package 
```julia
using CDMrdata
``` 
### Usage 
Currently the package has only two functions: 
- `load_data(data_name)`: takes the `data_name` as an argument and loads it as a `Dict`
- `list_datasets()`: lists all the datasets available in the package. 

#### Example 
Suppose we want to load the `ecpe` dataset: 
```julia
dat = load_data("ecpe");
```
To know the fields for that specific dataset:
```julia
keys(dat)
``` 
```julia
KeySet for a Dict{String, Int64} with 2 entries. Keys:
  "data"
  "q.matrix"
```
And to access one of those fields:
```julia
dat["q.matrix"]
```
```julia
28×3 DataFrame
 Row │ skill1  skill2  skill3 
     │ Int32   Int32   Int32  
─────┼────────────────────────
   1 │      1       1       0
   2 │      0       1       0
   3 │      1       0       1
   4 │      0       0       1
   5 │      0       0       1
  ⋮  │   ⋮       ⋮       ⋮
  24 │      0       1       0
  25 │      1       0       0
  26 │      0       0       1
  27 │      1       0       0
  28 │      0       0       1
               18 rows omitted
```



