import 'package:flutter/material.dart';
import 'package:fluttersessions/flutter%20tasks/task26/screens/info_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List itemList = [
      {
        'image': 'https://techterms.com/img/xl/laptop_586.png',
        'txt': 'Laptop HP',
        'price': '50,500'
      },
      {
        'image':
            'https://nextlevelracing.com/wp-content/uploads/2022/05/elite_gaming_chair_leather_1.webp',
        'txt': 'Elite Gaming Chair',
        'price': '9,850'
      },
      {
        'image':
            'https://media.oppostore.co.uk/catalog/product/a/4/a40_purple_1.png?width=380&height=380&store=default&image-type=small_image',
        'txt': 'Oppo',
        'price': '10,150'
      },
      {
        'image':
            'https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c08611463.png',
        'txt': 'Laptop HP',
        'price': '30,000'
      },
      {
        'image':
            'https://koodoo.co.za/cdn/shop/files/PS5-Slim_-DS5.png?v=1712045458',
        'txt': 'PS5',
        'price': '29,999'
      },
      {
        'image':
            'https://www.games2egypt.com/Images/Products/94515?fileFormat=1',
        'txt': 'PS5 Controller',
        'price': '1,599'
      },
      {
        'image':
            'https://nzxt.com/assets/cms/34299/1715906800-cases-page-h9-content-grid-lg-primary.png?auto=format&fit=max&h=900&w=672',
        'txt': 'NZXT PC Case',
        'price': '15,999'
      },
      {
        'image':
            'https://tysonscornerkiwanis.org/wp-content/uploads/2020/10/Gaming-Accesories.png',
        'txt': 'PC Combo',
        'price': '2,500'
      },
      {
        'image':
            'https://i.dell.com/is/image/DellContent/content/dam/ss2/product-images/peripherals/output-devices/dell/snp-category-imagery/gaming-accessories/dell-snp-gaming-cat-all-gaming-accessories-aw620m-aw920k-aw720h-800x620-right.png?fmt=png-alpha&amp;wid=800&amp;hei=620',
        'txt': 'Dell India',
        'price': '1,750'
      },
      {
        'image':
            'https://opsg-img-cdn-gl.heytapimg.com/epb/202412/19/AceLeaXtntKw1AZf.png',
        'txt': 'Mobile',
        'price': '9,500'
      },
      {
        'image':
            'https://rayconglobal.com/cdn/shop/files/H90_BLA_IMG1_900x.png?v=1713196566',
        'txt': 'Raycon Pro',
        'price': '7,000'
      },
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SafeArea(
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'search',
                    hintStyle: TextStyle(
                        color: Colors.grey[600], fontWeight: FontWeight.bold),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey[600],
                    ),
                    filled: true,
                    fillColor: Colors.grey[300],
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverList.builder(
                itemCount: itemList.length,
                itemBuilder: (context, index) => Container(
                  height: 180,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      colors: [Colors.grey.shade400, Colors.grey.shade50],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Image.network(itemList[index]['image']),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 10,
                            children: [
                              FittedBox(
                                child: Text(
                                  itemList[index]['txt'],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),
                              ),
                              Text(
                                itemList[index]['price'],
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              ElevatedButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => InfoScreen(
                                        txt: itemList[index]['txt'],
                                        price: itemList[index]['price'],
                                        img: itemList[index]['image'],
                                        id: index + 1,
                                      ),
                                    )),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                ),
                                child: const Text('Get Now'),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
