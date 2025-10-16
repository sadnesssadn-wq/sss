.class public Lb/l/a/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/l/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lb/l/a/a;


# direct methods
.method public constructor <init>(Lb/l/a/a;)V
    .locals 0

    iput-object p1, p0, Lb/l/a/a$a;->a:Lb/l/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    iget-object v0, p0, Lb/l/a/a$a;->a:Lb/l/a/a;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lb/l/a/a;->e:J

    iget-object v0, p0, Lb/l/a/a$a;->a:Lb/l/a/a;

    iget-wide v1, v0, Lb/l/a/a;->e:J

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object v7, v0, Lb/l/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    iget-object v7, v0, Lb/l/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/l/a/a$b;

    if-nez v7, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    iget-object v8, v0, Lb/l/a/a;->a:Lb/f/h;

    const/4 v9, 0x0

    .line 3
    invoke-virtual {v8, v7, v9}, Lb/f/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 4
    check-cast v8, Ljava/lang/Long;

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v10, v8, v3

    if-gez v10, :cond_2

    iget-object v8, v0, Lb/l/a/a;->a:Lb/f/h;

    invoke-virtual {v8, v7}, Lb/f/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_3

    .line 5
    invoke-interface {v7, v1, v2}, Lb/l/a/a$b;->a(J)Z

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 6
    :cond_4
    iget-boolean v1, v0, Lb/l/a/a;->f:Z

    if-eqz v1, :cond_7

    iget-object v1, v0, Lb/l/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_6

    iget-object v2, v0, Lb/l/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v2, v0, Lb/l/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    iput-boolean v5, v0, Lb/l/a/a;->f:Z

    .line 7
    :cond_7
    iget-object v0, p0, Lb/l/a/a$a;->a:Lb/l/a/a;

    iget-object v0, v0, Lb/l/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lb/l/a/a$a;->a:Lb/l/a/a;

    .line 8
    iget-object v1, v0, Lb/l/a/a;->d:Lb/l/a/a$c;

    if-nez v1, :cond_8

    new-instance v1, Lb/l/a/a$d;

    iget-object v2, v0, Lb/l/a/a;->c:Lb/l/a/a$a;

    invoke-direct {v1, v2}, Lb/l/a/a$d;-><init>(Lb/l/a/a$a;)V

    iput-object v1, v0, Lb/l/a/a;->d:Lb/l/a/a$c;

    :cond_8
    iget-object v0, v0, Lb/l/a/a;->d:Lb/l/a/a$c;

    .line 9
    check-cast v0, Lb/l/a/a$d;

    .line 10
    iget-object v1, v0, Lb/l/a/a$d;->b:Landroid/view/Choreographer;

    iget-object v0, v0, Lb/l/a/a$d;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_9
    return-void
.end method
