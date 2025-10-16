.class public Lc/f/a/a0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/f/a/a0$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/os/HandlerThread;

.field public final b:Lc/f/a/d;

.field public final c:Landroid/os/Handler;

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:I

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(Lc/f/a/d;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/f/a/a0;->b:Lc/f/a/d;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "Picasso-Stats"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lc/f/a/a0;->a:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1
    sget-object v1, Lc/f/a/f0;->a:Ljava/lang/StringBuilder;

    new-instance v1, Lc/f/a/e0;

    invoke-direct {v1, v0}, Lc/f/a/e0;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2
    new-instance v0, Lc/f/a/a0$a;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lc/f/a/a0$a;-><init>(Landroid/os/Looper;Lc/f/a/a0;)V

    iput-object v0, p0, Lc/f/a/a0;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()Lc/f/a/b0;
    .locals 28

    move-object/from16 v0, p0

    new-instance v25, Lc/f/a/b0;

    move-object/from16 v1, v25

    iget-object v2, v0, Lc/f/a/a0;->b:Lc/f/a/d;

    invoke-interface {v2}, Lc/f/a/d;->b()I

    move-result v2

    iget-object v3, v0, Lc/f/a/a0;->b:Lc/f/a/d;

    invoke-interface {v3}, Lc/f/a/d;->size()I

    move-result v3

    iget-wide v4, v0, Lc/f/a/a0;->d:J

    iget-wide v6, v0, Lc/f/a/a0;->e:J

    iget-wide v8, v0, Lc/f/a/a0;->f:J

    iget-wide v10, v0, Lc/f/a/a0;->g:J

    iget-wide v12, v0, Lc/f/a/a0;->h:J

    iget-wide v14, v0, Lc/f/a/a0;->i:J

    move-object/from16 v26, v1

    move/from16 v27, v2

    iget-wide v1, v0, Lc/f/a/a0;->j:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lc/f/a/a0;->k:J

    move-wide/from16 v18, v1

    iget v1, v0, Lc/f/a/a0;->l:I

    move/from16 v20, v1

    iget v1, v0, Lc/f/a/a0;->m:I

    move/from16 v21, v1

    iget v1, v0, Lc/f/a/a0;->n:I

    move/from16 v22, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct/range {v1 .. v24}, Lc/f/a/b0;-><init>(IIJJJJJJJJIIIJ)V

    return-object v25
.end method
