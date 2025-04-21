import 'package:auto_route/auto_route.dart';
import 'package:fake_store/ui/products/product/cubit/product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class ProductCardPage extends StatelessWidget {
  const ProductCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Карточка товара"),
        centerTitle: true,
      ),
      body: BlocBuilder<ProductCubit, ProductState>(
        bloc: GetIt.instance.get<ProductCubit>(),
        builder: (context, state) {
          return state.map(
            empty: (_) => SizedBox(),
            data: (productState) => ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      productState.product.image,
                      height: 250,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  productState.product.title,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  productState.product.category,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 12),
                Text(
                  "\$${productState.product.price}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Описание',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 8),
                Text(
                  productState.product.description,
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 30),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add_shopping_cart),
                  label: const Text("Добавить в корзину"),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
