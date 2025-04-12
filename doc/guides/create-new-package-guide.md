# Create new package guide

This guide will walk you through the process of creating a new package using the `very_good_cli`.

Flutter package will contain dependency to flutter. Packages that do not need flutter are simpler and have different command for creation.

## Prerequisites

Before you begin, ensure you have the following installed:

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [very_good_cli](https://pub.dev/packages/very_good_cli)
- [melos](https://pub.dev/packages/melos)

## install tools

vgv cli

```sh
dart pub global activate very_good_cli
```

and melos

```sh
dart pub global activate melos
```

## Create directory

Create a new directory for your package.

```sh
cd <package_root>
mkdir <package_name>
cd <package_name>
```

You can create a new package in the monorepo, in which case you 
should have `packages` directory in the root of the monorepo and create new package in it.

Resulting directory structure

```sh
<repository_root>
├── apps
│   └── <app_name>
└── packages
    └── <package_name>
```

## Create a skeleton of new flutter package

Create a skeleton of new flutter package using the `very_good_cli`.

```sh
very_good create flutter_package <package_name> --description "<package_description>"
```

This command will create a new package with the specified name and description.

## Create a skeleton of new dart package

Create a skeleton of new dart package using the `very_good_cli`.

```sh
very_good create dart_package <package_name> --description "<package_description>"
```

This command will create a new package with the specified name and description.

## Fix dependencies

After creating a new package pubspec.yaml file may contain dependencies that are not needed
or are not up to date. Remove unnecessary dependencies and update the ones that are needed.

Currently the `very_good_cli` creates a dart sdk dependency that might not match to one we are using. 
Downgrade it to the one that matches flutter sdk used.

Currently supported by Flutter SDK version is 3.16.9, so the dart sdk should be set to:

```yaml
environment:
  sdk: "^3.2.0"
```

## Add implementation

Add your package implementation to the `lib` directory.

At the root of your package, you should have the following directory structure:

```sh
<package_name>
├── lib
│   ├── src
│   │   ├── <package_name>.dart
│   │   └── .. other files
│   └── <package_name>.dart
├── pubspec.yaml
└── README.md
```

Generally, you should have your package implementation in the `lib/src` directory.
In the `lib` directory, you should have a file that exports your package implementation.

```dart
export 'src/<package_name>.dart';
```

To understand why it's good practice to use `lib/src` directory, see the following links:

- https://dart.dev/tools/linter-rules/implementation_imports
- https://dart.dev/tools/pub/package-layout#implementation-files

## Committing generated code

Some generated artifacts might not be useful.

Feel free to delete if not needed:

- .gitignore file if you have one in monorepo root
- .github directory if you are not using github
- analysis_options.yaml file if you have one in monorepo root

## Adding localizations (only for flutter packages)

To add localizations to your package, add following dependencies to your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter
  intl: any
  ```     

Intl version depends on the Flutter version you are using, so we can leave it open (any resolves highest compatible package).

See that you have at your package root `l10n.yaml` file with following content:

```yaml
arb-dir: lib/src/l10n
template-arb-file: messages_en.arb
output-localization-file: <package_dir>_localizations.dart
output-class: <PackageName>Localizations
synthetic-package: false
nullable-getter: false
format: true
header: // coverage:ignore-file
```

and make sure you have `lib/src/l10n` directory with `messages_en.arb` file:

```json
{
  "@@locale": "en",
  "title": "Title",
  "description": "Description"
}
```

then you can generate localizations with following command:

```sh
melos intl
```

Note that intl script should be at melos.yaml file.
There might be separate intl scripts for apps and packages in the monorepo 
as packages have src directory and apps don't.

## Linting

To ensure your package is following best practices, add the following to your `analysis_options.yaml`:

```yaml
include: package:very_good_analysis/analysis_options.yaml
```

analysis_options.yaml should be in the root of your package if linting rules are package specific.

make sure you have `very_good_analysis` in your `dev_dependencies`:

```yaml
dev_dependencies:
  very_good_analysis: ^5.1.0
```

In case you are using monorepo it might be that there should be analysis_options.yaml 
in the root of the monorepo in which case analysis settings are shared between all packages.

Linting can be run with following command:

```sh
melos analyze
```

Analysis will run for all packages in the monorepo using melos internal analyze command.
No script is needed in the melos.yaml.

NOTE: in most cases you want to remove generated analysis_options.yaml file from the package root.

## Assets

If you need assets just create `assets` directory in your package root and add assets there.

Make sure assets are included in your `pubspec.yaml`:

```yaml
flutter:
  assets:
    - assets/
```

In case you are using monorepo it might be that there should be assets directory
in the root of the monorepo in which case assets are shared between all packages.

## Tests

Tests are located in the `test` directory.

To run all unit tests use:

```sh
melos test
```

Test script should be at melos.yaml file.

## links

- [very_good_cli](https://pub.dev/packages/very_good_cli)
- [melos](https://pub.dev/packages/melos)
- [Dart SDK](https://dart.dev/get-dart)
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
