# graphql_toolchain

This is a demo app that showcases the use of GraphQL toolchain in Flutter.

## Goal
- generate dart types and classes which covers GraphQL API queries
- local schema update
- autocomplete and validation of GraphQL queries
- ability to work with API without waiting of backend implementation

## Tooling
- [graphql-flutter](https://pub.dev/packages/graphql_flutter)
- [artemis](https://pub.dev/packages/artemis)
- [graphql-faker](https://github.com/APIs-guru/graphql-faker)

## IDE & plugins
- [Android Studio](https://developer.android.com/studio) or [VSCode](https://code.visualstudio.com/)
- [JS Graphql](https://jimkyndemeyer.github.io/js-graphql-intellij-plugin/docs/getting-started) for Android Studio
- [Prisma](https://jimkyndemeyer.github.io/js-graphql-intellij-plugin/docs/getting-started) for VSCode

## Outcome
I’m happy to find that there are a lot of positive changes in GraphQL ecosystem for flutter.  
As a result we get fully functioning and pretty stable approach to work with GraphQL using  
full power of types and autocompletion

## Getting Started

1. Start install `graphql-faker`

        npm install -g graphql-faker

    or

        yarn global add graphql-faker

2. Start local `graphql` server `graphql-faker fake.schema --open`
3. Dart types update

        pub run build_runner build

   or

        flutter pub run build_runner build

4. Start app

        flutter run
