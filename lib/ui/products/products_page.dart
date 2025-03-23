import 'package:auto_route/auto_route.dart';
import 'package:fake_store/repository/products/models/products.dart';
import 'package:fake_store/repository/products/products_repository.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});


  @override
  State<ProductsPage> createState() => _ProductsPageState();
}



class _ProductsPageState extends State<ProductsPage> {
 List<Products>? _productsList;
 @override
  void initState() {
   _loadProducts();
    super.initState();
  }
 Future<void> _loadProducts() async{
   _productsList = await ProductsRepository().getAllProducts();
   setState(() {
   });
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _productsList == null
        ? Center(child: CircularProgressIndicator())
      : SafeArea(
        child: GridView.builder(
            padding: EdgeInsets.all(10),
            itemCount: _productsList!.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10, childAspectRatio: 0.7),
            itemBuilder: (context, index) {
              final product = _productsList![index];
              return _ProductsCard(product: product);}),
      ),
    );
  }
}

class _ProductsCard extends StatelessWidget {
  const _ProductsCard({required this.product});
  final Products product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AutoRouter.of(context).navigatePath('product_card'),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Image.network(product.image, height: 120,),
            Spacer(),
            Text(product.title, maxLines: 2,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(product.price.toString()),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border),
                ),
              ],
            )
          ],
        ),
      ),
    );

  }

}



