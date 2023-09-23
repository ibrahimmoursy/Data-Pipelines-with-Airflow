from airflow.hooks.postgres_hook import PostgresHook
from airflow.models import BaseOperator
from airflow.utils.decorators import apply_defaults

class LoadDimensionOperator(BaseOperator):

    ui_color = '#80BD9E'

    insert_sql = """
        INSERT INTO {}
        {};
    """

    @apply_defaults
    def __init__(self,
                 redshift_conn_id="",
                 table="",
                 sql_stmt="",
                 truncate=False,
                 *args, **kwargs):

        super(LoadDimensionOperator, self).__init__(*args, **kwargs)
        self.redshift_conn_id = redshift_conn_id
        self.table = table
        self.sql_stmt = sql_stmt
        self.truncate = truncate

    def execute(self, context):
        redshift = PostgresHook(postgres_conn_id = self.redshift_conn_id)

        if self.truncate:
            self.log.info(f"Truncating dimension table: {self.table}")
            redshift.run(f"TRUNCATE TABLE {self.table}") 

        self.log.info(f"Loading dimention table '{self.table}' into Redshift")
        formated_sql = LoadDimensionOperator.insert_sql.format(
            self.table,
            self.sql_stmt
        )
        redshift.run(formated_sql)
