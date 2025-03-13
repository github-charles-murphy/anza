from pathlib import Path

def create_flux_filter_script(field_name, values, output_dir=Path(".")):
    """
    Generates a Flux filter script that filters rows based on a given field name and values.

    Args:
        field_name (str): The field/tag name to filter on.
        values (list): A list of valid values to match.
        output_dir (Path): Directory to save the Flux script.

    Returns:
        Path: The path to the generated Flux script.
    """
    # Generate Flux script name
    flux_prefix_name = camel_case_to_snake_case(filename_case(field_name))
    flux_filename = f"{flux_prefix_name}_filter.flux"
    flux_filepath = output_dir / flux_filename

    # Generate Flux predicate name
    flux_predicate_name = f"filterValid{snake_case_to_camel_case(field_name)}"

    # Generate the Flux script content
    flux_content = f'''import "array"

valid_values = {list(values)}

{flux_predicate_name} = (r) => array.contains(value: r["{field_name}"], set: valid_values)
'''

    # Write to file
    flux_filepath.write_text(flux_content, encoding="utf-8")

    return flux_filepath, flux_predicate_name

def create_flux_filter_script_verbose(field_name, values, output_dir=Path(".")):
    """
    Main function to generate a Flux filter script and print an example usage.
    """

    # Create the Flux filter script
    flux_filepath, flux_predicate_name = create_flux_filter_script(field_name, values, output_dir)

    # Generate example usage string
    flux_import_example = f'''
import "{flux_filepath.stem}"

from(bucket: "my_bucket")
  |> range(start: -1h)
  |> filter(fn: {flux_filepath.stem}.{flux_predicate_name})
'''

    print(f"Generated Flux script at: {flux_filepath}")
    print("\nExample usage in a Flux script:")
    print(flux_import_example)

def filename_case(name):
    return name.replace(" ", "_")

def camel_case_to_snake_case(name):
    return ''.join(['_'+c.lower() if c.isupper() else c for c in name]).lstrip('_')

def snake_case_to_camel_case(name):
    return ''.join([c[0].upper() + c[1:] for c in name.split('_')])
