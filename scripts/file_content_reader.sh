#!/bin/bash

while IFS='' read data
do
	echo $data
done < $1
