import 'package:auto_route/auto_route.dart';
import 'package:fake_store/utils/extensions%20/app_colors.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}



class _ProductsPageState extends State<ProductsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text("Продукты"),
        //centerTitle: true,
      ),
      body: SafeArea(
        child: GridView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            return const _ProductsCard();
          },
        ),
      ),
    );
  }
}

class _ProductsCard extends StatelessWidget {
  const _ProductsCard();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () => AutoRouter.of(context).navigatePath('product_card'),
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
                  "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
                  width: 120,
                  height: 160,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Spacer(),
            Text(
              'product.title',
              maxLines: 2,
              style: Theme.of(context).textTheme.bodyMedium,
              overflow: TextOverflow.ellipsis,
            ),
            const Spacer(),
            const Text(
              '\$222',
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
