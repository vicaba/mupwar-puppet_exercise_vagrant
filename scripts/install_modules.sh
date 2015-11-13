# Para que le podamos pasar el directorio donde instalar los módulos, le pasamos al script un parámetro ($1)

if [ ! -d "$1/php" ]; then
	puppet module install example42/php -i $1 -v 2.0.25;
fi
if [ ! -d "$1/apache" ]; then
	puppet module install puppetlabs/apache -i $1 -v 1.6.0;
fi
if [ ! -d "$1/mysql" ]; then
	puppet module install puppetlabs-mysql -i $1 -v 3.6.1;
fi

if [ ! -d "$1/epel" ]; then
	puppet module install stahnma-epel -i $1 -v 1.1.1;
fi

if [ ! -d "$1/memcached" ]; then
	puppet module install saz-memcached -i $1 -v 2.8.1;
fi

if [ ! -d "$1/deploying" ]; then
	git clone https://github.com/vicaba/puppet_exercise.git $1/deploying
fi
