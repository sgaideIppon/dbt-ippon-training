{% macro mockable_source(schema_name, table_name, mocked_source) %}
    {% if target.name == 'dev' %}
        {{ ref(mocked_source) }}
    {% else %}
        {{ source(schema_name, table_name) }}
    {% endif %}
{% endmacro %}