.class Lcom/baidu/mobstat/p;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/o;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/o;Ljava/lang/String;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/p;->a:Lcom/baidu/mobstat/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/baidu/mobstat/p;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/baidu/mobstat/p;->c:J

    iput-wide p5, p0, Lcom/baidu/mobstat/p;->d:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/p;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mobstat/p;->c:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mobstat/p;->d:J

    return-wide v0
.end method
