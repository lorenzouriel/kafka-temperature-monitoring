# Kafka Temperature Monitoring System

This project consists of a temperature monitoring system, using Kafka as a data pipeline, a PostgreSQL database for storage and Streamlit for dashboard display. The system is divided into three main components: `producer`, `consumer` and the `dashboard`.


### Installation

**1. Clone the repository:**
```bash
git clone https://github.com/seu-usuario/kafka-temperature-monitoring.git
cd kafka-temperature-monitoring
```

**2. Install dependencies:**
```bash
pip install -r requirements.txt
```

**3. Install dependencies:**
```bash
BOOTSTRAP_SERVERS=your_bootstrap_server
SASL_USERNAME=your_username
SASL_PASSWORD=your_password
TOPIC_NAME=your-topic
PRODUCER_ID=producer-id
```

**4. Up the Containers:**
```bash
docker-compose up -d
```

***NOTE: Your topic on confluent must already be created and configured***

### Components

#### Producer
`producer.py` generates mock temperature data using the `Faker` library and sends it to a Kafka topic.

#### Consumer
`consumer.py` consumes the data from Kafka, denormalizes the messages and saves it to the PostgreSQL database.

**Database Configuration:**
Update the `db_url` in the code with your database credentials.

#### Dashboard
`dashboard.py` uses Streamlit to display data in a table and on an interactive map.

After starting, access the dashboard at `http://localhost:8501`.

### Data Flow
1. `producer.py` sends messages to the `monitoring-refrigerator-project` Kafka topic.
2. `consumer.py` consumes the messages and stores the data in the PostgreSQL database.
3. `dashboard.py` displays data in real time.

### Technologies Used
- **Kafka:** Message pipeline management.
- **PostgreSQL:** Persistent data storage.
- **Streamlit:** Interactive visual interface.
- **Faker:** Generation of fictitious data.
- **Plotly:** Data visualization on the map.

> PORTUGUESE

# Sistema de Monitoramento de Temperatura Kafka

Este projeto consiste em um sistema de monitoramento de temperatura, usando Kafka como pipeline de dados, um banco de dados PostgreSQL para armazenamento e Streamlit para exibição em dashboard. O sistema é dividido em três componentes principais: `producer`, `consumer` e o `dashboard`.

### Instalação

**1. Clone o repositório:**
```bash
git clone https://github.com/seu-usuario/kafka-temperature-monitoring.git
cd kafka-temperature-monitoring
```

**2. Instale as dependências:**
```bash
pip install -r requirements.txt
```

**3. Instale as dependências:**
```bash
BOOTSTRAP_SERVERS=seu_bootstrap_server
SASL_USERNAME=seu_usuario
SASL_PASSWORD=sua_senha
TOPIC_NAME=seu-topico
PRODUCER_ID=producer-id
```

**4. Suba os Containers:**
```bash
docker-compose up -d
```

***OBS: O seu tópico no confluent já precisa estar criado e configurado***

### Componentes

#### Producer
O `producer.py` gera dados de temperatura fictícios usando a biblioteca `Faker` e os envia para um tópico Kafka.

#### Consumer
O `consumer.py` consome os dados do Kafka, desnormaliza as mensagens e salva no banco de dados PostgreSQL.

**Configuração do Banco de Dados:**
Atualize o `db_url` no código com as credenciais do seu banco de dados.

#### Dashboard
O `dashboard.py` utiliza Streamlit para exibir os dados em uma tabela e em um mapa interativo.

Após iniciar, acesse o dashboard em `http://localhost:8501`.

### Fluxo de Dados
1. O `producer.py` envia mensagens para o tópico Kafka `monitoring-refrigerator-project`.
2. O `consumer.py` consome as mensagens e armazena os dados no banco de dados PostgreSQL.
3. O `dashboard.py` exibe os dados em tempo real.

### Tecnologias Utilizadas
- **Kafka:** Gerenciamento do pipeline de mensagens.
- **PostgreSQL:** Armazenamento persistente dos dados.
- **Streamlit:** Interface visual interativa.
- **Faker:** Geração de dados fictícios.
- **Plotly:** Visualização de dados no mapa.