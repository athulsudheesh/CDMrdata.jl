# CDMrdata.jl

This package is a simplistic port of the data repo created by [@alexanderrobitzsch](https://github.com/alexanderrobitzsch) as part of their CDM R package. 

### Installation 

To install this package, go to the package manager mode and run:
```julia
add CDMrdata
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
   ⋮ │      ⋮        ⋮       ⋮
  24 │      0       1       0
  25 │      1       0       0
  26 │      0       0       1
  27 │      1       0       0
  28 │      0       0       1
               18 rows omitted
```


# Dataset Description

| Dataset Name | Description (*From CDM R Package Dev*) |
| :----------- | :------- |
| `cdm01`          | A multiple choice dataset       |
| `cdm02`          | Multiple choice dataset with a Q-matrix designed for polytomous attributes.       |
| `cdm03`          | Resimulated dataset from Chiu, Koehn and Wu (2016) where the data generating model is a reduced RUM model.        |
| `cdm04`          | Simulated dataset for the sequential DINA model (as described in Ma & de la Torre, 2016). The dataset contains 1000 persons and 12 items which measure 2 skills.       |
| `cdm05`          | Example dataset used in Philipp, Strobl, de la Torre and Zeileis (2018). This dataset is a sub-dataset of the probability dataset in the pks package (Heller & Wickelmaier, 2013).       |
| `cdm06`          | Resimulated example dataset from Chen and Chen (2017).       |
| `cdm07`          | This is a resimulated dataset from the social anxiety disorder data concerning social phobia which involve 13 dichotomous questions (Fang, Liu & Ling, 2017). The simulation was based on a latent class model with five classes. The dataset was also used in Chen, Li, Liu and Ying (2017).       |
| `cdm08`          | This is a simulated dataset involving four skills and three misconceptions for the model for simultaneously identifying skills and misconceptions (SISM; Kuo, Chen & de la Torre, 2018). The Q-matrix follows the specification in their simulation study.       |
| `cdm09`          | This is a simulated dataset involving polytomous skills which is adapted from the empirical example (proportional reasoning data) of Chen and de la Torre (2013).       |
| `cdm10`          |  This is a simulated dataset involving a hierarchical skill structure. Skill A has four levels, skill B possesses two levels and skill C has three levels.       |
| `dcm`          | Dataset from Book 'Diagnostic Measurement' of Rupp, Templin and Henson (2010).       |
| `dtmr`          | DTMR Fraction Data (Bradshaw et al., 2014).       |
| `ecpe`          | The dataset has been used in Templin and Hoffman (2013), and Templin and Bradshaw (2014).      |
| `fraction1`          | The dataset has been used in de la Torre, J. (2009).      |
| `fraction2`          | The dataset has been used in de la Torre, J. (2009) & .  Henson, Templin and Willse (2009)     |
| `fraction3`          | The dataset has been used in   de la Torre (2011).   |
| `fraction4`          | The dataset has been used in  de la Torre and Douglas (2004) and Chen, Liu, Xu and Ying (2015).     |
| `fraction5`          | This dataset was used as an example for the multiple strategy DINA model in de la Torre and Douglas (2008) and Hou and de la Torre (2014).        |
| `hr`          | Simulated data according to Ravand et al. (2013).      |
| `jang`          | Simulated dataset according to the Jang (2005) L2 reading comprehension study.       |
| `melab`          | This is a simulated dataset according to the MELAB reading study (Li, 2011; Li & Suen, 2013). Li (2011) investigated the Fusion model (RUM model) for calibrating this dataset. The dataset in this package is simulated assuming the reduced RUM model (RRUM).      |
| `mg`          | Large-scale dataset with multiple groups, survey weights and 11 polytomous items.       |
| `pgdina`          | Dataset for the estimation of the polytomous GDINA model.       |
| `pisa00R.ct`          | PISA 2000 of German students including 26 items of the reading test [Chen and de la Torre (2014)].       |
| `pisa00R.cc`          | PISA 2000 of German students including 20 items of the reading test [Chen and Chen (2016)].       |
| `sda6`          | This is a simulated dataset of the SDA6 study according to informations given in Jurich and Bradshaw (2014).       |
| `Students`          | This dataset contains item responses of students at a scale of cultural activities (act), mathematics self concept (sc) and mathematics joyment (mj) from an Austrian survey of 8th grade students       |
| `timss03.G8.su`          | This is a dataset with a subset of 23 Mathematics items from TIMSS 2003 items used in Su, Choi, Lee, Choi and McAninch (2013).       |
| `timss07.G4.lee`          | This dataset is a list containing dichotomous item responses (data; information on booklet and gender included), the Q-matrix (q.matrix) and descriptions of the skills (skillinfo) used in Lee et al. (2011).       |
| `timss07.G4.py`          | This dataset uses the same items as `timss07.G4.lee` but employs a simplified Q-matrix with 7 skills. This Q-matrix was used in Park and Lee (2014) and Park et al. (2018).       |
| `timss07.G4.Qdomains`          | This Q-matrix data is a simplification of `timss07.G4.py$q.matrix` to 3 domains and involves a simple structure of skills.       |
| `timss11.G4.AUT`          | TIMSS 2011 dataset of 4668 Austrian fourth-graders.       |
| `timss11.G4.AUT.part`          | Part of `timss11.G4.AUT` and contains only the first three booklets (with N=1010 students).       |
| `timss11.G4.sa`          |  Contains the Q-matrix used in Sedat and Arican (2015).       |
| `fraction.subtraction.data`| Tatsuoka's (1984) fraction subtraction data set is comprised of responses to 𝐽=20 fraction subtraction test items from 𝑁=536 middle school students|
|`fraction.subtraction.qmatrix`|The Q-Matrix corresponding to Tatsuoka (1984) fraction subtraction data set.|

