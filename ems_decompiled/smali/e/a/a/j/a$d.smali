.class public Le/a/a/j/a$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Lc/d/a/b/e/o/a;

.field public b:Lc/d/a/b/e/o/a;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/d/a/b/e/o/a;

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v1, p1}, Lc/d/a/b/e/o/a;-><init>(II)V

    iput-object v0, p0, Le/a/a/j/a$d;->a:Lc/d/a/b/e/o/a;

    if-eqz p2, :cond_0

    new-instance p1, Lc/d/a/b/e/o/a;

    iget v0, p2, Landroid/hardware/Camera$Size;->width:I

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {p1, v0, p2}, Lc/d/a/b/e/o/a;-><init>(II)V

    iput-object p1, p0, Le/a/a/j/a$d;->b:Lc/d/a/b/e/o/a;

    :cond_0
    return-void
.end method
