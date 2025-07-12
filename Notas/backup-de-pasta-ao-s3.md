# Backup de pasta ao S3
## Requisitos
- AWS CLI
- CRON

## Permissões do IAM (Grupo) para o S3
```
{
	"Version": "2012-10-17",
	"Statement": [
		{
			"Effect": "Allow",
			"Action": [
				"s3:ListBucket"
			],
			"Resource": "arn:aws:s3:::nome-bucket"
		},
		{
			"Effect": "Allow",
			"Action": [
				"s3:PutObject",
				"s3:PutObjectAcl"
			],
			"Resource": "arn:aws:s3:::nome-bucket/*"
		}
	]
}
```

## Script para execução automática do AWS CLI
```
#!/bin/bash

# Configurações
PASTA="/home/USUARIO/PASTA"
BUCKET="nome-bucket"
DATA=$(date +%Y%m%d)
ARQUIVO_BACKUP="nome-bucket-$DATA.tar.gz"

# Compactar pasta
tar -czf /tmp/$ARQUIVO_BACKUP $PASTA

# Enviar para S3
aws s3 cp /tmp/$ARQUIVO_BACKUP s3://$BUCKET/

# Remover arquivo temporário
rm /tmp/$ARQUIVO_BACKUP
```

## Crontab
`0 21 * * * /home/USUARIO/script.sh`