import 'package:auto_route/auto_route.dart';
import 'package:fake_store/entities/dto/response/response_models.dart';
import 'package:fake_store/ui/products/products/cubit/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'cubit/products_state.dart';

@RoutePage()
class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  void initState() {
    GetIt.instance.get<ProductsCubit>().fetchProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pageController = GetIt.instance.get<ProductsCubit>();
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text("Продукты"),
      ),
      body: SafeArea(
        child: BlocBuilder<ProductsCubit, ProductsState>(
          bloc: pageController,
          builder: (context, state) {
            return state.map(
              initial: (_) => Center(child: Text("Initializing")),
              loading: (_) => Center(child: Text("Loading")),
              success: (successState) => GridView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: successState.products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) {
                  return _ProductsCard(
                    onTap: (product) => pageController.onTap(product, context),
                    productResponse: successState.products[index],
                  );
                },
              ),
              failure: (_) => Center(child: Text("Error")),
            );
          },
        ),
      ),
    );
  }
}

class _ProductsCard extends StatelessWidget {
  const _ProductsCard({required this.productResponse, required this.onTap});

  final ProductsResponse productResponse;
  final Function(ProductsResponse) onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () => onTap(productResponse),
      child: Container(
        decoration: BoxDecoration(
          color: theme.cardColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  productResponse.image,
                  width: 120,
                  height: 160,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Spacer(),
            Text(
              productResponse.title,
              maxLines: 2,
              style: theme.textTheme.bodyMedium,
              overflow: TextOverflow.ellipsis,
            ),
            const Spacer(),
            Text(
              '\$${productResponse.price}',
              style: TextStyle(
                color: Colors.green,
                fontSize: 16,
                fontFamily: 'Montserrat',
              ),
            )
          ],
        ),
      ),
    );
  }
}
