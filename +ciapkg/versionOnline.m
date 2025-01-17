function [onlineVersion, dateTimeStr] = versionOnline(varargin)
	% Obtains the online repository version.
	% Biafra Ahanonu
	% started: 2020.08.18 [‏‎11:16:56]
	% inputs
		%
	% outputs
		%

	% changelog
		% 2021.02.02 [13:42:19] - Updated to handle new VERSION file that includes datestamp on 2nd line.
	% TODO
		%

	%========================
	% Char: GitHub API URL to VERSION file on CIAPKG repository.
	options.versionURL = 'https://api.github.com/repos/bahanonu/calciumImagingAnalysis/contents/ciapkg/VERSION';
	% Int: time in second before urlread function errors due to timeout
	options.timeOutSec = 1;
	% get options
	options = getOptions(options,varargin);
	% display(options)
	% unpack options into current workspace
	% fn=fieldnames(options);
	% for i=1:length(fn)
	% 	eval([fn{i} '=options.' fn{i} ';']);
	% end
	%========================

	try
		success = 0;
		onlineVersion = '';
		dateTimeStr = '';

		% Get version information online
		% Get information about specific version file online using GitHub API
		[versionInfo, status] = urlread(options.versionURL,'Timeout',options.timeOutSec);
		% [versionInfo, status] = webread(options.versionURL,'Timeout',options.timeOutSec);
		if status==1
			versionInfo = jsondecode(versionInfo);
			[onlineVersion, status] = urlread(versionInfo.download_url,'Timeout',options.timeOutSec);
			% [onlineVersion, status] = webread(versionInfo.download_url,'Timeout',options.timeOutSec);
			if status==0
				disp('Could not dowload CIAPKG version information.')
				return;
			end
			if ~isempty(regexp(onlineVersion,'\n'))
				onlineVersionTmp = strsplit(onlineVersion,'\n');
				onlineVersion = onlineVersionTmp{1};
				dateTimeStr = onlineVersionTmp{2};
			end
		end
		success = 1;
	catch err
		onlineVersion = '';
		dateTimeStr = '';
		success = 0;
		disp(repmat('@',1,7))
		disp(getReport(err,'extended','hyperlinks','on'));
		disp(repmat('@',1,7))
	end
end