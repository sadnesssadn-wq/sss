.class public final Lc/d/a/c/f0/h$a;
.super Lb/l/a/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/c/f0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/l/a/c<",
        "Lc/d/a/c/f0/h;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/l/a/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)F
    .locals 1

    check-cast p1, Lc/d/a/c/f0/h;

    .line 1
    iget p1, p1, Lc/d/a/c/f0/h;->q:F

    const v0, 0x461c4000    # 10000.0f

    mul-float p1, p1, v0

    return p1
.end method

.method public b(Ljava/lang/Object;F)V
    .locals 1

    check-cast p1, Lc/d/a/c/f0/h;

    const v0, 0x461c4000    # 10000.0f

    div-float/2addr p2, v0

    .line 1
    iput p2, p1, Lc/d/a/c/f0/h;->q:F

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
