# `CIAtah`
<!-- # `CIAtah` (calciumImagingAnalysis [ciapkg]) -->
![GitHub top language](https://img.shields.io/github/languages/top/bahanonu/calciumImagingAnalysis?style=flat-square&logo=appveyor)
![GitHub license](https://img.shields.io/github/license/bahanonu/calciumImagingAnalysis?style=flat-square&logo=appveyor)
[![GitHub release (latest by date)](https://img.shields.io/github/v/release/bahanonu/calciumImagingAnalysis?style=flat-square&logo=appveyor)](https://github.com/bahanonu/calciumImagingAnalysis/releases/latest?style=flat-square&logo=appveyor)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/bahanonu/calciumImagingAnalysis?style=flat-square&logo=appveyor)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg?style=flat-square)](https://github.com/bahanonu/calciumImagingAnalysis/graphs/commit-activity?style=flat-square&logo=appveyor)
![visitors](https://visitor-badge.glitch.me/badge?page_id=bahanonu.calciumImagingAnalysis)
![Hits](https://hitcounter.pythonanywhere.com/count/tag.svg?url=https%3A%2F%2Fgithub.com%2Fbahanonu%2FcalciumImagingAnalysis)

<img src="https://user-images.githubusercontent.com/5241605/51068051-78c27680-15cd-11e9-9434-9d181b00ef8e.png" align="center">

## Full documentation at https://bahanonu.github.io/calciumImagingAnalysis/

<hr>

`CIAtah` (pronounced cheetah; formerly <ins>c</ins>alcium<ins>I</ins>maging<ins>A</ins>nalysis [ciapkg]) is a software package for analyzing one- and two-photon calcium imaging datasets.

<!-- <img src="https://user-images.githubusercontent.com/5241605/81605697-b9c7c800-9386-11ea-9e9f-569c743b24b9.png" width="42%" align="right" alt="calciumImagingAnalysis_logo"> -->
<!-- https://user-images.githubusercontent.com/5241605/99430025-a2c9db80-28bd-11eb-8508-d1c63dea6fcf.png -->
<!-- https://user-images.githubusercontent.com/5241605/99237853-e2a19d80-27ad-11eb-996f-3869db0c2238.png -->
<!-- https://user-images.githubusercontent.com/5241605/99477838-332d0e00-2908-11eb-887b-9205a305cf5d.png -->
<!-- <p align="center"> -->
  <img src="https://user-images.githubusercontent.com/5241605/99499485-d6dce500-292d-11eb-8c68-b089fe1985c8.png" width="42%" align="right" alt="ciatah_logo">
<!-- </p> -->

`CIAtah` features:
- A GUI with different modules to allow users to do large-scale batch analysis, accessed via the repository's `ciatah` class.
- The `ciatah` functions can be used to create GUI-less, command line-ready analysis pipelines. Functions are located in the `ciapkg` sub-folder and in the `+ciapkg` package.
- Includes all major calcium imaging analysis steps: movie visualization (including reading from disk), pre-processing (motion correction, spatiotemporal downsampling, spatial filtering, relative fluorescence calculation, etc.), support for multiple cell-extraction methods (CELLMax, PCA-ICA, CNMF, CNMF-E, EXTRACT, etc.), manual classification via GUIs, automated cell classification (coming soon!), cross-session cell alignment, and more.
- Has several example one- and two-photon calcium imaging datasets that `ciatah` can automatically download to help users test out the package.
- Includes code for determining animal position (e.g. in open-field assay).
- Supports [Neurodata Without Borders](https://www.nwb.org/) data standard (see [calcium imaging tutorial](https://neurodatawithoutborders.github.io/matnwb/tutorials/html/ophys.html)) for reading/writing cell-extraction (e.g. outputs of PCA-ICA, CELLMax, CNMF, CNMF-E, EXTRACT, etc.). Supports reading and writing NWB movie files with continued integration planned.
- Supports most major imaging movie file formats: HDF5, NWB, AVI, ISXD [Inscopix], and TIFF.
- Requires `MATLAB`.
<!-- <hr> -->

Contact: __Biafra Ahanonu, PhD (github [at] bahanonu [dot] com)__.

Made in USA.<br>
<img src="https://user-images.githubusercontent.com/5241605/71493809-322a5400-27ff-11ea-9b2d-52ff20b5f332.png" align="center" title="USA" alt="USA" width="auto" height="50">

***
## Contents

- [CIAtah example features](#ciatah-example-features)
- [Quick start guide](#quick-start-guide)
- [Quick start (command-line)](#quick-start-command-line)
- [`CIAtah` main GUI notes](#ciatah-main-gui-notes)
- [Acknowledgments](#acknowledgments)
- [References](#references)
- [Questions](#questions)
- [License](#license)

## CIAtah example features

<p align="center">
  <strong>Support for entire calcium imaging pipeline.</strong>
</p>

![ciapkg_pipeline](https://user-images.githubusercontent.com/5241605/105438231-6c8b3e00-5c17-11eb-8dd0-8510fa204fa2.png)

<p align="center">
  <strong>Movie processing, cell extraction, and analysis validation.</strong>
</p>
<p align="center">
  <a href="https://user-images.githubusercontent.com/5241605/94530890-9c3db280-01f0-11eb-99f0-e977f5edb304.gif">
    <img src="https://user-images.githubusercontent.com/5241605/94530890-9c3db280-01f0-11eb-99f0-e977f5edb304.gif" align="center" title="ciapkgMovie" alt="ciapkgMovie" width="75%" style="margin-left:auto;margin-right:auto;display:block;margin-bottom: 1%;">
  </a>
</p>

<p align="center">
  <strong>Cell sorting GUI.</strong>
</p>
<p align="center">
  <a href="https://user-images.githubusercontent.com/5241605/100851700-64dec280-343a-11eb-974c-d6d29faf9eb2.gif">
    <img src="https://user-images.githubusercontent.com/5241605/100851700-64dec280-343a-11eb-974c-d6d29faf9eb2.gif" align="center" title="ciapkgMovie" alt="ciapkgMovie" width="75%" style="margin-left:auto;margin-right:auto;display:block;margin-bottom: 1%;">
  </a>
</p>

<p align="center">
  <strong>Stable cell alignment across imaging sessions.</strong>
</p>
<p align="center">
  <a href="https://user-images.githubusercontent.com/5241605/105437652-4ca74a80-5c16-11eb-893a-87ea6d53e964.gif">
    <img src="https://user-images.githubusercontent.com/5241605/105437652-4ca74a80-5c16-11eb-893a-87ea6d53e964.gif" align="center" title="m121_matchedCells" alt="m121_matchedCells" width="30%" style="margin-left:auto;margin-right:auto;display:block;margin-bottom: 1%;">
  </a>
</p>


***

## Quick start guide

Below are steps needed to quickly get started using the `CIAtah` software package in MATLAB.

- __Install__ Clone the `CIAtah` repository (using [GitHub desktop](https://desktop.github.com/) or command line) or download the repository zip and unzip (e.g. run below MATLAB command).
  - Point the MATLAB path to the `CIAtah` root folder (*NOT* `@CIAtah` sub-folder in the repository).
  - Alternatively (not recommended since lags GitHub repository), download the package from `File Exchange` using the Add-Ons explorer in MATLAB. See `CIAtah` entry at:
 [![View CIAtah on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/75466-calciumimaginganalysis) or https://www.mathworks.com/matlabcentral/fileexchange/75466-calciumimaginganalysis.

 ```Matlab
 % Optional: this will set MATLAB working folder to the default user path. Make sure you have read/write permissions.
 cd(userpath);

 % Download and unzip current repository
 unzip('https://github.com/bahanonu/calciumImagingAnalysis/archive/master.zip');

 % Make CIAtah the working folder
 cd('calciumImagingAnalysis-master')
 ```

- Run `CIAtah` using the below MATLAB commands. Call `obj;` in the MATLAB command window each time you want to go back to the main GUI.

```MATLAB
% Loads the class into an object for use in this session
obj = ciatah;

% Runs routines to check dependencies and help user get setup.
obj.setup;

% Open the class menu (always type `obj` then enter load the class/modules menu)
obj % then hit enter, no semicolon!
```

- Afterwards, likely want to run `modelAddNewFolders` module first in order to add folders containing imaging data to the current class object.
- [Optional] Users on Windows systems should download `Everything` (https://www.voidtools.com/). It is a very useful and extremely fast search engine for files and folders on a computer that can allow users to quickly get full paths for lists of folders that need to be analyzed in `CIAtah`.
- [Optional] Users who want to analyze data via the command line can run `edit ciapkg.demo.cmdLinePipeline` and run each segment of code there to see what commands are needed to perform each step. It assumes you have already run `example_downloadTestData`.

### Visualize any movie quickly using read from disk

Users can quickly visualize movies in any of the supported formats (HDF5, NWB, AVI, TIFF, and ISXD) using the `playMovie` function. This will read directly from disk, allowing users to scroll through frames to visually check movies before or after processing. See below code:

```MATLAB
% Use the absolute path to the movie file or a valid relative path.
playMovie('ABSOLUTE\PATH\TO\MOVIE');
```

When using HDF5 files, check the dataset name containing movie with `h5disp` then input the full dataset name (e.g. below is for a standard NWB-formatted HDF5 file):
```MATLAB
playMovie('ABSOLUTE\PATH\TO\MOVIE','inputDatasetName','/acquisition/TwoPhotonSeries/data');
```

## Quick start (command line or GUI-less batch analysis)

After downloading `CIAtah` and running the setup as above, users interested in command-line processing can open up the example M-file by running the below command. By running individual code-block cells, users are guided from pre-processing through cell-extraction to cross-session analysis.
```MATLAB
edit ciapkg.demo.cmdLinePipeline
```

## `CIAtah` main GUI notes
- Run `obj;` in the command window to see the main GUI.
- All main decisions for choosing a module to run, deciding on a cell-extraction algorithm, and which folders to analyze are in a single window.
- The GUI will real-time update the selected folders based on the selections in the subject, assay, and folder filter areas.
- Sections not relevant for a specific module are grayed out.
- Tab to cycle through selection areas. Green background is the currently selected area, dark gray background is area that had previously been selected but is not the active area, and white background is for areas that have not been selected yet.
- Hover mouse over module names for tooltip that gives additional information.

__For example, selecting middle two assays automatically changes selection in `Loaded folders` section.__

<a href="https://user-images.githubusercontent.com/5241605/79494880-96ed0280-7fd8-11ea-85e1-05a13dc26e90.png" target="_blank"><img src="https://user-images.githubusercontent.com/5241605/79494880-96ed0280-7fd8-11ea-85e1-05a13dc26e90.png" alt="image" width="45%" height="auto"/></a>
<a href="https://user-images.githubusercontent.com/5241605/79494959-b97f1b80-7fd8-11ea-8197-7be457d24638.png" target="_blank"><img src="https://user-images.githubusercontent.com/5241605/79494959-b97f1b80-7fd8-11ea-8197-7be457d24638.png" alt="image" width="45%" height="auto"/></a>

__Certain sections become available when user selects the appropriate module (e.g. cell-extraction module available when selecting `modelExtractSignalsFromMovie`).__

<a href="https://user-images.githubusercontent.com/5241605/79495026-d4ea2680-7fd8-11ea-8d4d-02164e1af1d6.png" target="_blank"><img src="https://user-images.githubusercontent.com/5241605/79495026-d4ea2680-7fd8-11ea-8d4d-02164e1af1d6.png" alt="image" width="50%" height="auto"/></a>

### Additional quick start notes

- See additional details on the [Processing calcium imaging data](https://bahanonu.github.io/calciumImagingAnalysis/pipeline_overview/) page for running the full processing pipeline.
- Settings used to pre-process imaging movies (`modelPreprocessMovie` module) are stored inside the processed HDF5 movie to allow `CIAtah` to load them again later.
- To force load all directories, including most external software packages (in `_external_programs` folder), type `ciapkg.loadAllDirs;` into MATLAB command line. This is most relevant when you need to access specific functions in an outside repository that are normally hidden until needed.
- When issues are encountered, first check the [Common issues and fixes](https://bahanonu.github.io/calciumImagingAnalysis/help_issues/) page to see if a solution is there. Else, submit a new issue or email Biafra.
- There are two sets of test data that are downloaded:
  - __Single session analysis__: `data\2014_04_01_p203_m19_check01_raw` can be used to test the pipeline until the cross-session alignment step.
  - __Batch analysis__: `data\batch` contains three imaging sessions that should be processed and can then be used for the cross-session alignment step. Users should try these sessions to get used to batched analysis.
- For Fiji dependency, when path to `Miji.m` (e.g. `\Fiji.app\scripts` folder) is requested, likely in `[CIAtah directory]\_external_programs\FIJI_FOLDER\Fiji.app\scripts` where `FIJI_FOLDER` varies depending on OS, unless the user requested a custom path or on OSX (in which case, find Fiji the install directory).
  - If you run into Java heap space memory errors when Miji tries to load Fiji in MATLAB, make sure "java.opts" file is in MATLAB start-up folder or that the `CIAtah` root folder is the MATLAB start-up folder ([instructions on changing](https://www.mathworks.com/help/matlab/matlab_env/matlab-startup-folder.html)).
- `CIAtah` often uses [regular expressions](https://www.cheatography.com/davechild/cheat-sheets/regular-expressions/) to find relevant movie and other files in folders to analyze.
  - For example, by default it looks for any movie files in a folder containing `concat`, e.g. `concat_recording_20140401_180333.h5` (test data). If you have a file called `rawData_2019_01_01_myInterestingExperiment.avi` and all your raw data files start with `rawData_` then change the regular expression to `rawData_` when requested by the repository. See `setMovieInfo` module to change after adding new folders.
- `CIAtah` generally assumes users have imaging data associated with *one* imaging session and animal in a given folder. Follow folder naming conventions in [Data formats](https://bahanonu.github.io/calciumImagingAnalysis/data/#preferred-folder-naming-format) for the best experience.
- External software packages are downloaded into `_external_programs` folder and should be placed there if done manually.

Users can alternatively run setup as below.
```MATLAB
% Run these commands in MATLAB to get started.

% Loads all directories
loadBatchFxns;

% Loads the class into an object for use in this session
obj = ciatah;

% Download and load dependent software packages into "_external_programs" folder.
% Also download test data into "data" folder.
% Normally only need to one once after first downloading CIAtah package.
obj.loadDependencies;

% Add folders containing imaging data.
obj.modelAddNewFolders;

% [optional] Set the names CIAtah will look for in each folder
obj.setMovieInfo;

% Open class menu to pick module to run.
obj.runPipeline; % then hit enter!
```

***

## Acknowledgments

Thanks to Jones G. Parker, PhD (<https://parker-laboratory.com/>) for providing extensive user feedback during the development of the `CIAtah` software package.

Additional thanks to Drs. Jesse Marshall, Jérôme Lecoq, Tony H. Kim, Hakan Inan, Lacey Kitch, Maggie Larkin, Elizabeth Otto Hamel, Laurie Burns, and Claudia Schmuckermair for providing feedback, specific functions, or helping develop aspects of the code used in `CIAtah`.

## References

Please cite [Corder*, Ahanonu*, et al. 2019](http://science.sciencemag.org/content/363/6424/276.full) _Science_ publication or the [Ahanonu, 2018](https://doi.org/10.5281/zenodo.2222294) _Zenodo_ release if you used the software package or code from this repository to advance/help your research:

```Latex
@article{corderahanonu2019amygdalar,
  title={An amygdalar neural ensemble that encodes the unpleasantness of pain},
  author={Corder, Gregory and Ahanonu, Biafra and Grewe, Benjamin F and Wang, Dong and Schnitzer, Mark J and Scherrer, Gr{\'e}gory},
  journal={Science},
  volume={363},
  number={6424},
  pages={276--281},
  year={2019},
  publisher={American Association for the Advancement of Science}
}
```

```Latex
@misc{biafra_ahanonu_2018_2222295,
  author       = {Biafra Ahanonu},
  title        = {{calciumImagingAnalysis: a software package for
                   analyzing one- and two-photon calcium imaging
                   datasets.}},
  month        = December,
  year         = 2018,
  doi          = {10.5281/zenodo.2222295},
  url          = {https://doi.org/10.5281/zenodo.2222295}
}
```

## Questions?
Please email any additional questions not covered in the repository to `github [at] bahanonu [dot] com` or open an issue.

***

## License

Copyright (C) 2013-2021 Biafra Ahanonu

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.

## Repository stats
- ![Hits](https://hitcounter.pythonanywhere.com/count/tag.svg?url=https%3A%2F%2Fgithub.com%2Fbahanonu%2FcalciumImagingAnalysis) (starting 2020.09.16)
- ![visitors](https://visitor-badge.glitch.me/badge?page_id=bahanonu.calciumImagingAnalysis) (starting 2020.09.22)
<!-- - [![HitCount](http://hits.dwyl.com/bahanonu/calciumImagingAnalysis.svg)](http://hits.dwyl.com/bahanonu/calciumImagingAnalysis) (starting 2020.08.16), frozen til `dwyl` migrates to new server. -->