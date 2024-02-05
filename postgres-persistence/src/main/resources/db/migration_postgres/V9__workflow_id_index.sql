ALTER TABLE
  task_index
ADD
  workflow_id TEXT GENERATED ALWAYS AS (json_data ->> 'workflowId') STORED;

CREATE INDEX task_index_workflow_id_index ON task_index(workflow_id);
