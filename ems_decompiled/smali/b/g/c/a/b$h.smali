.class public Lb/g/c/a/b$h;
.super Lb/g/c/a/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/g/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/g/c/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroid/view/View;F)V
    .locals 0

    invoke-virtual {p0, p2}, Lb/g/a/h/a/e;->a(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationY(F)V

    return-void
.end method
