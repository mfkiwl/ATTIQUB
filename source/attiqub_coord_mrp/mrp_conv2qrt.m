%%#######################################################################
% #######################################################################
% ###                                                                 ###
% ###  @@@@@@@@ @@@@@@@ @@@@@@@ @@@@@ @@@@@@@@@ @@@    @@@ @@@@@@@@   ###
% ###  @@@@@@@@ @@@@@@@ @@@@@@@ @@@@@ @@    (@@ @@@    @@@ @@@  @@@   ###
% ###  @@    @@   @@@     @@@    @@@  @@    (@@ @@@    @@@ @@@@@@@@@  ###
% ###  @@@@@@@@   @@@     @@@    @@@  @@@@@@@@@ @@@    @@@ @@@@@@@@@  ###
% ###  @@    @@   @@@     @@@   @@@@@ @@@@@@@@@ @@@@@@@@@@ @@@   @@@  ###
% ###  @@    @@   @@@     @@@   @@@@@     (@@@  @@@@@@@@@@ @@@@@@@@@  ###
% ###                                                                 ###
% ### Project ATTIQUB: Modified Rodrigues Parameters Toolbox          ###
% ### Conversion of a MRP into a quarternion vector                   ###
% ###                                                                 ###
% ### By Samuel Low (15-12-2020), DSO National Laboratories           ###
% ###                                                                 ###
% #######################################################################
% #######################################################################

function [quarternion] = mrp_conv2qrt(mrp)

% Input: 1x3 MRP vector
% Output: 1x4 quarternion vector

mn = dot(mrp,mrp);
b0 = ( 1 - mn     ) / ( 1 + mn );
b1 = ( 2 * mrp(1) ) / ( 1 + mn );
b2 = ( 2 * mrp(2) ) / ( 1 + mn );
b3 = ( 2 * mrp(3) ) / ( 1 + mn );
quarternion = [ b0 b1 b2 b3 ];

end
