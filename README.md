# GPCC

## Overview

The Global Precipitation Climatology Centre (GPCC) provides gridded gauge-analysis products derived from quality controlled station data.
There are different products available; we only downloaded the full reanalysis.
The latest version of the full reanalysis is V2020
[monthly](https://opendata.dwd.de/climate_environment/GPCC/html/fulldata-monthly_v2020_doi_download.html) and
[daily](https://opendata.dwd.de/climate_environment/GPCC/html/fulldata-daily_v2020_doi_download.html)
that covers from 1891 to 2019.

The data is available on 4 global grids for monthly and only at 1.0 degrees resolution for daily:
- 0.25 degree latitude x 0.25 degree longitude global grid (1440 x 720) - only monthly
- 0.5 degree latitude x 0.5 degree longitude global grid (720 x 360) - only monthly
- 1.0 degree latitude x 1.0 degree longitude global grid (360 x 180)
- 2.5 degree latitude x 2.5 degree longitude global grid (144 x 72) - only monthly

The data is not bias-corrected for gauges errors,
but estimates on these are also provided.
More information and a visualization tool for the dataset is available on the
[GPCC website](https://www.dwd.de/EN/ourservices/gpcc/gpcc.html).
For a review of the data check the
[UCAR Climate Data Guide](https://climatedataguide.ucar.edu/climate-data/gpcc-global-precipitation-climatology-centre).
The data was downloaded from the [GPCC data server](https://opendata.dwd.de/climate_environment/GPCC/).

## Data location

We've downloaded GPCC data to,

```
/g/data/ia39/gpcc/replica/data/<version>/<frequency>/<grid>/<files>
```
where `<version>` is:
- `V1`: daily data only on 1.0 X 1.0 degree grid
- `V6`: monthly data only on a 0.5 X 0.5 degree grid from 1901 to 2010
- `V7`: monthly data only on 0.5 X 0.5 and 2.5 X 2.5 degrees grid from 1901 to 2013
- `V2018`: on 4 grids for monthly and 1.0 X 1.0 grid for daily (as for V2020), from 1891 to 2016
- `V2020`: full dataset as described in overview 

`<frequency>` is:
- `mon`
- `day`

`<grid>` is:
- `025` for 0.25 x 0.25
- `05` for 0.5 x 0.5
- `10` for 1.0 x 1.0
- `25` for 2.5 x 2.5

## License

According to the [GPCC product acccess page](https://www.dwd.de/EN/ourservices/gpcc/editorial/userterms_gpcc.html?nn=495490&lsbId=353848),
users of the data sets are kindly requested to give feedback and to refer to the GPCC publications
listed in the references section below.

## Data Citations

v2020 daily:
- Ziese, Markus; Rauthe-Schöch, Armin; Becker, Andreas; Finger, Peter; Rustemeier, Elke; Schneider, Udo (2020):
  GPCC Full Data Daily Version 2020 at 1.0°: Daily Land-Surface Precipitation from Rain-Gauges built on GTS-based and Historic Data.
  https://doi.org/10.5676/DWD_GPCC/FD_D_V2020_100

v2020 monthly (different citations for each resolution):
- Schneider, Udo; Becker, Andreas; Finger, Peter; Rustemeier, Elke; Ziese, Markus (2020):
  GPCC Full Data Monthly Product Version 2020 at 0.25°:
  Monthly Land-Surface Precipitation from Rain-Gauges built on GTS-based and Historical Data.
  https://doi.org/10.5676/DWD_GPCC/FD_M_V2020_025
- Schneider, Udo; Becker, Andreas; Finger, Peter; Rustemeier, Elke; Ziese, Markus (2020):
  GPCC Full Data Monthly Product Version 2020 at 0.5°:
  Monthly Land-Surface Precipitation from Rain-Gauges built on GTS-based and Historical Data.
  https://doi.org/10.5676/DWD_GPCC/FD_M_V2020_050
- Schneider, Udo; Becker, Andreas; Finger, Peter; Rustemeier, Elke; Ziese, Markus (2020):
  GPCC Full Data Monthly Product Version 2020 at 1.0°:
  Monthly Land-Surface Precipitation from Rain-Gauges built on GTS-based and Historical Data.
  https://doi.org/10.5676/DWD_GPCC/FD_M_V2020_100
- Schneider, Udo; Becker, Andreas; Finger, Peter; Rustemeier, Elke; Ziese, Markus (2020):
  GPCC Full Data Monthly Product Version 2020 at 2.5°:
  Monthly Land-Surface Precipitation from Rain-Gauges built on GTS-based and Historical Data.
  https://doi.org/10.5676/DWD_GPCC/FD_M_V2020_250

v2018 daily:
- Ziese, Markus; Rauthe-Schöch, Armin; Becker, Andreas; Finger, Peter; Meyer-Christoffer, Anja; Schneider, Udo (2018):
  GPCC Full Data Daily Version.2018 at 1.0°:
  Daily Land-Surface Precipitation from Rain-Gauges built on GTS-based and Historic Data.
  https://doi.org/10.5676/DWD_GPCC/FD_D_V2018_100

v2018 monthly (different citations for each resolution):
- Schneider, Udo; Becker, Andreas; Finger, Peter; Meyer-Christoffer, Anja; Ziese, Markus (2018):
  GPCC Full Data Monthly Product Version 2018 at 0.25°:
  Monthly Land-Surface Precipitation from Rain-Gauges built on GTS-based and Historical Data.
  https://doi.org/10.5676/DWD_GPCC/FD_M_V2018_025
- Schneider, Udo; Becker, Andreas; Finger, Peter; Meyer-Christoffer, Anja; Ziese, Markus (2018):
  GPCC Full Data Monthly Product Version 2018 at 0.5°:
  Monthly Land-Surface Precipitation from Rain-Gauges built on GTS-based and Historical Data.
  https://doi.org/10.5676/DWD_GPCC/FD_M_V2018_050
- Schneider, Udo; Becker, Andreas; Finger, Peter; Meyer-Christoffer, Anja; Ziese, Markus (2018):
  GPCC Full Data Monthly Product Version 2018 at 1.0°:
  Monthly Land-Surface Precipitation from Rain-Gauges built on GTS-based and Historical Data.
  https://doi.org/10.5676/DWD_GPCC/FD_M_V2018_100
- Schneider, Udo; Becker, Andreas; Finger, Peter; Meyer-Christoffer, Anja; Ziese, Markus (2018):
  GPCC Full Data Monthly Product Version 2018 at 2.5°:
  Monthly Land-Surface Precipitation from Rain-Gauges built on GTS-based and Historical Data.
  https://doi.org/10.5676/DWD_GPCC/FD_M_V2018_250
  
## References

Becker A, Finger P, Meyer-Christoffer A, Rudolf B, Schamm K, Schneider U, and Ziese M (2013).
A description of the global land-surface precipitation data products of the Global Precipitation Climatology Centre
with sample applications including centennial (trend) analysis from 1901–present.
*Earth Systems Science Data*, 5, 71–99.
https://doi.org/10.5194/essd-5-71-2013
 
Schneider U, Becker A, Finger P, Meyer-Christoffer A, Ziese M, and Rudolf B (2014).
GPCC's new land surface precipitation climatology based on quality-controlled in situ data
and its role in quantifying the global water cycle.
*Theoretical and Applied Climatology*, 115, 15–40.
https://doi.org/10.1007/s00704-013-0860-x

Ziese M, Schneider U, Meyer-Christoffer A, Schamm K, Vido J, Finger P, Bissolli P, Pietzsch S, and Becker A (2014).
The GPCC Drought Index – a new, combined and gridded global drought index
*Earth Systems Science Data* 6, 285–295.
https://doi.org/10.5194/essd-6-285-2014 

Schamm K, Ziese M, Becker A, Finger P, Meyer-Christoffer A, Schneider U, Schröder M, and Stender P (2014).
Global gridded precipitation over land: a description of the new GPCC First Guess Daily product.
*Earth System Science Data*, 6, 49–60.
https://doi.org/10.5194/essd-6-49-2014

