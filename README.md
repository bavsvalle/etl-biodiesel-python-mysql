![Python](https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-150458?logo=pandas&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-005C84?logo=mysql&logoColor=white)
![Google Colab](https://img.shields.io/badge/Colab-F9AB00?logo=googlecolab&logoColor=white)
![ETL Pipeline](https://img.shields.io/badge/ETL-Pipeline-blue)
![Dados Abertos](https://img.shields.io/badge/Dados%20Abertos-Gov.br-0A6DBA)

# ETL Biodiesel - Brasil

Este projeto tem como objetivo analisar as **Matérias-Primas utilizadas na Produção de Biodiesel no Brasil**, a partir de dados abertos do [Governo Federal](https://dados.gov.br/home)

## 📊 Etapas do Projeto
1. **Coleta dos Dados**  
   - Fonte: [Painéis de Produção de Etanol e de Biodiesel](https://dados.gov.br/dados/conjuntos-dados/paineis-de-producao-de-etanol-e-de-biodiesel)
      - Arquivo: Matéria-Prima utilizadas na Produção de Biodiesel (CSV)
   
2. **Tratamento (ETL) com Python**  
   - Limpeza e padronização (remoção de acentos com *Unidecode*, ajuste de datas e nomes de colunas, entre outros) 
   - Manipulação e transformação de dados com **pandas**  
   - Uso do **Google Colab** para processamento

3. **Armazenamento em Banco de Dados (MySQL)**  
   - Criação de tabelas normalizadas
   - Importação dos dados tratados via scripts SQL

## 🗂️ Estrutura do Repositório

      etl-biodiesel-python-mysql/  
      │
      ├── data/ # Arquivos de dados brutos (CSV, Excel, etc.)  
      │ └── biodiesel-materia-prima.csv  
      │  
      ├── notebooks/ # Notebooks Jupyter para análise e testes  
      │ └── projeto_mp_biodiesel.ipynb  
      │  
      ├── sql/ # Scripts SQL para criar e popular tabelas  
      │ ├── 01_create_tables.sql  
      │ ├── 02_insert_meses.sql  
      │ ├── 03_insert_anos.sql  
      │ ├── 04_insert_regioes.sql  
      │ ├── 05_insert_estados.sql  
      │ ├── 06_insert_produtos.sql  
      │ └── 07_insert_biocombustiveis.sql  
      │  
      └── README.md # Este arquivo

