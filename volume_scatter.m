function [ SV ] = volume_scatter( freq,SP )
SV = SP + 7.*log10(freq);
end