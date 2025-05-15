import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

/// Example without a datasource
class DataTable2SimpleDemo extends StatelessWidget {
  const DataTable2SimpleDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataTable2 Simple Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: DataTable2(
          columnSpacing: 12,
          horizontalMargin: 12,
          minWidth: 600,
          columns: const [
            DataColumn2(
              label: Text('Column A'),
              size: ColumnSize.L,
            ),
            DataColumn(
              label: Text('Column B'),
            ),
            DataColumn(
              label: Text('Column C'),
            ),
            DataColumn(
              label: Text('Column D'),
            ),
            DataColumn(
              label: Text('Column NUMBERS'),
              numeric: true,
            ),
          ],
          rows: List<DataRow>.generate(
            100,
                (index) => DataRow(
              cells: [
                const DataCell(Text('A')),
                const DataCell(Text('B')),
                const DataCell(Text('C')),
                DataCell(Text('D' * (15 ))),
                DataCell(Text(((index + 0.1) ).toString())),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
