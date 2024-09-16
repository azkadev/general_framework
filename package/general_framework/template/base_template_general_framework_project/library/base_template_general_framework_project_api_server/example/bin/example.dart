import 'package:base_template_general_framework_project_api_server/base_template_general_framework_project_api_server_cli.dart';
import 'package:base_template_general_framework_project_secret/base_template_general_framework_project_secret_core.dart';

void main(List<String> arguments) async {
  baseTemplateGeneralFrameworkProjectApiServerCli(
    arguments: arguments,
    baseTemplateGeneralFrameworkProjectSecretServerSide:
        BaseTemplateGeneralFrameworkProjectSecretServerSide.defaultData(),
  );
}
