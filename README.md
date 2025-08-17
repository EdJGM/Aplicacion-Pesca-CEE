# Aplicación de Pesca CEE

Una aplicación móvil desarrollada en Flutter para el control y monitoreo de límites de pesca en la Comunidad Económica Europea (CEE).

## 📱 Descripción del Proyecto

Esta aplicación permite a los pescadores registrar y controlar su captura diaria, asegurándose de no superar los límites establecidos por las regulaciones de pesca de la CEE. La aplicación cuenta con una interfaz intuitiva que facilita el registro de capturas y proporciona alertas cuando se aproxima o supera el límite permitido.

## ✨ Características Principales

- **Pantalla de Bienvenida**: Interfaz de inicio con diseño atractivo y navegación sencilla
- **Establecimiento de Límites**: Permite configurar el límite máximo de pesca en kilogramos
- **Registro de Capturas**: Sistema para agregar el peso de cada captura realizada
- **Control en Tiempo Real**: Muestra el total acumulado y calcula automáticamente si se supera el límite
- **Alertas Visuales**: Notificaciones cuando se excede el límite establecido
- **Interfaz Responsiva**: Diseño adaptable con gradientes y elementos visuales modernos

## 🎨 Diseño y UI

- **Tema de Colores**: Paleta de azules con gradientes que evocan el ambiente marino
- **Iconografía**: Iconos relacionados con la pesca y actividades marítimas
- **Tipografía**: Textos claros y legibles con estilos diferenciados para estados de alerta
- **Navegación**: Flujo intuitivo entre pantallas con botones estilizados

## 🏗️ Arquitectura del Proyecto

```
lib/
├── main.dart                     # Punto de entrada de la aplicación
├── Logica/
│   └── pesca_logica.dart        # Lógica de negocio para el control de pesca
└── Pantallas/
    ├── bienvenida_pantalla.dart # Pantalla de bienvenida
    └── principal_pantalla.dart  # Pantalla principal de control de pesca
```

### Componentes Principales

- **PescaLogica**: Clase que maneja la lógica de control de límites y cálculo de totales
- **BienvenidaPantalla**: Widget de pantalla inicial con navegación
- **PescarPantalla**: Pantalla principal con formularios de entrada y control de estado

## 🚀 Funcionalidades

1. **Configuración de Límite**: El usuario ingresa el límite máximo permitido en kg
2. **Registro de Capturas**: Añadir el peso de cada pesca realizada
3. **Monitoreo Continuo**: Visualización del total acumulado en tiempo real
4. **Detección de Excesos**: Alerta automática cuando se supera el límite
5. **Finalización de Jornada**: Opción para terminar el programa ingresando 0

## 🛠️ Tecnologías Utilizadas

- **Flutter**: Framework principal para desarrollo multiplataforma
- **Dart**: Lenguaje de programación
- **Material Design**: Sistema de diseño para la interfaz de usuario

## 📋 Requisitos del Sistema

- Flutter SDK ^3.5.4
- Dart SDK compatible
- Android Studio / VS Code
- Dispositivo Android/iOS o emulador

## 🚀 Instalación y Ejecución

1. Clona el repositorio:
```bash
git clone [URL_DEL_REPOSITORIO]
```

2. Navega al directorio del proyecto:
```bash
cd examen_gallegos_edgar
```

3. Instala las dependencias:
```bash
flutter pub get
```

4. Ejecuta la aplicación:
```bash
flutter run
```

## 📱 Capturas de Pantalla

La aplicación incluye:
- Pantalla de bienvenida con diseño atractivo
- Formularios de entrada con validación
- Indicadores visuales de estado
- Alertas de límite superado

## 🎯 Casos de Uso

- **Pescadores Individuales**: Control personal de capturas diarias
- **Cooperativas de Pesca**: Monitoreo de límites por embarcación
- **Inspectores de Pesca**: Verificación de cumplimiento de regulaciones
- **Empresas Pesqueras**: Control de cuotas asignadas

## 📞 Contacto

**Desarrollador**: Edgar Gallegos  
**Proyecto**: Examen - Desarrollo de Aplicaciones Móviles  
**Institución**: Universidad - Periodo Octubre-Marzo 2025

---

## 📚 Recursos de Flutter

Para obtener ayuda con el desarrollo en Flutter, consulta:

- [Documentación oficial de Flutter](https://docs.flutter.dev/)
- [Lab: Escribe tu primera app Flutter](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Ejemplos útiles de Flutter](https://docs.flutter.dev/cookbook)
