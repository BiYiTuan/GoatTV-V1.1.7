.class Lhdp/http/CrashHandler$3;
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

.field private final synthetic val$cont:Landroid/content/Context;


# direct methods
.method constructor <init>(Lhdp/http/CrashHandler;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/http/CrashHandler$3;->this$0:Lhdp/http/CrashHandler;

    iput-object p2, p0, Lhdp/http/CrashHandler$3;->val$cont:Landroid/content/Context;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lhdp/http/CrashHandler$3;->this$0:Lhdp/http/CrashHandler;

    iget-object v1, p0, Lhdp/http/CrashHandler$3;->val$cont:Landroid/content/Context;

    # invokes: Lhdp/http/CrashHandler;->Clear_db(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lhdp/http/CrashHandler;->access$2(Lhdp/http/CrashHandler;Landroid/content/Context;)V

    .line 181
    return-void
.end method
