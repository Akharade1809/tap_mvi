import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_mvi/core/di/injection.dart';
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
                return SingleChildScrollView(
                  padding:const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          entity.logo,
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 16),
                      // Company Name
                      Text(
                        entity.companyName,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        entity.description,
                        style: TextStyle(color: Colors.grey),
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

                      // Page Tabs
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
                          // ISIN Analysis Page
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Financials with toggle
                              Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(8)
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Company Financials (${showRevenue ? 'Revenue' : 'EBITDA'})",
                                          style: Theme.of(
                                            context,
                                          ).textTheme.titleMedium,
                                        ),
                                        Switch(
                                          value: showRevenue,
                                          onChanged: (val) =>
                                              setState(() => showRevenue = val),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    SizedBox(
                                      height: 200,
                                      child:
                                      Placeholder(), // Replace with chart widget using chartData
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
                                    borderRadius: BorderRadius.circular(8)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      children: [
                                        Icon(Icons.perm_contact_cal_outlined, size: 18),
                                        SizedBox(width: 8),
                                        Text("Issuer Details", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
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

                          // Pros & Cons Page
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8)
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
          const SizedBox(height: 4)
        ],
      ),
    );
  }
}
