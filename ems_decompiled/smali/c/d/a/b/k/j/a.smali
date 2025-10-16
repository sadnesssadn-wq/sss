.class public final Lc/d/a/b/k/j/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lc/d/a/b/f/b;


# direct methods
.method public constructor <init>(Lc/d/a/b/f/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lc/d/a/b/k/j/a;->a:Lc/d/a/b/f/b;

    return-void
.end method
