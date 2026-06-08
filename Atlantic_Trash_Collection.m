% Plotting velocity vectors and magnitude for March 2, 2018

% Before running this script,
% 1. Move/incorporate the m_map1.4 folder and its subfolders into your MATLAB search path. 
%   https://www.mathworks.com/help/matlab/matlab_env/what-is-the-matlab-search-path.html 
%   https://www.mathworks.com/help/matlab/ref/addpath.html
% 2. Load the LAT, LON, UX_Ocurrent, VY_Ocurrent MAT files
clc
clear
load("/MATLAB Drive/Project_4_ENGIN211L_data_m_map/DATA/MATLAB DATA/LAT.mat")
load("/MATLAB Drive/Project_4_ENGIN211L_data_m_map/DATA/MATLAB DATA/LON.mat")
load("/MATLAB Drive/Project_4_ENGIN211L_data_m_map/DATA/MATLAB DATA/UX_Ocurrent.mat")
load("/MATLAB Drive/Project_4_ENGIN211L_data_m_map/DATA/MATLAB DATA/VY_Ocurrent.mat")
lon_range=725:1200;
lat_range=1:475;

figure(1)
% ENGIN 211L Vector Calculus MATLAB project, GPGP Final Project
LON_sm=LON(lon_range,lat_range);
LAT_sm=LAT(lon_range,lat_range);
m_proj('miller','lon',[min(min(LON_sm)) max(max(LON_sm))], ...
    'lat',[min(min(LAT_sm)) max(max(LAT_sm))]);
m_coast('patch',[.8 .8 .8]);
hold on 
% plotting March 2, 2018
u = UX_Ocurrent(lon_range,lat_range,1); v = VY_Ocurrent(lon_range,lat_range,1); 
max_sp = max(max((u.^2+v.^2).^(1/2)));  % max speed
% Magnitude plot (speed): These contour plot settings are not good on
% purpose. Make better choices so that your plot is more legible and
% effective.
[CS,CH] = m_contourf(LON_sm,LAT_sm,(u.^2+v.^2).^(1/2),(0.01:0.001:0.4),'edgecolor','none');
% Velocity arrows: These quiver settings are not good on
% purpose. Make better choices so that your plot is more legible and
% effective.-0.2:0.005:0.2
m_quiver(LON_sm,LAT_sm,u,v); 
m_grid('box','fancy','tickdir','out');
colorbar
%ax=m_contfbar([.3 .7],.1,CS,CH);
%set(ax,'fontsize',12)
%xlabel(ax,'Surface Current Speed (m/s)')
title('Atlantic Ocean Surface Currents: March 2, 2018','FontSize',16)
colormap(m_colmap('Jet','step',4))
h_cbar = colorbar;
set(gca,'FontSize',14)
set(get(h_cbar,'title'),'string','m/s','FontSize',14)
% Issues to resolve for Milestone 1:
% - Plot 1: Set field of view to just the ocean of interest and no other oceans
% - Needs a colorbar to explain the color scale for speed
% - White areas in the contour plot mean the colorscale cuts off lower
%   speeds. We should see color everywhere, no white areas.
% - Plot 2: Quiver arrows are too small to see when the field of view is the entire
%   world or even one ocean. Create a smaller plot with a smaller field of
%   view focused on a small region to show details of velocity field with
%   quiver arrows and the contour plot of speed underneath.
%% Zoom in of region (contourf and quiver)
clc
clear
load("/MATLAB Drive/Project_4_ENGIN211L_data_m_map/DATA/MATLAB DATA/LAT.mat")
load("/MATLAB Drive/Project_4_ENGIN211L_data_m_map/DATA/MATLAB DATA/LON.mat")
load("/MATLAB Drive/Project_4_ENGIN211L_data_m_map/DATA/MATLAB DATA/UX_Ocurrent.mat")
load("/MATLAB Drive/Project_4_ENGIN211L_data_m_map/DATA/MATLAB DATA/VY_Ocurrent.mat")
%lon_range=900:925; %Original Milestone 1 Graph
%lat_range=300:320;
lon_range=905:925;
lat_range=295:315;
LON_sm=LON(lon_range,lat_range);
LAT_sm=LAT(lon_range,lat_range);
% plotting March 2, 2018
u = UX_Ocurrent(lon_range,lat_range,1); v = VY_Ocurrent(lon_range,lat_range,1); 
max_sp = max(max((u.^2+v.^2).^(1/2)));  % max speed

figure(2)
m_proj('miller','lon',[min(min(LON_sm)) max(max(LON_sm))],...
    'lat',[min(min(LAT_sm)) max(max(LAT_sm))]);
m_coast('patch',[.8 .8 .8]);
% Magnitude plot (speed): These contour plot settings are not good on
% purpose. Make better choices so that your plot is more legible and
% effective.
[CS,CH] = m_contourf(LON_sm,LAT_sm,(u.^2+v.^2).^(1/2),(0:0.1/5:max_sp),'edgecolor','none');
hold on
% Velocity arrows: These quiver settings are not good on
% purpose. Make better choices so that your plot is more legible and
% effective.
m_quiver(LON_sm,LAT_sm,u,v); 
m_grid('box','fancy','tickdir','out');
colorbar
%ax=m_contfbar([.3 .7],.1,CS,CH);
%set(ax,'fontsize',12)
%xlabel(ax,'Surface Current Speed (m/s)')
title('Zoomed in: Atlantic Ocean Surface Currents: March 2, 2018','FontSize',16)
colormap(m_colmap('Jet','step',4))
h_cbar = colorbar;
set(gca,'FontSize',14)
set(get(h_cbar,'title'),'string','m/s','FontSize',14)

%% Milestone 2 Divergence
divUV = divergence(u,v);
figure(3)
m_proj('miller','lon',[min(min(LON_sm)) max(max(LON_sm))],...
    'lat',[min(min(LAT_sm)) max(max(LAT_sm))]);
m_coast('patch',[.8 .8 .8]);
hold on
%[CS,CH] = m_contourf(LON_sm,LAT_sm,divUV,(min(min(divUV)):0.1:max(max(divUV))),'edgecolor','none');
[CS,CH] = m_contourf(LON_sm,LAT_sm,divUV,(-0.2:0.005:0.2),'edgecolor','none');
m_grid('box','fancy','tickdir','out');
title('Atlantic Ocean Surface Divergence (qualitative): March 2, 2018','FontSize',14)
colormap(m_colmap('Jet','step',4))
h_cbar = colorbar;
set(gca,'FontSize',14)
set(get(h_cbar,'title'),'string','m/s','FontSize',14)

%% %% Milestone 2 Curl
curlUV = curl(u,v);
figure(4)
m_proj('miller','lon',[min(min(LON_sm)) max(max(LON_sm))],...
    'lat',[min(min(LAT_sm)) max(max(LAT_sm))]);
m_coast('patch',[.8 .8 .8]);
hold on
%[CS,CH] = m_contourf(LON_sm,LAT_sm,curlUV,(min(min(curlUV)):0.01:max(max(curlUV))),'edgecolor','none');
[CS,CH] = m_contourf(LON_sm,LAT_sm,curlUV,(-0.05:0.001:0.05),'edgecolor','none');
m_grid('box','fancy','tickdir','out');
title('Atlantic Ocean Surface Curl (qualitative): March 2, 2018','FontSize',14)
colormap(m_colmap('Jet','step',4))
h_cbar = colorbar;
set(gca,'FontSize',14)
set(get(h_cbar,'title'),'string','m/s','FontSize',14)
