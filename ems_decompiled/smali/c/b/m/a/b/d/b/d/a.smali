.class public Lc/b/m/a/b/d/b/d/a;
.super Lc/c/b/a/e/e;
.source ""


# instance fields
.field public a:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lc/c/b/a/e/e;-><init>()V

    const-string v0, ""

    const-string v1, "k"

    const-string v2, "m"

    const-string v3, "b"

    const-string v4, "t"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/a/b/d/b/d/a;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(F)Ljava/lang/String;
    .locals 8

    float-to-double v0, p1

    .line 1
    iget-object p1, p0, Lc/b/m/a/b/d/b/d/a;->a:[Ljava/lang/String;

    array-length p1, p1

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-wide v5, 0x408f400000000000L    # 1000.0

    cmpl-double v7, v0, v5

    if-ltz v7, :cond_0

    if-ge v4, p1, :cond_0

    div-double/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v2, [Ljava/lang/Object;

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "%.0f"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc/b/m/a/b/d/b/d/a;->a:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
