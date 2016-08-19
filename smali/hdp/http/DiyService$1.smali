.class Lhdp/http/DiyService$1;
.super Ljava/lang/Object;
.source "DiyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/http/DiyService;->MyTv(Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/http/DiyService;

.field private final synthetic val$channels:Ljava/util/ArrayList;

.field private final synthetic val$dataHelper:Lhdp/util/LiveDataHelper;


# direct methods
.method constructor <init>(Lhdp/http/DiyService;Lhdp/util/LiveDataHelper;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/http/DiyService$1;->this$0:Lhdp/http/DiyService;

    iput-object p2, p0, Lhdp/http/DiyService$1;->val$dataHelper:Lhdp/util/LiveDataHelper;

    iput-object p3, p0, Lhdp/http/DiyService$1;->val$channels:Ljava/util/ArrayList;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lhdp/http/DiyService$1;->val$dataHelper:Lhdp/util/LiveDataHelper;

    iget-object v1, p0, Lhdp/http/DiyService$1;->val$channels:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lhdp/util/LiveDataHelper;->insertChannels(Ljava/util/ArrayList;)V

    .line 77
    return-void
.end method
