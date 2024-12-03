# Sistema de Reservas de Hotel

## Descrição
Este projeto é um sistema de reservas de hotel desenvolvido utilizando **Spring Boot**. Ele permite gerenciar reservas de forma segura e eficiente, integrando ferramentas como Swagger para documentação, cache para otimização de desempenho, e utilização de **JWT (JSON Web Token)** para segurança das operações.

---

## Funcionalidades
- Cadastro de hóspedes
- Gerenciamento de quartos
- Realização de reservas
- Consulta de disponibilidade de quartos
- Segurança com autenticação JWT
- Documentação da API com Swagger
- Utilização de cache para respostas de consultas frequentes

---

## Tecnologias Utilizadas

### Backend
- **Spring Boot**: Framework para desenvolvimento backend em Java.
- **Spring Security**: Implementação de segurança utilizando JWT.
- **Spring Cache**: Para otimização de desempenho em consultas frequentes.
- **Swagger**: Para documentação e exploração da API.
- **MySQL 8**: Banco de dados relacional para armazenamento das informações.

### Outras ferramentas
- **Flyway**: Para controle e migrações do banco de dados.
- **Postman**: Testes das APIs.
- **Resilience4j**: Circuit breaker para melhor disponibilidade em integrações externas (se aplicável).

---

## Como Executar o Projeto

### Requisitos Pré-Requisitos

- Java 17 ou superior
- MySQL 8
- Maven

### Configuração do Banco de Dados
1. Certifique-se de que o MySQL esteja instalado e rodando.
2. Crie um banco de dados chamado `hotel`:
   ```sql
   CREATE DATABASE hotel;
   ```
3. Atualize o arquivo `application.properties` ou `application.yml` com as credenciais do seu banco de dados:
   ```properties
   spring.datasource.url=jdbc:mysql://localhost:3306/reservas_hotel
   spring.datasource.username=seu_usuario
   spring.datasource.password=sua_senha
   spring.jpa.hibernate.ddl-auto=update
   ```

### Execução da Aplicação
1. Clone este repositório:
   ```bash
   git clone https://github.com/Diego34ra/hotel.git
   ```
2. Navegue até o diretório do projeto:
   ```bash
   cd reservas-hotel
   ```
3. Compile e execute o projeto:
   ```bash
   mvn spring-boot:run
   ```

4. Acesse o Swagger para explorar a API:
   ```
   http://localhost:8080/swagger-ui/index.html
   ```

---

## Estrutura da API
A documentação da API está disponível através do Swagger e inclui endpoints para:
- Cadastro e autenticação de usuários.
- Consulta e gerenciamento de quartos.
- Realização e cancelamento de reservas.

---

## Contribuição
Fique à vontade para contribuir com o projeto enviando pull requests ou relatando problemas na página de issues do repositório.
