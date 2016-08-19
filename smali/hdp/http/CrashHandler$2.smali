.class Lhdp/http/CrashHandler$2;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/http/CrashHandler;->sendAppCrashReport(Landroid/content/Context;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/http/CrashHandler;

.field private final synthetic val$ex:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lhdp/http/CrashHandler;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/http/CrashHandler$2;->this$0:Lhdp/http/CrashHandler;

    iput-object p2, p0, Lhdp/http/CrashHandler$2;->val$ex:Ljava/lang/Throwable;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 172
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 173
    const-string v0, "debug"

    iget-object v1, p0, Lhdp/http/CrashHandler$2;->this$0:Lhdp/http/CrashHandler;

    iget-object v2, p0, Lhdp/http/CrashHandler$2;->val$ex:Ljava/lang/Throwable;

    # invokes: Lhdp/http/CrashHandler;->saveCatchInfo2File(Ljava/lang/Throwable;)Ljava/lang/String;
    invoke-static {v1, v2}, Lhdp/http/CrashHandler;->access$1(Lhdp/http/CrashHandler;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhdp/email/SendToMe;->sendthread(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lhdp/http/AppManager;->getAppManager()Lhdp/http/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lhdp/http/AppManager;->finishAllActivity()V

    .line 175
    return-void
.end method
