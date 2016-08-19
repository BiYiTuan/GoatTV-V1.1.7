.class public Lhdp/http/DiyService$MyServiceImpl;
.super Lhdp/http/Hdiy$Stub;
.source "DiyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/http/DiyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyServiceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/http/DiyService;


# direct methods
.method public constructor <init>(Lhdp/http/DiyService;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lhdp/http/DiyService$MyServiceImpl;->this$0:Lhdp/http/DiyService;

    invoke-direct {p0}, Lhdp/http/Hdiy$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ChangeNum(I)V
    .locals 0
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 37
    return-void
.end method

.method public GetNamebuNum(I)Ljava/lang/String;
    .locals 1
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lhdp/http/DiyService$MyServiceImpl;->this$0:Lhdp/http/DiyService;

    invoke-virtual {v0}, Lhdp/http/DiyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhdp/util/LiveDataHelper;->getInstance(Landroid/content/Context;)Lhdp/util/LiveDataHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhdp/util/LiveDataHelper;->getCnum(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public InsertDiyList(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lhdp/http/DiyService$MyServiceImpl;->this$0:Lhdp/http/DiyService;

    # invokes: Lhdp/http/DiyService;->MyTv(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, p1, p2}, Lhdp/http/DiyService;->access$0(Lhdp/http/DiyService;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
