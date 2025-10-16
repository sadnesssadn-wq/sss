.class public Lc/f/a/a0$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/f/a/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lc/f/a/a0;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lc/f/a/a0;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lc/f/a/a0$a;->a:Lc/f/a/a0;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    sget-object v0, Lc/f/a/t;->o:Landroid/os/Handler;

    new-instance v1, Lc/f/a/a0$a$a;

    invoke-direct {v1, p0, p1}, Lc/f/a/a0$a$a;-><init>(Lc/f/a/a0$a;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/f/a/a0$a;->a:Lc/f/a/a0;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    .line 1
    iget v1, v0, Lc/f/a/a0;->l:I

    add-int/2addr v1, v3

    iput v1, v0, Lc/f/a/a0;->l:I

    iget-wide v1, v0, Lc/f/a/a0;->f:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, v0, Lc/f/a/a0;->f:J

    iget p1, v0, Lc/f/a/a0;->l:I

    int-to-long v1, p1

    .line 2
    div-long/2addr v3, v1

    .line 3
    iput-wide v3, v0, Lc/f/a/a0;->i:J

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lc/f/a/a0$a;->a:Lc/f/a/a0;

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, p1

    .line 5
    iget p1, v0, Lc/f/a/a0;->n:I

    add-int/2addr p1, v3

    iput p1, v0, Lc/f/a/a0;->n:I

    iget-wide v3, v0, Lc/f/a/a0;->h:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lc/f/a/a0;->h:J

    iget p1, v0, Lc/f/a/a0;->m:I

    int-to-long v1, p1

    .line 6
    div-long/2addr v3, v1

    .line 7
    iput-wide v3, v0, Lc/f/a/a0;->k:J

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lc/f/a/a0$a;->a:Lc/f/a/a0;

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, p1

    .line 9
    iget p1, v0, Lc/f/a/a0;->m:I

    add-int/2addr p1, v3

    iput p1, v0, Lc/f/a/a0;->m:I

    iget-wide v3, v0, Lc/f/a/a0;->g:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lc/f/a/a0;->g:J

    int-to-long v1, p1

    .line 10
    div-long/2addr v3, v1

    .line 11
    iput-wide v3, v0, Lc/f/a/a0;->j:J

    goto :goto_0

    .line 12
    :cond_3
    iget-object p1, p0, Lc/f/a/a0$a;->a:Lc/f/a/a0;

    .line 13
    iget-wide v3, p1, Lc/f/a/a0;->e:J

    add-long/2addr v3, v1

    iput-wide v3, p1, Lc/f/a/a0;->e:J

    goto :goto_0

    .line 14
    :cond_4
    iget-object p1, p0, Lc/f/a/a0$a;->a:Lc/f/a/a0;

    .line 15
    iget-wide v3, p1, Lc/f/a/a0;->d:J

    add-long/2addr v3, v1

    iput-wide v3, p1, Lc/f/a/a0;->d:J

    :goto_0
    return-void
.end method
