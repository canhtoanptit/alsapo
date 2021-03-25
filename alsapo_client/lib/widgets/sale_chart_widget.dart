// ignore: import_of_legacy_library_into_null_safe
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class SaleChartWidget extends StatelessWidget {
  final List<charts.Series<OrdinalSales, DateTime>> seriesList =
      _createSampleData();
  final bool animate = false;

  @override
  Widget build(BuildContext context) {
    return new charts.TimeSeriesChart(
      seriesList,
      animate: animate,
      // Set the default renderer to a bar renderer.
      // This can also be one of the custom renderers of the time series chart.
      defaultRenderer: new charts.BarRendererConfig<DateTime>(),
      // It is recommended that default interactions be turned off if using bar
      // renderer, because the line point highlighter is the default for time
      // series chart.
      defaultInteractions: false,
      // If default interactions were removed, optionally add select nearest
      // and the domain highlighter that are typical for bar charts.
      behaviors: [new charts.SelectNearest(), new charts.DomainHighlighter()],
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<OrdinalSales, DateTime>> _createSampleData() {
    final data = [
      new OrdinalSales(new DateTime(2017, 9, 1), 5),
      new OrdinalSales(new DateTime(2017, 9, 2), 5),
      new OrdinalSales(new DateTime(2017, 9, 3), 25),
      new OrdinalSales(new DateTime(2017, 9, 4), 100),
      new OrdinalSales(new DateTime(2017, 9, 5), 75),
      new OrdinalSales(new DateTime(2017, 9, 6), 88),
      new OrdinalSales(new DateTime(2017, 9, 7), 65),
      new OrdinalSales(new DateTime(2017, 9, 8), 91),
      new OrdinalSales(new DateTime(2017, 9, 9), 100),
    ];

    return [
      new charts.Series<OrdinalSales, DateTime>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (OrdinalSales sales, _) => sales.date,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final DateTime date;
  final int sales;

  OrdinalSales(this.date, this.sales);
}
