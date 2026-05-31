# Análise do sistema de compartilhamento de bicicletas para ciclistas: comportamento de membros vs usuários casuais
<img width="1660" height="947" alt="Image" src="https://github.com/user-attachments/assets/a89797d2-6804-4597-8545-5aaa7bd0d503" />

Este projeto analisa o comportamento de usuários do sistema de bicicletas da Cyclistic, comparando membros anuais e usuários casuais, com o objetivo é identificar padrões de uso que ajudem a empresa a converter usuários casuais em membros, aumentando receita e retenção.

Para isso, os dados de viagens dos últimos 12 meses foram explorados utilizando SQL, enquanto o Power BI foi utilizado para construção de dashboards interativos e análise visual.

## Pergunta de Negócio

Como os membros anuais e os usuários casuais utilizam as bicicletas da Cyclistic de maneira diferente?

A análise parte da ideia de que membros são mais lucrativos. Portanto, entender as diferenças de comportamento entre os grupos é essencial para orientar ações de marketing e aumentar a conversão.



## Principais Insights

A análise mostrou diferenças claras e perceptíveis no comportamento entre membros anuais e usuários casuais.

* **Padrão de uso ao longo da semana:**

     Usuários casuais tendem a usar mais o serviço nos finais de semana, com destaque para os sábados. Já os membros têm um comportamento mais constante, utilizando mais durante os dias úteis, o que indica um uso mais frequente no dia a dia.

* **Duração das viagens:**

    As viagens dos usuários casuais são, em média, bem mais longas (cerca de 28 minutos). Em contraste, os membros fazem trajetos mais curtos (cerca de 13 minutos), o que sugere um uso mais prático e recorrente.

* **Horário de uso:**

    Entre os membros, é possível ver picos claros nos horários de 8h–9h e 17h–18h, típicos de deslocamentos como ida e volta do trabalho. Já os usuários casuais utilizam mais no período da tarde e não seguem tanto esse padrão de horários de pico.

* **Comportamento ao longo do tempo:**

    O número de viagens varia ao longo dos meses, com quedas em períodos mais frios e aumento nos mais quentes. Essa variação afeta mais os usuários casuais, enquanto os membros mantêm um uso mais estável.
  
O que isso indica:

  Para aumentar a conversão, o foco deve ser em transformar o uso ocasional em um hábito e garantir que o usuário perceba valor contínuo no serviço.

 ## Dashboard Interativo:
 
  O dashboard apresenta as principais métricas e indicadores de uso, permitindo uma análise clara do comportamento dos usuários e da performance do serviço.
  
  <img width="1117" height="634" alt="Image" src="https://github.com/user-attachments/assets/11e1ac16-f55e-4fda-892b-3f9855783c69" />
  
 ## [Confira aqui o dashboard do projeto.](https://app.powerbi.com/view?r=eyJrIjoiZTM0ZjZjYzUtM2UyOS00ODJiLTg3NTktNDE2NjZkMDc3ZjhkIiwidCI6ImE2MDk0MDk0LWY1YjEtNDU3Yi1hODE3LTM2ZmNlOTFhYTQ3NSJ9)


 ## Recomendações do negócio

O comportamento dos usuários revela oportunidades claras de conversão ao transformar o uso ocasional em hábito recorrente.
<p align="justify">
  <strong>1. Converter uso de fim de semana em recorrência:</strong> Usuários casuais concentram o uso aos finais de semana, especialmente aos sábados, enquanto membros utilizam ao longo da semana. Isso indica que o valor é percebido inicialmente no contexto de lazer, mas não evolui para rotina. A ação recomendada é ativar campanhas logo após o uso, como no domingo à noite ou na segunda-feira, com ofertas de upgrade para planos semanais ou mensais. O objetivo é aumentar a taxa de retorno nos dias úteis e acelerar a conversão para membros.
</p>

<p align="justify">
  <strong>2. Reduzir a barreira entre uso casual e assinatura:</strong> Usuários casuais apresentam alta duração média, próxima de 28 minutos, indicando engajamento relevante, mas ainda sem compromisso com o plano. A criação de opções intermediárias, como passes semanais ou pacotes de minutos, funciona como etapa de transição antes da assinatura completa. O objetivo é reduzir a fricção na decisão e aumentar a taxa de conversão de forma progressiva.
</p>

<p align="justify">
  <strong>3. Induzir comportamento de rotina:</strong> Membros apresentam picos claros nos horários de deslocamento, como entre 8h e 9h e entre 17h e 18h, enquanto usuários casuais não seguem esse padrão. Oferecer incentivos direcionados para uso nesses horários, como créditos ou benefícios em dias úteis, pode estimular a mudança de comportamento. O objetivo é incorporar o serviço na rotina diária e aumentar a frequência de uso.
</p>

<p align="justify">
  <strong>4. Mitigar impacto da sazonalidade:</strong> O uso de usuários casuais apresenta variação significativa ao longo dos meses, com queda em períodos mais frios. A criação de campanhas sazonais específicas, com incentivos temporários em momentos de baixa demanda, pode ajudar a manter o engajamento. O objetivo é reduzir a volatilidade e tornar o uso mais estável ao longo do ano.
</p>

<p align="justify">
  <strong>5. Reposicionar o serviço como solução de mobilidade:</strong> Os dados indicam que usuários casuais utilizam o serviço de forma mais recreativa, enquanto membros o utilizam como meio de transporte. Reforçar uma comunicação focada em economia, praticidade e uso no dia a dia, como deslocamentos para trabalho ou estudo, pode alterar essa percepção. O objetivo é ampliar o uso funcional do serviço e fortalecer seu papel na rotina do usuário.
</p>


##  Ferramentas Utilizadas

* **Excel:**
  Utilizado para verificações iniciais da estrutura dos dados e criação de colunas derivadas.

* **Google BigQuery (SQL):**
  Principal ferramenta para limpeza, transformação, mesclagem e análise dos dados.

* **Power BI:**
  Utilizado para visualização dos dados e desenvolvimento de dashboards interativos.
  
## O que foi desenvolvido neste projeto


1. Exploração inicial dos dados em Excel para entendimento da estrutura, identificação de inconsistências e definição da estratégia de análise

2. Ingestão e armazenamento de dados no BigQuery, consolidando 12 meses de dados brutos em um ambiente escalável

3. Criação de pipeline de transformação de dados utilizando SQL no BigQuery:

   * Unificação de múltiplas tabelas mensais com `UNION ALL`
   * Criação de tabela analítica (`CREATE OR REPLACE TABLE`)
   * Engenharia de atributos (feature engineering), como cálculo da duração das viagens com `TIMESTAMP_DIFF`
   * Aplicação de regras de limpeza (remoção de registros inválidos, como durações negativas)

4. Análise exploratória de dados (EDA) com SQL, utilizando:

   * Funções de agregação (`COUNT`, `AVG`)
   * Agrupamentos (`GROUP BY`)
   * Extração de variáveis temporais (`EXTRACT` de hora, dia, mês)
   * Identificação de padrões de comportamento por tipo de usuário (member vs casual)

5. Construção de queries analíticas para geração de insights de negócio, incluindo:

   * Uso por dia da semana
   * Duração média das viagens
   * Volume total de uso
   * Distribuição por horário
   * Preferência por tipo de bicicleta
   * Análise de sazonalidade (tendência mensal)

6. Desenvolvimento de dashboard no Power BI com foco em análise de negócio:

   * Definição e acompanhamento de KPIs (volume de viagens, duração média, distribuição de usuários)
   * Criação de medidas utilizando DAX, incluindo uso da função `CALCULATE` para segmentação de métricas (ex: média de duração de viagens para usuários casuais)
   * Construção de visualizações interativas e comparativas entre segmentos de usuários
   * Organização do dashboard para facilitar a leitura e apoiar a tomada de decisão

7. Tradução dos dados em insights acionáveis, conectando padrões de uso a estratégias de marketing e conversão de usuários


