.class public Lb/g/c/a/d$f;
.super Lb/g/c/a/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/g/c/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/g/c/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroid/view/View;FJLb/g/a/h/a/d;)Z
    .locals 6

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lb/g/c/a/d;->d(FJLandroid/view/View;Lb/g/a/h/a/d;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    iget-boolean p1, p0, Lb/g/a/h/a/o;->h:Z

    return p1
.end method
