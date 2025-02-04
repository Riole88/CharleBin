install:
	bin/composer install

start:
	php -S localhost:8080

test:
	curl -s localhost:8080 | grep -q "<title>PrivateBin</title>"

lint:
	find .  -type f -path '*lib*/*' -name '*.php' -exec php -l {} \;
	./vendor/bin/phpmd ./lib ansi codesize,unusedcode,naming
	./vendor/bin/phpcs --extensions=php ./lib/
