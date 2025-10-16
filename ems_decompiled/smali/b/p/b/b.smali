.class public Lb/p/b/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/p/b/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lb/p/b/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/p/b/b$a<",
            "TD;>;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/p/b/b;->c:Z

    iput-boolean v0, p0, Lb/p/b/b;->d:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/p/b/b;->e:Z

    iput-boolean v0, p0, Lb/p/b/b;->f:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 6

    move-object v0, p0

    check-cast v0, Lb/p/b/a;

    .line 1
    iget-object v1, v0, Lb/p/b/a;->h:Lb/p/b/a$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lb/p/b/b;->c:Z

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iput-boolean v3, v0, Lb/p/b/b;->f:Z

    :cond_0
    iget-object v1, v0, Lb/p/b/a;->i:Lb/p/b/a$a;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lb/p/b/a;->h:Lb/p/b/a$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lb/p/b/a;->h:Lb/p/b/a$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lb/p/b/a;->h:Lb/p/b/a$a;

    .line 2
    iget-object v5, v1, Lb/p/b/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, v1, Lb/p/b/c;->d:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    iget-object v2, v0, Lb/p/b/a;->h:Lb/p/b/a$a;

    iput-object v2, v0, Lb/p/b/a;->i:Lb/p/b/a$a;

    :cond_2
    move v2, v1

    :goto_0
    iput-object v4, v0, Lb/p/b/a;->h:Lb/p/b/a$a;

    :cond_3
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, La/a/a/a/a;->e(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/p/b/b;->a:I

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Lc/a/a/a/a;->n(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
