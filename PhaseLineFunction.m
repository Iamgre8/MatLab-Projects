% I am trying to analyze autonomous equations using the phaseLine function. The code below outputs an image representing a phase line for the differential equation

f = @(y) y.*(y+3);
phaseLine(f, -5, 5);

upColor = 'b';
downColor = 'r';
eqColor = 'k';




