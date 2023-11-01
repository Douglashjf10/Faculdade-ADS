var pilha = new Pilha();

pilha.Empilhar(2);
Console.WriteLine($"Topo: {pilha.Topo}");
pilha.Empilhar(3);
Console.WriteLine($"Topo: {pilha.Topo}");
pilha.Empilhar(5);
Console.WriteLine($"Topo: {pilha.Topo}");

pilha.Desempilhar();
Console.WriteLine($"Topo: {pilha.Topo}");
pilha.Desempilhar();
Console.WriteLine($"Topo: {pilha.Topo}");
pilha.Desempilhar();
Console.WriteLine($"Topo: {pilha.Topo}");

