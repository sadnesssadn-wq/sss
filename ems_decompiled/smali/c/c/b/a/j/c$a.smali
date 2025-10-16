.class public Lc/c/b/a/j/c$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/b/a/j/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public final synthetic d:Lc/c/b/a/j/c;


# direct methods
.method public constructor <init>(Lc/c/b/a/j/c;)V
    .locals 0

    iput-object p1, p0, Lc/c/b/a/j/c$a;->d:Lc/c/b/a/j/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/b/a/g/a/b;Lc/c/b/a/g/b/b;)V
    .locals 4

    iget-object v0, p0, Lc/c/b/a/j/c$a;->d:Lc/c/b/a/j/c;

    iget-object v0, v0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-interface {p1}, Lc/c/b/a/g/a/b;->getLowestVisibleX()F

    move-result v1

    invoke-interface {p1}, Lc/c/b/a/g/a/b;->getHighestVisibleX()F

    move-result p1

    sget-object v2, Lc/c/b/a/d/n$a;->d:Lc/c/b/a/d/n$a;

    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-interface {p2, v1, v3, v2}, Lc/c/b/a/g/b/e;->u(FFLc/c/b/a/d/n$a;)Lc/c/b/a/d/o;

    move-result-object v1

    sget-object v2, Lc/c/b/a/d/n$a;->c:Lc/c/b/a/d/n$a;

    invoke-interface {p2, p1, v3, v2}, Lc/c/b/a/g/b/e;->u(FFLc/c/b/a/d/n$a;)Lc/c/b/a/d/o;

    move-result-object p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2, v1}, Lc/c/b/a/g/b/e;->D(Lc/c/b/a/d/o;)I

    move-result v1

    :goto_0
    iput v1, p0, Lc/c/b/a/j/c$a;->a:I

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2, p1}, Lc/c/b/a/g/b/e;->D(Lc/c/b/a/d/o;)I

    move-result v2

    :goto_1
    iput v2, p0, Lc/c/b/a/j/c$a;->b:I

    iget p1, p0, Lc/c/b/a/j/c$a;->a:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lc/c/b/a/j/c$a;->c:I

    return-void
.end method
