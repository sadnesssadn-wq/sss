.class public final Lc/d/d/x/c/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lc/d/d/x/c/d;

.field public final b:Lc/d/d/x/c/d;

.field public final c:Lc/d/d/x/c/d;


# direct methods
.method public constructor <init>([Lc/d/d/x/c/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lc/d/d/x/c/f;->a:Lc/d/d/x/c/d;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lc/d/d/x/c/f;->b:Lc/d/d/x/c/d;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    iput-object p1, p0, Lc/d/d/x/c/f;->c:Lc/d/d/x/c/d;

    return-void
.end method
