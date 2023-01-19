CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL);
CREATE TABLE IF NOT EXISTS "users" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar DEFAULT '' NOT NULL, "encrypted_password" varchar DEFAULT '' NOT NULL, "reset_password_token" varchar, "reset_password_sent_at" datetime(6), "remember_created_at" datetime(6), "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL);
CREATE TABLE sqlite_sequence(name,seq);
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE TABLE IF NOT EXISTS "active_storage_blobs" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "key" varchar NOT NULL, "filename" varchar NOT NULL, "content_type" varchar, "metadata" text, "service_name" varchar NOT NULL, "byte_size" bigint NOT NULL, "checksum" varchar, "created_at" datetime(6) NOT NULL);
CREATE UNIQUE INDEX "index_active_storage_blobs_on_key" ON "active_storage_blobs" ("key");
CREATE TABLE IF NOT EXISTS "active_storage_attachments" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar NOT NULL, "record_type" varchar NOT NULL, "record_id" bigint NOT NULL, "blob_id" bigint NOT NULL, "created_at" datetime(6) NOT NULL, CONSTRAINT "fk_rails_c3b3935057"
FOREIGN KEY ("blob_id")
  REFERENCES "active_storage_blobs" ("id")
);
CREATE INDEX "index_active_storage_attachments_on_blob_id" ON "active_storage_attachments" ("blob_id");
CREATE UNIQUE INDEX "index_active_storage_attachments_uniqueness" ON "active_storage_attachments" ("record_type", "record_id", "name", "blob_id");
CREATE TABLE IF NOT EXISTS "active_storage_variant_records" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "blob_id" bigint NOT NULL, "variation_digest" varchar NOT NULL, CONSTRAINT "fk_rails_993965df05"
FOREIGN KEY ("blob_id")
  REFERENCES "active_storage_blobs" ("id")
);
CREATE UNIQUE INDEX "index_active_storage_variant_records_uniqueness" ON "active_storage_variant_records" ("blob_id", "variation_digest");
CREATE TABLE IF NOT EXISTS "tags" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "tag" varchar, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL);
CREATE TABLE IF NOT EXISTS "folders" ("id" integer NOT NULL PRIMARY KEY, "name" varchar DEFAULT NULL, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, "document_id" integer DEFAULT NULL, CONSTRAINT "fk_rails_c53e0454fa"
FOREIGN KEY ("document_id")
  REFERENCES "documents" ("id")
);
CREATE INDEX "index_folders_on_document_id" ON "folders" ("document_id");
CREATE TABLE IF NOT EXISTS "documents_tags" ("document_id" integer NOT NULL, "tag_id" integer NOT NULL, "documents_id" integer DEFAULT NULL, CONSTRAINT "fk_rails_60e123ddbe"
FOREIGN KEY ("documents_id")
  REFERENCES "documents" ("id")
);
CREATE INDEX "index_documents_tags_on_documents_id" ON "documents_tags" ("documents_id");
CREATE TABLE IF NOT EXISTS "documents" ("id" integer NOT NULL PRIMARY KEY, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, "title" varchar DEFAULT NULL, "description" text DEFAULT NULL, "folder_id" integer DEFAULT NULL, "tag_id" integer DEFAULT NULL, "obj_type_id" integer DEFAULT NULL, CONSTRAINT "fk_rails_b55b867e32"
FOREIGN KEY ("tag_id")
  REFERENCES "tags" ("id")
, CONSTRAINT "fk_rails_404da7ca3d"
FOREIGN KEY ("folder_id")
  REFERENCES "folders" ("id")
, CONSTRAINT "fk_rails_0224df622b"
FOREIGN KEY ("obj_type_id")
  REFERENCES "obj_types" ("id")
);
CREATE INDEX "index_documents_on_folder_id" ON "documents" ("folder_id");
CREATE INDEX "index_documents_on_tag_id" ON "documents" ("tag_id");
CREATE INDEX "index_documents_on_obj_type_id" ON "documents" ("obj_type_id");
CREATE TABLE IF NOT EXISTS "obj_types" ("id" integer NOT NULL PRIMARY KEY, "doctype" varchar DEFAULT NULL, "max_length" integer DEFAULT NULL, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL);
