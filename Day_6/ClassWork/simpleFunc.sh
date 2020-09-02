#!/bin/bash -x

function FindNumberOfCharacter
{
	echo $1 |wc -w
}
FindNumberOfCharacter "helloWorld"
