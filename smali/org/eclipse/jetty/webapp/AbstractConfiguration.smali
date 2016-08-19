.class public Lorg/eclipse/jetty/webapp/AbstractConfiguration;
.super Ljava/lang/Object;
.source "AbstractConfiguration.java"

# interfaces
.implements Lorg/eclipse/jetty/webapp/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cloneConfigure(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 0
    .param p1, "template"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    return-void
.end method

.method public configure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 0
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 11
    return-void
.end method

.method public deconfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 0
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    return-void
.end method

.method public destroy(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 0
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    return-void
.end method

.method public postConfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 0
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 15
    return-void
.end method

.method public preConfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 0
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 7
    return-void
.end method
