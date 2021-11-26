%Erdos-Renyi Random Graph
% Nodes αριθμός κόμβων
% Edges = ακμές
% p πιθανότητα
function erg_2 (Nodes, p)

% Πίνακας γειτνίασης
idx = find(triu(ones(Nodes),1));
Edges = rand(((Nodes-1)*Nodes)/2,1)<p;
A = zeros(Nodes);
A(idx) = Edges;
A = A + triu(A,1)';
table = full(A)
% δημιουργία και σχεδιασμός του γράφου
figure
g = graph(A);
h = plot(g);
% κατανομή Poisson
figure
x = 0:Nodes;
y = poisspdf(x,2.5);
plot(x,y,'Marker',"x")
xlabel('Κόμβοι')
ylabel('Πιθανότητα')
grid on
