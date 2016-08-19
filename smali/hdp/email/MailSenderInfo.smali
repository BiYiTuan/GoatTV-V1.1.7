.class public Lhdp/email/MailSenderInfo;
.super Ljava/lang/Object;
.source "MailSenderInfo.java"


# instance fields
.field private attachFileNames:[Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private fromAddress:Ljava/lang/String;

.field private mailServerHost:Ljava/lang/String;

.field private mailServerPort:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private subject:Ljava/lang/String;

.field private toAddress:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private validate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "25"

    iput-object v0, p0, Lhdp/email/MailSenderInfo;->mailServerPort:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhdp/email/MailSenderInfo;->validate:Z

    .line 5
    return-void
.end method


# virtual methods
.method public getAttachFileNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lhdp/email/MailSenderInfo;->attachFileNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lhdp/email/MailSenderInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lhdp/email/MailSenderInfo;->fromAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMailServerHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lhdp/email/MailSenderInfo;->mailServerHost:Ljava/lang/String;

    return-object v0
.end method

.method public getMailServerPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lhdp/email/MailSenderInfo;->mailServerPort:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lhdp/email/MailSenderInfo;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/Properties;
    .locals 3

    .prologue
    .line 20
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 21
    .local v0, "p":Ljava/util/Properties;
    const-string v1, "mail.smtp.host"

    iget-object v2, p0, Lhdp/email/MailSenderInfo;->mailServerHost:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v1, "mail.smtp.port"

    iget-object v2, p0, Lhdp/email/MailSenderInfo;->mailServerPort:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v2, "mail.smtp.auth"

    iget-boolean v1, p0, Lhdp/email/MailSenderInfo;->validate:Z

    if-eqz v1, :cond_0

    const-string v1, "true"

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-object v0

    .line 23
    :cond_0
    const-string v1, "false"

    goto :goto_0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lhdp/email/MailSenderInfo;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lhdp/email/MailSenderInfo;->toAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lhdp/email/MailSenderInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public isValidate()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lhdp/email/MailSenderInfo;->validate:Z

    return v0
.end method

.method public setAttachFileNames([Ljava/lang/String;)V
    .locals 0
    .param p1, "fileNames"    # [Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lhdp/email/MailSenderInfo;->attachFileNames:[Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "textContent"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lhdp/email/MailSenderInfo;->content:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setFromAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "fromAddress"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lhdp/email/MailSenderInfo;->fromAddress:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setMailServerHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "mailServerHost"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lhdp/email/MailSenderInfo;->mailServerHost:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setMailServerPort(Ljava/lang/String;)V
    .locals 0
    .param p1, "mailServerPort"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lhdp/email/MailSenderInfo;->mailServerPort:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lhdp/email/MailSenderInfo;->password:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lhdp/email/MailSenderInfo;->subject:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setToAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "toAddress"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lhdp/email/MailSenderInfo;->toAddress:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lhdp/email/MailSenderInfo;->userName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setValidate(Z)V
    .locals 0
    .param p1, "validate"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lhdp/email/MailSenderInfo;->validate:Z

    .line 50
    return-void
.end method
