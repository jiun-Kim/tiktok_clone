import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class FormButton extends StatelessWidget {
  final bool disabled;
  final void Function(BuildContext context) onTap;

  const FormButton({
    super.key,
    required this.disabled,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(context),
      child: FractionallySizedBox(
        widthFactor: 1,
        child: AnimatedContainer(
          duration: const Duration(
            milliseconds: 300,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: Sizes.size16,
          ),
          decoration: BoxDecoration(
            color: disabled
                ? Colors.grey.shade200
                : Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(Sizes.size5),
          ),
          child: AnimatedDefaultTextStyle(
            duration: const Duration(
              milliseconds: 300,
            ),
            style: TextStyle(
              color: disabled ? Colors.grey.shade400 : Colors.white,
              fontSize: Sizes.size16,
              fontWeight: FontWeight.w600,
            ),
            child: const Text(
              "Next",
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
