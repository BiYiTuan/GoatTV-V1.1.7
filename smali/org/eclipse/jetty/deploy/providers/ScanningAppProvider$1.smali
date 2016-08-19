.class Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider$1;
.super Ljava/lang/Object;
.source "ScanningAppProvider.java"

# interfaces
.implements Lorg/eclipse/jetty/util/Scanner$DiscreteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider$1;->this$0:Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;

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
    .line 53
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider$1;->this$0:Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->fileAdded(Ljava/lang/String;)V

    .line 54
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
    .line 58
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider$1;->this$0:Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->fileChanged(Ljava/lang/String;)V

    .line 59
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
    .line 63
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider$1;->this$0:Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->fileRemoved(Ljava/lang/String;)V

    .line 64
    return-void
.end method
