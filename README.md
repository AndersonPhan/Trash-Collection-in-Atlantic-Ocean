# Trash-Collection-in-Atlantic-Ocean
MATLAB analysis of Atlantic Ocean surface-current data to identify regions where debris may accumulate.  Using vector fields, divergence, and curl, this project investigates potential locations for large-scale trash collection efforts. This project analyzes contour maps of trash accumulation on the surface of the Atlantic Ocean by using MATLAB functions and a 2018 Ocean Surface Current Analysis (OSCAR) Dataset.
<p align="center">
    <img width="460" height="288" alt="image" src="https://github.com/user-attachments/assets/b8b28fb3-d4f8-403e-95be-a20b6173aa49" />
</p>

## Introduction
I am studying the direction and quantity of trash moving in the Atlantic Ocean. The reason why trash can move in a direction is because of ocean currents pushing the trash. These ocean currents can be modeled through the use of vectors, which by definition have both a magnitude and direction. In this case, the magnitude would be the speed and direction of which way the current is pushing. We care about how this trash is moving because the trash usually accumulates in certain locations over time due to ocean currents. This leads to the possibility of damage to our water supply and aquatic life in these areas. The purpose of this study is to predict where trash is accumulating most in the Atlantic Ocean and implement a Garbage Atlantic Garbage Patch (GAGP) in these areas.
## Methods and Results
### Study Region
Figure 1 shows the full Atlantic Ocean dataset, while Figure 2 highlights the area selected for detailed analysis.

<table>
  <tr>
    <td align="center">
      <img width="658" height="731" alt="image" src="https://github.com/user-attachments/assets/29eb7409-279e-4042-9b38-1b8fad2076d4" /><br>
      <b>Fig 1.</b> Entire Atlantic Ocean
    </td>
    <td align="center">
      <img width="623" height="718" alt="image" src="https://github.com/user-attachments/assets/529d9059-8c04-48cf-87bc-ba23e7bfa85b" /><br>
      <b>Fig 2.</b> Area of Interest
    </td>
  </tr>
</table>

### Vector Field Analysis
Figures 3–5 show divergence, convergence, and curl patterns within the selected region.

<table>
  <tr>
    <td align="center">
      <img width="615" height="613" alt="image" src="https://github.com/user-attachments/assets/d61fbb31-07bf-489c-98c7-4df42a6d9e24" /><br>
      <b>Fig 3.</b> Divergence of Area of Interest
    </td>
    <td align="center">
      <img width="576" height="602" alt="image" src="https://github.com/user-attachments/assets/496f07d1-9cf3-425c-89dc-93a3baad0bc5" /><br>
      <b>Fig 4.</b> Convergence of Area of Interest
    </td>
    <td align="center">
      <img width="490" height="477" alt="image" src="https://github.com/user-attachments/assets/5cd0e4f5-4f03-4bb3-aeb8-4501a68c9b51" /><br>
      <b>Fig 5.</b> Counterclockwise Curl
    </td>
  </tr>
</table>

To predict the patterns of how trash is moving in the Atlantic Ocean I used MATLAB to create a map of the Atlantic Ocean using data from online sources. I had to use numerous math techniques such as curl, divergence, and vector fields. Vector fields are important because they consist of many vectors. As previously stated ocean currents can be represented through vectors. By analyzing vector fields certain patterns can be seen, which are best modeled through curl and divergence. Curl is when there is rotation around a certain point and divergence occurs when vectors are going away from a certain point. <br>

I believe that GAGP should be placed between the rift of the North and South Atlantic Oceans. One of my reasons is that there is much divergence and convergence in this area, as seen in Figure 3. That means it may be one of the spots that accumulates and distributes the most trash in the Atlantic Ocean, as seen in Figure 4. Another reason why I think GAGP should be placed at the rift is because of how much curl is present there. Evidence of these curls may help indicate the convergence zones in the rift.
## Discussion
The accuracy of the data and analysis surrounding this study may be biased. This is because the data and figures that were used in this study were only taken into account one day: March 2, 2018. Because of this, the assumption that the ocean currents would remain the same every day was used. To improve the data and claim from this study, the current flow should be measured throughout the entire year. This way it can be seen which spots have the most trash accumulation since ocean currents may change due to weather and winds.

## Key Features
- MATLAB
- Vector field analysis
- Divergence calculations
- Curl calculations
- Ocean current datasets

## Data Source
- Atlantic Ocean current dataset (2018)
- Processed and visualized using MATLAB
- Date analyzed: November 2023
