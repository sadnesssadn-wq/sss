.class public Lb/u/b0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lb/u/h0;

.field public static final b:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Lb/u/g0;

    invoke-direct {v0}, Lb/u/g0;-><init>()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    new-instance v0, Lb/u/f0;

    invoke-direct {v0}, Lb/u/f0;-><init>()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x16

    if-lt v0, v1, :cond_2

    new-instance v0, Lb/u/e0;

    invoke-direct {v0}, Lb/u/e0;-><init>()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    new-instance v0, Lb/u/d0;

    invoke-direct {v0}, Lb/u/d0;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Lb/u/c0;

    invoke-direct {v0}, Lb/u/c0;-><init>()V

    :goto_0
    sput-object v0, Lb/u/b0;->a:Lb/u/h0;

    new-instance v0, Lb/u/b0$a;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translationAlpha"

    invoke-direct {v0, v1, v2}, Lb/u/b0$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lb/u/b0;->b:Landroid/util/Property;

    new-instance v0, Lb/u/b0$b;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "clipBounds"

    invoke-direct {v0, v1, v2}, Lb/u/b0$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lb/u/b0;->c:Landroid/util/Property;

    return-void
.end method

.method public static a(Landroid/view/View;)F
    .locals 1

    sget-object v0, Lb/u/b0;->a:Lb/u/h0;

    invoke-virtual {v0, p0}, Lb/u/h0;->b(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/View;IIII)V
    .locals 6

    sget-object v0, Lb/u/b0;->a:Lb/u/h0;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lb/u/h0;->e(Landroid/view/View;IIII)V

    return-void
.end method
