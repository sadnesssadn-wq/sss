.class public abstract Lb/l/a/b$l;
.super Lb/l/a/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/l/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/l/a/c<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lb/l/a/b$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/l/a/c;-><init>(Ljava/lang/String;)V

    return-void
.end method
