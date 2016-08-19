.class public Lorg/eclipse/jetty/security/MappedLoginService$KnownUser;
.super Ljava/lang/Object;
.source "MappedLoginService.java"

# interfaces
.implements Lorg/eclipse/jetty/security/MappedLoginService$UserPrincipal;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/security/MappedLoginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KnownUser"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x566a776f13ae562eL


# instance fields
.field private final _credential:Lorg/eclipse/jetty/util/security/Credential;

.field private final _name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/jetty/util/security/Credential;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "credential"    # Lorg/eclipse/jetty/util/security/Credential;

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object p1, p0, Lorg/eclipse/jetty/security/MappedLoginService$KnownUser;->_name:Ljava/lang/String;

    .line 306
    iput-object p2, p0, Lorg/eclipse/jetty/security/MappedLoginService$KnownUser;->_credential:Lorg/eclipse/jetty/util/security/Credential;

    .line 307
    return-void
.end method


# virtual methods
.method public authenticate(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "credentials"    # Ljava/lang/Object;

    .prologue
    .line 312
    iget-object v0, p0, Lorg/eclipse/jetty/security/MappedLoginService$KnownUser;->_credential:Lorg/eclipse/jetty/util/security/Credential;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/security/MappedLoginService$KnownUser;->_credential:Lorg/eclipse/jetty/util/security/Credential;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/security/Credential;->check(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lorg/eclipse/jetty/security/MappedLoginService$KnownUser;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lorg/eclipse/jetty/security/MappedLoginService$KnownUser;->_name:Ljava/lang/String;

    return-object v0
.end method
