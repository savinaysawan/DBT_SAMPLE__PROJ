{% macro add_audit_column(table_name) %}
        ALTER TABLE {{ table_name }}
        ADD COLUMN last_updated_at TIMESTAMP_NTZ(9);

    UPDATE {{ table_name }}
    SET last_updated_at = current_timestamp();
{% endmacro %}
