.class public abstract Lb/v/a/a/h$f;
.super Lb/v/a/a/h$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/v/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation


# instance fields
.field public a:[Lb/i/g/c;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/v/a/a/h$e;-><init>(Lb/v/a/a/h$a;)V

    iput-object v0, p0, Lb/v/a/a/h$f;->a:[Lb/i/g/c;

    const/4 v0, 0x0

    iput v0, p0, Lb/v/a/a/h$f;->c:I

    return-void
.end method

.method public constructor <init>(Lb/v/a/a/h$f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/v/a/a/h$e;-><init>(Lb/v/a/a/h$a;)V

    iput-object v0, p0, Lb/v/a/a/h$f;->a:[Lb/i/g/c;

    const/4 v0, 0x0

    iput v0, p0, Lb/v/a/a/h$f;->c:I

    iget-object v0, p1, Lb/v/a/a/h$f;->b:Ljava/lang/String;

    iput-object v0, p0, Lb/v/a/a/h$f;->b:Ljava/lang/String;

    iget v0, p1, Lb/v/a/a/h$f;->d:I

    iput v0, p0, Lb/v/a/a/h$f;->d:I

    iget-object p1, p1, Lb/v/a/a/h$f;->a:[Lb/i/g/c;

    invoke-static {p1}, La/a/a/a/a;->x([Lb/i/g/c;)[Lb/i/g/c;

    move-result-object p1

    iput-object p1, p0, Lb/v/a/a/h$f;->a:[Lb/i/g/c;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPathData()[Lb/i/g/c;
    .locals 1

    iget-object v0, p0, Lb/v/a/a/h$f;->a:[Lb/i/g/c;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/v/a/a/h$f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Lb/i/g/c;)V
    .locals 6

    iget-object v0, p0, Lb/v/a/a/h$f;->a:[Lb/i/g/c;

    invoke-static {v0, p1}, La/a/a/a/a;->g([Lb/i/g/c;[Lb/i/g/c;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, La/a/a/a/a;->x([Lb/i/g/c;)[Lb/i/g/c;

    move-result-object p1

    iput-object p1, p0, Lb/v/a/a/h$f;->a:[Lb/i/g/c;

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lb/v/a/a/h$f;->a:[Lb/i/g/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    aget-object v4, p1, v2

    iget-char v4, v4, Lb/i/g/c;->a:C

    iput-char v4, v3, Lb/i/g/c;->a:C

    const/4 v3, 0x0

    :goto_1
    aget-object v4, p1, v2

    iget-object v4, v4, Lb/i/g/c;->b:[F

    array-length v4, v4

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v2

    iget-object v4, v4, Lb/i/g/c;->b:[F

    aget-object v5, p1, v2

    iget-object v5, v5, Lb/i/g/c;->b:[F

    aget v5, v5, v3

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
