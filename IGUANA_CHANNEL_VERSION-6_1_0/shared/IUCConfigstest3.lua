local groupName = 'test3'
local envVariable = 'serverType'..groupName
local serverType = os.getenv(envVariable)

local iucConf = {}

iucConf.dev = {
   -- Configurations for patient csv File
   ['patientCsvPath'] = '/home/centos/iuc/test3/',
   ['patientCsvFile'] = 'PatientData.txt',
	
   -- Configurations for patient DB file
   ['patientDbPath'] = '/home/centos/iuc/test3/',
   ['patientDbFile'] = 'PatientData.sqlite'
}


iucConf.prod = {
   -- Configurations for patient csv File
   ['patientCsvPath'] = '/home/centos/iuc/prod/test3/',
   ['patientCsvFile'] = 'PatientData.txt',
	
   -- Configurations for patient DB file
   ['patientDbPath'] = '/home/centos/iuc/prod/test3/',
   ['patientDbFile'] = 'PatientData.sqlite'
}


return iucConf[serverType]
