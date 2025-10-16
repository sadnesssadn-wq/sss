.class public Lc/d/b/k/d0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/o/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/b/k/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lc/d/b/o/c;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lc/d/b/o/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Lc/d/b/o/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc/d/b/k/d0$a;->a:Lc/d/b/o/c;

    return-void
.end method
