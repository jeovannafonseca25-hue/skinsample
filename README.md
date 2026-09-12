# SKIN App

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Android Studio](https://img.shields.io/badge/Android_Studio-3DDC84?style=for-the-badge&logo=android-studio&logoColor=white)

# SKIN - Catálogo de Design System

Este projeto é um aplicativo **Showcase (Catálogo)** desenvolvido em Flutter para demonstrar a implementação de um Design System focado em usabilidade, modularização e padrões arquiteturais.


##  Arquitetura Exigida (MVVM + Factory Pattern)


1. **View Model (`_view_model.dart`):** Gerencia estritamente os dados e propriedades (textos, booleanos, callbacks) sem depender de bibliotecas visuais.
2. **Component (`_component.dart`):** Um Widget *Stateless* burro, que apenas consome o View Model para desenhar a interface na tela.
3. **Factory (`_factory.dart`):** A "Fábrica" que orquestra a injeção de dependências, criando o View Model e entregando-o pronto para o Component.

### Estrutura de Diretórios
```text
lib/
├── components/
│   ├── action_button/
│   ├── common/ (List Items, Modals, Quick Access)
│   ├── input_field/
│   └── tab_bar/
├── screens/
│   ├── analyzing_screen.dart
│   ├── camera_screen.dart
│   ├── sample_action_button_screen.dart
│   ├── sample_list_items_screen.dart
│   ├── sample_screen.dart (Menu Principal)
│   └── sample_tab_bar_screen.dart
└── main.dart
