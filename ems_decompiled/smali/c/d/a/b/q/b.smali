.class public Lc/d/a/b/q/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/q/b$a;
    }
.end annotation


# instance fields
.field public final a:Lc/d/a/b/q/b$a;

.field public b:Ljava/nio/ByteBuffer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/d/a/b/q/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lc/d/a/b/q/b$a;

    invoke-direct {p1}, Lc/d/a/b/q/b$a;-><init>()V

    iput-object p1, p0, Lc/d/a/b/q/b;->a:Lc/d/a/b/q/b$a;

    const/4 p1, 0x0

    iput-object p1, p0, Lc/d/a/b/q/b;->b:Ljava/nio/ByteBuffer;

    return-void
.end method
