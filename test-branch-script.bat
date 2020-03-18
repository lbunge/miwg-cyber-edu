@echo off
net users testuser /add
net users sampleuser /add
net localgroup localadmin /add
net localgroup localadmin testuser /add
net localgroup localadmin sampleuser /add
