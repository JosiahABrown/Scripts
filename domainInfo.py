#!/bin/python3

# pip install python-whois

import whois

domain = input("Enter domain: ")
domain_info = whois.whois(domain)

for key, value in domain_info.items():
    print(f"{key} : {value}")
