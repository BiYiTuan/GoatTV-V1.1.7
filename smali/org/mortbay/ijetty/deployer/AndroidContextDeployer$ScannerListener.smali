.class public Lorg/mortbay/ijetty/deployer/AndroidContextDeployer$ScannerListener;
.super Ljava/lang/Object;
.source "AndroidContextDeployer.java"

# interfaces
.implements Lorg/eclipse/jetty/util/Scanner$DiscreteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ScannerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;


# direct methods
.method protected constructor <init>(Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer$ScannerListener;->this$0:Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;

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
    .line 36
    iget-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer$ScannerListener;->this$0:Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;

    invoke-virtual {v0, p1}, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->deploy(Ljava/lang/String;)V

    .line 37
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
    .line 45
    iget-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer$ScannerListener;->this$0:Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;

    invoke-virtual {v0, p1}, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->redeploy(Ljava/lang/String;)V

    .line 46
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
    .line 54
    iget-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer$ScannerListener;->this$0:Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;

    invoke-virtual {v0, p1}, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->undeploy(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "ContextDeployer$Scanner"

    return-object v0
.end method
