#!/bin/bash

bundle
bundle install

cd chef/; 
librarian-chef install; 
cd ../;
