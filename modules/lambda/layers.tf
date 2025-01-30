resource "aws_lambda_layer_version" "PyJWT-Layer" {
  filename            = data.archive_file.PyJWT_zip.output_path
  layer_name          = "PyJWT-Layer"
  compatible_runtimes = ["python3.9", "python3.10", "python3.11", "python3.12"]


  source_code_hash = filebase64sha256(data.archive_file.PyJWT_zip.output_path)
}

resource "aws_lambda_layer_version" "python_dependencies-Layer" {
  filename            = data.archive_file.python_dependencies_layer_zip.output_path
  layer_name          = "python_dependencies-Layer"
  compatible_runtimes = ["python3.9", "python3.10", "python3.11", "python3.12"]


  source_code_hash = filebase64sha256(data.archive_file.python_dependencies_layer_zip.output_path) # Ensures the layer is updated when the zip file changes
}
