.class public Lhdp/email/SendToMe;
.super Ljava/lang/Object;
.source "SendToMe.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static send(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "con"    # Ljava/lang/String;

    .prologue
    .line 12
    new-instance v0, Lhdp/email/MultiMailsender$MultiMailSenderInfo;

    invoke-direct {v0}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;-><init>()V

    .line 13
    .local v0, "mailInfo":Lhdp/email/MultiMailsender$MultiMailSenderInfo;
    const-string v2, "smtp.163.com"

    invoke-virtual {v0, v2}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->setMailServerHost(Ljava/lang/String;)V

    .line 14
    const-string v2, "25"

    invoke-virtual {v0, v2}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->setMailServerPort(Ljava/lang/String;)V

    .line 15
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->setValidate(Z)V

    .line 16
    const-string v2, "hdp_live@163.com"

    invoke-virtual {v0, v2}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->setUserName(Ljava/lang/String;)V

    .line 17
    const-string v2, "yofann"

    invoke-virtual {v0, v2}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->setPassword(Ljava/lang/String;)V

    .line 18
    const-string v2, "hdp_live@163.com"

    invoke-virtual {v0, v2}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->setFromAddress(Ljava/lang/String;)V

    .line 19
    const-string v2, "hdplive@gmail.com"

    invoke-virtual {v0, v2}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->setToAddress(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p0}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->setSubject(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, p1}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->setContent(Ljava/lang/String;)V

    .line 22
    new-instance v1, Lhdp/email/MultiMailsender;

    invoke-direct {v1}, Lhdp/email/MultiMailsender;-><init>()V

    .line 23
    .local v1, "sms":Lhdp/email/MultiMailsender;
    invoke-virtual {v1, v0}, Lhdp/email/MultiMailsender;->sendTextMail(Lhdp/email/MultiMailsender$MultiMailSenderInfo;)Z

    .line 24
    return-void
.end method

.method public static sendthread(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "con"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v0, Lhdp/email/SendToMe$1;

    invoke-direct {v0, p0, p1}, Lhdp/email/SendToMe$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Lhdp/email/SendToMe$1;->start()V

    .line 32
    return-void
.end method
