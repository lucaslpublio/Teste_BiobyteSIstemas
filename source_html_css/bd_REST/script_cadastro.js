// Importando as dependências
const express = require('express');

// Inicializando o Express
const app = express();
const porta = 3000; // Porta que o servidor irá escutar

// Configurando o middleware para permitir o uso de JSON no corpo das requisições
app.use(express.json());

// Rota para o cadastro de conta
app.post('/conta/cadastrar', (req, res) => {
    // Obtendo os dados do corpo da requisição
    const { nome, sobrenome, usuario, senha } = req.body;

    // Verificando se todos os campos foram fornecidos
    if (!nome || !sobrenome || !usuario || !senha) {
        return res.status(400).send('Todos os campos são obrigatórios.');
    }

    // Imprimindo os dados recebidos
    console.log('Dados de cadastro de conta recebidos:');
    console.log('Nome:', nome);
    console.log('Sobrenome:', sobrenome);
    console.log('Usuário:', usuario);
    console.log('Senha:', senha);

    // Respondendo com uma mensagem de confirmação
    res.status(201).send('Conta cadastrada.');
});

// Iniciando o servidor
app.listen(porta, () => {
    console.log(`Servidor rodando em http://localhost:${porta}`);
});