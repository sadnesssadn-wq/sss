.class public final Lc/d/a/b/i/e/v4;
.super Lc/d/a/b/i/e/d4;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/i/e/d4<",
        "Lc/d/a/b/i/e/v4;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static volatile e:[Lc/d/a/b/i/e/v4;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc/d/a/b/i/e/d4;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/d/a/b/i/e/d4;->d:Lc/d/a/b/i/e/e4;

    const/4 v0, -0x1

    iput v0, p0, Lc/d/a/b/i/e/h4;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lc/d/a/b/i/e/b4;)V
    .locals 0

    invoke-super {p0, p1}, Lc/d/a/b/i/e/d4;->a(Lc/d/a/b/i/e/b4;)V

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Lc/d/a/b/i/e/d4;->g()Lc/d/a/b/i/e/d4;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/e/v4;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final d()I
    .locals 1

    invoke-super {p0}, Lc/d/a/b/i/e/d4;->d()I

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic e()Lc/d/a/b/i/e/h4;
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/i/e/v4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/e/v4;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lc/d/a/b/i/e/v4;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lc/d/a/b/i/e/v4;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lc/d/a/b/i/e/d4;->d:Lc/d/a/b/i/e/e4;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lc/d/a/b/i/e/e4;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lc/d/a/b/i/e/d4;->d:Lc/d/a/b/i/e/e4;

    iget-object p1, p1, Lc/d/a/b/i/e/d4;->d:Lc/d/a/b/i/e/e4;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/e/e4;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    iget-object p1, p1, Lc/d/a/b/i/e/d4;->d:Lc/d/a/b/i/e/e4;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lc/d/a/b/i/e/e4;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    return v2

    :cond_5
    :goto_1
    return v0
.end method

.method public final synthetic g()Lc/d/a/b/i/e/d4;
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/i/e/v4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/e/v4;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const-class v0, Lc/d/a/b/i/e/v4;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/d/a/b/i/e/d4;->d:Lc/d/a/b/i/e/e4;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lc/d/a/b/i/e/e4;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lc/d/a/b/i/e/d4;->d:Lc/d/a/b/i/e/e4;

    invoke-virtual {v1}, Lc/d/a/b/i/e/e4;->hashCode()I

    move-result v1

    :cond_1
    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
