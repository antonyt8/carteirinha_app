<<<<<<< HEAD
# Carteirinha App

Um aplicativo Flutter para escanear e validar QR codes de carteirinhas.

## Descrição

O **Carteirinha App** é um aplicativo desenvolvido em Flutter que permite escanear QR codes de carteirinhas e validar suas informações. Ele utiliza o plugin `barcode_scan2` para a funcionalidade de escaneamento e é compatível com dispositivos Android e iOS.

## Funcionalidades

- Escanear QR codes de carteirinhas.
- Exibir o conteúdo do QR code escaneado.
- Interface simples e intuitiva.

## Pré-requisitos

Antes de começar, certifique-se de que você tem o seguinte instalado:

- **Flutter**: Versão 3.0 ou superior.
- **Dart**: Versão 2.17 ou superior.
- **Android Studio** ou **VS Code**: Para desenvolvimento e execução do projeto.
- **Dispositivo físico** ou **emulador**: Para testar o aplicativo.

## Como Executar o Projeto

Siga os passos abaixo para configurar e executar o projeto:

1. **Clone o repositório**:
   ```bash
   git clone https://github.com/seu-usuario/carteirinha-app.git
   cd carteirinha-app
   ```

2. **Instale as dependências**:
   ```bash
   flutter pub get
   ```

3. **Execute o aplicativo**:
   ```bash
   flutter run
   ```

4. **Teste no dispositivo**:
   - Conecte um dispositivo físico ou inicie um emulador.
   - O aplicativo será instalado e executado automaticamente.

## Estrutura do Projeto

Aqui está uma visão geral da estrutura do projeto:

```
lib/
├── main.dart              # Ponto de entrada do aplicativo
├── screens/
│   ├── home_screen.dart   # Tela principal
│   ├── login_screen.dart  # Tela de login
│   └── validacao_screen.dart # Tela de validação de QR code
├── widgets/               # Widgets reutilizáveis
└── utils/                 # Utilitários e helpers
```

## Dependências

O projeto utiliza as seguintes dependências:

- **`barcode_scan2`**: Para escanear QR codes.
- **`flutter/material.dart`**: Para a interface do usuário.
- **`flutter/services.dart`**: Para funcionalidades específicas do Flutter.

Para ver todas as dependências, consulte o arquivo `pubspec.yaml`.

## Capturas de Tela

Aqui estão algumas capturas de tela do aplicativo:

| Tela de Login | Tela de Validação |
|---------------|-------------------|
| <img src="screenshots/login.png" width="200"> | <img src="screenshots/validacao.png" width="200"> |

## Como Contribuir

Se você deseja contribuir para este projeto, siga os passos abaixo:

1. Faça um fork do repositório.
2. Crie uma nova branch com sua feature ou correção:
   ```bash
   git checkout -b minha-feature
   ```
3. Faça commit das suas alterações:
   ```bash
   git commit -m "Adiciona nova funcionalidade"
   ```
4. Envie as alterações para o repositório remoto:
   ```bash
   git push origin minha-feature
   ```
5. Abra um pull request no repositório original.

## Licença

Este projeto está licenciado sob a licença MIT. Consulte o arquivo [LICENSE](LICENSE) para mais detalhes.
=======
# carteirinha_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
>>>>>>> 563d256 (Primeiro commit)
