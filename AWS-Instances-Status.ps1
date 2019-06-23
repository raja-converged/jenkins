<# This script will give the status of all yoru instances running in yoru AWS account. It will give with the instanceID and before running this make sure you connect to AWS account using
﻿your AccessKey and SecretKey and right permissions to access the EC2 instances.#>
﻿foreach ($i in ((Get-EC2Instance).instances |select InstanceId)) { (Get-EC2InstanceStatus -InstanceId $i.InstanceId).status |select Details,Status,@{Name ="Instance ID";expr = {$i.InstanceId}} }
﻿foreach ($i in ((Get-EC2Instance).instances |select InstanceId)) { (Get-EC2InstanceStatus -InstanceId $i.InstanceId).systemstatus |select Details,Status,@{Name ="Instance ID";expr = {$i.InstanceId}} }
﻿