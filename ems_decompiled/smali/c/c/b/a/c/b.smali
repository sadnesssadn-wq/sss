.class public abstract Lc/c/b/a/c/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Z

.field public b:F

.field public c:F

.field public d:F

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c/b/a/c/b;->a:Z

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lc/c/b/a/c/b;->b:F

    iput v0, p0, Lc/c/b/a/c/b;->c:F

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lc/c/b/a/k/i;->d(F)F

    move-result v0

    iput v0, p0, Lc/c/b/a/c/b;->d:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lc/c/b/a/c/b;->e:I

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    invoke-static {p1}, Lc/c/b/a/k/i;->d(F)F

    move-result p1

    iput p1, p0, Lc/c/b/a/c/b;->c:F

    return-void
.end method
