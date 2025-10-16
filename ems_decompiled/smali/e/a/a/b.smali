.class public Le/a/a/b;
.super Lc/d/a/b/q/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/q/d<",
        "Lc/d/a/b/q/e/a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Linfo/androidhive/barcode/camera/GraphicOverlay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linfo/androidhive/barcode/camera/GraphicOverlay<",
            "Le/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Le/a/a/a;

.field public c:Le/a/a/b$a;


# direct methods
.method public constructor <init>(Linfo/androidhive/barcode/camera/GraphicOverlay;Le/a/a/a;Le/a/a/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/androidhive/barcode/camera/GraphicOverlay<",
            "Le/a/a/a;",
            ">;",
            "Le/a/a/a;",
            "Le/a/a/b$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lc/d/a/b/q/d;-><init>()V

    iput-object p1, p0, Le/a/a/b;->a:Linfo/androidhive/barcode/camera/GraphicOverlay;

    iput-object p2, p0, Le/a/a/b;->b:Le/a/a/a;

    iput-object p3, p0, Le/a/a/b;->c:Le/a/a/b$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Le/a/a/b;->a:Linfo/androidhive/barcode/camera/GraphicOverlay;

    iget-object v1, p0, Le/a/a/b;->b:Le/a/a/a;

    .line 1
    iget-object v2, v0, Linfo/androidhive/barcode/camera/GraphicOverlay;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Linfo/androidhive/barcode/camera/GraphicOverlay;->i:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
