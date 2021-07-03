CREATE TABLE taskListByNameAndProcessDefinition
(
    assignee                uuid,
    name                    text,
    process_definition_name text,
    id                      uuid,
    assigned_at             timestamp,
    completed               boolean,
    completed_at            timestamp,
    process_instance_id     uuid,
    PRIMARY KEY ((assignee), name, process_definition_name)
);
CREATE TABLE taskListByProcessDefinition
(
    assignee                uuid,
    process_definition_name text,
    id                      uuid,
    name                    text,
    assigned_at             timestamp,
    completed               boolean,
    completed_at            timestamp,
    process_instance_id     uuid,
    PRIMARY KEY ((assignee), process_definition_name)
);
CREATE TABLE queryProcessInstanceByInitiatorAndStatus
(
    initiator_id           uuid,
    status                 text,
    id                     uuid,
    completed              boolean,
    name                   text,
    initiator_name         text,
    initiator_display_name text,
    initiator_created_at   timestamp,
    PRIMARY KEY ((initiator_id), status)
);
CREATE TABLE queryProcessInstanceByName
(
    name                   text,
    id                     uuid,
    completed              boolean,
    initiator_id           uuid,
    initiator_name         text,
    initiator_display_name text,
    initiator_created_at   timestamp,
    PRIMARY KEY ((name))
);
CREATE TABLE queryCommentsByProcessInstanceId
(
    process_instance_id uuid,
    author_id           uuid,
    id                  uuid,
    text                text,
    added_at            timestamp,
    author_display_name text,
    PRIMARY KEY ((process_instance_id), author_id)
);