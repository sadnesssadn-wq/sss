.class public final Lc/e/a/b/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/b/e$d;,
        Lc/e/a/b/e$c;,
        Lc/e/a/b/e$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/Resources;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Z

.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:Lc/e/a/b/m/g;

.field public final i:Lc/e/a/a/b/a;

.field public final j:Lc/e/a/a/a/a;

.field public final k:Lc/e/a/b/p/b;

.field public final l:Lc/e/a/b/n/b;

.field public final m:Lc/e/a/b/c;

.field public final n:Lc/e/a/b/p/b;

.field public final o:Lc/e/a/b/p/b;


# direct methods
.method public constructor <init>(Lc/e/a/b/e$b;Lc/e/a/b/e$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Lc/e/a/b/e$b;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lc/e/a/b/e;->a:Landroid/content/res/Resources;

    .line 4
    iget-object p2, p1, Lc/e/a/b/e$b;->b:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p2, p0, Lc/e/a/b/e;->b:Ljava/util/concurrent/Executor;

    .line 6
    iget-object p2, p1, Lc/e/a/b/e$b;->c:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p2, p0, Lc/e/a/b/e;->c:Ljava/util/concurrent/Executor;

    const/4 p2, 0x3

    iput p2, p0, Lc/e/a/b/e;->f:I

    .line 8
    iget p2, p1, Lc/e/a/b/e$b;->f:I

    .line 9
    iput p2, p0, Lc/e/a/b/e;->g:I

    .line 10
    iget-object p2, p1, Lc/e/a/b/e$b;->g:Lc/e/a/b/m/g;

    .line 11
    iput-object p2, p0, Lc/e/a/b/e;->h:Lc/e/a/b/m/g;

    .line 12
    iget-object p2, p1, Lc/e/a/b/e$b;->l:Lc/e/a/a/a/a;

    .line 13
    iput-object p2, p0, Lc/e/a/b/e;->j:Lc/e/a/a/a/a;

    .line 14
    iget-object p2, p1, Lc/e/a/b/e$b;->k:Lc/e/a/a/b/a;

    .line 15
    iput-object p2, p0, Lc/e/a/b/e;->i:Lc/e/a/a/b/a;

    .line 16
    iget-object p2, p1, Lc/e/a/b/e$b;->p:Lc/e/a/b/c;

    .line 17
    iput-object p2, p0, Lc/e/a/b/e;->m:Lc/e/a/b/c;

    .line 18
    iget-object p2, p1, Lc/e/a/b/e$b;->n:Lc/e/a/b/p/b;

    .line 19
    iput-object p2, p0, Lc/e/a/b/e;->k:Lc/e/a/b/p/b;

    .line 20
    iget-object v0, p1, Lc/e/a/b/e$b;->o:Lc/e/a/b/n/b;

    .line 21
    iput-object v0, p0, Lc/e/a/b/e;->l:Lc/e/a/b/n/b;

    .line 22
    iget-boolean v0, p1, Lc/e/a/b/e$b;->d:Z

    .line 23
    iput-boolean v0, p0, Lc/e/a/b/e;->d:Z

    .line 24
    iget-boolean v0, p1, Lc/e/a/b/e$b;->e:Z

    .line 25
    iput-boolean v0, p0, Lc/e/a/b/e;->e:Z

    new-instance v0, Lc/e/a/b/e$c;

    invoke-direct {v0, p2}, Lc/e/a/b/e$c;-><init>(Lc/e/a/b/p/b;)V

    iput-object v0, p0, Lc/e/a/b/e;->n:Lc/e/a/b/p/b;

    new-instance v0, Lc/e/a/b/e$d;

    invoke-direct {v0, p2}, Lc/e/a/b/e$d;-><init>(Lc/e/a/b/p/b;)V

    iput-object v0, p0, Lc/e/a/b/e;->o:Lc/e/a/b/p/b;

    .line 26
    iget-boolean p1, p1, Lc/e/a/b/e$b;->q:Z

    .line 27
    sput-boolean p1, Lc/e/a/c/c;->a:Z

    return-void
.end method
