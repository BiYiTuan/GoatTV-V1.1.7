.class Lhdp/http/CrashHandler$1;
.super Ljava/lang/Thread;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/http/CrashHandler;->handleException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/http/CrashHandler;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$ex:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lhdp/http/CrashHandler;Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/http/CrashHandler$1;->this$0:Lhdp/http/CrashHandler;

    iput-object p2, p0, Lhdp/http/CrashHandler$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lhdp/http/CrashHandler$1;->val$ex:Ljava/lang/Throwable;

    .line 103
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 106
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 107
    iget-object v0, p0, Lhdp/http/CrashHandler$1;->this$0:Lhdp/http/CrashHandler;

    iget-object v1, p0, Lhdp/http/CrashHandler$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lhdp/http/CrashHandler$1;->val$ex:Ljava/lang/Throwable;

    # invokes: Lhdp/http/CrashHandler;->sendAppCrashReport(Landroid/content/Context;Ljava/lang/Throwable;)V
    invoke-static {v0, v1, v2}, Lhdp/http/CrashHandler;->access$0(Lhdp/http/CrashHandler;Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 109
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 110
    return-void
.end method
