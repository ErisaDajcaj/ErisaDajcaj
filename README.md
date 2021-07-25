**OVERFITTING**
Quando si alimenta eccessivamente il modello con dati che non contengono la capacità di gestire, inizia ad agire in modo irregolare. 
Questa irregolarità includerà il rumore invece del segnale nel risultato. Il vostro modello inizierà a considerare i dati non necessari come il concetto.
Il termine usato per riferirsi a questo è “overfitting”, e porta a risultati imprecisi, diminuendo l’accuratezza e l’efficienza dei dati.
Nell’apprendimento automatico, regolarizzare significa ridurre o regolarizzare i dati verso il valore zero. In parole povere, 
si può usare la regolarizzazione per evitare l’overfitting limitando la capacità di apprendimento o la flessibilità di un modello di machine learning.

**Come funziona la regolarizzazione**
Il motivo principale per cui il modello è “sovradimensionato” è che non riesce a generalizzare i dati a causa della troppa irrilevanza. 
Tuttavia, la regolarizzazione è un metodo efficace che migliora la precisione del modello e riduce le variazioni non necessarie.
Inoltre, questa tecnica evita anche la perdita di dati importanti, che avviene con underfitting. 
La regolarizzazione aiuta il modello ad apprendere applicando esempi appresi in precedenza ai nuovi dati non visti. Si può anche ridurre la capacità del modello guidando vari parametri a zero. Questo preocesso rimuoverà i pesi aggiuntivi dalle caratteristiche specifiche e distribuirà tali pesi in modo uniforme.

Come funziona concretamente: Quando vogliamo che il modello funzioni correttamente, definiamo la funzione di perdita. 
Questa funzione di perdita definirà le prestazioni del modello in base ai dati del calcolo delle perdite. 
L'obiettivo è ridurre al minimo la perdita per trovare il modello che vogliamo. Per questo motivo, la regolarizzazione aggiunge lambda 
per penalizzare la funzione di perdita. 
Si riesce ad ottenere la soluzione ottimale da questa tecnica in quanto rifiuta gli errori di formazione elevati con valori lambda più piccoli e rifiuta i modelli di maggiore complessità con valori lambda più elevati.
All’aumentare di λ, aumenta il bias. Man mano che λ diminuisce, la varianza aumenta.

**LASSO**
La regressione Lasso aiuta a ridurre la varianza in modo significativo con un piccolo aumento della distorsione e generare una migliore accuratezza della previsione.
Esegue la selezione variabile riducendo le stime dei coefficienti verso 0. Lasso forza alcune delle stime dei coefficienti ad essere esattamente 0, cioè quando il valore di λ è estremamente grande, l'ampiezza di alcune stime dei coefficienti è uguale a 0 rendendo il modello più facile da interpretare.
