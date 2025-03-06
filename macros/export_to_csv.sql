{% macro export_to_csv(model_name, output_path) %}
    {% set results = run_query("SELECT * FROM " ~ ref(model_name)) %}

    {% if execute %}
        {{ log("Exporting data to CSV: " ~ output_path, info=True) }}

        {% if results|length == 0 %}
            {{ log("No data returned from the query.", info=True) }}
        {% else %}
            {% do results.to_csv(output_path) %}
        {% endif %}
    {% endif %}
{% endmacro %}
