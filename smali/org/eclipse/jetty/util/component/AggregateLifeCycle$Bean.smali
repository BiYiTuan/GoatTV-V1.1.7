.class Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;
.super Ljava/lang/Object;
.source "AggregateLifeCycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/component/AggregateLifeCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Bean"
.end annotation


# instance fields
.field final _bean:Ljava/lang/Object;

.field volatile _managed:Z

.field final synthetic this$0:Lorg/eclipse/jetty/util/component/AggregateLifeCycle;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/util/component/AggregateLifeCycle;Ljava/lang/Object;)V
    .locals 1
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 37
    iput-object p1, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->this$0:Lorg/eclipse/jetty/util/component/AggregateLifeCycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_managed:Z

    .line 38
    iput-object p2, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_bean:Ljava/lang/Object;

    .line 39
    return-void
.end method
