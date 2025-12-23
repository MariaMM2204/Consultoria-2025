# Treball Final de Consultoria Éstadística 2025

Maria Marín Méndez (1668394) i Andrea (16393232)

En aquest repositori es recull el desenvolupament del **Treball Final de Consultoria Estadística 2025**, en el qual s’apliquen eines i metodologies estadístiques per analitzar les dades de la Loteria de Nadal, fins a l'any 2025. 

L’objectiu principal del treball és proporcionar una anàlisi rigorosa i estructurada que permeti donar suport a la presa de decisions, tot justificant les tècniques utilitzades i els resultats obtinguts. El repositori conté el codi, les dades utilitzades i la documentació necessària per garantir la reproductibilitat i la transparència del treball realitzat.


**Funcionament de la Loteria de Nadal (ElGordo):**
El sorteig es basa en un sistema de bitllets, sèries i dècims:
- **Números en joc:** hi ha 100.000 de diferents (del 00000 al 99999)
- **Sèries:** de cada número se n'emeten diverses sèries (per exemple, 195 sèries el 2024). això vol dir que en un mateix número es repeteix 195 vegades.
- **Dècim:** és la unitat mínima que comprem. Cada sèrie té 10 dècims.
        - el preu d'un dècim és de 20€
        - el preu d'un bitllet senser (10 dècims) és de 200€.

El sistema de dos bombos:
- Bombo de números: conté 100.000 boles de fusta, cadascuna amb un número.
- Bombo de premis: conté 1.807 boles amb els imports dels premis.
- La dinàmica: Surten dues boles simultàniament (una de cada bombo). Això vol dir que qualsevol número pot rebre qualsevol premi. El sorteig no acaba fins que el bombo de premis queda buit.

Quan parlem del "Gordo", ens referim al Primer Premi, però n'hi ha molts més:
400.000€ el gordo (1r)
125.000€ (2n)
50.000€ (3r)
20.000€ (4rt) n'hi ha 2 números premiats
6.000€ (5é) n'hi ha 8 números premiats
100€ (La pedrea) el "soroll" de fons, 1794 premis
20€ (reintegrament) si l'última xifra coincideix amb el Gordo

Atenció: Hisenda es queda amb el 20% de qualsevol premi que superi els 40.000€.



Per on podem començar l'anàlisi?
1. Històric de terminacions: quins números han sortir més.
2. Geografia de la sort: Analitzar si és veritat que el premi toca més a Madrid o Barcelona, o si és simplement perquè s'hi venene més dècims.
3. Simulació de Montecarlo (proposta gemini): crear un script en R que simuli 10.000 sortejos per veure queantes vegades guanyaries el Gordo si juguessis el mateix número durant 100 anys.


