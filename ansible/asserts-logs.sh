cat logs.sh
#!/bin/bash
tail -200 /var/log/syslog > ../asserts.log
tail -200 aws-cloudwatch-exporter/aws-exporter.log > ../asserts-exporter.log
tar -zcvf ../asserts-log.tar.gz ../asserts-exporter.log ../asserts.log
rm -rf ../asserts-exporter.log ../asserts.log
