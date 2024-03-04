% Check the serial number on Arduino and write it here 

ar = serial('write the code of your arduino here','BaudRate',9600);

% Open the serial port where Arduino is connected
fopen(ar);

%open port 2
fprintf(ar,'%s',char(3));
% This closes the goggles for 2 seconds; you can choose the time you prefer
pause(2);
%close port 2
fprintf(ar,'%s',char(4));


%open port 3
fprintf(ar,'%s',char(5));
% This closes the goggles for 2 seconds; you can choose the time you prefer
pause(2);
%close port 3
fprintf(ar,'%s',char(6));


% In the following code, both lenses turn black and transparent together
fprintf(ar,'%s',char(3));
fprintf(ar,'%s',char(5));
pause(2);
fprintf(ar,'%s',char(4));
fprintf(ar,'%s',char(6));

% Close the serial port where Arduino is connected
fclose(ar);