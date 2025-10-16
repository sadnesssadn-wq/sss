.class public final Lb/l/a/d;
.super Lb/l/a/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/l/a/b<",
        "Lb/l/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field public s:Lb/l/a/e;

.field public t:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lb/l/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lb/l/a/c<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lb/l/a/b;-><init>(Ljava/lang/Object;Lb/l/a/c;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/l/a/d;->s:Lb/l/a/e;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Lb/l/a/d;->t:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lb/l/a/c;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lb/l/a/c<",
            "TK;>;F)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lb/l/a/b;-><init>(Ljava/lang/Object;Lb/l/a/c;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/l/a/d;->s:Lb/l/a/e;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Lb/l/a/d;->t:F

    new-instance p1, Lb/l/a/e;

    invoke-direct {p1, p3}, Lb/l/a/e;-><init>(F)V

    iput-object p1, p0, Lb/l/a/d;->s:Lb/l/a/e;

    return-void
.end method


# virtual methods
.method public f()V
    .locals 7

    .line 1
    iget-object v0, p0, Lb/l/a/d;->s:Lb/l/a/e;

    if-eqz v0, :cond_8

    .line 2
    iget-wide v1, v0, Lb/l/a/e;->i:D

    double-to-float v1, v1

    float-to-double v1, v1

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    float-to-double v4, v3

    cmpl-double v6, v1, v4

    if-gtz v6, :cond_7

    .line 3
    iget v4, p0, Lb/l/a/b;->g:F

    float-to-double v4, v4

    cmpg-double v6, v1, v4

    if-ltz v6, :cond_6

    .line 4
    iget v1, p0, Lb/l/a/b;->i:F

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v1, v1, v2

    float-to-double v1, v1

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iput-wide v1, v0, Lb/l/a/e;->d:D

    const-wide v4, 0x404f400000000000L    # 62.5

    mul-double v1, v1, v4

    iput-wide v1, v0, Lb/l/a/e;->e:D

    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lb/l/a/b;->f:Z

    if-nez v0, :cond_4

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lb/l/a/b;->f:Z

    iget-boolean v0, p0, Lb/l/a/b;->c:Z

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lb/l/a/b;->e:Lb/l/a/c;

    iget-object v1, p0, Lb/l/a/b;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lb/l/a/c;->a(Ljava/lang/Object;)F

    move-result v0

    .line 9
    iput v0, p0, Lb/l/a/b;->b:F

    :cond_0
    iget v0, p0, Lb/l/a/b;->b:F

    cmpl-float v1, v0, v3

    if-gtz v1, :cond_3

    iget v1, p0, Lb/l/a/b;->g:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_3

    invoke-static {}, Lb/l/a/a;->a()Lb/l/a/a;

    move-result-object v0

    .line 10
    iget-object v1, v0, Lb/l/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 11
    iget-object v1, v0, Lb/l/a/a;->d:Lb/l/a/a$c;

    if-nez v1, :cond_1

    new-instance v1, Lb/l/a/a$d;

    iget-object v2, v0, Lb/l/a/a;->c:Lb/l/a/a$a;

    invoke-direct {v1, v2}, Lb/l/a/a$d;-><init>(Lb/l/a/a$a;)V

    iput-object v1, v0, Lb/l/a/a;->d:Lb/l/a/a$c;

    :cond_1
    iget-object v1, v0, Lb/l/a/a;->d:Lb/l/a/a$c;

    .line 12
    check-cast v1, Lb/l/a/a$d;

    .line 13
    iget-object v2, v1, Lb/l/a/a$d;->b:Landroid/view/Choreographer;

    iget-object v1, v1, Lb/l/a/a$d;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v2, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 14
    :cond_2
    iget-object v1, v0, Lb/l/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, v0, Lb/l/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Starting value need to be in between min value and max value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    return-void

    .line 16
    :cond_5
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be started on the main thread"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Final position of the spring cannot be less than the min value."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Final position of the spring cannot be greater than the max value."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
