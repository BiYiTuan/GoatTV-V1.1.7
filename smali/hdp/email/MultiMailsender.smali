.class public Lhdp/email/MultiMailsender;
.super Ljava/lang/Object;
.source "MultiMailsender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhdp/email/MultiMailsender$MultiMailSenderInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendMailtoMultiCC(Lhdp/email/MultiMailsender$MultiMailSenderInfo;)Z
    .locals 13
    .param p0, "mailInfo"    # Lhdp/email/MultiMailsender$MultiMailSenderInfo;

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "authenticator":Lhdp/email/MyAuthenticator;
    invoke-virtual {p0}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->isValidate()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 107
    new-instance v0, Lhdp/email/MyAuthenticator;

    .end local v0    # "authenticator":Lhdp/email/MyAuthenticator;
    invoke-virtual {p0}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->getUserName()Ljava/lang/String;

    move-result-object v11

    .line 108
    invoke-virtual {p0}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->getPassword()Ljava/lang/String;

    move-result-object v12

    .line 107
    invoke-direct {v0, v11, v12}, Lhdp/email/MyAuthenticator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .restart local v0    # "authenticator":Lhdp/email/MyAuthenticator;
    :cond_0
    invoke-virtual {p0}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->getProperties()Ljava/util/Properties;

    move-result-object v11

    invoke-static {v11, v0}, Ljavax/mail/Session;->getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v9

    .line 113
    .local v9, "sendMailSession":Ljavax/mail/Session;
    :try_start_0
    new-instance v7, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v7, v9}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 114
    .local v7, "mailMessage":Ljavax/mail/Message;
    new-instance v4, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {p0}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->getFromAddress()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 115
    .local v4, "from":Ljavax/mail/Address;
    invoke-virtual {v7, v4}, Ljavax/mail/Message;->setFrom(Ljavax/mail/Address;)V

    .line 116
    new-instance v10, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {p0}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->getToAddress()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 117
    .local v10, "to":Ljavax/mail/Address;
    sget-object v11, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v7, v11, v10}, Ljavax/mail/Message;->setRecipient(Ljavax/mail/Message$RecipientType;Ljavax/mail/Address;)V

    .line 119
    invoke-virtual {p0}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->getCcs()[Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "ccs":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 121
    array-length v11, v2

    new-array v1, v11, [Ljavax/mail/internet/InternetAddress;

    .line 122
    .local v1, "ccAdresses":[Ljavax/mail/Address;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v11, v2

    if-lt v6, v11, :cond_2

    .line 125
    sget-object v11, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v7, v11, v1}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 128
    .end local v1    # "ccAdresses":[Ljavax/mail/Address;
    .end local v6    # "i":I
    :cond_1
    invoke-virtual {p0}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->getSubject()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljavax/mail/Message;->setSubject(Ljava/lang/String;)V

    .line 129
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v11}, Ljavax/mail/Message;->setSentDate(Ljava/util/Date;)V

    .line 130
    new-instance v8, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v8}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    .line 131
    .local v8, "mainPart":Ljavax/mail/Multipart;
    new-instance v5, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v5}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 132
    .local v5, "html":Ljavax/mail/BodyPart;
    invoke-virtual {p0}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->getContent()Ljava/lang/String;

    move-result-object v11

    const-string v12, "text/html; charset=GBK"

    invoke-virtual {v5, v11, v12}, Ljavax/mail/BodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v8, v5}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 134
    invoke-virtual {v7, v8}, Ljavax/mail/Message;->setContent(Ljavax/mail/Multipart;)V

    .line 135
    invoke-static {v7}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V

    .line 136
    const/4 v11, 0x1

    .line 140
    .end local v2    # "ccs":[Ljava/lang/String;
    .end local v4    # "from":Ljavax/mail/Address;
    .end local v5    # "html":Ljavax/mail/BodyPart;
    .end local v7    # "mailMessage":Ljavax/mail/Message;
    .end local v8    # "mainPart":Ljavax/mail/Multipart;
    .end local v10    # "to":Ljavax/mail/Address;
    :goto_1
    return v11

    .line 123
    .restart local v1    # "ccAdresses":[Ljavax/mail/Address;
    .restart local v2    # "ccs":[Ljava/lang/String;
    .restart local v4    # "from":Ljavax/mail/Address;
    .restart local v6    # "i":I
    .restart local v7    # "mailMessage":Ljavax/mail/Message;
    .restart local v10    # "to":Ljavax/mail/Address;
    :cond_2
    new-instance v11, Ljavax/mail/internet/InternetAddress;

    aget-object v12, v2, v6

    invoke-direct {v11, v12}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    aput-object v11, v1, v6
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "ccAdresses":[Ljavax/mail/Address;
    .end local v2    # "ccs":[Ljava/lang/String;
    .end local v4    # "from":Ljavax/mail/Address;
    .end local v6    # "i":I
    .end local v7    # "mailMessage":Ljavax/mail/Message;
    .end local v10    # "to":Ljavax/mail/Address;
    :catch_0
    move-exception v3

    .line 138
    .local v3, "ex":Ljavax/mail/MessagingException;
    invoke-virtual {v3}, Ljavax/mail/MessagingException;->printStackTrace()V

    .line 140
    const/4 v11, 0x0

    goto :goto_1
.end method

.method public static sendMailtoMultiReceiver(Lhdp/email/MultiMailsender$MultiMailSenderInfo;)Z
    .locals 15
    .param p0, "mailInfo"    # Lhdp/email/MultiMailsender$MultiMailSenderInfo;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "authenticator":Lhdp/email/MyAuthenticator;
    invoke-virtual {p0}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->isValidate()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 66
    new-instance v0, Lhdp/email/MyAuthenticator;

    .end local v0    # "authenticator":Lhdp/email/MyAuthenticator;
    invoke-virtual {p0}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->getUserName()Ljava/lang/String;

    move-result-object v12

    .line 67
    invoke-virtual {p0}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->getPassword()Ljava/lang/String;

    move-result-object v13

    .line 66
    invoke-direct {v0, v12, v13}, Lhdp/email/MyAuthenticator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .restart local v0    # "authenticator":Lhdp/email/MyAuthenticator;
    :cond_0
    invoke-virtual {p0}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->getProperties()Ljava/util/Properties;

    move-result-object v12

    invoke-static {v12, v0}, Ljavax/mail/Session;->getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v8

    .line 72
    .local v8, "sendMailSession":Ljavax/mail/Session;
    :try_start_0
    new-instance v5, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v5, v8}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 73
    .local v5, "mailMessage":Ljavax/mail/Message;
    new-instance v2, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {p0}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->getFromAddress()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 74
    .local v2, "from":Ljavax/mail/Address;
    invoke-virtual {v5, v2}, Ljavax/mail/Message;->setFrom(Ljavax/mail/Address;)V

    .line 75
    const/4 v9, 0x0

    .line 76
    .local v9, "tos":[Ljavax/mail/Address;
    invoke-virtual {p0}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->getReceivers()[Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "receivers":[Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 78
    array-length v12, v7

    add-int/lit8 v12, v12, 0x1

    new-array v9, v12, [Ljavax/mail/internet/InternetAddress;

    .line 79
    const/4 v12, 0x0

    new-instance v13, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {p0}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->getToAddress()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    aput-object v13, v9, v12

    .line 80
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v12, v7

    if-lt v4, v12, :cond_1

    .line 87
    .end local v4    # "i":I
    :goto_1
    sget-object v12, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v5, v12, v9}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 89
    invoke-virtual {p0}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->getSubject()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljavax/mail/Message;->setSubject(Ljava/lang/String;)V

    .line 90
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v12}, Ljavax/mail/Message;->setSentDate(Ljava/util/Date;)V

    .line 91
    new-instance v6, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v6}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    .line 92
    .local v6, "mainPart":Ljavax/mail/Multipart;
    new-instance v3, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v3}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 93
    .local v3, "html":Ljavax/mail/BodyPart;
    invoke-virtual {p0}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->getContent()Ljava/lang/String;

    move-result-object v12

    const-string v13, "text/html; charset=GBK"

    invoke-virtual {v3, v12, v13}, Ljavax/mail/BodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v6, v3}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 95
    invoke-virtual {v5, v6}, Ljavax/mail/Message;->setContent(Ljavax/mail/Multipart;)V

    .line 96
    invoke-static {v5}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V

    .line 101
    .end local v2    # "from":Ljavax/mail/Address;
    .end local v3    # "html":Ljavax/mail/BodyPart;
    .end local v5    # "mailMessage":Ljavax/mail/Message;
    .end local v6    # "mainPart":Ljavax/mail/Multipart;
    .end local v7    # "receivers":[Ljava/lang/String;
    .end local v9    # "tos":[Ljavax/mail/Address;
    :goto_2
    return v10

    .line 81
    .restart local v2    # "from":Ljavax/mail/Address;
    .restart local v4    # "i":I
    .restart local v5    # "mailMessage":Ljavax/mail/Message;
    .restart local v7    # "receivers":[Ljava/lang/String;
    .restart local v9    # "tos":[Ljavax/mail/Address;
    :cond_1
    add-int/lit8 v12, v4, 0x1

    new-instance v13, Ljavax/mail/internet/InternetAddress;

    aget-object v14, v7, v4

    invoke-direct {v13, v14}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    aput-object v13, v9, v12

    .line 80
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 84
    .end local v4    # "i":I
    :cond_2
    const/4 v12, 0x1

    new-array v9, v12, [Ljavax/mail/internet/InternetAddress;

    .line 85
    const/4 v12, 0x0

    new-instance v13, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {p0}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->getToAddress()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    aput-object v13, v9, v12
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 98
    .end local v2    # "from":Ljavax/mail/Address;
    .end local v5    # "mailMessage":Ljavax/mail/Message;
    .end local v7    # "receivers":[Ljava/lang/String;
    .end local v9    # "tos":[Ljavax/mail/Address;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "ex":Ljavax/mail/MessagingException;
    invoke-virtual {v1}, Ljavax/mail/MessagingException;->printStackTrace()V

    move v10, v11

    .line 101
    goto :goto_2
.end method


# virtual methods
.method public sendTextMail(Lhdp/email/MultiMailsender$MultiMailSenderInfo;)Z
    .locals 13
    .param p1, "mailInfo"    # Lhdp/email/MultiMailsender$MultiMailSenderInfo;

    .prologue
    .line 23
    const-string v10, "sendbug"

    const-string v11, "sendTextMail"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "authenticator":Lhdp/email/MyAuthenticator;
    invoke-virtual {p1}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->getProperties()Ljava/util/Properties;

    move-result-object v6

    .line 26
    .local v6, "pro":Ljava/util/Properties;
    invoke-virtual {p1}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->isValidate()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 27
    new-instance v0, Lhdp/email/MyAuthenticator;

    .end local v0    # "authenticator":Lhdp/email/MyAuthenticator;
    invoke-virtual {p1}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->getUserName()Ljava/lang/String;

    move-result-object v10

    .line 28
    invoke-virtual {p1}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->getPassword()Ljava/lang/String;

    move-result-object v11

    .line 27
    invoke-direct {v0, v10, v11}, Lhdp/email/MyAuthenticator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .restart local v0    # "authenticator":Lhdp/email/MyAuthenticator;
    :cond_0
    invoke-static {v6, v0}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v8

    .line 33
    .local v8, "sendMailSession":Ljavax/mail/Session;
    :try_start_0
    new-instance v5, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v5, v8}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 34
    .local v5, "mailMessage":Ljavax/mail/Message;
    new-instance v2, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {p1}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->getFromAddress()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 35
    .local v2, "from":Ljavax/mail/Address;
    invoke-virtual {v5, v2}, Ljavax/mail/Message;->setFrom(Ljavax/mail/Address;)V

    .line 36
    const/4 v9, 0x0

    .line 37
    .local v9, "tos":[Ljavax/mail/Address;
    invoke-virtual {p1}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->getReceivers()[Ljava/lang/String;

    move-result-object v7

    .line 38
    .local v7, "receivers":[Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 39
    array-length v10, v7

    add-int/lit8 v10, v10, 0x1

    new-array v9, v10, [Ljavax/mail/internet/InternetAddress;

    .line 40
    const/4 v10, 0x0

    new-instance v11, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {p1}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->getToAddress()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    aput-object v11, v9, v10

    .line 41
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, v7

    if-lt v3, v10, :cond_1

    .line 49
    .end local v3    # "i":I
    :goto_1
    sget-object v10, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v5, v10, v9}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 50
    invoke-virtual {p1}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->getSubject()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljavax/mail/Message;->setSubject(Ljava/lang/String;)V

    .line 51
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v10}, Ljavax/mail/Message;->setSentDate(Ljava/util/Date;)V

    .line 52
    invoke-virtual {p1}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->getContent()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "mailContent":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljavax/mail/Message;->setText(Ljava/lang/String;)V

    .line 54
    invoke-static {v5}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V

    .line 55
    const-string v10, "sendbug"

    const-string v11, "sendTextMail over"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v10, 0x1

    .line 60
    .end local v2    # "from":Ljavax/mail/Address;
    .end local v4    # "mailContent":Ljava/lang/String;
    .end local v5    # "mailMessage":Ljavax/mail/Message;
    .end local v7    # "receivers":[Ljava/lang/String;
    .end local v9    # "tos":[Ljavax/mail/Address;
    :goto_2
    return v10

    .line 42
    .restart local v2    # "from":Ljavax/mail/Address;
    .restart local v3    # "i":I
    .restart local v5    # "mailMessage":Ljavax/mail/Message;
    .restart local v7    # "receivers":[Ljava/lang/String;
    .restart local v9    # "tos":[Ljavax/mail/Address;
    :cond_1
    add-int/lit8 v10, v3, 0x1

    new-instance v11, Ljavax/mail/internet/InternetAddress;

    aget-object v12, v7, v3

    invoke-direct {v11, v12}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    aput-object v11, v9, v10

    .line 41
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45
    .end local v3    # "i":I
    :cond_2
    const/4 v10, 0x1

    new-array v9, v10, [Ljavax/mail/internet/InternetAddress;

    .line 46
    const/4 v10, 0x0

    new-instance v11, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {p1}, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->getToAddress()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    aput-object v11, v9, v10
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 57
    .end local v2    # "from":Ljavax/mail/Address;
    .end local v5    # "mailMessage":Ljavax/mail/Message;
    .end local v7    # "receivers":[Ljava/lang/String;
    .end local v9    # "tos":[Ljavax/mail/Address;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "ex":Ljavax/mail/MessagingException;
    invoke-virtual {v1}, Ljavax/mail/MessagingException;->printStackTrace()V

    .line 60
    const/4 v10, 0x0

    goto :goto_2
.end method
