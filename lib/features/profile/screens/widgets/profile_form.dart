import 'package:flutter/material.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class RProfileForm extends StatelessWidget {
  const RProfileForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(18.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Form(
          child: Column(
            children: [
              // First Name
              TextFormField(
                decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 28.0, vertical: 16.0),
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit_square,
                          size: 32.0,
                        )),
                    labelText: "First name",
                    hintText: "John",
                    labelStyle: const TextStyle(
                        color: RColors.grey, fontSize: RSizes.fontSizeLg)),
              ),

              const SizedBox(
                height: RSizes.spaceBtwItems * 2,
              ),

              // Last Name
              TextFormField(
                decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 28.0),
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit_square,
                          size: 32.0,
                        )),
                    labelText: "Last name",
                    hintText: "John",
                    labelStyle: const TextStyle(
                        color: RColors.grey, fontSize: RSizes.fontSizeLg)),
              ),

              const SizedBox(
                height: RSizes.spaceBtwItems * 2,
              ),

              // Email
              TextFormField(
                decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 28.0),
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit_square,
                          size: 32.0,
                        )),
                    labelText: "Email",
                    hintText: "John@gmail.com",
                    labelStyle: const TextStyle(
                        color: RColors.grey, fontSize: RSizes.fontSizeLg)),
              ),

              const SizedBox(
                height: RSizes.spaceBtwItems * 2,
              ),

              // Email Status
              TextFormField(
                decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 28.0),
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit_square,
                          size: 32.0,
                        )),
                    labelText: "Email status",
                    hintText: "status",
                    labelStyle: const TextStyle(
                        color: RColors.grey, fontSize: RSizes.fontSizeLg)),
              ),

              const SizedBox(
                height: RSizes.spaceBtwItems * 2,
              ),

              // Phone number
              TextFormField(
                decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 28.0),
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit_square,
                          size: 32.0,
                        )),
                    labelText: "Phone Number",
                    hintText: "+5547824162",
                    labelStyle: const TextStyle(
                        color: RColors.grey, fontSize: RSizes.fontSizeLg)),
              ),
            ],
          ),
        ));
  }
}
