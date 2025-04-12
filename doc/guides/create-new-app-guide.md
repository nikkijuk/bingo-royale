# Create new app guide

This guide will walk you through the process of creating a new app using the `very_good_cli`.

## Guiding principles

- monorepo structure
- supports multiple apps and packages
- uses very_good_cli for creating apps and packages
- uses melos for managing monorepo

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

## Create directories

Create apps and packages directories in the root of the monorepo.

```sh
cd <repository_root>
mkdir apps
mkdir packages
```
Create a new directory for your app.

Note: it is not necessary to create app directory manually 
as vgv cli will create it for you,
but this process shows the structure of the monorepo.

```sh
cd <repository_root>
cd apps
mkdir <app_name>
```

Resulting directory structure

```sh
<repository_root>
├── apps
│   └── <app_name>
└── packages
```

## Create a skeleton of new flutter app

Create a skeleton of new flutter app using the `very_good_cli`.

Parameters of the command are:

- <app_name> - name of the app, defines name of the directory where the app will be created
- --desc <app_description> - description of the app, just text for package description
- --org <org_domain> - domain of the organization that owns the app

```sh
very_good create flutter_app <app_name> --desc "<app_description>" --org "<org_domain>"
```
This command will create a new app with the specified name and description.

NOTE: org_domain should be the domain of the organization that owns the app. (CHECK THIS)
This information is used on ios build scripts and is propably hard to change later.

## Fix dependencies

After creating a new app pubspec.yaml file may contain dependencies that are not needed
or are not up to date. Remove unnecessary dependencies and update the ones that are needed.

See that you have `pubspec.yaml` file with following content:

```yaml
environment:
  sdk: "^3.2.0"
```

If supported dart version is lower than installed with flutter,
you can update dart version (sdk) with following command:

```sh
flutter upgrade
```

## Run generated seed app in web browser

This should work if you have flutter and chrome installed.

Parameters of the command are:

- run - run the app
- <dart main class> - main class of the app
- -d <browser> - browser (device) to use for running the app

```sh
cd <app_name>
flutter run lib/main_development.dart -d chrome
```

## Add implementation

At the root of your app you should have the following directory structure:

```
<package_name>
├── lib
│   ├── app
│   ├── l10n
│   ├── counter
│   ├── bootstrap.dart
│   ├── main_development.dart
│   ├── main_production.dart
│   └── main_staging.dart
├── pubspec.yaml
└── README.md
```

Generated files come from [very good core](https://github.com/VeryGoodOpenSource/very_good_core) template.

You should add your app implementation to the `lib` directory.

## Add files to git

Add files to git with following command:

```sh
cd <repository_root>
git add .
git commit -m "initial commit"
git push
```sh

At generated app there is git ignore file that prevent unwanted files from being committed.

## Adjusting configurations

Some generated configuration artifacts might not be useful.

Feel free to delete if not needed:

- .gitignore file if you have one in monorepo root already
- .github directory if you are not using github or have one in monorepo root already
- analysis_options.yaml file if you have one in monorepo root already

## Configuring gitlab actions

There should be one gitlab workflow for each app.

configuration is at `.gitbub/workglows/<app-name>.yaml` file.

- build is triggered on every push or pull request at main branch
- very good workflows is used to build and test the app
- working directory is set to 'simplebingo'
- generated files are not included in the build
- code coverage target is relaxed from 100% to give more flexibility to developers
- spell checker is disabled / commented out

```yaml
name: simplebingo

concurrency:
  group: $-$
  cancel-in-progress: true

on:
  push:
    branches:
      - main
  pull_request:
    branches:
      - main

jobs:
  semantic-pull-request:
    uses: VeryGoodOpenSource/very_good_workflows/.github/workflows/semantic_pull_request.yml@v1

  build:
    uses: VeryGoodOpenSource/very_good_workflows/.github/workflows/flutter_package.yml@v1
    with:
      min_coverage: 80
      flutter_channel: stable
      coverage_excludes: "*.g.dart *.freezed.dart" # defaults to "" (none)
      working_directory: apps/simplebingo # defaults to "." (the top-level directory)

# spell checker is commented out as typos are not highest prio now
#
#  spell-check:
#    uses: VeryGoodOpenSource/very_good_workflows/.github/workflows/spell_check.yml@v1#
#    with:
#      includes: |
#        **/*.md
#      modified_files_only: false
```

## Removing generated code

- counter directory is example implementation of a counter app
- if you remove this you need to adjust apps structure

## Adding localizations

To add localizations to your app, add following dependencies to your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter
  intl: any
  ```     

Intl version depends on the Flutter version you are using, so we can leave it open (any resolves highest compatible package).

See that you have at your app root `l10n.yaml` file with following content:

```yaml
arb-dir: lib/l10n
template-arb-file: app_en.arb
output-localization-file: app_localizations.dart
output-class: AppLocalizations
synthetic-package: false
nullable-getter: false
format: true
header: // coverage:ignore-file
```

and make sure you have `lib/l10n` directory with `app_en.arb` file:

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

analysis_options.yaml should be in the root of your app if linting rules are app specific.

make sure you have `very_good_analysis` in your `dev_dependencies`:

```yaml
dev_dependencies:
  very_good_analysis: ^5.1.0
```

In case you are using monorepo it might be that there should be analysis_options.yaml 
in the root of the monorepo in which case analysis settings are shared between all apps & packages.

Linting can be run with following command:

```sh
melos analyze
```

Analysis will run for all apps & packages in the monorepo using melos internal analyze command.
No script is needed in the melos.yaml.

NOTE: in most cases you want to remove generated analysis_options.yaml file from the app root.

## Assets

If you need assets just create `assets` directory in your app root and add assets there.

Make sure assets are included in your `pubspec.yaml`:

```yaml
flutter:
  assets:
    - assets/
```

In case you are using monorepo it might be that there should be assets directory
in the root of the monorepo in which case assets are shared between all apps & packages.

## Tests

Tests are located in the `test` directory.

To run all unit tests use:

```sh
melos test
```

Test script should be at melos.yaml file.

## links

- [very_good_cli](https://pub.dev/packages/very_good_cli)
- [very good core](https://github.com/VeryGoodOpenSource/very_good_core)
- [melos](https://pub.dev/packages/melos)
- [Dart SDK](https://dart.dev/get-dart)
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
