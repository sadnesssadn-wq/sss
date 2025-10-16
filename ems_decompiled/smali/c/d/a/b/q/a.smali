.class public abstract Lc/d/a/b/q/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/q/a$b;,
        Lc/d/a/b/q/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lc/d/a/b/q/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/q/a$b<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "processorLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/d/a/b/q/a;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lc/d/a/b/q/b;)V
    .locals 7
    .param p1    # Lc/d/a/b/q/b;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    new-instance v0, Lc/d/a/b/q/b$a;

    .line 1
    iget-object v1, p1, Lc/d/a/b/q/b;->a:Lc/d/a/b/q/b$a;

    .line 2
    invoke-direct {v0, v1}, Lc/d/a/b/q/b$a;-><init>(Lc/d/a/b/q/b$a;)V

    .line 3
    iget v1, v0, Lc/d/a/b/q/b$a;->e:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    iget v1, v0, Lc/d/a/b/q/b$a;->a:I

    iget v2, v0, Lc/d/a/b/q/b$a;->b:I

    iput v2, v0, Lc/d/a/b/q/b$a;->a:I

    iput v1, v0, Lc/d/a/b/q/b$a;->b:I

    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lc/d/a/b/q/b$a;->e:I

    .line 4
    move-object v2, p0

    check-cast v2, Lc/d/a/b/q/e/b;

    .line 5
    new-instance v3, Lc/d/a/b/i/n/e5;

    invoke-direct {v3}, Lc/d/a/b/i/n/e5;-><init>()V

    .line 6
    iget-object v4, p1, Lc/d/a/b/q/b;->a:Lc/d/a/b/q/b$a;

    .line 7
    iget v5, v4, Lc/d/a/b/q/b$a;->a:I

    .line 8
    iput v5, v3, Lc/d/a/b/i/n/e5;->c:I

    .line 9
    iget v5, v4, Lc/d/a/b/q/b$a;->b:I

    .line 10
    iput v5, v3, Lc/d/a/b/i/n/e5;->d:I

    .line 11
    iget v5, v4, Lc/d/a/b/q/b$a;->e:I

    .line 12
    iput v5, v3, Lc/d/a/b/i/n/e5;->g:I

    .line 13
    iget v5, v4, Lc/d/a/b/q/b$a;->c:I

    .line 14
    iput v5, v3, Lc/d/a/b/i/n/e5;->e:I

    .line 15
    iget-wide v4, v4, Lc/d/a/b/q/b$a;->d:J

    .line 16
    iput-wide v4, v3, Lc/d/a/b/i/n/e5;->f:J

    .line 17
    iget-object p1, p1, Lc/d/a/b/q/b;->b:Ljava/nio/ByteBuffer;

    .line 18
    iget-object v4, v2, Lc/d/a/b/q/e/b;->c:Lc/d/a/b/i/n/k4;

    const-string v5, "null reference"

    .line 19
    invoke-static {p1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v4, p1, v3}, Lc/d/a/b/i/n/k4;->d(Ljava/nio/ByteBuffer;Lc/d/a/b/i/n/e5;)[Lc/d/a/b/q/e/a;

    move-result-object p1

    new-instance v3, Landroid/util/SparseArray;

    array-length v4, p1

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    array-length v4, p1

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, p1, v1

    iget-object v6, v5, Lc/d/a/b/q/e/a;->d:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-virtual {v3, v6, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_1
    iget-object p1, v2, Lc/d/a/b/q/e/b;->c:Lc/d/a/b/i/n/k4;

    invoke-virtual {p1}, Lc/d/a/b/i/n/f5;->b()Z

    move-result p1

    .line 22
    new-instance v1, Lc/d/a/b/q/a$a;

    invoke-direct {v1, v3, v0, p1}, Lc/d/a/b/q/a$a;-><init>(Landroid/util/SparseArray;Lc/d/a/b/q/b$a;Z)V

    iget-object p1, p0, Lc/d/a/b/q/a;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/q/a;->b:Lc/d/a/b/q/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    check-cast v0, Lc/d/a/b/q/c;

    :try_start_1
    invoke-virtual {v0, v1}, Lc/d/a/b/q/c;->a(Lc/d/a/b/q/a$a;)V

    monitor-exit p1

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Detector processor must first be set with setProcessor in order to receive detection results."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
