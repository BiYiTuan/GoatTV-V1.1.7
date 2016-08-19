.class public Lorg/eclipse/jetty/deploy/ContextDeployer$ScannerListener;
.super Ljava/lang/Object;
.source "ContextDeployer.java"

# interfaces
.implements Lorg/eclipse/jetty/util/Scanner$DiscreteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/deploy/ContextDeployer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ScannerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/deploy/ContextDeployer;


# direct methods
.method protected constructor <init>(Lorg/eclipse/jetty/deploy/ContextDeployer;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/ContextDeployer$ScannerListener;->this$0:Lorg/eclipse/jetty/deploy/ContextDeployer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fileAdded(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer$ScannerListener;->this$0:Lorg/eclipse/jetty/deploy/ContextDeployer;

    # invokes: Lorg/eclipse/jetty/deploy/ContextDeployer;->deploy(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lorg/eclipse/jetty/deploy/ContextDeployer;->access$000(Lorg/eclipse/jetty/deploy/ContextDeployer;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public fileChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer$ScannerListener;->this$0:Lorg/eclipse/jetty/deploy/ContextDeployer;

    # invokes: Lorg/eclipse/jetty/deploy/ContextDeployer;->redeploy(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lorg/eclipse/jetty/deploy/ContextDeployer;->access$100(Lorg/eclipse/jetty/deploy/ContextDeployer;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public fileRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/ContextDeployer$ScannerListener;->this$0:Lorg/eclipse/jetty/deploy/ContextDeployer;

    # invokes: Lorg/eclipse/jetty/deploy/ContextDeployer;->undeploy(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lorg/eclipse/jetty/deploy/ContextDeployer;->access$200(Lorg/eclipse/jetty/deploy/ContextDeployer;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const-string v0, "ContextDeployer$Scanner"

    return-object v0
.end method
