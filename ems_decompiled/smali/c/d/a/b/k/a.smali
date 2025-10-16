.class public final Lc/d/a/b/k/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/k/a$a;
    }
.end annotation


# instance fields
.field public final a:Lc/d/a/b/k/i/b;

.field public b:Lc/d/a/b/k/h;


# direct methods
.method public constructor <init>(Lc/d/a/b/k/i/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lc/d/a/b/k/a;->a:Lc/d/a/b/k/i/b;

    return-void
.end method
