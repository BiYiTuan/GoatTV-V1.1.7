.class public Lorg/eclipse/jetty/security/RoleInfo;
.super Ljava/lang/Object;
.source "RoleInfo.java"


# instance fields
.field private _checked:Z

.field private _forbidden:Z

.field private _isAnyRole:Z

.field private final _roles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _userDataConstraint:Lorg/eclipse/jetty/security/UserDataConstraint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_roles:Ljava/util/Set;

    .line 38
    return-void
.end method


# virtual methods
.method public addRole(Ljava/lang/String;)V
    .locals 1
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_roles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public combine(Lorg/eclipse/jetty/security/RoleInfo;)V
    .locals 4
    .param p1, "other"    # Lorg/eclipse/jetty/security/RoleInfo;

    .prologue
    const/4 v3, 0x1

    .line 118
    iget-boolean v2, p1, Lorg/eclipse/jetty/security/RoleInfo;->_forbidden:Z

    if-eqz v2, :cond_1

    .line 119
    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/security/RoleInfo;->setForbidden(Z)V

    .line 130
    :cond_0
    :goto_0
    iget-object v2, p1, Lorg/eclipse/jetty/security/RoleInfo;->_userDataConstraint:Lorg/eclipse/jetty/security/UserDataConstraint;

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/security/RoleInfo;->setUserDataConstraint(Lorg/eclipse/jetty/security/UserDataConstraint;)V

    .line 131
    return-void

    .line 120
    :cond_1
    iget-boolean v2, p1, Lorg/eclipse/jetty/security/RoleInfo;->_checked:Z

    if-nez v2, :cond_2

    .line 121
    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/security/RoleInfo;->setChecked(Z)V

    goto :goto_0

    .line 122
    :cond_2
    iget-boolean v2, p1, Lorg/eclipse/jetty/security/RoleInfo;->_isAnyRole:Z

    if-eqz v2, :cond_3

    .line 123
    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/security/RoleInfo;->setAnyRole(Z)V

    goto :goto_0

    .line 124
    :cond_3
    iget-boolean v2, p0, Lorg/eclipse/jetty/security/RoleInfo;->_isAnyRole:Z

    if-nez v2, :cond_0

    .line 126
    iget-object v2, p1, Lorg/eclipse/jetty/security/RoleInfo;->_roles:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    .local v1, "r":Ljava/lang/String;
    iget-object v2, p0, Lorg/eclipse/jetty/security/RoleInfo;->_roles:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getRoles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_roles:Ljava/util/Set;

    return-object v0
.end method

.method public getUserDataConstraint()Lorg/eclipse/jetty/security/UserDataConstraint;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_userDataConstraint:Lorg/eclipse/jetty/security/UserDataConstraint;

    return-object v0
.end method

.method public isAnyRole()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_isAnyRole:Z

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_checked:Z

    return v0
.end method

.method public isForbidden()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_forbidden:Z

    return v0
.end method

.method public setAnyRole(Z)V
    .locals 1
    .param p1, "anyRole"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/RoleInfo;->_isAnyRole:Z

    .line 81
    if-eqz p1, :cond_0

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_checked:Z

    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_roles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 86
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 47
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/RoleInfo;->_checked:Z

    .line 48
    if-nez p1, :cond_0

    .line 50
    iput-boolean v1, p0, Lorg/eclipse/jetty/security/RoleInfo;->_forbidden:Z

    .line 51
    iget-object v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_roles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 52
    iput-boolean v1, p0, Lorg/eclipse/jetty/security/RoleInfo;->_isAnyRole:Z

    .line 54
    :cond_0
    return-void
.end method

.method public setForbidden(Z)V
    .locals 1
    .param p1, "forbidden"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/RoleInfo;->_forbidden:Z

    .line 64
    if-eqz p1, :cond_0

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_checked:Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_userDataConstraint:Lorg/eclipse/jetty/security/UserDataConstraint;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_isAnyRole:Z

    .line 69
    iget-object v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_roles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 71
    :cond_0
    return-void
.end method

.method public setUserDataConstraint(Lorg/eclipse/jetty/security/UserDataConstraint;)V
    .locals 2
    .param p1, "userDataConstraint"    # Lorg/eclipse/jetty/security/UserDataConstraint;

    .prologue
    .line 95
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null UserDataConstraint"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_userDataConstraint:Lorg/eclipse/jetty/security/UserDataConstraint;

    if-nez v0, :cond_1

    .line 98
    iput-object p1, p0, Lorg/eclipse/jetty/security/RoleInfo;->_userDataConstraint:Lorg/eclipse/jetty/security/UserDataConstraint;

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_userDataConstraint:Lorg/eclipse/jetty/security/UserDataConstraint;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/security/UserDataConstraint;->combine(Lorg/eclipse/jetty/security/UserDataConstraint;)Lorg/eclipse/jetty/security/UserDataConstraint;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_userDataConstraint:Lorg/eclipse/jetty/security/UserDataConstraint;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{RoleInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_forbidden:Z

    if-eqz v0, :cond_0

    const-string v0, ",F"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_checked:Z

    if-eqz v0, :cond_1

    const-string v0, ",C"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_isAnyRole:Z

    if-eqz v0, :cond_2

    const-string v0, ",*"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_roles:Ljava/util/Set;

    goto :goto_2
.end method
