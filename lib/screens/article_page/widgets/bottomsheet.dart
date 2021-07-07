import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yourstory/logic/cubits/artcile/artcile_cubit.dart';

class ModalBottomSheet extends StatelessWidget {
  const ModalBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArtcileCubit, ArtcileState>(
      builder: (context, state) {
        return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Container(
              width: 100,
              child: TextButton.icon(
                  onPressed: () {
                    context.read<ArtcileCubit>().changeScaleFactor();
                  },
                  icon: Icon(Icons.text_format_sharp),
                  label: Text(state.textScaleFactor == 1 ? "Small" : "Big")),
            ));
      },
    );
  }
}
