.class public final Lc/d/a/b/i/n/t1$a;
.super Lc/d/a/b/i/n/l0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/i/n/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lc/d/a/b/i/n/t1<",
        "TT;*>;>",
        "Lc/d/a/b/i/n/l0<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc/d/a/b/i/n/t1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lc/d/a/b/i/n/l0;-><init>()V

    return-void
.end method
