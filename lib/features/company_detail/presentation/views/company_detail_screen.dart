import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:tap_mvi/core/di/injection.dart';
import '../../domain/enitites/company_detail_entity.dart';
import '../cubit/company_detail_cubit.dart';
import '../cubit/company_detail_state.dart';

class CompanyDetailScreen extends StatefulWidget {
  final String isin;

  const CompanyDetailScreen({super.key, required this.isin});

  @override
  State<CompanyDetailScreen> createState() => _CompanyDetailScreenState();
}

class _CompanyDetailScreenState extends State<CompanyDetailScreen> {
  bool showRevenue = true;
  int selectedPageIndex = 0;

  List<BarChartGroupData> _buildBarChartData(List<ChartData> data, Color color) {
    return data.asMap().entries.map((entry) {
      return BarChartGroupData(
        x: entry.key,
        barRods: [
          BarChartRodData(
            toY: entry.value.value.toDouble(),
            color: color,
            width: 14,
            borderRadius: BorderRadius.circular(2)
          ),
        ],
      );
    }).toList();
  }

  List<String> _buildMonthLabels(List<ChartData> data) {
    return data.map((e) => e.month).toList();
  }

  String formatIndianCurrency(double value) {
    if (value >= 10000000) {
      return '₹${(value / 10000000).toStringAsFixed(1)} Cr';
    } else if (value >= 100000) {
      return '₹${(value / 100000).toStringAsFixed(1)} L';
    } else {
      return '₹${value.toStringAsFixed(0)}';
    }
  }

  double _getMaxValue(List<ChartData> a, List<ChartData> b){
    final aMax = a.map((e) => e.value).reduce((a,b) => a > b ? a : b);
    final bMax = b.map((e) => e.value).reduce((a,b) => a > b ? a : b);

    final max = aMax > bMax ? aMax : bMax;

    return max * 1.2;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CompanyDetailCubit>()..fetchDetail(widget.isin),
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: const SizedBox(),
          elevation: 0,
        ),
        body: BlocBuilder<CompanyDetailCubit, CompanyDetailState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (msg) => Center(child: Text("Error: $msg")),
              loaded: (entity) {
                final revenueMap = entity.revenue;
                final ebitdaMap = entity.ebitda;
                final labels = _buildMonthLabels(
                  showRevenue ? revenueMap : ebitdaMap,
                );

                final maxY = _getMaxValue(revenueMap, ebitdaMap);

                return SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade200,width: 1.0),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            entity.logo,
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Text(
                        entity.companyName,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        entity.description,
                        style: const TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.blue.shade100,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              "ISIN: ${entity.isin}",
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              entity.status,
                              style: TextStyle(
                                color: entity.status.toLowerCase() == 'active'
                                    ? Colors.green
                                    : Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () =>
                                  setState(() => selectedPageIndex = 0),
                              child: Column(
                                children: [
                                  Text(
                                    "ISIN Analysis",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: selectedPageIndex == 0
                                          ? Colors.blue
                                          : Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Container(
                                    height: 2,
                                    color: selectedPageIndex == 0
                                        ? Colors.blue
                                        : Colors.transparent,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () =>
                                  setState(() => selectedPageIndex = 1),
                              child: Column(
                                children: [
                                  Text(
                                    "Pros & Cons",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: selectedPageIndex == 1
                                          ? Colors.blue
                                          : Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Container(
                                    height: 2,
                                    color: selectedPageIndex == 1
                                        ? Colors.blue
                                        : Colors.transparent,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      IndexedStack(
                        index: selectedPageIndex,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "COMPANY FINANCIALS",
                                          style: Theme.of(
                                            context,
                                          ).textTheme.bodySmall?.copyWith(color: Colors.grey.shade500),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 12,
                                            vertical: 6,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade100,
                                            borderRadius: BorderRadius.circular(
                                              16,
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () => setState(
                                                  () => showRevenue = false,
                                                ),
                                                child: Container(
                                                  color: !showRevenue
                                                      ? Colors.white
                                                      : Colors.grey.shade100,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                          horizontal: 8,
                                                        ),
                                                    child: Text(
                                                      "EBITDA",
                                                      style:showRevenue ? Theme.of(
                                                        context,
                                                      ).textTheme.bodySmall?.copyWith(color: Colors.grey) : Theme.of(
                                                        context,
                                                      ).textTheme.bodySmall?.copyWith(color: Colors.black) ,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () => setState(
                                                  () => showRevenue = true,
                                                ),
                                                child: Container(
                                                  color: showRevenue
                                                      ? Colors.white
                                                      : Colors.grey.shade100,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                          horizontal: 8,
                                                        ),
                                                    child: Text(
                                                      "Revenue",
                                                      style: !showRevenue ? Theme.of(context)
                                                          .textTheme
                                                          .bodySmall
                                                          ?.copyWith(
                                                            color: Colors.grey,
                                                          ) : Theme.of(context)
                                                          .textTheme
                                                          .bodySmall
                                                          ?.copyWith(
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 16),
                                    SizedBox(
                                      height: 220,
                                      child: BarChart(
                                        BarChartData(
                                          maxY: maxY,
                                          alignment:
                                              BarChartAlignment.spaceAround,
                                          barTouchData: BarTouchData(
                                            enabled: true,
                                          ),
                                          titlesData: FlTitlesData(
                                            leftTitles: AxisTitles(
                                              sideTitles: SideTitles(
                                                showTitles: true,
                                                reservedSize: 56,
                                                getTitlesWidget: (value, meta) {
                                                  return Text(
                                                    formatIndianCurrency(value),
                                                    style: const TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.grey,
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                            rightTitles: AxisTitles(
                                              sideTitles: SideTitles(
                                                showTitles: false,
                                              ),
                                            ),
                                            topTitles: AxisTitles(
                                              sideTitles: SideTitles(
                                                showTitles: false,
                                              ),
                                            ),
                                            bottomTitles: AxisTitles(
                                              sideTitles: SideTitles(
                                                showTitles: true,
                                                getTitlesWidget: (value, meta) {
                                                  int index = value.toInt();
                                                  if (index >= 0 &&
                                                      index < labels.length) {
                                                    return Text(
                                                      labels[index].substring(
                                                        0,
                                                        1,
                                                      ),
                                                      style: const TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.grey,
                                                      ),
                                                    );
                                                  }
                                                  return const Text('');
                                                },
                                              ),
                                            ),
                                          ),
                                          borderData: FlBorderData(show: false),
                                          gridData: FlGridData(show: false),
                                          barGroups: showRevenue ? _buildBarChartData(revenueMap, Colors.blue) : _buildBarChartData(ebitdaMap, Colors.indigo.shade900)
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 16),
                              Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      children: [
                                        Icon(
                                          Icons.perm_contact_cal_outlined,
                                          size: 18,
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          "Issuer Details",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(),
                                    const SizedBox(height: 8),
                                    buildKeyValue(
                                      "Issuer Name",
                                      entity.issuerDetails.issuerName,
                                    ),
                                    buildKeyValue(
                                      "Sector",
                                      entity.issuerDetails.sector,
                                    ),
                                    buildKeyValue(
                                      "Industry",
                                      entity.issuerDetails.industry,
                                    ),
                                    buildKeyValue(
                                      "Issuer Nature",
                                      entity.issuerDetails.issuerNature,
                                    ),
                                    buildKeyValue(
                                      "Lead Manager",
                                      entity.issuerDetails.leadManager,
                                    ),
                                    buildKeyValue(
                                      "Registrar",
                                      entity.issuerDetails.registrar,
                                    ),
                                    buildKeyValue(
                                      "Debenture Trustee",
                                      entity.issuerDetails.debentureTrustee,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Pros",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                ...entity.pros.map(
                                  (e) => ListTile(
                                    leading: Icon(
                                      Icons.check_circle,
                                      color: Colors.green.shade200,
                                    ),
                                    title: Text(e),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  "Cons",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                ...entity.cons.map(
                                  (e) => ListTile(
                                    leading: Icon(
                                      Icons.error,
                                      color: Colors.red.shade200,
                                    ),
                                    title: Text(e),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget buildKeyValue(String key, String value) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$key: ",
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(value, style: const TextStyle(color: Colors.black)),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}
