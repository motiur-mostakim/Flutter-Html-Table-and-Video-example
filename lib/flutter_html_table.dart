import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html_table/flutter_html_table.dart';

class HtmlTableWidget extends StatelessWidget {
  const HtmlTableWidget({super.key});

  final String myHtml = """
  <html>
<head>
<style>
table, th,td {
 border: 1px solid black;
}
</style>
</head>
<body>

<h1>The table element</h1>

<table>
  <tr>
    <th>Month</th>
    <th>Savings</th>
  </tr>
  <tr>
    <td>January</td>
    <td>80</td>
  </tr>
  <tr>
    <td>February</td>
    <td>80</td>
  </tr>
</table>

</body>
</html>
  """;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Html(
            data: myHtml,
            extensions: const [
              TableHtmlExtension(),
            ],
          ),
        ),
      ),
    );
  }

}
