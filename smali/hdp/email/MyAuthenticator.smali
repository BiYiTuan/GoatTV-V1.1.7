.class public Lhdp/email/MyAuthenticator;
.super Ljavax/mail/Authenticator;
.source "MyAuthenticator.java"


# instance fields
.field password:Ljava/lang/String;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljavax/mail/Authenticator;-><init>()V

    .line 6
    iput-object v0, p0, Lhdp/email/MyAuthenticator;->userName:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lhdp/email/MyAuthenticator;->password:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljavax/mail/Authenticator;-><init>()V

    .line 6
    iput-object v0, p0, Lhdp/email/MyAuthenticator;->userName:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lhdp/email/MyAuthenticator;->password:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lhdp/email/MyAuthenticator;->userName:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lhdp/email/MyAuthenticator;->password:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;
    .locals 3

    .prologue
    .line 18
    new-instance v0, Ljavax/mail/PasswordAuthentication;

    iget-object v1, p0, Lhdp/email/MyAuthenticator;->userName:Ljava/lang/String;

    iget-object v2, p0, Lhdp/email/MyAuthenticator;->password:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
