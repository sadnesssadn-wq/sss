.class public Le/a/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/q/c$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/d/a/b/q/c$a<",
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

.field public b:Le/a/a/b$a;


# direct methods
.method public constructor <init>(Linfo/androidhive/barcode/camera/GraphicOverlay;Le/a/a/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/androidhive/barcode/camera/GraphicOverlay<",
            "Le/a/a/a;",
            ">;",
            "Le/a/a/b$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c;->a:Linfo/androidhive/barcode/camera/GraphicOverlay;

    iput-object p2, p0, Le/a/a/c;->b:Le/a/a/b$a;

    return-void
.end method
