# smp361

smp361 is a tool to show many functionalities of [MOAT370 Framework](https://github.com/dbarj/moat370).

The goal of MOAT370 framework is to allow anyone to easily extract information from Databases or Operating System into a fancy HTML format with tables and charts, with minimal coding required.

In Sample 360 you will see in action:
- HTML / CSV / TXT output from a query.
- Many Google Chart Graphs Output from SQL / CSV File
- HTML Spool from File / Query
- Text File Spool
- Skip Based on Target DB Version
- etc

OBS: The zip file in root directory is a sample HTML output.

## Execution Steps ##

1. Download and unzip latest smp361 version and, navigate to the root of smp361-master directory:

```
$ wget -O smp361.zip https://github.com/dbarj/smp361/archive/master.zip
$ unzip smp361.zip
$ cd smp361-master/
```

2. Download and unzip latest moat370 API inside smp361_master directory. Rename extract folder to moat370:

```
$ wget -O moat370.zip https://github.com/dbarj/moat370/archive/master.zip
$ unzip moat370.zip
$ mv moat370-master/* moat370/
```

3a. Execute smp361.sh:

```
$ bash smp361.sh sqlplus "/ as sysdba"
```

or

```
$ bash smp361.sh sqlcl "user/pass@db"
```

or

```
$ bash smp361.sh offline ' '
```

or

```
$ bash smp361.sh mysql '-h localhost -P 3306 --protocol=tcp -u root -p'
```

## Results ##

1. Unzip output **smp361_dbname_hostname_YYYYMMDD_HH24MI.zip** into a directory on your PC.

2. Review main html file **00001_smp361_dbname_index.html**.