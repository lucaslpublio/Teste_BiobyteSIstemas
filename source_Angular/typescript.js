import { Component } from '@angular/core';

@Component({
  selector: 'app-cadastro',
  templateUrl: './cadastro.component.html',
  styleUrls: ['./cadastro.component.css']
})
export class CadastroComponent {
  cadastro = {
    nome: '',
    sobrenome: '',
    usuario: '',
    senha: '',
    confirmacaoSenha: ''
  };

  submitForm() {
    console.log('Dados do formulário:', this.cadastro);
    // Aqui você pode adicionar a lógica para enviar os dados do formulário para o backend
  }
}
