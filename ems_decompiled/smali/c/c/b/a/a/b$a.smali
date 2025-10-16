.class public final Lc/c/b/a/a/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/b/a/a/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/b/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    sget-object v0, Lc/c/b/a/a/b;->c:Lc/c/b/a/a/b$d;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p1, v1, p1

    check-cast v0, Lc/c/b/a/a/b$b;

    invoke-virtual {v0, p1}, Lc/c/b/a/a/b$b;->getInterpolation(F)F

    move-result p1

    sub-float/2addr v1, p1

    return v1
.end method
