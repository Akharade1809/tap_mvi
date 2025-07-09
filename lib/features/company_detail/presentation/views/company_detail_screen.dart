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
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header Row
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(entity.logo),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(entity.companyName, style: Theme.of(context).textTheme.titleLarge),
                                const SizedBox(height: 4),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("ISIN: ${entity.isin}  ", style: const TextStyle(fontWeight: FontWeight.w500)),
                                      Text(
                                        entity.status,
                                        style: TextStyle(
                                          color: entity.status.toLowerCase() == 'active'
                                              ? Colors.green
                                              : Colors.red,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 16),

                      // Description
                      Text(entity.description),
                      const SizedBox(height: 24),

                      // Page Tabs
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ChoiceChip(
                            label: const Text("ISIN Analysis"),
                            selected: selectedPageIndex == 0,
                            onSelected: (_) => setState(() => selectedPageIndex = 0),
                          ),
                          const SizedBox(width: 8),
                          ChoiceChip(
                            label: const Text("Pros & Cons"),
                            selected: selectedPageIndex == 1,
                            onSelected: (_) => setState(() => selectedPageIndex = 1),
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Company Financials (${showRevenue ? 'Revenue' : 'EBITDA'})",
                                    style: Theme.of(context).textTheme.titleMedium,
                                  ),
                                  Switch(
                                    value: showRevenue,
                                    onChanged: (val) => setState(() => showRevenue = val),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              SizedBox(
                                height: 200,
                                child: Placeholder(), // Replace with chart widget using chartData
                              ),
                              const SizedBox(height: 16),
                              const Text("Issuer Details", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                              const SizedBox(height: 8),
                              buildKeyValue("Issuer Name", entity.issuerDetails.issuerName),
                              buildKeyValue("Sector", entity.issuerDetails.sector),
                              buildKeyValue("Industry", entity.issuerDetails.industry),
                              buildKeyValue("Issuer Nature", entity.issuerDetails.issuerNature),
                              buildKeyValue("Lead Manager", entity.issuerDetails.leadManager),
                              buildKeyValue("Registrar", entity.issuerDetails.registrar),
                              buildKeyValue("Debenture Trustee", entity.issuerDetails.debentureTrustee),
                            ],
                          ),

                          // Pros & Cons Page
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Pros", style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600)),
                              ...entity.pros.map((e) => ListTile(
                                leading: const Icon(Icons.check_circle, color: Colors.green),
                                title: Text(e),
                              )),
                              const SizedBox(height: 8),
                              const Text("Cons", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600)),
                              ...entity.cons.map((e) => ListTile(
                                leading: const Icon(Icons.cancel, color: Colors.red),
                                title: Text(e),
                              )),
                            ],
                          ),
                        ],
                      )
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
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$key: ", style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w600)),
          Expanded(child: Text(value, style: const TextStyle(color: Colors.black))),
        ],
      ),
    );
  }
}
