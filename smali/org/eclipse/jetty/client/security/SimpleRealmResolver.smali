.class public Lorg/eclipse/jetty/client/security/SimpleRealmResolver;
.super Ljava/lang/Object;
.source "SimpleRealmResolver.java"

# interfaces
.implements Lorg/eclipse/jetty/client/security/RealmResolver;


# instance fields
.field private _realm:Lorg/eclipse/jetty/client/security/Realm;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/client/security/Realm;)V
    .locals 0
    .param p1, "realm"    # Lorg/eclipse/jetty/client/security/Realm;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/eclipse/jetty/client/security/SimpleRealmResolver;->_realm:Lorg/eclipse/jetty/client/security/Realm;

    .line 33
    return-void
.end method


# virtual methods
.method public getRealm(Ljava/lang/String;Lorg/eclipse/jetty/client/HttpDestination;Ljava/lang/String;)Lorg/eclipse/jetty/client/security/Realm;
    .locals 1
    .param p1, "realmName"    # Ljava/lang/String;
    .param p2, "destination"    # Lorg/eclipse/jetty/client/HttpDestination;
    .param p3, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lorg/eclipse/jetty/client/security/SimpleRealmResolver;->_realm:Lorg/eclipse/jetty/client/security/Realm;

    return-object v0
.end method
