# Documentación del Proyecto Flutter

## Introducción
Este proyecto de Flutter incluye varias pantallas y funcionalidades para crear una aplicación interactiva.

## Estructura del Proyecto
El proyecto se compone de las siguientes clases y pantallas:

1. **MainApp**: Clase principal que inicia la aplicación.
2. **SettingsScreen**: Pantalla para ajustes de la aplicación.
3. **ShowImagesScreen**: Muestra imágenes en secuencia.
4. **ChooseImagesScreen**: Pantalla para seleccionar imágenes.
5. **YourScoreScreen**: Muestra los resultados y puntuaciones.
6. **ScoreRecordScreen**: Presenta un registro histórico de puntuaciones.
7. **ScoreRecordTableView**: Vista de tabla para mostrar las puntuaciones.
8. **ApiCalls**: Clase para realizar llamadas a la API.
9. **SaveLoad**: Manejo de almacenamiento y carga de preferencias.
10. **Navigation**: Navegación entre pantallas.
11. **GridViewBuilder**: Construcción de una vista de cuadrícula.
12. **Time**: Manejo del tiempo y temporizadores.

## Ejemplos de Código

### MainApp
Clase principal de la aplicación Flutter.

```dart
import 'package:flutter/material.dart';
// ... otros imports ...

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  currentSettings = await SaveLoad.loadSettings();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  // ... implementación de MainApp ...
}


## Instalación

Para instalar este proyecto, sigue estos pasos:

```bash
git clone https://github.com/tu-usuario/mi-proyecto-flutter.git
cd mi-proyecto-flutter
flutter pub get
