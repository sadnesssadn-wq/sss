.class public Lc/e/a/b/o/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/e/a/b/o/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/b/o/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public display(Landroid/graphics/Bitmap;Lc/e/a/b/q/a;Lc/e/a/b/m/f;)V
    .locals 2

    instance-of p3, p2, Lc/e/a/b/q/b;

    if-eqz p3, :cond_0

    new-instance p3, Lc/e/a/b/o/b$a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p3, p1, v0, v1}, Lc/e/a/b/o/b$a;-><init>(Landroid/graphics/Bitmap;Ljava/lang/Integer;F)V

    check-cast p2, Lc/e/a/b/q/c;

    invoke-virtual {p2, p3}, Lc/e/a/b/q/c;->b(Landroid/graphics/drawable/Drawable;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ImageAware should wrap ImageView. ImageViewAware is expected."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
