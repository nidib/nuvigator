// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_one_router.dart';

// **************************************************************************
// NuvigatorGenerator
// **************************************************************************

class SampleOneRoutes {
  static const screenOne = 'sampleOne/screenOne';

  static const screenTwo = 'sampleOne/screenTwo';
}

class ScreenOneArgs {
  ScreenOneArgs({@required this.testId, @required this.magicNumber});

  final String testId;

  final int magicNumber;

  static ScreenOneArgs parse(Map<String, Object> args) {
    if (args == null) {
      return ScreenOneArgs(testId: null, magicNumber: null);
    }
    return ScreenOneArgs(
      testId: args['testId'],
      magicNumber: args['magicNumber'] is String
          ? int.tryParse(args['magicNumber'])
          : args['magicNumber'],
    );
  }

  Map<String, Object> get toMap => {
        'testId': testId,
        'magicNumber': magicNumber,
      };
  static ScreenOneArgs of(BuildContext context) {
    final routeSettings = ModalRoute.of(context)?.settings;
    final nuvigator = Nuvigator.of(context);
    if (routeSettings?.name == SampleOneRoutes.screenOne) {
      final args = routeSettings?.arguments;
      if (args == null)
        throw FlutterError('ScreenOneArgs requires Route arguments');
      if (args is ScreenOneArgs) return args;
      if (args is Map<String, Object>) return parse(args);
    } else if (nuvigator != null) {
      return of(nuvigator.context);
    }
    return null;
  }
}

extension SampleOneRouterNavigation on SampleOneRouter {
  Future<String> toScreenOne({@required String testId, int magicNumber}) {
    return nuvigator.pushNamed<String>(
      SampleOneRoutes.screenOne,
      arguments: {
        'testId': testId,
        'magicNumber': magicNumber,
      },
    );
  }

  Future<String> pushReplacementToScreenOne<TO extends Object>(
      {@required String testId, int magicNumber, TO result}) {
    return nuvigator.pushReplacementNamed<String, TO>(
      SampleOneRoutes.screenOne,
      arguments: {
        'testId': testId,
        'magicNumber': magicNumber,
      },
      result: result,
    );
  }

  Future<String> pushAndRemoveUntilToScreenOne<TO extends Object>(
      {@required String testId,
      int magicNumber,
      @required RoutePredicate predicate}) {
    return nuvigator.pushNamedAndRemoveUntil<String>(
      SampleOneRoutes.screenOne,
      predicate,
      arguments: {
        'testId': testId,
        'magicNumber': magicNumber,
      },
    );
  }

  Future<String> popAndPushToScreenOne<TO extends Object>(
      {@required String testId, int magicNumber, TO result}) {
    return nuvigator.popAndPushNamed<String, TO>(
      SampleOneRoutes.screenOne,
      arguments: {
        'testId': testId,
        'magicNumber': magicNumber,
      },
      result: result,
    );
  }

  Future<int> toScreenTwo() {
    return nuvigator.pushNamed<int>(
      SampleOneRoutes.screenTwo,
    );
  }

  Future<int> pushReplacementToScreenTwo<TO extends Object>({TO result}) {
    return nuvigator.pushReplacementNamed<int, TO>(
      SampleOneRoutes.screenTwo,
      result: result,
    );
  }

  Future<int> pushAndRemoveUntilToScreenTwo<TO extends Object>(
      {@required RoutePredicate predicate}) {
    return nuvigator.pushNamedAndRemoveUntil<int>(
      SampleOneRoutes.screenTwo,
      predicate,
    );
  }

  Future<int> popAndPushToScreenTwo<TO extends Object>({TO result}) {
    return nuvigator.popAndPushNamed<int, TO>(
      SampleOneRoutes.screenTwo,
      result: result,
    );
  }
}

extension SampleOneRouterScreensAndRouters on SampleOneRouter {
  Map<RouteDef, ScreenRouteBuilder> get _$screensMap {
    return {
      RouteDef(SampleOneRoutes.screenOne, deepLink: '/screenOne/:testId'):
          (RouteSettings settings) {
        final args = ScreenOneArgs.parse(settings.arguments);
        return screenOne(testId: args.testId, magicNumber: args.magicNumber);
      },
      RouteDef(SampleOneRoutes.screenTwo): (RouteSettings settings) {
        return screenTwo();
      },
    };
  }
}
