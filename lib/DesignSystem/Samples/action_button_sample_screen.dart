import 'package:flutter/material.dart';
import 'package:projetc2/DesignSystem/Componentes/Buttons/ActionsButton/action_button.dart';
import 'package:projetc2/DesignSystem/Componentes/Buttons/ActionsButton/action_button_view_model.dart';

class ActionButtonSampleScreen extends StatelessWidget {
  const ActionButtonSampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Action Button Samples'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Grupo de botões primários
              ActionButton.instantiate(
                viewModel: ActionButtonViewModel(
                  style: ActionButtonStyle.primary,
                  size: ActionButtonSize.large,
                  text: 'Action button',
                ),
              ),
              const SizedBox(height: 8),
              ActionButton.instantiate(
                viewModel: ActionButtonViewModel(
                  style: ActionButtonStyle.primary,
                  size: ActionButtonSize.medium,
                  text: 'Action button',
                ),
              ),
              const SizedBox(height: 4),
              ActionButton.instantiate(
                viewModel: ActionButtonViewModel(
                  style: ActionButtonStyle.primary,
                  size: ActionButtonSize.small,
                  text: 'Action button',
                ),
              ),
              const SizedBox(height: 16),

              // Grupo de botões secundários
              ActionButton.instantiate(
                viewModel: ActionButtonViewModel(
                  style: ActionButtonStyle.secondary,
                  size: ActionButtonSize.large,
                  text: 'Action button',
                ),
              ),
              const SizedBox(height: 4),
              ActionButton.instantiate(
                viewModel: ActionButtonViewModel(
                  style: ActionButtonStyle.secondary,
                  size: ActionButtonSize.medium,
                  text: 'Action button',
                ),
              ),
              const SizedBox(height: 4),
              ActionButton.instantiate(
                viewModel: ActionButtonViewModel(
                  style: ActionButtonStyle.secondary,
                  size: ActionButtonSize.small,
                  text: 'Action button',
                ),
              ),
              const SizedBox(height: 16),

              // Grupo de botões terciários
              ActionButton.instantiate(
                viewModel: ActionButtonViewModel(
                  style: ActionButtonStyle.tertiary,
                  size: ActionButtonSize.large,
                  text: 'Action button',
                ),
              ),
              const SizedBox(height: 4),
              ActionButton.instantiate(
                viewModel: ActionButtonViewModel(
                  style: ActionButtonStyle.tertiary,
                  size: ActionButtonSize.medium,
                  text: 'Action button',
                ),
              ),
              const SizedBox(height: 4),
              ActionButton.instantiate(
                viewModel: ActionButtonViewModel(
                  style: ActionButtonStyle.tertiary,
                  size: ActionButtonSize.small,
                  text: 'Action button',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
