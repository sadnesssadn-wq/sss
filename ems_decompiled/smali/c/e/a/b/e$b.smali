.class public Lc/e/a/b/e$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/concurrent/Executor;

.field public c:Ljava/util/concurrent/Executor;

.field public d:Z

.field public e:Z

.field public f:I

.field public g:Lc/e/a/b/m/g;

.field public h:I

.field public i:J

.field public j:I

.field public k:Lc/e/a/a/b/a;

.field public l:Lc/e/a/a/a/a;

.field public m:Lc/e/a/a/a/c/a;

.field public n:Lc/e/a/b/p/b;

.field public o:Lc/e/a/b/n/b;

.field public p:Lc/e/a/b/c;

.field public q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/e/a/b/e$b;->b:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lc/e/a/b/e$b;->c:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lc/e/a/b/e$b;->d:Z

    iput-boolean v1, p0, Lc/e/a/b/e$b;->e:Z

    const/4 v2, 0x3

    iput v2, p0, Lc/e/a/b/e$b;->f:I

    sget-object v2, Lc/e/a/b/m/g;->c:Lc/e/a/b/m/g;

    iput-object v2, p0, Lc/e/a/b/e$b;->g:Lc/e/a/b/m/g;

    iput v1, p0, Lc/e/a/b/e$b;->h:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lc/e/a/b/e$b;->i:J

    iput v1, p0, Lc/e/a/b/e$b;->j:I

    iput-object v0, p0, Lc/e/a/b/e$b;->k:Lc/e/a/a/b/a;

    iput-object v0, p0, Lc/e/a/b/e$b;->l:Lc/e/a/a/a/a;

    iput-object v0, p0, Lc/e/a/b/e$b;->m:Lc/e/a/a/a/c/a;

    iput-object v0, p0, Lc/e/a/b/e$b;->n:Lc/e/a/b/p/b;

    iput-object v0, p0, Lc/e/a/b/e$b;->p:Lc/e/a/b/c;

    iput-boolean v1, p0, Lc/e/a/b/e$b;->q:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/b/e$b;->a:Landroid/content/Context;

    return-void
.end method
