import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_julia/pages/home_page/bloc/home_page_bloc.dart';
import 'package:whatsapp_julia/pages/home_page/bloc/home_page_event.dart';
import 'package:whatsapp_julia/pages/home_page/bloc/home_page_state.dart';
import 'package:whatsapp_julia/styles/colors/color_styles.dart';
import 'package:whatsapp_julia/styles/paragraphs/paragraphs_styles.dart';
import 'package:whatsapp_julia/styles/sizes/size_styles.dart';
import 'package:whatsapp_julia/widgets/divider/custom_vertical_divider.dart';
import 'package:whatsapp_julia/widgets/inputs/text_area_widget.dart';
import 'package:whatsapp_julia/widgets/loadings/loading_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);



  final TextEditingController patientsNamesController = TextEditingController();

  final TextEditingController defaultMessageController = TextEditingController(
    text: "Olá, BOMDIAAAAAAA.\nMe chamo Júlia, falo da TELEMEDICINA da CASSI, seu plano de saúde.\nFalo com AAAAAAAAAAAAA?\nMeu contato é para saber da sua saúde, está tudo bem?\n\n"
  );

  Widget buildBody(BuildContext context){
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
        child: Column(
          children: [
            const SizedBox(height: SizeStyle.SIZE_30),
            BlocBuilder<HomePageBloc, HomePageState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.event_available,
                          color: Theme.of(context).colorScheme.primaryVariant,
                        ),
                        Text(
                          "Marcou",
                          style: Caption().style(color: Theme.of(context).colorScheme.primaryVariant),
                        ),
                        Text(
                          state.scheduled.toString(),
                          style: Heading2().style(color: Colors.black),
                        ),
                      ],
                    ),
                    const CustomVerticalDivider(),
                    Column(
                      children: [
                        Icon(
                          Icons.event_busy,
                          color: Theme.of(context).colorScheme.primaryVariant
                        ),
                        Text(
                          "Não marcou",
                          style: Caption().style(color: Theme.of(context).colorScheme.primaryVariant),
                        ),
                        Text(
                          state.didntSchedule.toString(),
                          style: Heading2().style(color: Colors.black),
                        ),
                      ],
                    ),
                    const CustomVerticalDivider(),
                    Column(
                      children: [
                        Icon(
                          Icons.phone_disabled,
                          color: Theme.of(context).colorScheme.primaryVariant
                        ),
                        Text(
                          "Não atendeu",
                          style: Caption().style(color: Theme.of(context).colorScheme.primaryVariant),
                        ),
                        Text(
                          state.didntAnswer.toString(),
                          style: Heading2().style(color: Colors.black),
                        ),
                      ],
                    ),
                    const CustomVerticalDivider(),
                    Column(
                      children: [
                        Icon(
                          Icons.phone_forwarded,
                          color: Theme.of(context).colorScheme.primaryVariant
                        ),
                        Text(
                          "Ligar depois",
                          style: Caption().style(color: Theme.of(context).colorScheme.primaryVariant),
                        ),
                        Text(
                          state.callLater.toString(),
                          style: Heading2().style(color: Colors.black),
                        ),
                      ],
                    ),
                    const CustomVerticalDivider(),
                    Column(
                      children: [
                        Icon(
                          Icons.group,
                          color: Theme.of(context).colorScheme.primaryVariant
                        ),
                        Text(
                          "Total",
                          style: Caption().style(color: Theme.of(context).colorScheme.primaryVariant),
                        ),
                        Text(
                          state.called.toString(),
                          style: Heading2().style(color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                );
              }
            ),
            const SizedBox(height: SizeStyle.SIZE_16),
            TextAreaInputWidget(
              label: "Pacientes",
              alwaysFloatingLabel: true,
              controller: patientsNamesController,
              maxLines: 5,
            ),
            const SizedBox(height: SizeStyle.SIZE_16),
            BlocBuilder<HomePageBloc, HomePageState>(
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: () => context.read<HomePageBloc>().add(BuildMessagesEvent(patients: patientsNamesController.text)),
                  child: Text(
                    "GERAR LISTA",
                    style: Caption().style(color: Colors.white, isBold: true),
                  )
                );
              }
            ),
            const SizedBox(height: SizeStyle.SIZE_30),
            BlocBuilder<HomePageBloc, HomePageState>(
              builder: (context, state) {
                if(state is HomePageLoadingState){
                  return LoadingWidget();
                }

                if(state is HomePageEmptyState) return Container();

                return ListView.builder(
                  itemCount: state.messages!.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index){
                    return Container(
                      width: 500,
                      margin: const EdgeInsets.only(bottom: SizeStyle.SIZE_30),
                      padding: const EdgeInsets.all(SizeStyle.SIZE_20),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onBackground,
                        borderRadius: BorderRadius.circular(SizeStyle.SIZE_8),
                        boxShadow: ShadowSmall
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              state.messages![index].message,
                              style: Paragraph().style(color: const Color(ColorsStyle.black)),
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                color: state.messages![index].scheduled ? Colors.green : null,
                                onPressed: () => context.read<HomePageBloc>().add(MarkAsScheduled(index: index)),
                                icon: const Icon(Icons.event_available)
                              ),
                              const SizedBox(width: SizeStyle.SIZE_12),
                              IconButton(
                                color: state.messages![index].callLater ? Colors.yellow[700] : null,
                                onPressed: () => context.read<HomePageBloc>().add(MarkAsCallLater(index: index)),
                                icon: const Icon(Icons.phone_forwarded)
                              ),
                              const SizedBox(width: SizeStyle.SIZE_12),
                              IconButton(
                                color: state.messages![index].didntSchedule ? Colors.red : null,
                                onPressed: () => context.read<HomePageBloc>().add(MarkAsDidntSchedule(index: index)),
                                icon: const Icon(Icons.event_busy)
                              ),
                              const SizedBox(width: SizeStyle.SIZE_12),
                              IconButton(
                                color: state.messages![index].didntAnswer ? Colors.red : null,
                                onPressed: () => context.read<HomePageBloc>().add(MarkAsDidntAnswer(index: index)),
                                icon: const Icon(Icons.phone_disabled)
                              ),
                              const SizedBox(width: SizeStyle.SIZE_12),
                              IconButton(
                                color: state.messages![index].hasCopied ? Colors.green : null,
                                onPressed: () {
                                  context.read<HomePageBloc>().add(MarkAsCopied(index: index));
                                  FlutterClipboard.copy(state.messages![index].message).then(
                                    (value) => print("Valor copiado")
                                  );
                                },
                                icon: const Icon(Icons.copy)
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }
                );
              }
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomePageBloc(),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Builder(builder: buildBody),
      ),
    );
  }
}