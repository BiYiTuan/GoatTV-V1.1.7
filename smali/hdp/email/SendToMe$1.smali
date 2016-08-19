.class Lhdp/email/SendToMe$1;
.super Ljava/lang/Thread;
.source "SendToMe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/email/SendToMe;->sendthread(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$con:Ljava/lang/String;

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/email/SendToMe$1;->val$title:Ljava/lang/String;

    iput-object p2, p0, Lhdp/email/SendToMe$1;->val$con:Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lhdp/email/SendToMe$1;->val$title:Ljava/lang/String;

    iget-object v1, p0, Lhdp/email/SendToMe$1;->val$con:Ljava/lang/String;

    invoke-static {v0, v1}, Lhdp/email/SendToMe;->send(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method
