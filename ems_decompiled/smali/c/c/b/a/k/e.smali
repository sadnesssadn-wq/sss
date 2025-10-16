.class public Lc/c/b/a/k/e;
.super Lc/c/b/a/k/f$a;
.source ""


# static fields
.field public static d:Lc/c/b/a/k/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/b/a/k/f<",
            "Lc/c/b/a/k/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:F

.field public c:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/b/a/k/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lc/c/b/a/k/e;-><init>(FF)V

    const/16 v1, 0x20

    invoke-static {v1, v0}, Lc/c/b/a/k/f;->a(ILc/c/b/a/k/f$a;)Lc/c/b/a/k/f;

    move-result-object v0

    sput-object v0, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lc/c/b/a/k/f;->e(F)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/c/b/a/k/f$a;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Lc/c/b/a/k/f$a;-><init>()V

    iput p1, p0, Lc/c/b/a/k/e;->b:F

    iput p2, p0, Lc/c/b/a/k/e;->c:F

    return-void
.end method

.method public static b(FF)Lc/c/b/a/k/e;
    .locals 1

    sget-object v0, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v0}, Lc/c/b/a/k/f;->b()Lc/c/b/a/k/f$a;

    move-result-object v0

    check-cast v0, Lc/c/b/a/k/e;

    iput p0, v0, Lc/c/b/a/k/e;->b:F

    iput p1, v0, Lc/c/b/a/k/e;->c:F

    return-object v0
.end method

.method public static c(Lc/c/b/a/k/e;)Lc/c/b/a/k/e;
    .locals 2

    sget-object v0, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v0}, Lc/c/b/a/k/f;->b()Lc/c/b/a/k/f$a;

    move-result-object v0

    check-cast v0, Lc/c/b/a/k/e;

    iget v1, p0, Lc/c/b/a/k/e;->b:F

    iput v1, v0, Lc/c/b/a/k/e;->b:F

    iget p0, p0, Lc/c/b/a/k/e;->c:F

    iput p0, v0, Lc/c/b/a/k/e;->c:F

    return-object v0
.end method


# virtual methods
.method public a()Lc/c/b/a/k/f$a;
    .locals 2

    new-instance v0, Lc/c/b/a/k/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lc/c/b/a/k/e;-><init>(FF)V

    return-object v0
.end method
