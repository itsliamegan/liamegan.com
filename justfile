build:
	uv run eden build

serve:
	uv run eden serve

install:
	npm ci
	uv sync --locked

deploy: build
	npx wrangler deploy
