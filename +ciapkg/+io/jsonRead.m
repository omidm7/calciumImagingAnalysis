function [matVar] = jsonRead(inputVar,varargin)
	% Decode a json string.
	% Biafra Ahanonu
	% started: 2020.06.09 [12:19:01]
	% inputs
		% inputVar - JSON string or path to a HDF5 file containing dataset that is a JSON string.
	% outputs
		%

	% changelog
		%
	% TODO
		%

	%========================
	% Str: hierarchy name in hdf5 where JSON data is located.
	options.inputDatasetName = '/movie/preprocessingSettingsAll';
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
		if ischar(inputVar)
			% Determine if it is a file
			if exist(inputVar,'file')==2
				% Read in the JSON string
				inputVar = h5read(inputVar,options.inputDatasetName);
				if iscell(inputVar)
					inputVar = inputVar{1};
				end
				try
					jsondecode(inputVar);
				catch
					inputVar = inputVar(1:end-1);
				end
				if ~ischar(inputVar)
					fprintf('HDF5 dataset %s does NOT contain a json string.\n',options.inputDatasetName);
				end
			else
			end

			% Encode the input variable as a JSON string
			matVar = jsondecode(inputVar);
		end

		if nargout==0
			disp(matVar)
		end

	catch err
		disp(repmat('@',1,7))
		disp(getReport(err,'extended','hyperlinks','on'));
		disp(repmat('@',1,7))
	end
end
function [jsonStr] = subfxnHumanReadable(jsonStr)
	% Make human readable
	jsonStr = strrep(jsonStr, ',', sprintf(',\r'));
	jsonStr = strrep(jsonStr, '[{', sprintf('[\r{\r'));
	jsonStr = strrep(jsonStr, '}]', sprintf('\r}\r]'));
end