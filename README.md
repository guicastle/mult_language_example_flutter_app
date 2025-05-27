# 🌍 Flutter: Dynamic Language Switching with Stream and ARB

## 🎯 Objective

In this mini-project, you will learn how to:

* Create a multilingual Flutter application (Portuguese, English, and Spanish).
* Set up the `l10n` folder with `.arb` files for internationalization.
* Use a `Stream` to change the app language in real-time.
* Follow best practices in organization and development.

---

## ✅ What You Will Learn

### 1. **Internationalization with Flutter Localizations**

* Creating `.arb` files with translations.
* Configuring `l10n.yaml` for automatic code generation.
* Using `AppLocalizations.of(context)` to access translated strings.

**Example:**

```json
{
  "hello": "Olá!",
  "language": "Idioma"
}
```

The above string will be accessed in the code as:

```dart
Text(AppLocalizations.of(context)!.hello)
```

---

### 2. **State Management with Stream**

* Create a `StreamController` to manage language changes.
* Automatically update the UI when the language changes.

**Example:**

```dart
localeProvider.changeLocale(Locale('es'));
```

The `MaterialApp` will be rebuilt with the new language.

---

### 3. **File Organization**

* `l10n/l10n.dart`: list of supported locales.
* `l10n/l10n.yaml`: auto-generation configuration.
* `l10n/app_en.arb`, `app_pt.arb`, `app_es.arb`: resource files.
* `main.dart`: main application configuration.

---

## 🛠️ Technologies and Tools

* **Flutter**: development framework.
* **flutter\_localizations**: package for multilingual support.
* **Stream**: reactive state management.

---

## 🚀 How It Works

1️⃣ The app starts in a default language.

2️⃣ The user can switch languages by clicking a button.

3️⃣ The `StreamBuilder` listens for changes and automatically updates the UI.

**Visual Example:**

| Button Pressed | Displayed Text |
| -------------- | -------------- |
| PT             | Olá!           |
| EN             | Hello!         |
| ES             | ¡Hola!         |

---

## 📦 Important Commands

* **Generate localization files:**

```bash
flutter gen-l10n
```

* **Add dependencies in pubspec.yaml:**

```yaml
dependencies:
  flutter_localizations:
    sdk: flutter
```

* **Enable automatic generation:**

```yaml
flutter:
  generate: true
```

---

## ✅ Expected Result

A multilingual Flutter application with real-time language switching via buttons, following best practices in internationalization and state management.

---

## 💡 Benefits of Learning This Project

* Practical understanding of Flutter internationalization.
* Real application of Streams for state management.
* Structuring Flutter projects with scalability and maintainability in mind.

---

=========================================


# 🌍 Flutter: Troca de Idioma Dinâmica com Stream e ARB

## 🎯 Objetivo

Neste mini-projeto, vamos aprender a:

* Criar uma aplicação Flutter multilíngue (Português, Inglês e Espanhol).
* Configurar a pasta `l10n` com arquivos `.arb` para internacionalização.
* Utilizar `Stream` para alterar o idioma da aplicação em tempo real.
* Seguir boas práticas de organização e desenvolvimento.

---

## ✅ O que será ensinado

### 1. **Internacionalização com Flutter Localizations**

* Criação de arquivos `.arb` com traduções.
* Configuração do `l10n.yaml` para geração automática de código.
* Uso do `AppLocalizations.of(context)` para acessar strings traduzidas.

**Exemplo:**

```json
{
  "hello": "Olá!",
  "language": "Idioma"
}
```

A string acima será acessada no código via:

```dart
Text(AppLocalizations.of(context)!.hello)
```

---

### 2. **Gerenciamento de Estado com Stream**

* Criar uma `StreamController` para gerenciar alterações de idioma.
* Atualizar a interface automaticamente ao trocar o idioma.

**Exemplo:**

```dart
localeProvider.changeLocale(Locale('es'));
```

O `MaterialApp` será reconstruído com o novo idioma.

---

### 3. **Organização de Arquivos**

* `l10n/l10n.dart`: lista de idiomas suportados.
* `l10n/l10n.yaml`: configuração da geração automática.
* `l10n/app_en.arb`, `app_pt.arb`, `app_es.arb`: arquivos de recursos.
* `main.dart`: configuração principal da aplicação.

---

## 🛠️ Tecnologias e ferramentas

* **Flutter**: framework para o desenvolvimento.
* **flutter\_localizations**: pacote para suporte a múltiplos idiomas.
* **Stream**: gerenciamento de estado reativo.

---

## 🚀 Como funciona

1️⃣ O app inicia em um idioma padrão.

2️⃣ O usuário pode trocar de idioma clicando em um botão.

3️⃣ O `StreamBuilder` escuta as alterações e atualiza a interface automaticamente.

**Exemplo visual:**

| Botão Pressionado | Texto Exibido |
| ----------------- | ------------- |
| PT                | Olá!          |
| EN                | Hello!        |
| ES                | ¡Hola!        |

---

## 📦 Comandos importantes

* **Gerar arquivos de localização:**

```bash
flutter gen-l10n
```

* **Adicionar dependências no pubspec.yaml:**

```yaml
dependencies:
  flutter_localizations:
    sdk: flutter
```

* **Ativar geração automática:**

```yaml
flutter:
  generate: true
```

---

## ✅ Resultado esperado

Uma aplicação Flutter multilíngue, com troca de idioma em tempo real através de botões, seguindo as melhores práticas de internacionalização e gerenciamento de estado.

---

## 💡 Benefícios de aprender este projeto

* Entendimento prático de internacionalização em Flutter.
* Aplicação real de Streams para gerenciamento de estado.
* Estruturação de projetos Flutter com foco em escalabilidade e manutenção.

---