/*
Navicat PGSQL Data Transfer

Source Server         : localhost
Source Server Version : 90309
Source Host           : localhost:5432
Source Database       : rosedelightshop
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90309
File Encoding         : 65001

Date: 2015-08-27 17:35:15
*/


-- ----------------------------
-- Sequence structure for "public"."blogs_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."blogs_id_seq";
CREATE SEQUENCE "public"."blogs_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."categories_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."categories_id_seq";
CREATE SEQUENCE "public"."categories_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."customers_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."customers_id_seq";
CREATE SEQUENCE "public"."customers_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."orders_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."orders_id_seq";
CREATE SEQUENCE "public"."orders_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."packages_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."packages_id_seq";
CREATE SEQUENCE "public"."packages_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."products_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."products_id_seq";
CREATE SEQUENCE "public"."products_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."services_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."services_id_seq";
CREATE SEQUENCE "public"."services_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."states_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."states_id_seq";
CREATE SEQUENCE "public"."states_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."stocks_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."stocks_id_seq";
CREATE SEQUENCE "public"."stocks_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Table structure for "public"."blogs"
-- ----------------------------
DROP TABLE "public"."blogs";
CREATE TABLE "public"."blogs" (
"id" int4 DEFAULT nextval('blogs_id_seq'::regclass) NOT NULL,
"type" varchar,
"title" varchar,
"published_date" timestamp(6),
"content" text,
"tag" varchar,
"created_at" timestamp(6) NOT NULL,
"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of blogs
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."categories"
-- ----------------------------
DROP TABLE "public"."categories";
CREATE TABLE "public"."categories" (
"id" int4 DEFAULT nextval('categories_id_seq'::regclass) NOT NULL,
"name" varchar,
"code" varchar,
"created_at" timestamp(6) NOT NULL,
"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of categories
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."customers"
-- ----------------------------
DROP TABLE "public"."customers";
CREATE TABLE "public"."customers" (
"id" int4 DEFAULT nextval('customers_id_seq'::regclass) NOT NULL,
"full_name" varchar,
"address1" varchar,
"address2" varchar,
"postcode" varchar,
"city" varchar,
"state_id" int4,
"mobile_no" varchar,
"phone_no" varchar,
"status" varchar,
"email" varchar,
"created_at" timestamp(6) NOT NULL,
"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of customers
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."orders"
-- ----------------------------
DROP TABLE "public"."orders";
CREATE TABLE "public"."orders" (
"id" int4 DEFAULT nextval('orders_id_seq'::regclass) NOT NULL,
"customer_id" int4,
"order_date" timestamp(6),
"payment_type" varchar,
"order_status" varchar,
"delivery_date" timestamp(6),
"created_at" timestamp(6) NOT NULL,
"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."packages"
-- ----------------------------
DROP TABLE "public"."packages";
CREATE TABLE "public"."packages" (
"id" int4 DEFAULT nextval('packages_id_seq'::regclass) NOT NULL,
"name" varchar,
"code" varchar,
"descriptions" varchar,
"created_at" timestamp(6) NOT NULL,
"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of packages
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."products"
-- ----------------------------
DROP TABLE "public"."products";
CREATE TABLE "public"."products" (
"id" int4 DEFAULT nextval('products_id_seq'::regclass) NOT NULL,
"product_name" varchar,
"product_code" varchar,
"price" float8,
"product_status" varchar,
"brand" varchar,
"descriptions" varchar,
"created_at" timestamp(6) NOT NULL,
"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of products
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."schema_migrations"
-- ----------------------------
DROP TABLE "public"."schema_migrations";
CREATE TABLE "public"."schema_migrations" (
"version" varchar NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of schema_migrations
-- ----------------------------
INSERT INTO "public"."schema_migrations" VALUES ('20150821100459');
INSERT INTO "public"."schema_migrations" VALUES ('20150821100706');
INSERT INTO "public"."schema_migrations" VALUES ('20150821100823');
INSERT INTO "public"."schema_migrations" VALUES ('20150821100914');
INSERT INTO "public"."schema_migrations" VALUES ('20150821101347');
INSERT INTO "public"."schema_migrations" VALUES ('20150821101507');
INSERT INTO "public"."schema_migrations" VALUES ('20150822083548');
INSERT INTO "public"."schema_migrations" VALUES ('20150822085534');
INSERT INTO "public"."schema_migrations" VALUES ('20150822085623');

-- ----------------------------
-- Table structure for "public"."services"
-- ----------------------------
DROP TABLE "public"."services";
CREATE TABLE "public"."services" (
"id" int4 DEFAULT nextval('services_id_seq'::regclass) NOT NULL,
"name" varchar,
"code" varchar,
"descriptions" varchar,
"created_at" timestamp(6) NOT NULL,
"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of services
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."states"
-- ----------------------------
DROP TABLE "public"."states";
CREATE TABLE "public"."states" (
"id" int4 DEFAULT nextval('states_id_seq'::regclass) NOT NULL,
"code" varchar,
"name" varchar,
"created_at" timestamp(6) NOT NULL,
"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of states
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."stocks"
-- ----------------------------
DROP TABLE "public"."stocks";
CREATE TABLE "public"."stocks" (
"id" int4 DEFAULT nextval('stocks_id_seq'::regclass) NOT NULL,
"product_id" int4,
"quantity" int4,
"status_id" int4,
"created_at" timestamp(6) NOT NULL,
"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of stocks
-- ----------------------------

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."blogs_id_seq" OWNED BY "blogs"."id";
ALTER SEQUENCE "public"."categories_id_seq" OWNED BY "categories"."id";
ALTER SEQUENCE "public"."customers_id_seq" OWNED BY "customers"."id";
ALTER SEQUENCE "public"."orders_id_seq" OWNED BY "orders"."id";
ALTER SEQUENCE "public"."packages_id_seq" OWNED BY "packages"."id";
ALTER SEQUENCE "public"."products_id_seq" OWNED BY "products"."id";
ALTER SEQUENCE "public"."services_id_seq" OWNED BY "services"."id";
ALTER SEQUENCE "public"."states_id_seq" OWNED BY "states"."id";
ALTER SEQUENCE "public"."stocks_id_seq" OWNED BY "stocks"."id";

-- ----------------------------
-- Primary Key structure for table "public"."blogs"
-- ----------------------------
ALTER TABLE "public"."blogs" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table "public"."categories"
-- ----------------------------
ALTER TABLE "public"."categories" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table "public"."customers"
-- ----------------------------
ALTER TABLE "public"."customers" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table "public"."orders"
-- ----------------------------
ALTER TABLE "public"."orders" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table "public"."packages"
-- ----------------------------
ALTER TABLE "public"."packages" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table "public"."products"
-- ----------------------------
ALTER TABLE "public"."products" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table schema_migrations
-- ----------------------------
CREATE UNIQUE INDEX "unique_schema_migrations" ON "public"."schema_migrations" USING btree ("version");

-- ----------------------------
-- Primary Key structure for table "public"."services"
-- ----------------------------
ALTER TABLE "public"."services" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table "public"."states"
-- ----------------------------
ALTER TABLE "public"."states" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table "public"."stocks"
-- ----------------------------
ALTER TABLE "public"."stocks" ADD PRIMARY KEY ("id");
