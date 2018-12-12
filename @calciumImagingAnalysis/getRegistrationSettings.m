function [turboregSettingStruct] = getRegistrationSettings(obj,inputTitleStr)
	% Internal function to get user imaging preprocessing settings
	% Biafra Ahanonu
	% started: 2016.05.31 [14:53:00]
	% inputs
	    %
	% outputs
	    %

	% changelog
	    %
	% TODO
	    %

	nWorkersDefault = java.lang.Runtime.getRuntime().availableProcessors-1;
	turboregSettingDefaults = struct(...
	    'registrationFxn', {{'transfturboreg','imtransform'}},...
	    'turboregRotation',  {{0,1}},...
	    'RegisType', {{1,3}},...
	    'parallel', {{1,0}},...
	    'numTurboregIterations',{{1,2,3,4,5}},...
	    'turboregNumFramesSubset',{{5000,1,5,10,50,100,250,500,1000,2000,3000,5000,10000,15000}},...
	    'normalizeMeanSubtract', {{1,0}},...
	    'normalizeMeanSubtractNormalize', {{1,0}},...
	    'normalizeComplementMatrix', {{1,0}},...
	    'normalizeType', {{'bandpass','divideByLowpass','imagejFFT','highpass','matlabDisk'}},...
	    'normalizeFreqLow',{{70,10,20,30,40,50,60,70,80,90}},...
	    'normalizeFreqHigh',{{100,80,90,100,110}},...
	    'normalizeBandpassType',{{'bandpass','lowpass','highpass'}},...
	    'normalizeBandpassMask',{{'gaussian','binary'}},...
	    'filterBeforeRegister', {{[],'divideByLowpass','imagejFFT','bandpass'}},...
	    'saveFilterBeforeRegister', {{[],'save'}},...
	    'filterBeforeRegImagejFFTLarge',{{10000,100,500,1000,5000,8000}},...
	    'filterBeforeRegImagejFFTSmall',{{80,10,20,30,40,50,60,70,90,100}},...
	    'filterBeforeRegFreqLow',{{1,2,3,4,5,7,10,15,20,25,30,35,40,45,50,60,70,80,100,150,200,250,300,350,400}},...
	    'filterBeforeRegFreqHigh',{{20,1,2,3,4,5,7,10,15,20,25,30,35,40,45,50,60,70,80,100,150,200,250,300,350,400}},...
	    'SmoothX',{{10,1,5,10,20,30,40,50,60,70,80,90}},...
	    'SmoothY',{{10,1,5,10,20,30,40,50,60,70,80,90}},...
	    'zapMean',{{0,1}},...
	    'downsampleFactorTime',{{4,1,2,4,6,8,10,20}},...
	    'downsampleFactorSpace',{{2,1,2,4,6,8,10,20}},...
	    'inputDatasetName',{{'/1','/Movie','/movie','/images','/Data/Images','/data'}},...
	    'outputDatasetName',{{'/1','/Movie','/movie','/images'}},...
	    'fileFilterRegexp',{{'concat_.*.h5','concatenated_.*.h5','crop.*.h5','recording.*.tif','concat.*.tif','dfstd_.*.h5','dfof_.*.h5'}},...
	    'processMoviesSeparately',{{0,1}},...
	    'loadMoviesFrameByFrame',{{0,1}},...
	    'treatMoviesAsContinuousSwitch',{{1,0}},...
	    'loadMovieInEqualParts',{num2cell(0:10)},...
	    'refCropFrame',{{100,0,1,10,100,1000}},...
	    'pxToCrop',{{14,15,16,17,18,19,20,21,22,23,24,25}},...
	    'useParallel',{{1,0}},...
	    'nParallelWorkers',{mat2cell([nWorkersDefault 1:(nWorkersDefault*2)],1,ones(1,2*nWorkersDefault+1))},...
	    'medianFilterSize',{{3,5,7,9,11,13,15}}...
	);
	turboregSettingStr = struct(...
	    'registrationFxn', {{'transfturboreg','imtransform'}},...
	    'turboregRotation', {{'DO NOT turboreg rotation','DO turboreg rotation'}},...
	    'RegisType', {{'affine','projective'}},...
	    'parallel', {{'parallel processing','NO parallel processing'}},...
	    'numTurboregIterations',{{'1','2','3','4','5'}},...
	    'turboregNumFramesSubset',{{'5000','1','5','10','50','100','250','500','1000','2000','3000','5000','10000','15000'}},...
	    'normalizeMeanSubtract', {{'normalize movie before turboreg','do not normalize movie before turboreg'}},...
	    'normalizeMeanSubtractNormalize', {{'subtract mean per frame','do not subtract mean per frame'}},...
	    'normalizeComplementMatrix', {{'invert movie before turboreg','DO NOT invert movie before turboreg'}},...
	    'normalizeType', {{'bandpass','divideByLowpass','imagejFFT','highpass','matlabDisk'}},...
	    'normalizeFreqLow',{{'70','10','20','30','40','50','60','70','80','90'}},...
	    'normalizeFreqHigh',{{'100','80','90','100','110'}},...
	    'normalizeBandpassType',{{'bandpass','lowpass','highpass'}},...
	    'normalizeBandpassMask',{{'gaussian','binary'}},...
	    'filterBeforeRegister', {{'NO filtering before registering','matlab divide by lowpass before registering','imageJ divide by lowpass (requires Miji!)','matlab bandpass before registering'}},...
	    'saveFilterBeforeRegister', {{'NO not save lowpass','DO save lowpass'}},...
	    'filterBeforeRegImagejFFTLarge',{{'10000','100','500','1000','5000','8000'}},...
	    'filterBeforeRegImagejFFTSmall',{{'80','10','20','30','40','50','60','70','90','100'}},...
	    'filterBeforeRegFreqLow',{{'1','2','3','4','5','7','10','15','20','25','30','35','40','45','50','60','70','80','100','150','200','250','300','350','400'}},...
	    'filterBeforeRegFreqHigh',{{'20','1','2','3','4','5','7','10','15','20','25','30','35','40','45','50','60','70','80','100','150','200','250','300','350','400'}},...
	    'SmoothX',{{'10','1','5','10','20','30','40','50','60','70','80','90'}},...
	    'SmoothY',{{'10','1','5','10','20','30','40','50','60','70','80','90'}},...
	    'zapMean',{{'0','1'}},...
	    'downsampleFactorTime',{{'4','1','2','4','6','8','10','20'}},...
	    'downsampleFactorSpace',{{'2','1','2','4','6','8','10','20'}},...
	    'inputDatasetName',{{'/1','/Movie','/movie','/images','/Data/Images','/data'}},...
	    'outputDatasetName',{{'/1','/Movie','/movie','/images'}},...
	    'fileFilterRegexp',{{'concat_.*.h5','concatenated_.*.h5','crop.*.h5','recording.*.tif','concat.*.tif','dfstd_.*.h5','dfof_.*.h5'}},...
	    'processMoviesSeparately',{{'no','yes'}},...
	    'loadMoviesFrameByFrame',{{'no','yes'}},...
	    'treatMoviesAsContinuousSwitch',{{'yes','no'}},...
	    'loadMovieInEqualParts',{num2cell(0:10)},...
	    'refCropFrame',{{'100','0','1','10','100','1000'}},...
	    'pxToCrop',{{14,15,16,17,18,19,20,21,22,23,24,25}},...
	    'useParallel',{{1,0}},...
	    'nParallelWorkers',{mat2cell([nWorkersDefault 1:(nWorkersDefault*2)],1,ones(1,2*nWorkersDefault+1))},...
	    'medianFilterSize',{{3,5,7,9,11,13,15}}...
	);

	% propertySettings = turboregSettingDefaults;

	propertyList = fieldnames(turboregSettingDefaults);
	nPropertiesToChange = size(propertyList,1);

	% add current property to the top of the list
	for propertyNo = 1:nPropertiesToChange
		property = char(propertyList(propertyNo));
		propertyOptions = turboregSettingStr.(property);
		propertySettingsStr.(property) = propertyOptions;
		% propertySettingsStr.(property);
	end

	uiListHandles = {};
	uiTextHandles = {};
	uiXIncrement = 0.025;
	uiXOffset = 0.05;
	uiYOffset = 0.90;
	uiTxtSize = 0.45;
	uiBoxSize = 0.45;
	uiFontSize = 9;
	[figHandle figNo] = openFigure(1337, '');
	clf
	uicontrol('Style','Text','String',inputTitleStr,'Units','normalized','Position',[uiXOffset uiYOffset+0.04 0.8 0.05],'BackgroundColor','white','HorizontalAlignment','Left','FontSize',uiFontSize);
	uicontrol('Style','Text','String','press enter to continue after selecting options','Units','normalized','Position',[uiXOffset uiYOffset+0.01 0.8 0.05],'BackgroundColor','white','HorizontalAlignment','Left','FontSize',uiFontSize);

	for propertyNo = 1:nPropertiesToChange
		property = char(propertyList(propertyNo));
		uiTextHandles{propertyNo} = uicontrol('Style','text','String',[property ': ' 10],'Units','normalized','Position',[uiXOffset uiYOffset-uiXIncrement*propertyNo+0.027 uiTxtSize 0.0225],'BackgroundColor',[0.9 0.9 0.9],'ForegroundColor','black','HorizontalAlignment','Left','FontSize',uiFontSize);
		% jEdit = findjobj(uiTextHandles{propertyNo});
		% lineColor = java.awt.Color(1,0,0);  % =red
		% thickness = 3;  % pixels
		% roundedCorners = true;
		% newBorder = javax.swing.border.LineBorder(lineColor,thickness,roundedCorners);
		% jEdit.Border = newBorder;
		% jEdit.repaint;  % redraw the modified control
		% uiTextHandles{propertyNo}.Enable = 'Inactive';
		% optionCallback = ['set(uiListHandles{propertyNo}, ''Backgroundcolor'', ''g'')'];
		uiListHandles{propertyNo} = uicontrol('Style', 'popup','String', propertySettingsStr.(property),'Units','normalized','Position', [uiXOffset+uiTxtSize uiYOffset-uiXIncrement*propertyNo uiBoxSize 0.05],'Callback',@(hObject,callbackdata){set(hObject, 'Backgroundcolor', [208,229,180]/255)},'FontSize',uiFontSize);
	end
	pause

	for propertyNo = 1:nPropertiesToChange
		property = char(propertyList(propertyNo));
		uiListHandleData = get(uiListHandles{propertyNo});
		turboregSettingStruct.(property) = turboregSettingDefaults.(property){uiListHandleData.Value};
	end
	close(1337)

	% ensure rotation setting matches appropriate registration type
	if turboregSettingStruct.turboregRotation==1
		turboregSettingStruct.RegisType = 3;
	end

	if turboregSettingStruct.refCropFrame==0
		movieSettings = inputdlg({...
				'frame to reference to: '...
			},...
			'view movie settings',1,...
			{...
				'100'...
			}...
		);
		turboregSettingStruct.refCropFrame = str2num(movieSettings{1});
	end
end