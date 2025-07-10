import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_mvi/app/navigation/nav_item.dart';
import '../../../../core/di/injection.dart';
import '../cubit/home_cubit.dart';
import '../cubit/home_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _searchText = '';

  List<String> get _searchTerms => _searchText
      .toLowerCase()
      .split(' ')
      .where((term) => term.trim().isNotEmpty)
      .toList();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<HomeCubit>()..fetchData(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          automaticallyImplyLeading: false,
          centerTitle: false,
          elevation: 0,
        ),
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        _searchText = value.toLowerCase();
                      });
                    },
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Search by Issuer name or ISIN',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      _searchText.isNotEmpty
                          ? "SEARCHED RESULTS"
                          : "SUGGESTED RESULTS",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Expanded(
                  child: state.when(
                    initial: () => const SizedBox(),
                    loading: () => const Center(child: CircularProgressIndicator()),
                    loaded: (data) {
                      final searchTerms = _searchTerms;
                      final filteredData = _searchText.isEmpty
                          ? data
                          : data.where((item) {
                        final name = item.companyName.toLowerCase();
                        final isin = item.isin.toLowerCase();
                        return searchTerms.any((term) =>
                        name.contains(term) || isin.contains(term));
                      }).toList();

                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: ListView.builder(
                            padding: const EdgeInsets.all(8),
                            shrinkWrap: true,
                            itemCount: filteredData.length,
                            itemBuilder: (context, index) {
                              final item = filteredData[index];
                              return ListTile(
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 2,
                                  vertical: 8,
                                ),
                                leading: Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                      color: Colors.grey.shade100,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(item.logo),
                                    onBackgroundImageError: (_, __) =>
                                    const Icon(Icons.image_not_supported),
                                  ),
                                ),
                                title: highlightMatchWithBackground(
                                  item.isin,
                                  searchTerms,
                                  TextStyle(
                                    color: Colors.grey.shade800,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  BoxDecoration(
                                    color: Colors.orange.shade100,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                subtitle: highlightMatchWithBackground(
                                  '${item.rating} • ${item.companyName}',
                                  searchTerms,
                                  TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 12,
                                  ),
                                  BoxDecoration(
                                    color: Colors.orange.shade100,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                trailing: IconButton(
                                  icon: const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pushNamed(
                                      NavItem.companyDetail,
                                      arguments: item.isin,
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    },
                    error: (msg) => Center(
                      child: Text(
                        'Error: $msg',
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget highlightMatchWithBackground(String source, List<String> terms, TextStyle normalStyle, BoxDecoration highlightDecoration) {
    if (terms.isEmpty) return Text(source, style: normalStyle);

    final matches = <Match>[];
    for (var term in terms) {
      matches.addAll(RegExp(RegExp.escape(term), caseSensitive: false).allMatches(source));
    }

    if (matches.isEmpty) return Text(source, style: normalStyle);

    matches.sort((a, b) => a.start.compareTo(b.start));
    final spans = <InlineSpan>[];
    int currentIndex = 0;

    for (final match in matches) {
      if (match.start > currentIndex) {
        spans.add(TextSpan(
          text: source.substring(currentIndex, match.start),
          style: normalStyle,
        ));
      }
      spans.add(WidgetSpan(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 1),
          decoration: highlightDecoration,
          child: Text(
            source.substring(match.start, match.end),
            style: normalStyle.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ));
      currentIndex = match.end;
    }

    if (currentIndex < source.length) {
      spans.add(TextSpan(
        text: source.substring(currentIndex),
        style: normalStyle,
      ));
    }

    return RichText(text: TextSpan(children: spans));
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Details")),
      body: const Center(child: Text("Coming soon...")),
    );
  }
}
