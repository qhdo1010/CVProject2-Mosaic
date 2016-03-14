function index = randIndex(maxIndex,len)
%INDEX = RANDINDEX(MAXINDEX,LEN)
%   randomly, non-repeatedly select indexes from 1:MAXINDEX

%if mess up w the input
if len > maxIndex
	index = [];
	return
end

index = zeros(1,len);
available = 1:maxIndex;
rs = ceil(rand(1,len).*(maxIndex:-1:maxIndex-len+1)); %random seed
for p = 1:len
	while rs(p) == 0
		rs(p) = ceil(rand(1)*(maxIndex-p+1));
	end
	index(p) = available(rs(p));
	available(rs(p)) = [];
end