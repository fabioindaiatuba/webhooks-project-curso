CREATE TABLE "webhooks" (
	"id" text PRIMARY KEY NOT NULL,
	"method" text NOT NULL,
	"pathname" text NOT NULL,
	"ip" text NOT NULL,
	"statusCode" integer NOT NULL,
	"contentType" text,
	"contentLength" integer,
	"queryParams" jsonb,
	"headers" jsonb NOT NULL,
	"body" text,
	"createdAt" timestamp DEFAULT now() NOT NULL
);
