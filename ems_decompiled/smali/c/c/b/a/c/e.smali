.class public Lc/c/b/a/c/e;
.super Lc/c/b/a/c/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/b/a/c/e$a;,
        Lc/c/b/a/c/e$d;,
        Lc/c/b/a/c/e$e;,
        Lc/c/b/a/c/e$c;,
        Lc/c/b/a/c/e$b;
    }
.end annotation


# instance fields
.field public f:[Lc/c/b/a/c/f;

.field public g:Lc/c/b/a/c/e$c;

.field public h:Lc/c/b/a/c/e$e;

.field public i:Lc/c/b/a/c/e$d;

.field public j:Z

.field public k:Lc/c/b/a/c/e$a;

.field public l:Lc/c/b/a/c/e$b;

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public v:F

.field public w:Z

.field public x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/b/a/k/b;",
            ">;"
        }
    .end annotation
.end field

.field public y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/b/a/k/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lc/c/b/a/c/b;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Lc/c/b/a/c/f;

    iput-object v1, p0, Lc/c/b/a/c/e;->f:[Lc/c/b/a/c/f;

    sget-object v1, Lc/c/b/a/c/e$c;->c:Lc/c/b/a/c/e$c;

    iput-object v1, p0, Lc/c/b/a/c/e;->g:Lc/c/b/a/c/e$c;

    sget-object v1, Lc/c/b/a/c/e$e;->e:Lc/c/b/a/c/e$e;

    iput-object v1, p0, Lc/c/b/a/c/e;->h:Lc/c/b/a/c/e$e;

    sget-object v1, Lc/c/b/a/c/e$d;->c:Lc/c/b/a/c/e$d;

    iput-object v1, p0, Lc/c/b/a/c/e;->i:Lc/c/b/a/c/e$d;

    iput-boolean v0, p0, Lc/c/b/a/c/e;->j:Z

    sget-object v1, Lc/c/b/a/c/e$a;->c:Lc/c/b/a/c/e$a;

    iput-object v1, p0, Lc/c/b/a/c/e;->k:Lc/c/b/a/c/e$a;

    sget-object v1, Lc/c/b/a/c/e$b;->f:Lc/c/b/a/c/e$b;

    iput-object v1, p0, Lc/c/b/a/c/e;->l:Lc/c/b/a/c/e$b;

    const/high16 v1, 0x41000000    # 8.0f

    iput v1, p0, Lc/c/b/a/c/e;->m:F

    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lc/c/b/a/c/e;->n:F

    const/high16 v2, 0x40c00000    # 6.0f

    iput v2, p0, Lc/c/b/a/c/e;->o:F

    const/4 v2, 0x0

    iput v2, p0, Lc/c/b/a/c/e;->p:F

    const/high16 v3, 0x40a00000    # 5.0f

    iput v3, p0, Lc/c/b/a/c/e;->q:F

    iput v1, p0, Lc/c/b/a/c/e;->r:F

    const v4, 0x3f733333    # 0.95f

    iput v4, p0, Lc/c/b/a/c/e;->s:F

    iput v2, p0, Lc/c/b/a/c/e;->t:F

    iput v2, p0, Lc/c/b/a/c/e;->u:F

    iput v2, p0, Lc/c/b/a/c/e;->v:F

    iput-boolean v0, p0, Lc/c/b/a/c/e;->w:Z

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc/c/b/a/c/e;->x:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc/c/b/a/c/e;->y:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc/c/b/a/c/e;->z:Ljava/util/List;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lc/c/b/a/k/i;->d(F)F

    move-result v0

    iput v0, p0, Lc/c/b/a/c/b;->d:F

    invoke-static {v3}, Lc/c/b/a/k/i;->d(F)F

    move-result v0

    iput v0, p0, Lc/c/b/a/c/b;->b:F

    invoke-static {v1}, Lc/c/b/a/k/i;->d(F)F

    move-result v0

    iput v0, p0, Lc/c/b/a/c/b;->c:F

    return-void
.end method
