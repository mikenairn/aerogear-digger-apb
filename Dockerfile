FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"bmFtZTogYWVyb2dlYXItZGlnZ2VyLWFwYgppbWFnZTogZmVlZGhlbnJ5L2Flcm9nZWFyLWRpZ2dl\
ci1hcGIKZGVzY3JpcHRpb246IE1vYmlsZSBDSS9DRCBzZXJ2aWNlIHRoYXQgaW50ZWdyYXRlcyB3\
aXRoIEplbmtpbnMgUGlwZWxpbmVzIHRvIHRlc3QgYW5kIGJ1aWxkIHlvdXIgbW9iaWxlIGJpbmFy\
aWVzLgpiaW5kYWJsZTogRmFsc2UKYXN5bmM6IG9wdGlvbmFsCnRhZ3M6CiAgLSBtb2JpbGUtc2Vy\
dmljZQptZXRhZGF0YToKICBkaXNwbGF5TmFtZTogTW9iaWxlIENJL0NECiAgbG9uZ0Rlc2NyaXB0\
aW9uOiAiVG8gdXNlIHRoZSBNb2JpbGUgQ0kvQ0Qgc2VydmljZSB5b3UgbXVzdCBmaXJzdCBhZ3Jl\
ZSB0byB0aGUgQW5kcm9pZCBTREsgTGljZW5zZSBBZ3JlZW1lbnQuIEJ5IGNoZWNraW5nIHRoaXMg\
Ym94IHlvdSBhcmUgYWdyZWVpbmcgdG8gdGhlIEFuZHJvaWQgU29mdHdhcmUgRGV2ZWxvcG1lbnQg\
S2l0IExpY2Vuc2UgYWdyZWVtZW50IHdoaWNoIGNhbiBiZSByZWFkIGF0IHRoZSBmb2xsb3dpbmcg\
VVJMOiBodHRwczovL2RldmVsb3Blci5hbmRyb2lkLmNvbS9zdHVkaW8vdGVybXMuaHRtbFxuXG4u\
IElmIHRoZSBib3ggaXMgbm90IGNoZWNrZWQgdGhlIGluc3RhbGxlciB3aWxsIHRha2Ugbm8gYWN0\
aW9uLiIKICBjb25zb2xlLm9wZW5zaGlmdC5pby9pY29uQ2xhc3M6IGZvbnQtaWNvbiBpY29uLWpl\
bmtpbnMKcGxhbnM6CiAgLSBuYW1lOiBkZWZhdWx0CiAgICBkZXNjcmlwdGlvbjogRGVmYXVsdCBw\
bGFuCiAgICBmcmVlOiBUcnVlCiAgICBtZXRhZGF0YToge30KICAgIHBhcmFtZXRlcnM6CiAgICAt\
IG5hbWU6IEFORFJPSURfTElDRU5TRV9BR1JFRU1FTlQKICAgICAgZGVmYXVsdDogIiIKICAgICAg\
cGF0dGVybjogXnllcyQKICAgICAgdHlwZTogc3RyaW5nCiAgICAgIGRlc2NyaXB0aW9uOiAiVHlw\
ZSAneWVzJyBhYm92ZSB0byBhY2NlcHQgdGhlIEFuZHJvaWQgU0RLIExpY2Vuc2UgQWdyZWVtZW50\
LiBodHRwczovL2RldmVsb3Blci5hbmRyb2lkLmNvbS9zdHVkaW8vdGVybXMuaHRtbCIKICAgICAg\
dGl0bGU6IEFuZHJvaWQgU0RLIExpY2Vuc2UgQWdyZWVtZW50CiAgICAgIHJlcXVpcmVkOiBUcnVl\
Cg=="































COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
